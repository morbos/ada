--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.DDRPHYC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype DDRPHYC_ANIB0_MTESTMUXSEL_MTESTMUXSEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC MtestMuxSel register
   type DDRPHYC_ANIB0_MTESTMUXSEL_Register is record
      --  Controls for the 64-1 mux for asynchronous data to the digital
      --  observation pin.
      MTESTMUXSEL   : DDRPHYC_ANIB0_MTESTMUXSEL_MTESTMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB0_MTESTMUXSEL_Register use record
      MTESTMUXSEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_ANIB0_AFORCEDRVCONT_AFORCEDRVCONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceDrvCont register
   type DDRPHYC_ANIB0_AFORCEDRVCONT_Register is record
      --  Forces continuous drive, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCEDRVCONT : DDRPHYC_ANIB0_AFORCEDRVCONT_AFORCEDRVCONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB0_AFORCEDRVCONT_Register use record
      AFORCEDRVCONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB0_AFORCETRICONT_AFORCETRICONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceTriCont register
   type DDRPHYC_ANIB0_AFORCETRICONT_Register is record
      --  Forces tristate control, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCETRICONT : DDRPHYC_ANIB0_AFORCETRICONT_AFORCETRICONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB0_AFORCETRICONT_Register use record
      AFORCETRICONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB0_ATXIMPEDANCE_ADRVSTRENP_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRPHYC_ANIB0_ATXIMPEDANCE_ADRVSTRENN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC address T0 impedance control register
   type DDRPHYC_ANIB0_ATXIMPEDANCE_Register is record
      --  5-bit bus used to select the target pull-up output impedance
      ADRVSTRENP     : DDRPHYC_ANIB0_ATXIMPEDANCE_ADRVSTRENP_Field := 16#1F#;
      --  5-bit bus used to select the target pull-down output impedance
      ADRVSTRENN     : DDRPHYC_ANIB0_ATXIMPEDANCE_ADRVSTRENN_Field := 16#1F#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB0_ATXIMPEDANCE_Register use record
      ADRVSTRENP     at 0 range 0 .. 4;
      ADRVSTRENN     at 0 range 5 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_ANIB0_ATESTPRBSERR_ATESTPRBSERR_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC ATestPrbsErr register
   type DDRPHYC_ANIB0_ATESTPRBSERR_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERR  : DDRPHYC_ANIB0_ATESTPRBSERR_ATESTPRBSERR_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB0_ATESTPRBSERR_Register use record
      ATESTPRBSERR  at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB0_ATXSLEWRATE_ATXPREP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB0_ATXSLEWRATE_ATXPREN_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB0_ATXSLEWRATE_ATXPREDRVMODE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC address T0 slew rate and predriver control register
   type DDRPHYC_ANIB0_ATXSLEWRATE_Register is record
      --  4-bit binary trim for the driver pull-up slew rate
      ATXPREP        : DDRPHYC_ANIB0_ATXSLEWRATE_ATXPREP_Field := 16#F#;
      --  4-bit binary trim for the driver pull-down slew rate
      ATXPREN        : DDRPHYC_ANIB0_ATXSLEWRATE_ATXPREN_Field := 16#F#;
      --  Controls predrivers to adjust timing of turn-on/-off of pull-up/-down
      --  segments.
      ATXPREDRVMODE  : DDRPHYC_ANIB0_ATXSLEWRATE_ATXPREDRVMODE_Field := 16#7#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB0_ATXSLEWRATE_Register use record
      ATXPREP        at 0 range 0 .. 3;
      ATXPREN        at 0 range 4 .. 7;
      ATXPREDRVMODE  at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_ANIB0_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC ATestPrbsErrCnt register
   type DDRPHYC_ANIB0_ATESTPRBSERRCNT_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERRCNT : DDRPHYC_ANIB0_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field;
      --  unspecified
      Reserved_16_31  : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB0_ATESTPRBSERRCNT_Register use record
      ATESTPRBSERRCNT at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_ANIB0_ATXDLY_ATXDLY_Field is Interfaces.Bit_Types.UInt7;

   --  DDRPHYC ATxDly register
   type DDRPHYC_ANIB0_ATXDLY_Register is record
      --  Trained for LPDDR4 to generate timed address and command signals
      ATXDLY        : DDRPHYC_ANIB0_ATXDLY_ATXDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB0_ATXDLY_Register use record
      ATXDLY        at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_ANIB1_MTESTMUXSEL_MTESTMUXSEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC MtestMuxSel register
   type DDRPHYC_ANIB1_MTESTMUXSEL_Register is record
      --  Controls for the 64-1 mux for asynchronous data to the digital
      --  observation pin.
      MTESTMUXSEL   : DDRPHYC_ANIB1_MTESTMUXSEL_MTESTMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB1_MTESTMUXSEL_Register use record
      MTESTMUXSEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_ANIB1_AFORCEDRVCONT_AFORCEDRVCONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceDrvCont register
   type DDRPHYC_ANIB1_AFORCEDRVCONT_Register is record
      --  Forces continuous drive, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCEDRVCONT : DDRPHYC_ANIB1_AFORCEDRVCONT_AFORCEDRVCONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB1_AFORCEDRVCONT_Register use record
      AFORCEDRVCONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB1_AFORCETRICONT_AFORCETRICONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceTriCont register
   type DDRPHYC_ANIB1_AFORCETRICONT_Register is record
      --  Forces tristate control, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCETRICONT : DDRPHYC_ANIB1_AFORCETRICONT_AFORCETRICONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB1_AFORCETRICONT_Register use record
      AFORCETRICONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB1_ATXIMPEDANCE_ADRVSTRENP_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRPHYC_ANIB1_ATXIMPEDANCE_ADRVSTRENN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC address T1 impedance control register
   type DDRPHYC_ANIB1_ATXIMPEDANCE_Register is record
      --  5-bit bus used to select the target pull-up output impedance
      ADRVSTRENP     : DDRPHYC_ANIB1_ATXIMPEDANCE_ADRVSTRENP_Field := 16#1F#;
      --  5-bit bus used to select the target pull-down output impedance
      ADRVSTRENN     : DDRPHYC_ANIB1_ATXIMPEDANCE_ADRVSTRENN_Field := 16#1F#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB1_ATXIMPEDANCE_Register use record
      ADRVSTRENP     at 0 range 0 .. 4;
      ADRVSTRENN     at 0 range 5 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_ANIB1_ATESTPRBSERR_ATESTPRBSERR_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC ATestPrbsErr register
   type DDRPHYC_ANIB1_ATESTPRBSERR_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERR  : DDRPHYC_ANIB1_ATESTPRBSERR_ATESTPRBSERR_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB1_ATESTPRBSERR_Register use record
      ATESTPRBSERR  at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB1_ATXSLEWRATE_ATXPREP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB1_ATXSLEWRATE_ATXPREN_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB1_ATXSLEWRATE_ATXPREDRVMODE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC address T1 slew rate and predriver control register
   type DDRPHYC_ANIB1_ATXSLEWRATE_Register is record
      --  4-bit binary trim for the driver pull-up slew rate
      ATXPREP        : DDRPHYC_ANIB1_ATXSLEWRATE_ATXPREP_Field := 16#F#;
      --  4-bit binary trim for the driver pull-down slew rate
      ATXPREN        : DDRPHYC_ANIB1_ATXSLEWRATE_ATXPREN_Field := 16#F#;
      --  Controls predrivers to adjust timing of turn-on/-off of pull-up/-down
      --  segments.
      ATXPREDRVMODE  : DDRPHYC_ANIB1_ATXSLEWRATE_ATXPREDRVMODE_Field := 16#7#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB1_ATXSLEWRATE_Register use record
      ATXPREP        at 0 range 0 .. 3;
      ATXPREN        at 0 range 4 .. 7;
      ATXPREDRVMODE  at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_ANIB1_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC ATestPrbsErrCnt register
   type DDRPHYC_ANIB1_ATESTPRBSERRCNT_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERRCNT : DDRPHYC_ANIB1_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field;
      --  unspecified
      Reserved_16_31  : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB1_ATESTPRBSERRCNT_Register use record
      ATESTPRBSERRCNT at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_ANIB1_ATXDLY_ATXDLY_Field is Interfaces.Bit_Types.UInt7;

   --  DDRPHYC ATxDly register
   type DDRPHYC_ANIB1_ATXDLY_Register is record
      --  Trained for LPDDR4 to generate timed address and command signals
      ATXDLY        : DDRPHYC_ANIB1_ATXDLY_ATXDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB1_ATXDLY_Register use record
      ATXDLY        at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_ANIB2_MTESTMUXSEL_MTESTMUXSEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC MtestMuxSel register
   type DDRPHYC_ANIB2_MTESTMUXSEL_Register is record
      --  Controls for the 64-1 mux for asynchronous data to the digital
      --  observation pin.
      MTESTMUXSEL   : DDRPHYC_ANIB2_MTESTMUXSEL_MTESTMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB2_MTESTMUXSEL_Register use record
      MTESTMUXSEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_ANIB2_AFORCEDRVCONT_AFORCEDRVCONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceDrvCont register
   type DDRPHYC_ANIB2_AFORCEDRVCONT_Register is record
      --  Forces continuous drive, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCEDRVCONT : DDRPHYC_ANIB2_AFORCEDRVCONT_AFORCEDRVCONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB2_AFORCEDRVCONT_Register use record
      AFORCEDRVCONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB2_AFORCETRICONT_AFORCETRICONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceTriCont register
   type DDRPHYC_ANIB2_AFORCETRICONT_Register is record
      --  Forces tristate control, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCETRICONT : DDRPHYC_ANIB2_AFORCETRICONT_AFORCETRICONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB2_AFORCETRICONT_Register use record
      AFORCETRICONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB2_ATXIMPEDANCE_ADRVSTRENP_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRPHYC_ANIB2_ATXIMPEDANCE_ADRVSTRENN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC address T2 impedance control register
   type DDRPHYC_ANIB2_ATXIMPEDANCE_Register is record
      --  5-bit bus used to select the target pull-up output impedance
      ADRVSTRENP     : DDRPHYC_ANIB2_ATXIMPEDANCE_ADRVSTRENP_Field := 16#1F#;
      --  5-bit bus used to select the target pull-down output impedance
      ADRVSTRENN     : DDRPHYC_ANIB2_ATXIMPEDANCE_ADRVSTRENN_Field := 16#1F#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB2_ATXIMPEDANCE_Register use record
      ADRVSTRENP     at 0 range 0 .. 4;
      ADRVSTRENN     at 0 range 5 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_ANIB2_ATESTPRBSERR_ATESTPRBSERR_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC ATestPrbsErr register
   type DDRPHYC_ANIB2_ATESTPRBSERR_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERR  : DDRPHYC_ANIB2_ATESTPRBSERR_ATESTPRBSERR_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB2_ATESTPRBSERR_Register use record
      ATESTPRBSERR  at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB2_ATXSLEWRATE_ATXPREP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB2_ATXSLEWRATE_ATXPREN_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB2_ATXSLEWRATE_ATXPREDRVMODE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC address T2 slew rate and predriver control register
   type DDRPHYC_ANIB2_ATXSLEWRATE_Register is record
      --  4-bit binary trim for the driver pull-up slew rate
      ATXPREP        : DDRPHYC_ANIB2_ATXSLEWRATE_ATXPREP_Field := 16#F#;
      --  4-bit binary trim for the driver pull-down slew rate
      ATXPREN        : DDRPHYC_ANIB2_ATXSLEWRATE_ATXPREN_Field := 16#F#;
      --  Controls predrivers to adjust timing of turn-on/-off of pull-up/-down
      --  segments.
      ATXPREDRVMODE  : DDRPHYC_ANIB2_ATXSLEWRATE_ATXPREDRVMODE_Field := 16#7#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB2_ATXSLEWRATE_Register use record
      ATXPREP        at 0 range 0 .. 3;
      ATXPREN        at 0 range 4 .. 7;
      ATXPREDRVMODE  at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_ANIB2_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC ATestPrbsErrCnt register
   type DDRPHYC_ANIB2_ATESTPRBSERRCNT_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERRCNT : DDRPHYC_ANIB2_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field;
      --  unspecified
      Reserved_16_31  : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB2_ATESTPRBSERRCNT_Register use record
      ATESTPRBSERRCNT at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_ANIB2_ATXDLY_ATXDLY_Field is Interfaces.Bit_Types.UInt7;

   --  DDRPHYC ATxDly register
   type DDRPHYC_ANIB2_ATXDLY_Register is record
      --  Trained for LPDDR4 to generate timed address and command signals
      ATXDLY        : DDRPHYC_ANIB2_ATXDLY_ATXDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB2_ATXDLY_Register use record
      ATXDLY        at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_ANIB3_MTESTMUXSEL_MTESTMUXSEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC MtestMuxSel register
   type DDRPHYC_ANIB3_MTESTMUXSEL_Register is record
      --  Controls for the 64-1 mux for asynchronous data to the digital
      --  observation pin.
      MTESTMUXSEL   : DDRPHYC_ANIB3_MTESTMUXSEL_MTESTMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB3_MTESTMUXSEL_Register use record
      MTESTMUXSEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_ANIB3_AFORCEDRVCONT_AFORCEDRVCONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceDrvCont register
   type DDRPHYC_ANIB3_AFORCEDRVCONT_Register is record
      --  Forces continuous drive, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCEDRVCONT : DDRPHYC_ANIB3_AFORCEDRVCONT_AFORCEDRVCONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB3_AFORCEDRVCONT_Register use record
      AFORCEDRVCONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB3_AFORCETRICONT_AFORCETRICONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceTriCont register
   type DDRPHYC_ANIB3_AFORCETRICONT_Register is record
      --  Forces tristate control, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCETRICONT : DDRPHYC_ANIB3_AFORCETRICONT_AFORCETRICONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB3_AFORCETRICONT_Register use record
      AFORCETRICONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB3_ATXIMPEDANCE_ADRVSTRENP_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRPHYC_ANIB3_ATXIMPEDANCE_ADRVSTRENN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC address T3 impedance control register
   type DDRPHYC_ANIB3_ATXIMPEDANCE_Register is record
      --  5-bit bus used to select the target pull-up output impedance
      ADRVSTRENP     : DDRPHYC_ANIB3_ATXIMPEDANCE_ADRVSTRENP_Field := 16#1F#;
      --  5-bit bus used to select the target pull-down output impedance
      ADRVSTRENN     : DDRPHYC_ANIB3_ATXIMPEDANCE_ADRVSTRENN_Field := 16#1F#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB3_ATXIMPEDANCE_Register use record
      ADRVSTRENP     at 0 range 0 .. 4;
      ADRVSTRENN     at 0 range 5 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_ANIB3_ATESTPRBSERR_ATESTPRBSERR_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC ATestPrbsErr register
   type DDRPHYC_ANIB3_ATESTPRBSERR_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERR  : DDRPHYC_ANIB3_ATESTPRBSERR_ATESTPRBSERR_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB3_ATESTPRBSERR_Register use record
      ATESTPRBSERR  at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB3_ATXSLEWRATE_ATXPREP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB3_ATXSLEWRATE_ATXPREN_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB3_ATXSLEWRATE_ATXPREDRVMODE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC address T3 slew rate and predriver control register
   type DDRPHYC_ANIB3_ATXSLEWRATE_Register is record
      --  4-bit binary trim for the driver pull-up slew rate
      ATXPREP        : DDRPHYC_ANIB3_ATXSLEWRATE_ATXPREP_Field := 16#F#;
      --  4-bit binary trim for the driver pull-down slew rate
      ATXPREN        : DDRPHYC_ANIB3_ATXSLEWRATE_ATXPREN_Field := 16#F#;
      --  Controls predrivers to adjust timing of turn-on/-off of pull-up/-down
      --  segments.
      ATXPREDRVMODE  : DDRPHYC_ANIB3_ATXSLEWRATE_ATXPREDRVMODE_Field := 16#7#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB3_ATXSLEWRATE_Register use record
      ATXPREP        at 0 range 0 .. 3;
      ATXPREN        at 0 range 4 .. 7;
      ATXPREDRVMODE  at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_ANIB3_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC ATestPrbsErrCnt register
   type DDRPHYC_ANIB3_ATESTPRBSERRCNT_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERRCNT : DDRPHYC_ANIB3_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field;
      --  unspecified
      Reserved_16_31  : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB3_ATESTPRBSERRCNT_Register use record
      ATESTPRBSERRCNT at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_ANIB3_ATXDLY_ATXDLY_Field is Interfaces.Bit_Types.UInt7;

   --  DDRPHYC ATxDly register
   type DDRPHYC_ANIB3_ATXDLY_Register is record
      --  Trained for LPDDR4 to generate timed address and command signals
      ATXDLY        : DDRPHYC_ANIB3_ATXDLY_ATXDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB3_ATXDLY_Register use record
      ATXDLY        at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_ANIB4_MTESTMUXSEL_MTESTMUXSEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC MtestMuxSel register
   type DDRPHYC_ANIB4_MTESTMUXSEL_Register is record
      --  Controls for the 64-1 mux for asynchronous data to the digital
      --  observation pin.
      MTESTMUXSEL   : DDRPHYC_ANIB4_MTESTMUXSEL_MTESTMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB4_MTESTMUXSEL_Register use record
      MTESTMUXSEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_ANIB4_AFORCEDRVCONT_AFORCEDRVCONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceDrvCont register
   type DDRPHYC_ANIB4_AFORCEDRVCONT_Register is record
      --  Forces continuous drive, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCEDRVCONT : DDRPHYC_ANIB4_AFORCEDRVCONT_AFORCEDRVCONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB4_AFORCEDRVCONT_Register use record
      AFORCEDRVCONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB4_AFORCETRICONT_AFORCETRICONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceTriCont register
   type DDRPHYC_ANIB4_AFORCETRICONT_Register is record
      --  Forces tristate control, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCETRICONT : DDRPHYC_ANIB4_AFORCETRICONT_AFORCETRICONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB4_AFORCETRICONT_Register use record
      AFORCETRICONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB4_ATXIMPEDANCE_ADRVSTRENP_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRPHYC_ANIB4_ATXIMPEDANCE_ADRVSTRENN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC address T4 impedance control register
   type DDRPHYC_ANIB4_ATXIMPEDANCE_Register is record
      --  5-bit bus used to select the target pull-up output impedance
      ADRVSTRENP     : DDRPHYC_ANIB4_ATXIMPEDANCE_ADRVSTRENP_Field := 16#1F#;
      --  5-bit bus used to select the target pull-down output impedance
      ADRVSTRENN     : DDRPHYC_ANIB4_ATXIMPEDANCE_ADRVSTRENN_Field := 16#1F#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB4_ATXIMPEDANCE_Register use record
      ADRVSTRENP     at 0 range 0 .. 4;
      ADRVSTRENN     at 0 range 5 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_ANIB4_ATESTPRBSERR_ATESTPRBSERR_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC ATestPrbsErr register
   type DDRPHYC_ANIB4_ATESTPRBSERR_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERR  : DDRPHYC_ANIB4_ATESTPRBSERR_ATESTPRBSERR_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB4_ATESTPRBSERR_Register use record
      ATESTPRBSERR  at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB4_ATXSLEWRATE_ATXPREP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB4_ATXSLEWRATE_ATXPREN_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB4_ATXSLEWRATE_ATXPREDRVMODE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC address T4 slew rate and predriver control register
   type DDRPHYC_ANIB4_ATXSLEWRATE_Register is record
      --  4-bit binary trim for the driver pull-up slew rate
      ATXPREP        : DDRPHYC_ANIB4_ATXSLEWRATE_ATXPREP_Field := 16#F#;
      --  4-bit binary trim for the driver pull-down slew rate
      ATXPREN        : DDRPHYC_ANIB4_ATXSLEWRATE_ATXPREN_Field := 16#F#;
      --  Controls predrivers to adjust timing of turn-on/-off of pull-up/-down
      --  segments.
      ATXPREDRVMODE  : DDRPHYC_ANIB4_ATXSLEWRATE_ATXPREDRVMODE_Field := 16#7#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB4_ATXSLEWRATE_Register use record
      ATXPREP        at 0 range 0 .. 3;
      ATXPREN        at 0 range 4 .. 7;
      ATXPREDRVMODE  at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_ANIB4_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC ATestPrbsErrCnt register
   type DDRPHYC_ANIB4_ATESTPRBSERRCNT_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERRCNT : DDRPHYC_ANIB4_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field;
      --  unspecified
      Reserved_16_31  : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB4_ATESTPRBSERRCNT_Register use record
      ATESTPRBSERRCNT at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_ANIB4_ATXDLY_ATXDLY_Field is Interfaces.Bit_Types.UInt7;

   --  DDRPHYC ATxDly register
   type DDRPHYC_ANIB4_ATXDLY_Register is record
      --  Trained for LPDDR4 to generate timed address and command signals
      ATXDLY        : DDRPHYC_ANIB4_ATXDLY_ATXDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB4_ATXDLY_Register use record
      ATXDLY        at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_ANIB5_MTESTMUXSEL_MTESTMUXSEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC MtestMuxSel register
   type DDRPHYC_ANIB5_MTESTMUXSEL_Register is record
      --  Controls for the 64-1 mux for asynchronous data to the digital
      --  observation pin.
      MTESTMUXSEL   : DDRPHYC_ANIB5_MTESTMUXSEL_MTESTMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB5_MTESTMUXSEL_Register use record
      MTESTMUXSEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_ANIB5_AFORCEDRVCONT_AFORCEDRVCONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceDrvCont register
   type DDRPHYC_ANIB5_AFORCEDRVCONT_Register is record
      --  Forces continuous drive, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCEDRVCONT : DDRPHYC_ANIB5_AFORCEDRVCONT_AFORCEDRVCONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB5_AFORCEDRVCONT_Register use record
      AFORCEDRVCONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB5_AFORCETRICONT_AFORCETRICONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceTriCont register
   type DDRPHYC_ANIB5_AFORCETRICONT_Register is record
      --  Forces tristate control, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCETRICONT : DDRPHYC_ANIB5_AFORCETRICONT_AFORCETRICONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB5_AFORCETRICONT_Register use record
      AFORCETRICONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB5_ATXIMPEDANCE_ADRVSTRENP_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRPHYC_ANIB5_ATXIMPEDANCE_ADRVSTRENN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC address T5 impedance control register
   type DDRPHYC_ANIB5_ATXIMPEDANCE_Register is record
      --  5-bit bus used to select the target pull-up output impedance
      ADRVSTRENP     : DDRPHYC_ANIB5_ATXIMPEDANCE_ADRVSTRENP_Field := 16#1F#;
      --  5-bit bus used to select the target pull-down output impedance
      ADRVSTRENN     : DDRPHYC_ANIB5_ATXIMPEDANCE_ADRVSTRENN_Field := 16#1F#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB5_ATXIMPEDANCE_Register use record
      ADRVSTRENP     at 0 range 0 .. 4;
      ADRVSTRENN     at 0 range 5 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_ANIB5_ATESTPRBSERR_ATESTPRBSERR_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC ATestPrbsErr register
   type DDRPHYC_ANIB5_ATESTPRBSERR_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERR  : DDRPHYC_ANIB5_ATESTPRBSERR_ATESTPRBSERR_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB5_ATESTPRBSERR_Register use record
      ATESTPRBSERR  at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB5_ATXSLEWRATE_ATXPREP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB5_ATXSLEWRATE_ATXPREN_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB5_ATXSLEWRATE_ATXPREDRVMODE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC address T5 slew rate and predriver control register
   type DDRPHYC_ANIB5_ATXSLEWRATE_Register is record
      --  4-bit binary trim for the driver pull-up slew rate
      ATXPREP        : DDRPHYC_ANIB5_ATXSLEWRATE_ATXPREP_Field := 16#F#;
      --  4-bit binary trim for the driver pull-down slew rate
      ATXPREN        : DDRPHYC_ANIB5_ATXSLEWRATE_ATXPREN_Field := 16#F#;
      --  Controls predrivers to adjust timing of turn-on/-off of pull-up/-down
      --  segments.
      ATXPREDRVMODE  : DDRPHYC_ANIB5_ATXSLEWRATE_ATXPREDRVMODE_Field := 16#7#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB5_ATXSLEWRATE_Register use record
      ATXPREP        at 0 range 0 .. 3;
      ATXPREN        at 0 range 4 .. 7;
      ATXPREDRVMODE  at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_ANIB5_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC ATestPrbsErrCnt register
   type DDRPHYC_ANIB5_ATESTPRBSERRCNT_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERRCNT : DDRPHYC_ANIB5_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field;
      --  unspecified
      Reserved_16_31  : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB5_ATESTPRBSERRCNT_Register use record
      ATESTPRBSERRCNT at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_ANIB5_ATXDLY_ATXDLY_Field is Interfaces.Bit_Types.UInt7;

   --  DDRPHYC ATxDly register
   type DDRPHYC_ANIB5_ATXDLY_Register is record
      --  Trained for LPDDR4 to generate timed address and command signals
      ATXDLY        : DDRPHYC_ANIB5_ATXDLY_ATXDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB5_ATXDLY_Register use record
      ATXDLY        at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_ANIB6_MTESTMUXSEL_MTESTMUXSEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC MtestMuxSel register
   type DDRPHYC_ANIB6_MTESTMUXSEL_Register is record
      --  Controls for the 64-1 mux for asynchronous data to the digital
      --  observation pin.
      MTESTMUXSEL   : DDRPHYC_ANIB6_MTESTMUXSEL_MTESTMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB6_MTESTMUXSEL_Register use record
      MTESTMUXSEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_ANIB6_AFORCEDRVCONT_AFORCEDRVCONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceDrvCont register
   type DDRPHYC_ANIB6_AFORCEDRVCONT_Register is record
      --  Forces continuous drive, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCEDRVCONT : DDRPHYC_ANIB6_AFORCEDRVCONT_AFORCEDRVCONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB6_AFORCEDRVCONT_Register use record
      AFORCEDRVCONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB6_AFORCETRICONT_AFORCETRICONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceTriCont register
   type DDRPHYC_ANIB6_AFORCETRICONT_Register is record
      --  Forces tristate control, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCETRICONT : DDRPHYC_ANIB6_AFORCETRICONT_AFORCETRICONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB6_AFORCETRICONT_Register use record
      AFORCETRICONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB6_ATXIMPEDANCE_ADRVSTRENP_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRPHYC_ANIB6_ATXIMPEDANCE_ADRVSTRENN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC address T6 impedance control register
   type DDRPHYC_ANIB6_ATXIMPEDANCE_Register is record
      --  5-bit bus used to select the target pull-up output impedance
      ADRVSTRENP     : DDRPHYC_ANIB6_ATXIMPEDANCE_ADRVSTRENP_Field := 16#1F#;
      --  5-bit bus used to select the target pull-down output impedance
      ADRVSTRENN     : DDRPHYC_ANIB6_ATXIMPEDANCE_ADRVSTRENN_Field := 16#1F#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB6_ATXIMPEDANCE_Register use record
      ADRVSTRENP     at 0 range 0 .. 4;
      ADRVSTRENN     at 0 range 5 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_ANIB6_ATESTPRBSERR_ATESTPRBSERR_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC ATestPrbsErr register
   type DDRPHYC_ANIB6_ATESTPRBSERR_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERR  : DDRPHYC_ANIB6_ATESTPRBSERR_ATESTPRBSERR_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB6_ATESTPRBSERR_Register use record
      ATESTPRBSERR  at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB6_ATXSLEWRATE_ATXPREP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB6_ATXSLEWRATE_ATXPREN_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB6_ATXSLEWRATE_ATXPREDRVMODE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC address T6 slew rate and predriver control register
   type DDRPHYC_ANIB6_ATXSLEWRATE_Register is record
      --  4-bit binary trim for the driver pull-up slew rate
      ATXPREP        : DDRPHYC_ANIB6_ATXSLEWRATE_ATXPREP_Field := 16#F#;
      --  4-bit binary trim for the driver pull-down slew rate
      ATXPREN        : DDRPHYC_ANIB6_ATXSLEWRATE_ATXPREN_Field := 16#F#;
      --  Controls predrivers to adjust timing of turn-on/-off of pull-up/-down
      --  segments.
      ATXPREDRVMODE  : DDRPHYC_ANIB6_ATXSLEWRATE_ATXPREDRVMODE_Field := 16#7#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB6_ATXSLEWRATE_Register use record
      ATXPREP        at 0 range 0 .. 3;
      ATXPREN        at 0 range 4 .. 7;
      ATXPREDRVMODE  at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_ANIB6_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC ATestPrbsErrCnt register
   type DDRPHYC_ANIB6_ATESTPRBSERRCNT_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERRCNT : DDRPHYC_ANIB6_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field;
      --  unspecified
      Reserved_16_31  : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB6_ATESTPRBSERRCNT_Register use record
      ATESTPRBSERRCNT at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_ANIB6_ATXDLY_ATXDLY_Field is Interfaces.Bit_Types.UInt7;

   --  DDRPHYC ATxDly register
   type DDRPHYC_ANIB6_ATXDLY_Register is record
      --  Trained for LPDDR4 to generate timed address and command signals
      ATXDLY        : DDRPHYC_ANIB6_ATXDLY_ATXDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB6_ATXDLY_Register use record
      ATXDLY        at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_ANIB7_MTESTMUXSEL_MTESTMUXSEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC MtestMuxSel register
   type DDRPHYC_ANIB7_MTESTMUXSEL_Register is record
      --  Controls for the 64-1 mux for asynchronous data to the digital
      --  observation pin.
      MTESTMUXSEL   : DDRPHYC_ANIB7_MTESTMUXSEL_MTESTMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB7_MTESTMUXSEL_Register use record
      MTESTMUXSEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_ANIB7_AFORCEDRVCONT_AFORCEDRVCONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceDrvCont register
   type DDRPHYC_ANIB7_AFORCEDRVCONT_Register is record
      --  Forces continuous drive, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCEDRVCONT : DDRPHYC_ANIB7_AFORCEDRVCONT_AFORCEDRVCONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB7_AFORCEDRVCONT_Register use record
      AFORCEDRVCONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB7_AFORCETRICONT_AFORCETRICONT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC AForceTriCont register
   type DDRPHYC_ANIB7_AFORCETRICONT_Register is record
      --  Forces tristate control, per-lane, of the ACX4 instance controlled by
      --  this register.
      AFORCETRICONT : DDRPHYC_ANIB7_AFORCETRICONT_AFORCETRICONT_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB7_AFORCETRICONT_Register use record
      AFORCETRICONT at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB7_ATXIMPEDANCE_ADRVSTRENP_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRPHYC_ANIB7_ATXIMPEDANCE_ADRVSTRENN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC address T7 impedance control register
   type DDRPHYC_ANIB7_ATXIMPEDANCE_Register is record
      --  5-bit bus used to select the target pull-up output impedance
      ADRVSTRENP     : DDRPHYC_ANIB7_ATXIMPEDANCE_ADRVSTRENP_Field := 16#1F#;
      --  5-bit bus used to select the target pull-down output impedance
      ADRVSTRENN     : DDRPHYC_ANIB7_ATXIMPEDANCE_ADRVSTRENN_Field := 16#1F#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB7_ATXIMPEDANCE_Register use record
      ADRVSTRENP     at 0 range 0 .. 4;
      ADRVSTRENN     at 0 range 5 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_ANIB7_ATESTPRBSERR_ATESTPRBSERR_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC ATestPrbsErr register
   type DDRPHYC_ANIB7_ATESTPRBSERR_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERR  : DDRPHYC_ANIB7_ATESTPRBSERR_ATESTPRBSERR_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB7_ATESTPRBSERR_Register use record
      ATESTPRBSERR  at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_ANIB7_ATXSLEWRATE_ATXPREP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB7_ATXSLEWRATE_ATXPREN_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_ANIB7_ATXSLEWRATE_ATXPREDRVMODE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC address T7 slew rate and predriver control register
   type DDRPHYC_ANIB7_ATXSLEWRATE_Register is record
      --  4-bit binary trim for the driver pull-up slew rate
      ATXPREP        : DDRPHYC_ANIB7_ATXSLEWRATE_ATXPREP_Field := 16#F#;
      --  4-bit binary trim for the driver pull-down slew rate
      ATXPREN        : DDRPHYC_ANIB7_ATXSLEWRATE_ATXPREN_Field := 16#F#;
      --  Controls predrivers to adjust timing of turn-on/-off of pull-up/-down
      --  segments.
      ATXPREDRVMODE  : DDRPHYC_ANIB7_ATXSLEWRATE_ATXPREDRVMODE_Field := 16#7#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB7_ATXSLEWRATE_Register use record
      ATXPREP        at 0 range 0 .. 3;
      ATXPREN        at 0 range 4 .. 7;
      ATXPREDRVMODE  at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_ANIB7_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC ATestPrbsErrCnt register
   type DDRPHYC_ANIB7_ATESTPRBSERRCNT_Register is record
      --  Read-only. Overall error indicator for each PRBS bump checker
      ATESTPRBSERRCNT : DDRPHYC_ANIB7_ATESTPRBSERRCNT_ATESTPRBSERRCNT_Field;
      --  unspecified
      Reserved_16_31  : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB7_ATESTPRBSERRCNT_Register use record
      ATESTPRBSERRCNT at 0 range 0 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_ANIB7_ATXDLY_ATXDLY_Field is Interfaces.Bit_Types.UInt7;

   --  DDRPHYC ATxDly register
   type DDRPHYC_ANIB7_ATXDLY_Register is record
      --  Trained for LPDDR4 to generate timed address and command signals
      ATXDLY        : DDRPHYC_ANIB7_ATXDLY_ATXDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_ANIB7_ATXDLY_Register use record
      ATXDLY        at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  DDRPHYC DBYTE module disable register
   type DDRPHYC_DBYTE0_DBYTEMISCMODE_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  DBYTE disable
      DBYTEDISABLE  : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DBYTEMISCMODE_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DBYTEDISABLE  at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_MTESTMUXSEL_MTESTMUXSEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC MtestMuxSel register
   type DDRPHYC_DBYTE0_MTESTMUXSEL_Register is record
      --  Controls for the 64-1 mux for asynchronous data to the digital
      --  observation pin.
      MTESTMUXSEL   : DDRPHYC_DBYTE0_MTESTMUXSEL_MTESTMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_MTESTMUXSEL_Register use record
      MTESTMUXSEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_DFIMRL_DFIMRL_Field is Interfaces.Bit_Types.UInt5;

   --  DDRPHYC DFIMRL register
   type DDRPHYC_DBYTE0_DFIMRL_Register is record
      --  DFI maximum read latency (MRL)
      DFIMRL        : DDRPHYC_DBYTE0_DFIMRL_DFIMRL_Field := 16#6#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DFIMRL_Register use record
      DFIMRL        at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_VREFDAC0_R_VREFDAC0_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRPHYC VrefDAC0_ry register
   type DDRPHYC_DBYTE0_VREFDAC0_R_Register is record
      --  PHY Rx Vless thansub>REFless than/sub> DAC control for rxdq cell
      --  internal Vless thansub>REFless than/sub>
      VREFDAC0      : DDRPHYC_DBYTE0_VREFDAC0_R_VREFDAC0_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_VREFDAC0_R_Register use record
      VREFDAC0      at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_TXIMPEDANCECTRL0_B_DRVSTRENDQP_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRPHYC_DBYTE0_TXIMPEDANCECTRL0_B_DRVSTRENDQN_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC data T0 impedance controls register
   type DDRPHYC_DBYTE0_TXIMPEDANCECTRL0_B_Register is record
      --  6-bit bus used to select the target pull-down output impedance
      DRVSTRENDQP    : DDRPHYC_DBYTE0_TXIMPEDANCECTRL0_B_DRVSTRENDQP_Field :=
                        16#3F#;
      --  6-bit bus used to select the target pull-down output impedance
      DRVSTRENDQN    : DDRPHYC_DBYTE0_TXIMPEDANCECTRL0_B_DRVSTRENDQN_Field :=
                        16#3F#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_TXIMPEDANCECTRL0_B_Register use record
      DRVSTRENDQP    at 0 range 0 .. 5;
      DRVSTRENDQN    at 0 range 6 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B_DFECTRL_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B_MAJORMODEDBYTE_Field is
     Interfaces.Bit_Types.UInt3;
   subtype DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B_GAINCURRADJ_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC DQ/DQS receiver control register
   type DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B_Register is record
      --  Setting this bit forces the local per-bit Vless thansub>REFless
      --  than/sub> generator to pass the global VREFA
      SELANALOGVREF  : Boolean := False;
      --  Extends the range available in the local per-bit VREF generator.
      EXTVREFRANGE   : Boolean := False;
      --  Note: These settings are determined by PHY training firmware, and
      --  must not be overridden.
      DFECTRL        : DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B_DFECTRL_Field := 16#0#;
      --  Selection of the major mode of operation for the receiver
      MAJORMODEDBYTE : DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B_MAJORMODEDBYTE_Field :=
                        16#3#;
      --  Adjusts gain current of RX amplifier stage.
      GAINCURRADJ    : DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B_GAINCURRADJ_Field :=
                        16#B#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B_Register use record
      SELANALOGVREF  at 0 range 0 .. 0;
      EXTVREFRANGE   at 0 range 1 .. 1;
      DFECTRL        at 0 range 2 .. 3;
      MAJORMODEDBYTE at 0 range 4 .. 6;
      GAINCURRADJ    at 0 range 7 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_DQDQSRCVCNTRL1_POWERDOWNRCVR_Field is
     Interfaces.Bit_Types.UInt9;

   --  DDRPHYC DQ/DQS receiver control register
   type DDRPHYC_DBYTE0_DQDQSRCVCNTRL1_Register is record
      --  Active high signal which powers down the receiver
      POWERDOWNRCVR    : DDRPHYC_DBYTE0_DQDQSRCVCNTRL1_POWERDOWNRCVR_Field :=
                          16#0#;
      --  Active high signal which powers down the receiver
      POWERDOWNRCVRDQS : Boolean := False;
      --  Enables rxdq/rxdqs Standby power savings, per pad-group.
      RXPADSTANDBYEN   : Boolean := True;
      --  not used
      ENLPREQPDR       : Boolean := False;
      --  unspecified
      Reserved_12_31   : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DQDQSRCVCNTRL1_Register use record
      POWERDOWNRCVR    at 0 range 0 .. 8;
      POWERDOWNRCVRDQS at 0 range 9 .. 9;
      RXPADSTANDBYEN   at 0 range 10 .. 10;
      ENLPREQPDR       at 0 range 11 .. 11;
      Reserved_12_31   at 0 range 12 .. 31;
   end record;

   --  DDRPHYC DQ/DQS receiver control register
   type DDRPHYC_DBYTE0_DQDQSRCVCNTRL2_Register is record
      --  None
      ENRXAGRESSIVEPDR : Boolean := False;
      --  unspecified
      Reserved_1_31    : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DQDQSRCVCNTRL2_Register use record
      ENRXAGRESSIVEPDR at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_TXODTDRVSTREN_B_ODTSTRENP_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRPHYC_DBYTE0_TXODTDRVSTREN_B_ODTSTRENN_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC TX ODT driver strength control register
   type DDRPHYC_DBYTE0_TXODTDRVSTREN_B_Register is record
      --  ODT pull-up impedance selection
      ODTSTRENP      : DDRPHYC_DBYTE0_TXODTDRVSTREN_B_ODTSTRENP_Field :=
                        16#0#;
      --  ODT pull-down impedance selection
      ODTSTRENN      : DDRPHYC_DBYTE0_TXODTDRVSTREN_B_ODTSTRENN_Field :=
                        16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_TXODTDRVSTREN_B_Register use record
      ODTSTRENP      at 0 range 0 .. 5;
      ODTSTRENN      at 0 range 6 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  DDRPHYC status of RX FIFO consistency checks register
   type DDRPHYC_DBYTE0_RXFIFOCHECKSTATUS_Register is record
      --  Read-only. If this bit is set, the read pointer (DFI side) on the
      --  read FIFO associated with data bits [3:0]
      RXFIFOLOCERR  : Boolean;
      --  Read-only. If this bit is set, the read pointer (DFI side) on the
      --  read FIFO associated with data bits [7:4]
      RXFIFOLOCUERR : Boolean;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXFIFOCHECKSTATUS_Register use record
      RXFIFOLOCERR  at 0 range 0 .. 0;
      RXFIFOLOCUERR at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXFIFOCHECKERRVALUES_RXFIFORDLOCERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE0_RXFIFOCHECKERRVALUES_RXFIFOWRLOCERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE0_RXFIFOCHECKERRVALUES_RXFIFORDLOCUERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE0_RXFIFOCHECKERRVALUES_RXFIFOWRLOCUERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC captured values associated with an RxFIFO consistency	error
   --  register
   type DDRPHYC_DBYTE0_RXFIFOCHECKERRVALUES_Register is record
      --  Read-only. First error value captured for the read pointer (DFI side)
      --  on the read FIFO associated with data bits [3:0]
      RXFIFORDLOCERRVALUE  : DDRPHYC_DBYTE0_RXFIFOCHECKERRVALUES_RXFIFORDLOCERRVALUE_Field;
      --  Read-only. First error value captured for the write pointer (DQS
      --  side) on the read FIFO associated with data bits [3:0]
      RXFIFOWRLOCERRVALUE  : DDRPHYC_DBYTE0_RXFIFOCHECKERRVALUES_RXFIFOWRLOCERRVALUE_Field;
      --  Read-only. First error value captured for the read pointer (DFI side)
      --  on the read FIFO associated with data bits [7:4]
      RXFIFORDLOCUERRVALUE : DDRPHYC_DBYTE0_RXFIFOCHECKERRVALUES_RXFIFORDLOCUERRVALUE_Field;
      --  Read-only. First error value captured for the write pointer (DQS
      --  side) on the read FIFO associated with data bits [7:4]
      RXFIFOWRLOCUERRVALUE : DDRPHYC_DBYTE0_RXFIFOCHECKERRVALUES_RXFIFOWRLOCUERRVALUE_Field;
      --  unspecified
      Reserved_16_31       : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXFIFOCHECKERRVALUES_Register use record
      RXFIFORDLOCERRVALUE  at 0 range 0 .. 3;
      RXFIFOWRLOCERRVALUE  at 0 range 4 .. 7;
      RXFIFORDLOCUERRVALUE at 0 range 8 .. 11;
      RXFIFOWRLOCUERRVALUE at 0 range 12 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXFIFOINFO_RXFIFORDLOC_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE0_RXFIFOINFO_RXFIFOWRLOC_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE0_RXFIFOINFO_RXFIFORDLOCU_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE0_RXFIFOINFO_RXFIFOWRLOCU_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC data receive FIFO pointer values register
   type DDRPHYC_DBYTE0_RXFIFOINFO_Register is record
      --  Read-only. Mission mode read pointer of the lower-nibble Rx FIFO
      RXFIFORDLOC    : DDRPHYC_DBYTE0_RXFIFOINFO_RXFIFORDLOC_Field;
      --  Read-only. Mission mode write pointer of the lower-nibble Rx FIFO
      RXFIFOWRLOC    : DDRPHYC_DBYTE0_RXFIFOINFO_RXFIFOWRLOC_Field;
      --  Read-only. Mission mode read pointer of the upper-nibble Rx FIFO
      RXFIFORDLOCU   : DDRPHYC_DBYTE0_RXFIFOINFO_RXFIFORDLOCU_Field;
      --  Read-only. Mission mode write pointer of the upper-nibble Rx FIFO
      RXFIFOWRLOCU   : DDRPHYC_DBYTE0_RXFIFOINFO_RXFIFOWRLOCU_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXFIFOINFO_Register use record
      RXFIFORDLOC    at 0 range 0 .. 3;
      RXFIFOWRLOC    at 0 range 4 .. 7;
      RXFIFORDLOCU   at 0 range 8 .. 11;
      RXFIFOWRLOCU   at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXFIFOVISIBILITY_RXFIFORDPTR_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC R0 FIFO visibility register
   type DDRPHYC_DBYTE0_RXFIFOVISIBILITY_Register is record
      --  If RXFIFORDPTROVR is set, this bit field selects the Rx FIFO entry.
      RXFIFORDPTR    : DDRPHYC_DBYTE0_RXFIFOVISIBILITY_RXFIFORDPTR_Field :=
                        16#0#;
      --  This bit is programmable as follows:
      RXFIFORDPTROVR : Boolean := False;
      --  Pulse [set 0-->1-->0] this bit to capture the FIFO contents.
      RXFIFORDEN     : Boolean := False;
      --  unspecified
      Reserved_5_31  : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXFIFOVISIBILITY_Register use record
      RXFIFORDPTR    at 0 range 0 .. 2;
      RXFIFORDPTROVR at 0 range 3 .. 3;
      RXFIFORDEN     at 0 range 4 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ3210_RXFIFOCONTENTSDQ3210_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC R0 FIFO content DQ321x register
   type DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ3210_Register is record
      --  Read-only. Window into the contents of the Rx FIFO, as controlled
      RXFIFOCONTENTSDQ3210 : DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ3210_RXFIFOCONTENTSDQ3210_Field;
      --  unspecified
      Reserved_16_31       : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ3210_Register use record
      RXFIFOCONTENTSDQ3210 at 0 range 0 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ7654_RXFIFOCONTENTSDQ7654_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC R0 FIFO content DQ7654 register
   type DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ7654_Register is record
      --  Read-only. Window into the contents of the Rx FIFO as controlled
      RXFIFOCONTENTSDQ7654 : DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ7654_RXFIFOCONTENTSDQ7654_Field;
      --  unspecified
      Reserved_16_31       : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ7654_Register use record
      RXFIFOCONTENTSDQ7654 at 0 range 0 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXFIFOCONTENTSDBI_RXFIFOCONTENTSDBI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC R0 FIFO content DBI register
   type DDRPHYC_DBYTE0_RXFIFOCONTENTSDBI_Register is record
      --  Read-only. Window into the contents of the Rx FIFO, as controlled
      RXFIFOCONTENTSDBI : DDRPHYC_DBYTE0_RXFIFOCONTENTSDBI_RXFIFOCONTENTSDBI_Field;
      --  unspecified
      Reserved_4_31     : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXFIFOCONTENTSDBI_Register use record
      RXFIFOCONTENTSDBI at 0 range 0 .. 3;
      Reserved_4_31     at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_TXSLEWRATE_B_TXPREP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE0_TXSLEWRATE_B_TXPREN_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE0_TXSLEWRATE_B_TXPREDRVMODE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC T0 slew rate controls register
   type DDRPHYC_DBYTE0_TXSLEWRATE_B_Register is record
      --  4-bit binary trim for the driver pull-up slew rate
      TXPREP         : DDRPHYC_DBYTE0_TXSLEWRATE_B_TXPREP_Field := 16#F#;
      --  4-bit binary trim for the driver pull -own slew rate
      TXPREN         : DDRPHYC_DBYTE0_TXSLEWRATE_B_TXPREN_Field := 16#F#;
      --  Controls predrivers to adjust timing of turn-on and turn-off of
      --  pull-up and pull-down segments.
      TXPREDRVMODE   : DDRPHYC_DBYTE0_TXSLEWRATE_B_TXPREDRVMODE_Field :=
                        16#7#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_TXSLEWRATE_B_Register use record
      TXPREP         at 0 range 0 .. 3;
      TXPREN         at 0 range 4 .. 7;
      TXPREDRVMODE   at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXPBDLYTG0_R_RXPBDLYTG0_R0_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRPHYC RxPBDlyTgx_r0 register
   type DDRPHYC_DBYTE0_RXPBDLYTG0_R_Register is record
      --  Read DQ per-bit BDL delay (timing group 0)
      RXPBDLYTG0_R0 : DDRPHYC_DBYTE0_RXPBDLYTG0_R_RXPBDLYTG0_R0_Field :=
                       16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXPBDLYTG0_R_Register use record
      RXPBDLYTG0_R0 at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXPBDLYTG1_R_RXPBDLYTG1_R0_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRPHYC RxPBDlyTg1_rx register
   type DDRPHYC_DBYTE0_RXPBDLYTG1_R_Register is record
      --  Read DQ per-bit BDL delay (timing group 1)
      RXPBDLYTG1_R0 : DDRPHYC_DBYTE0_RXPBDLYTG1_R_RXPBDLYTG1_R0_Field :=
                       16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXPBDLYTG1_R_Register use record
      RXPBDLYTG1_R0 at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXENDLYTG0_U0_RXENDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTgx_u0 register
   type DDRPHYC_DBYTE0_RXENDLYTG0_U0_Register is record
      --  Trained receive enable delay (timing group 0)
      RXENDLYTG0_U0  : DDRPHYC_DBYTE0_RXENDLYTG0_U0_RXENDLYTG0_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXENDLYTG0_U0_Register use record
      RXENDLYTG0_U0  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXENDLYTG1_U0_RXENDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTg1_ux register
   type DDRPHYC_DBYTE0_RXENDLYTG1_U0_Register is record
      --  Trained receive enable delay (timing group 1)
      RXENDLYTG1_U0  : DDRPHYC_DBYTE0_RXENDLYTG1_U0_RXENDLYTG1_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXENDLYTG1_U0_Register use record
      RXENDLYTG1_U0  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXCLKDLYTG0_U0_RXCLKDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTgx_u0 register
   type DDRPHYC_DBYTE0_RXCLKDLYTG0_U0_Register is record
      --  Trained read DQS to RxClk delay (timing group 0)
      RXCLKDLYTG0_U0 : DDRPHYC_DBYTE0_RXCLKDLYTG0_U0_RXCLKDLYTG0_U0_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXCLKDLYTG0_U0_Register use record
      RXCLKDLYTG0_U0 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXCLKDLYTG1_U0_RXCLKDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTg1_ux register
   type DDRPHYC_DBYTE0_RXCLKDLYTG1_U0_Register is record
      --  Trained read DQS to RxClk delay (timing group 1)
      RXCLKDLYTG1_U0 : DDRPHYC_DBYTE0_RXCLKDLYTG1_U0_RXCLKDLYTG1_U0_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXCLKDLYTG1_U0_Register use record
      RXCLKDLYTG1_U0 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXCLKCDLYTG0_U0_RXCLKCDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTgx_u0 register
   type DDRPHYC_DBYTE0_RXCLKCDLYTG0_U0_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 0)
      RXCLKCDLYTG0_U0 : DDRPHYC_DBYTE0_RXCLKCDLYTG0_U0_RXCLKCDLYTG0_U0_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXCLKCDLYTG0_U0_Register use record
      RXCLKCDLYTG0_U0 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXCLKCDLYTG1_U0_RXCLKCDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTg1_ux register
   type DDRPHYC_DBYTE0_RXCLKCDLYTG1_U0_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 1)
      RXCLKCDLYTG1_U0 : DDRPHYC_DBYTE0_RXCLKCDLYTG1_U0_RXCLKCDLYTG1_U0_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXCLKCDLYTG1_U0_Register use record
      RXCLKCDLYTG1_U0 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_DQ0LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE0_DQ0LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE0_DQ0LNSEL_DQYLNSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DQ0LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_DQ1LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE0_DQ1LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE0_DQ1LNSEL_DQYLNSEL_Field := 16#1#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DQ1LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_DQ2LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE0_DQ2LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE0_DQ2LNSEL_DQYLNSEL_Field := 16#2#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DQ2LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_DQ3LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE0_DQ3LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE0_DQ3LNSEL_DQYLNSEL_Field := 16#3#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DQ3LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_DQ4LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE0_DQ4LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE0_DQ4LNSEL_DQYLNSEL_Field := 16#4#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DQ4LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_DQ5LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE0_DQ5LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE0_DQ5LNSEL_DQYLNSEL_Field := 16#5#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DQ5LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_DQ6LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE0_DQ6LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE0_DQ6LNSEL_DQYLNSEL_Field := 16#6#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DQ6LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_DQ7LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE0_DQ7LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE0_DQ7LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DQ7LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_TXDQDLYTG0_R_TXDQDLYTG0_R0_Field is
     Interfaces.Bit_Types.UInt9;

   --  DDRPHYC TxDqDlyTgx_r0 register
   type DDRPHYC_DBYTE0_TXDQDLYTG0_R_Register is record
      --  Write DQ delay (timing group 0)
      TXDQDLYTG0_R0 : DDRPHYC_DBYTE0_TXDQDLYTG0_R_TXDQDLYTG0_R0_Field :=
                       16#10#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_TXDQDLYTG0_R_Register use record
      TXDQDLYTG0_R0 at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_TXDQDLYTG1_R_TXDQDLYTG1_R0_Field is
     Interfaces.Bit_Types.UInt9;

   --  DDRPHYC TxDqDlyTg1_rx register
   type DDRPHYC_DBYTE0_TXDQDLYTG1_R_Register is record
      --  Write DQ delay (timing group 1)
      TXDQDLYTG1_R0 : DDRPHYC_DBYTE0_TXDQDLYTG1_R_TXDQDLYTG1_R0_Field :=
                       16#10#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_TXDQDLYTG1_R_Register use record
      TXDQDLYTG1_R0 at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_TXDQSDLYTG0_U0_TXDQSDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTgx_u0 register
   type DDRPHYC_DBYTE0_TXDQSDLYTG0_U0_Register is record
      --  Write DQS delay (timing group 0)
      TXDQSDLYTG0_U0 : DDRPHYC_DBYTE0_TXDQSDLYTG0_U0_TXDQSDLYTG0_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_TXDQSDLYTG0_U0_Register use record
      TXDQSDLYTG0_U0 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_TXDQSDLYTG1_U0_TXDQSDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTg1_ux register
   type DDRPHYC_DBYTE0_TXDQSDLYTG1_U0_Register is record
      --  Write DQS delay (timing group 1)
      TXDQSDLYTG1_U0 : DDRPHYC_DBYTE0_TXDQSDLYTG1_U0_TXDQSDLYTG1_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_TXDQSDLYTG1_U0_Register use record
      TXDQSDLYTG1_U0 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_DXLCDLSTATUS_DXLCDLFINESNAPVAL_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC debug status of the DBYTE LCDL register
   type DDRPHYC_DBYTE0_DXLCDLSTATUS_Register is record
      --  Read-only. Value of the LCDL 1UI estimate code, latched by pulse on
      --  LcdlFineSnap while LCDLTSTENABLE = 1
      DXLCDLFINESNAPVAL  : DDRPHYC_DBYTE0_DXLCDLSTATUS_DXLCDLFINESNAPVAL_Field;
      --  Read-only. Value of the LCDL phase-detector output, latched by pulse
      DXLCDLPHDSNAPVAL   : Boolean;
      --  Read-only. Latched value of whether the LCDL ever achieved lock after
      --  the assertion of LCDLTSTENABLE
      DXLCDLSTICKYLOCK   : Boolean;
      --  Read-only. Latched value of whether the LCDL ever lost lock after the
      --  assertion of LCDLTSTENABLE
      DXLCDLSTICKYUNLOCK : Boolean;
      --  Read-only. Present value of whether the LCDL is locked
      DXLCDLLIVELOCK     : Boolean;
      --  unspecified
      Reserved_14_31     : Interfaces.Bit_Types.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_DXLCDLSTATUS_Register use record
      DXLCDLFINESNAPVAL  at 0 range 0 .. 9;
      DXLCDLPHDSNAPVAL   at 0 range 10 .. 10;
      DXLCDLSTICKYLOCK   at 0 range 11 .. 11;
      DXLCDLSTICKYUNLOCK at 0 range 12 .. 12;
      DXLCDLLIVELOCK     at 0 range 13 .. 13;
      Reserved_14_31     at 0 range 14 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXENDLYTG0_U1_RXENDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTgx_u1 register
   type DDRPHYC_DBYTE0_RXENDLYTG0_U1_Register is record
      --  Trained receive enable delay (timing group 0)
      RXENDLYTG0_U1  : DDRPHYC_DBYTE0_RXENDLYTG0_U1_RXENDLYTG0_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXENDLYTG0_U1_Register use record
      RXENDLYTG0_U1  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXENDLYTG1_U1_RXENDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTg1_u1 register
   type DDRPHYC_DBYTE0_RXENDLYTG1_U1_Register is record
      --  Trained receive enable delay (timing group 1)
      RXENDLYTG1_U1  : DDRPHYC_DBYTE0_RXENDLYTG1_U1_RXENDLYTG1_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXENDLYTG1_U1_Register use record
      RXENDLYTG1_U1  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXCLKDLYTG0_U1_RXCLKDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTgx_u1 register
   type DDRPHYC_DBYTE0_RXCLKDLYTG0_U1_Register is record
      --  Trained read DQS to RxClk delay (timing group 0)
      RXCLKDLYTG0_U1 : DDRPHYC_DBYTE0_RXCLKDLYTG0_U1_RXCLKDLYTG0_U1_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXCLKDLYTG0_U1_Register use record
      RXCLKDLYTG0_U1 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXCLKDLYTG1_U1_RXCLKDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTg1_u1 register
   type DDRPHYC_DBYTE0_RXCLKDLYTG1_U1_Register is record
      --  Trained read DQS to RxClk delay (timing group 1)
      RXCLKDLYTG1_U1 : DDRPHYC_DBYTE0_RXCLKDLYTG1_U1_RXCLKDLYTG1_U1_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXCLKDLYTG1_U1_Register use record
      RXCLKDLYTG1_U1 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXCLKCDLYTG0_U1_RXCLKCDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTgx_u1 register
   type DDRPHYC_DBYTE0_RXCLKCDLYTG0_U1_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 0)
      RXCLKCDLYTG0_U1 : DDRPHYC_DBYTE0_RXCLKCDLYTG0_U1_RXCLKCDLYTG0_U1_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXCLKCDLYTG0_U1_Register use record
      RXCLKCDLYTG0_U1 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_RXCLKCDLYTG1_U1_RXCLKCDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTg1_u1 register
   type DDRPHYC_DBYTE0_RXCLKCDLYTG1_U1_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 1)
      RXCLKCDLYTG1_U1 : DDRPHYC_DBYTE0_RXCLKCDLYTG1_U1_RXCLKCDLYTG1_U1_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_RXCLKCDLYTG1_U1_Register use record
      RXCLKCDLYTG1_U1 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_TXDQSDLYTG0_U1_TXDQSDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTgx_u1 register
   type DDRPHYC_DBYTE0_TXDQSDLYTG0_U1_Register is record
      --  Write DQS delay (timing group 0)
      TXDQSDLYTG0_U1 : DDRPHYC_DBYTE0_TXDQSDLYTG0_U1_TXDQSDLYTG0_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_TXDQSDLYTG0_U1_Register use record
      TXDQSDLYTG0_U1 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_DBYTE0_TXDQSDLYTG1_U1_TXDQSDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTg1_u1 register
   type DDRPHYC_DBYTE0_TXDQSDLYTG1_U1_Register is record
      --  Write DQS delay (timing group 1)
      TXDQSDLYTG1_U1 : DDRPHYC_DBYTE0_TXDQSDLYTG1_U1_TXDQSDLYTG1_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE0_TXDQSDLYTG1_U1_Register use record
      TXDQSDLYTG1_U1 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  DDRPHYC DBYTE module disable register
   type DDRPHYC_DBYTE1_DBYTEMISCMODE_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  DBYTE disable
      DBYTEDISABLE  : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DBYTEMISCMODE_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DBYTEDISABLE  at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_MTESTMUXSEL_MTESTMUXSEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC MtestMuxSel register
   type DDRPHYC_DBYTE1_MTESTMUXSEL_Register is record
      --  Controls for the 64-1 mux for asynchronous data to the digital
      --  observation pin.
      MTESTMUXSEL   : DDRPHYC_DBYTE1_MTESTMUXSEL_MTESTMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_MTESTMUXSEL_Register use record
      MTESTMUXSEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_DFIMRL_DFIMRL_Field is Interfaces.Bit_Types.UInt5;

   --  DDRPHYC DFIMRL register
   type DDRPHYC_DBYTE1_DFIMRL_Register is record
      --  DFI maximum read latency (MRL)
      DFIMRL        : DDRPHYC_DBYTE1_DFIMRL_DFIMRL_Field := 16#6#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DFIMRL_Register use record
      DFIMRL        at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_VREFDAC0_R_VREFDAC0_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRPHYC VrefDAC0_ry register
   type DDRPHYC_DBYTE1_VREFDAC0_R_Register is record
      --  PHY Rx Vless thansub>REFless than/sub> DAC control for rxdq cell
      --  internal Vless thansub>REFless than/sub>
      VREFDAC0      : DDRPHYC_DBYTE1_VREFDAC0_R_VREFDAC0_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_VREFDAC0_R_Register use record
      VREFDAC0      at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_TXIMPEDANCECTRL0_B_DRVSTRENDQP_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRPHYC_DBYTE1_TXIMPEDANCECTRL0_B_DRVSTRENDQN_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC data T1 impedance controls register
   type DDRPHYC_DBYTE1_TXIMPEDANCECTRL0_B_Register is record
      --  6-bit bus used to select the target pull-down output impedance
      DRVSTRENDQP    : DDRPHYC_DBYTE1_TXIMPEDANCECTRL0_B_DRVSTRENDQP_Field :=
                        16#3F#;
      --  6-bit bus used to select the target pull-down output impedance
      DRVSTRENDQN    : DDRPHYC_DBYTE1_TXIMPEDANCECTRL0_B_DRVSTRENDQN_Field :=
                        16#3F#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_TXIMPEDANCECTRL0_B_Register use record
      DRVSTRENDQP    at 0 range 0 .. 5;
      DRVSTRENDQN    at 0 range 6 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B_DFECTRL_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B_MAJORMODEDBYTE_Field is
     Interfaces.Bit_Types.UInt3;
   subtype DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B_GAINCURRADJ_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC DQ/DQS receiver control register
   type DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B_Register is record
      --  Setting this bit forces the local per-bit Vless thansub>REFless
      --  than/sub> generator to pass the global VREFA
      SELANALOGVREF  : Boolean := False;
      --  Extends the range available in the local per-bit VREF generator.
      EXTVREFRANGE   : Boolean := False;
      --  Note: These settings are determined by PHY training firmware, and
      --  must not be overridden.
      DFECTRL        : DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B_DFECTRL_Field := 16#0#;
      --  Selection of the major mode of operation for the receiver
      MAJORMODEDBYTE : DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B_MAJORMODEDBYTE_Field :=
                        16#3#;
      --  Adjusts gain current of RX amplifier stage.
      GAINCURRADJ    : DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B_GAINCURRADJ_Field :=
                        16#B#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B_Register use record
      SELANALOGVREF  at 0 range 0 .. 0;
      EXTVREFRANGE   at 0 range 1 .. 1;
      DFECTRL        at 0 range 2 .. 3;
      MAJORMODEDBYTE at 0 range 4 .. 6;
      GAINCURRADJ    at 0 range 7 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_DQDQSRCVCNTRL1_POWERDOWNRCVR_Field is
     Interfaces.Bit_Types.UInt9;

   --  DDRPHYC DQ/DQS receiver control register
   type DDRPHYC_DBYTE1_DQDQSRCVCNTRL1_Register is record
      --  Active high signal which powers down the receiver
      POWERDOWNRCVR    : DDRPHYC_DBYTE1_DQDQSRCVCNTRL1_POWERDOWNRCVR_Field :=
                          16#0#;
      --  Active high signal which powers down the receiver
      POWERDOWNRCVRDQS : Boolean := False;
      --  Enables rxdq/rxdqs Standby power savings, per pad-group.
      RXPADSTANDBYEN   : Boolean := True;
      --  not used
      ENLPREQPDR       : Boolean := False;
      --  unspecified
      Reserved_12_31   : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DQDQSRCVCNTRL1_Register use record
      POWERDOWNRCVR    at 0 range 0 .. 8;
      POWERDOWNRCVRDQS at 0 range 9 .. 9;
      RXPADSTANDBYEN   at 0 range 10 .. 10;
      ENLPREQPDR       at 0 range 11 .. 11;
      Reserved_12_31   at 0 range 12 .. 31;
   end record;

   --  DDRPHYC DQ/DQS receiver control register
   type DDRPHYC_DBYTE1_DQDQSRCVCNTRL2_Register is record
      --  None
      ENRXAGRESSIVEPDR : Boolean := False;
      --  unspecified
      Reserved_1_31    : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DQDQSRCVCNTRL2_Register use record
      ENRXAGRESSIVEPDR at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_TXODTDRVSTREN_B_ODTSTRENP_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRPHYC_DBYTE1_TXODTDRVSTREN_B_ODTSTRENN_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC TX ODT driver strength control register
   type DDRPHYC_DBYTE1_TXODTDRVSTREN_B_Register is record
      --  ODT pull-up impedance selection
      ODTSTRENP      : DDRPHYC_DBYTE1_TXODTDRVSTREN_B_ODTSTRENP_Field :=
                        16#0#;
      --  ODT pull-down impedance selection
      ODTSTRENN      : DDRPHYC_DBYTE1_TXODTDRVSTREN_B_ODTSTRENN_Field :=
                        16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_TXODTDRVSTREN_B_Register use record
      ODTSTRENP      at 0 range 0 .. 5;
      ODTSTRENN      at 0 range 6 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  DDRPHYC status of RX FIFO consistency checks register
   type DDRPHYC_DBYTE1_RXFIFOCHECKSTATUS_Register is record
      --  Read-only. If this bit is set, the read pointer (DFI side) on the
      --  read FIFO associated with data bits [3:0]
      RXFIFOLOCERR  : Boolean;
      --  Read-only. If this bit is set, the read pointer (DFI side) on the
      --  read FIFO associated with data bits [7:4]
      RXFIFOLOCUERR : Boolean;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXFIFOCHECKSTATUS_Register use record
      RXFIFOLOCERR  at 0 range 0 .. 0;
      RXFIFOLOCUERR at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXFIFOCHECKERRVALUES_RXFIFORDLOCERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE1_RXFIFOCHECKERRVALUES_RXFIFOWRLOCERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE1_RXFIFOCHECKERRVALUES_RXFIFORDLOCUERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE1_RXFIFOCHECKERRVALUES_RXFIFOWRLOCUERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC captured values associated with an RxFIFO consistency	error
   --  register
   type DDRPHYC_DBYTE1_RXFIFOCHECKERRVALUES_Register is record
      --  Read-only. First error value captured for the read pointer (DFI side)
      --  on the read FIFO associated with data bits [3:0]
      RXFIFORDLOCERRVALUE  : DDRPHYC_DBYTE1_RXFIFOCHECKERRVALUES_RXFIFORDLOCERRVALUE_Field;
      --  Read-only. First error value captured for the write pointer (DQS
      --  side) on the read FIFO associated with data bits [3:0]
      RXFIFOWRLOCERRVALUE  : DDRPHYC_DBYTE1_RXFIFOCHECKERRVALUES_RXFIFOWRLOCERRVALUE_Field;
      --  Read-only. First error value captured for the read pointer (DFI side)
      --  on the read FIFO associated with data bits [7:4]
      RXFIFORDLOCUERRVALUE : DDRPHYC_DBYTE1_RXFIFOCHECKERRVALUES_RXFIFORDLOCUERRVALUE_Field;
      --  Read-only. First error value captured for the write pointer (DQS
      --  side) on the read FIFO associated with data bits [7:4]
      RXFIFOWRLOCUERRVALUE : DDRPHYC_DBYTE1_RXFIFOCHECKERRVALUES_RXFIFOWRLOCUERRVALUE_Field;
      --  unspecified
      Reserved_16_31       : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXFIFOCHECKERRVALUES_Register use record
      RXFIFORDLOCERRVALUE  at 0 range 0 .. 3;
      RXFIFOWRLOCERRVALUE  at 0 range 4 .. 7;
      RXFIFORDLOCUERRVALUE at 0 range 8 .. 11;
      RXFIFOWRLOCUERRVALUE at 0 range 12 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXFIFOINFO_RXFIFORDLOC_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE1_RXFIFOINFO_RXFIFOWRLOC_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE1_RXFIFOINFO_RXFIFORDLOCU_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE1_RXFIFOINFO_RXFIFOWRLOCU_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC data receive FIFO pointer values register
   type DDRPHYC_DBYTE1_RXFIFOINFO_Register is record
      --  Read-only. Mission mode read pointer of the lower-nibble Rx FIFO
      RXFIFORDLOC    : DDRPHYC_DBYTE1_RXFIFOINFO_RXFIFORDLOC_Field;
      --  Read-only. Mission mode write pointer of the lower-nibble Rx FIFO
      RXFIFOWRLOC    : DDRPHYC_DBYTE1_RXFIFOINFO_RXFIFOWRLOC_Field;
      --  Read-only. Mission mode read pointer of the upper-nibble Rx FIFO
      RXFIFORDLOCU   : DDRPHYC_DBYTE1_RXFIFOINFO_RXFIFORDLOCU_Field;
      --  Read-only. Mission mode write pointer of the upper-nibble Rx FIFO
      RXFIFOWRLOCU   : DDRPHYC_DBYTE1_RXFIFOINFO_RXFIFOWRLOCU_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXFIFOINFO_Register use record
      RXFIFORDLOC    at 0 range 0 .. 3;
      RXFIFOWRLOC    at 0 range 4 .. 7;
      RXFIFORDLOCU   at 0 range 8 .. 11;
      RXFIFOWRLOCU   at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXFIFOVISIBILITY_RXFIFORDPTR_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC R1 FIFO visibility register
   type DDRPHYC_DBYTE1_RXFIFOVISIBILITY_Register is record
      --  If RXFIFORDPTROVR is set, this bit field selects the Rx FIFO entry.
      RXFIFORDPTR    : DDRPHYC_DBYTE1_RXFIFOVISIBILITY_RXFIFORDPTR_Field :=
                        16#0#;
      --  This bit is programmable as follows:
      RXFIFORDPTROVR : Boolean := False;
      --  Pulse [set 0-->1-->0] this bit to capture the FIFO contents.
      RXFIFORDEN     : Boolean := False;
      --  unspecified
      Reserved_5_31  : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXFIFOVISIBILITY_Register use record
      RXFIFORDPTR    at 0 range 0 .. 2;
      RXFIFORDPTROVR at 0 range 3 .. 3;
      RXFIFORDEN     at 0 range 4 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ3210_RXFIFOCONTENTSDQ3210_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC R1 FIFO content DQ321x register
   type DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ3210_Register is record
      --  Read-only. Window into the contents of the Rx FIFO, as controlled
      RXFIFOCONTENTSDQ3210 : DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ3210_RXFIFOCONTENTSDQ3210_Field;
      --  unspecified
      Reserved_16_31       : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ3210_Register use record
      RXFIFOCONTENTSDQ3210 at 0 range 0 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ7654_RXFIFOCONTENTSDQ7654_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC R1 FIFO content DQ7654 register
   type DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ7654_Register is record
      --  Read-only. Window into the contents of the Rx FIFO as controlled
      RXFIFOCONTENTSDQ7654 : DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ7654_RXFIFOCONTENTSDQ7654_Field;
      --  unspecified
      Reserved_16_31       : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ7654_Register use record
      RXFIFOCONTENTSDQ7654 at 0 range 0 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXFIFOCONTENTSDBI_RXFIFOCONTENTSDBI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC R1 FIFO content DBI register
   type DDRPHYC_DBYTE1_RXFIFOCONTENTSDBI_Register is record
      --  Read-only. Window into the contents of the Rx FIFO, as controlled
      RXFIFOCONTENTSDBI : DDRPHYC_DBYTE1_RXFIFOCONTENTSDBI_RXFIFOCONTENTSDBI_Field;
      --  unspecified
      Reserved_4_31     : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXFIFOCONTENTSDBI_Register use record
      RXFIFOCONTENTSDBI at 0 range 0 .. 3;
      Reserved_4_31     at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_TXSLEWRATE_B_TXPREP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE1_TXSLEWRATE_B_TXPREN_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE1_TXSLEWRATE_B_TXPREDRVMODE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC T1 slew rate controls register
   type DDRPHYC_DBYTE1_TXSLEWRATE_B_Register is record
      --  4-bit binary trim for the driver pull-up slew rate
      TXPREP         : DDRPHYC_DBYTE1_TXSLEWRATE_B_TXPREP_Field := 16#F#;
      --  4-bit binary trim for the driver pull -own slew rate
      TXPREN         : DDRPHYC_DBYTE1_TXSLEWRATE_B_TXPREN_Field := 16#F#;
      --  Controls predrivers to adjust timing of turn-on and turn-off of
      --  pull-up and pull-down segments.
      TXPREDRVMODE   : DDRPHYC_DBYTE1_TXSLEWRATE_B_TXPREDRVMODE_Field :=
                        16#7#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_TXSLEWRATE_B_Register use record
      TXPREP         at 0 range 0 .. 3;
      TXPREN         at 0 range 4 .. 7;
      TXPREDRVMODE   at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXPBDLYTG0_R_RXPBDLYTG0_R0_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRPHYC RxPBDlyTgx_r0 register
   type DDRPHYC_DBYTE1_RXPBDLYTG0_R_Register is record
      --  Read DQ per-bit BDL delay (timing group 0)
      RXPBDLYTG0_R0 : DDRPHYC_DBYTE1_RXPBDLYTG0_R_RXPBDLYTG0_R0_Field :=
                       16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXPBDLYTG0_R_Register use record
      RXPBDLYTG0_R0 at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXPBDLYTG1_R_RXPBDLYTG1_R0_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRPHYC RxPBDlyTg1_rx register
   type DDRPHYC_DBYTE1_RXPBDLYTG1_R_Register is record
      --  Read DQ per-bit BDL delay (timing group 1)
      RXPBDLYTG1_R0 : DDRPHYC_DBYTE1_RXPBDLYTG1_R_RXPBDLYTG1_R0_Field :=
                       16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXPBDLYTG1_R_Register use record
      RXPBDLYTG1_R0 at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXENDLYTG0_U0_RXENDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTgx_u0 register
   type DDRPHYC_DBYTE1_RXENDLYTG0_U0_Register is record
      --  Trained receive enable delay (timing group 0)
      RXENDLYTG0_U0  : DDRPHYC_DBYTE1_RXENDLYTG0_U0_RXENDLYTG0_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXENDLYTG0_U0_Register use record
      RXENDLYTG0_U0  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXENDLYTG1_U0_RXENDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTg1_ux register
   type DDRPHYC_DBYTE1_RXENDLYTG1_U0_Register is record
      --  Trained receive enable delay (timing group 1)
      RXENDLYTG1_U0  : DDRPHYC_DBYTE1_RXENDLYTG1_U0_RXENDLYTG1_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXENDLYTG1_U0_Register use record
      RXENDLYTG1_U0  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXCLKDLYTG0_U0_RXCLKDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTgx_u0 register
   type DDRPHYC_DBYTE1_RXCLKDLYTG0_U0_Register is record
      --  Trained read DQS to RxClk delay (timing group 0)
      RXCLKDLYTG0_U0 : DDRPHYC_DBYTE1_RXCLKDLYTG0_U0_RXCLKDLYTG0_U0_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXCLKDLYTG0_U0_Register use record
      RXCLKDLYTG0_U0 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXCLKDLYTG1_U0_RXCLKDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTg1_ux register
   type DDRPHYC_DBYTE1_RXCLKDLYTG1_U0_Register is record
      --  Trained read DQS to RxClk delay (timing group 1)
      RXCLKDLYTG1_U0 : DDRPHYC_DBYTE1_RXCLKDLYTG1_U0_RXCLKDLYTG1_U0_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXCLKDLYTG1_U0_Register use record
      RXCLKDLYTG1_U0 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXCLKCDLYTG0_U0_RXCLKCDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTgx_u0 register
   type DDRPHYC_DBYTE1_RXCLKCDLYTG0_U0_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 0)
      RXCLKCDLYTG0_U0 : DDRPHYC_DBYTE1_RXCLKCDLYTG0_U0_RXCLKCDLYTG0_U0_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXCLKCDLYTG0_U0_Register use record
      RXCLKCDLYTG0_U0 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXCLKCDLYTG1_U0_RXCLKCDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTg1_ux register
   type DDRPHYC_DBYTE1_RXCLKCDLYTG1_U0_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 1)
      RXCLKCDLYTG1_U0 : DDRPHYC_DBYTE1_RXCLKCDLYTG1_U0_RXCLKCDLYTG1_U0_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXCLKCDLYTG1_U0_Register use record
      RXCLKCDLYTG1_U0 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_DQ0LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE1_DQ0LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE1_DQ0LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DQ0LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_DQ1LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE1_DQ1LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE1_DQ1LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DQ1LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_DQ2LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE1_DQ2LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE1_DQ2LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DQ2LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_DQ3LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE1_DQ3LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE1_DQ3LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DQ3LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_DQ4LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE1_DQ4LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE1_DQ4LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DQ4LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_DQ5LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE1_DQ5LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE1_DQ5LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DQ5LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_DQ6LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE1_DQ6LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE1_DQ6LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DQ6LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_DQ7LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE1_DQ7LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE1_DQ7LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DQ7LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_TXDQDLYTG0_R_TXDQDLYTG0_R0_Field is
     Interfaces.Bit_Types.UInt9;

   --  DDRPHYC TxDqDlyTgx_r0 register
   type DDRPHYC_DBYTE1_TXDQDLYTG0_R_Register is record
      --  Write DQ delay (timing group 0)
      TXDQDLYTG0_R0 : DDRPHYC_DBYTE1_TXDQDLYTG0_R_TXDQDLYTG0_R0_Field :=
                       16#10#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_TXDQDLYTG0_R_Register use record
      TXDQDLYTG0_R0 at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_TXDQDLYTG1_R_TXDQDLYTG1_R0_Field is
     Interfaces.Bit_Types.UInt9;

   --  DDRPHYC TxDqDlyTg1_rx register
   type DDRPHYC_DBYTE1_TXDQDLYTG1_R_Register is record
      --  Write DQ delay (timing group 1)
      TXDQDLYTG1_R0 : DDRPHYC_DBYTE1_TXDQDLYTG1_R_TXDQDLYTG1_R0_Field :=
                       16#10#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_TXDQDLYTG1_R_Register use record
      TXDQDLYTG1_R0 at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_TXDQSDLYTG0_U0_TXDQSDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTgx_u0 register
   type DDRPHYC_DBYTE1_TXDQSDLYTG0_U0_Register is record
      --  Write DQS delay (timing group 0)
      TXDQSDLYTG0_U0 : DDRPHYC_DBYTE1_TXDQSDLYTG0_U0_TXDQSDLYTG0_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_TXDQSDLYTG0_U0_Register use record
      TXDQSDLYTG0_U0 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_TXDQSDLYTG1_U0_TXDQSDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTg1_ux register
   type DDRPHYC_DBYTE1_TXDQSDLYTG1_U0_Register is record
      --  Write DQS delay (timing group 1)
      TXDQSDLYTG1_U0 : DDRPHYC_DBYTE1_TXDQSDLYTG1_U0_TXDQSDLYTG1_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_TXDQSDLYTG1_U0_Register use record
      TXDQSDLYTG1_U0 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_DXLCDLSTATUS_DXLCDLFINESNAPVAL_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC debug status of the DBYTE LCDL register
   type DDRPHYC_DBYTE1_DXLCDLSTATUS_Register is record
      --  Read-only. Value of the LCDL 1UI estimate code, latched by pulse on
      --  LcdlFineSnap while LCDLTSTENABLE = 1
      DXLCDLFINESNAPVAL  : DDRPHYC_DBYTE1_DXLCDLSTATUS_DXLCDLFINESNAPVAL_Field;
      --  Read-only. Value of the LCDL phase-detector output, latched by pulse
      DXLCDLPHDSNAPVAL   : Boolean;
      --  Read-only. Latched value of whether the LCDL ever achieved lock after
      --  the assertion of LCDLTSTENABLE
      DXLCDLSTICKYLOCK   : Boolean;
      --  Read-only. Latched value of whether the LCDL ever lost lock after the
      --  assertion of LCDLTSTENABLE
      DXLCDLSTICKYUNLOCK : Boolean;
      --  Read-only. Present value of whether the LCDL is locked
      DXLCDLLIVELOCK     : Boolean;
      --  unspecified
      Reserved_14_31     : Interfaces.Bit_Types.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_DXLCDLSTATUS_Register use record
      DXLCDLFINESNAPVAL  at 0 range 0 .. 9;
      DXLCDLPHDSNAPVAL   at 0 range 10 .. 10;
      DXLCDLSTICKYLOCK   at 0 range 11 .. 11;
      DXLCDLSTICKYUNLOCK at 0 range 12 .. 12;
      DXLCDLLIVELOCK     at 0 range 13 .. 13;
      Reserved_14_31     at 0 range 14 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXENDLYTG0_U1_RXENDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTgx_u1 register
   type DDRPHYC_DBYTE1_RXENDLYTG0_U1_Register is record
      --  Trained receive enable delay (timing group 0)
      RXENDLYTG0_U1  : DDRPHYC_DBYTE1_RXENDLYTG0_U1_RXENDLYTG0_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXENDLYTG0_U1_Register use record
      RXENDLYTG0_U1  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXENDLYTG1_U1_RXENDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTg1_u1 register
   type DDRPHYC_DBYTE1_RXENDLYTG1_U1_Register is record
      --  Trained receive enable delay (timing group 1)
      RXENDLYTG1_U1  : DDRPHYC_DBYTE1_RXENDLYTG1_U1_RXENDLYTG1_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXENDLYTG1_U1_Register use record
      RXENDLYTG1_U1  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXCLKDLYTG0_U1_RXCLKDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTgx_u1 register
   type DDRPHYC_DBYTE1_RXCLKDLYTG0_U1_Register is record
      --  Trained read DQS to RxClk delay (timing group 0)
      RXCLKDLYTG0_U1 : DDRPHYC_DBYTE1_RXCLKDLYTG0_U1_RXCLKDLYTG0_U1_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXCLKDLYTG0_U1_Register use record
      RXCLKDLYTG0_U1 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXCLKDLYTG1_U1_RXCLKDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTg1_u1 register
   type DDRPHYC_DBYTE1_RXCLKDLYTG1_U1_Register is record
      --  Trained read DQS to RxClk delay (timing group 1)
      RXCLKDLYTG1_U1 : DDRPHYC_DBYTE1_RXCLKDLYTG1_U1_RXCLKDLYTG1_U1_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXCLKDLYTG1_U1_Register use record
      RXCLKDLYTG1_U1 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXCLKCDLYTG0_U1_RXCLKCDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTgx_u1 register
   type DDRPHYC_DBYTE1_RXCLKCDLYTG0_U1_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 0)
      RXCLKCDLYTG0_U1 : DDRPHYC_DBYTE1_RXCLKCDLYTG0_U1_RXCLKCDLYTG0_U1_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXCLKCDLYTG0_U1_Register use record
      RXCLKCDLYTG0_U1 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_RXCLKCDLYTG1_U1_RXCLKCDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTg1_u1 register
   type DDRPHYC_DBYTE1_RXCLKCDLYTG1_U1_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 1)
      RXCLKCDLYTG1_U1 : DDRPHYC_DBYTE1_RXCLKCDLYTG1_U1_RXCLKCDLYTG1_U1_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_RXCLKCDLYTG1_U1_Register use record
      RXCLKCDLYTG1_U1 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_TXDQSDLYTG0_U1_TXDQSDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTgx_u1 register
   type DDRPHYC_DBYTE1_TXDQSDLYTG0_U1_Register is record
      --  Write DQS delay (timing group 0)
      TXDQSDLYTG0_U1 : DDRPHYC_DBYTE1_TXDQSDLYTG0_U1_TXDQSDLYTG0_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_TXDQSDLYTG0_U1_Register use record
      TXDQSDLYTG0_U1 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_DBYTE1_TXDQSDLYTG1_U1_TXDQSDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTg1_u1 register
   type DDRPHYC_DBYTE1_TXDQSDLYTG1_U1_Register is record
      --  Write DQS delay (timing group 1)
      TXDQSDLYTG1_U1 : DDRPHYC_DBYTE1_TXDQSDLYTG1_U1_TXDQSDLYTG1_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE1_TXDQSDLYTG1_U1_Register use record
      TXDQSDLYTG1_U1 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  DDRPHYC DBYTE module disable register
   type DDRPHYC_DBYTE2_DBYTEMISCMODE_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  DBYTE disable
      DBYTEDISABLE  : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DBYTEMISCMODE_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DBYTEDISABLE  at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_MTESTMUXSEL_MTESTMUXSEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC MtestMuxSel register
   type DDRPHYC_DBYTE2_MTESTMUXSEL_Register is record
      --  Controls for the 64-1 mux for asynchronous data to the digital
      --  observation pin.
      MTESTMUXSEL   : DDRPHYC_DBYTE2_MTESTMUXSEL_MTESTMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_MTESTMUXSEL_Register use record
      MTESTMUXSEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_DFIMRL_DFIMRL_Field is Interfaces.Bit_Types.UInt5;

   --  DDRPHYC DFIMRL register
   type DDRPHYC_DBYTE2_DFIMRL_Register is record
      --  DFI maximum read latency (MRL)
      DFIMRL        : DDRPHYC_DBYTE2_DFIMRL_DFIMRL_Field := 16#6#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DFIMRL_Register use record
      DFIMRL        at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_VREFDAC0_R_VREFDAC0_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRPHYC VrefDAC0_ry register
   type DDRPHYC_DBYTE2_VREFDAC0_R_Register is record
      --  PHY Rx Vless thansub>REFless than/sub> DAC control for rxdq cell
      --  internal Vless thansub>REFless than/sub>
      VREFDAC0      : DDRPHYC_DBYTE2_VREFDAC0_R_VREFDAC0_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_VREFDAC0_R_Register use record
      VREFDAC0      at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_TXIMPEDANCECTRL0_B_DRVSTRENDQP_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRPHYC_DBYTE2_TXIMPEDANCECTRL0_B_DRVSTRENDQN_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC data T2 impedance controls register
   type DDRPHYC_DBYTE2_TXIMPEDANCECTRL0_B_Register is record
      --  6-bit bus used to select the target pull-down output impedance
      DRVSTRENDQP    : DDRPHYC_DBYTE2_TXIMPEDANCECTRL0_B_DRVSTRENDQP_Field :=
                        16#3F#;
      --  6-bit bus used to select the target pull-down output impedance
      DRVSTRENDQN    : DDRPHYC_DBYTE2_TXIMPEDANCECTRL0_B_DRVSTRENDQN_Field :=
                        16#3F#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_TXIMPEDANCECTRL0_B_Register use record
      DRVSTRENDQP    at 0 range 0 .. 5;
      DRVSTRENDQN    at 0 range 6 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B_DFECTRL_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B_MAJORMODEDBYTE_Field is
     Interfaces.Bit_Types.UInt3;
   subtype DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B_GAINCURRADJ_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC DQ/DQS receiver control register
   type DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B_Register is record
      --  Setting this bit forces the local per-bit Vless thansub>REFless
      --  than/sub> generator to pass the global VREFA
      SELANALOGVREF  : Boolean := False;
      --  Extends the range available in the local per-bit VREF generator.
      EXTVREFRANGE   : Boolean := False;
      --  Note: These settings are determined by PHY training firmware, and
      --  must not be overridden.
      DFECTRL        : DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B_DFECTRL_Field := 16#0#;
      --  Selection of the major mode of operation for the receiver
      MAJORMODEDBYTE : DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B_MAJORMODEDBYTE_Field :=
                        16#3#;
      --  Adjusts gain current of RX amplifier stage.
      GAINCURRADJ    : DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B_GAINCURRADJ_Field :=
                        16#B#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B_Register use record
      SELANALOGVREF  at 0 range 0 .. 0;
      EXTVREFRANGE   at 0 range 1 .. 1;
      DFECTRL        at 0 range 2 .. 3;
      MAJORMODEDBYTE at 0 range 4 .. 6;
      GAINCURRADJ    at 0 range 7 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_DQDQSRCVCNTRL1_POWERDOWNRCVR_Field is
     Interfaces.Bit_Types.UInt9;

   --  DDRPHYC DQ/DQS receiver control register
   type DDRPHYC_DBYTE2_DQDQSRCVCNTRL1_Register is record
      --  Active high signal which powers down the receiver
      POWERDOWNRCVR    : DDRPHYC_DBYTE2_DQDQSRCVCNTRL1_POWERDOWNRCVR_Field :=
                          16#0#;
      --  Active high signal which powers down the receiver
      POWERDOWNRCVRDQS : Boolean := False;
      --  Enables rxdq/rxdqs Standby power savings, per pad-group.
      RXPADSTANDBYEN   : Boolean := True;
      --  not used
      ENLPREQPDR       : Boolean := False;
      --  unspecified
      Reserved_12_31   : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DQDQSRCVCNTRL1_Register use record
      POWERDOWNRCVR    at 0 range 0 .. 8;
      POWERDOWNRCVRDQS at 0 range 9 .. 9;
      RXPADSTANDBYEN   at 0 range 10 .. 10;
      ENLPREQPDR       at 0 range 11 .. 11;
      Reserved_12_31   at 0 range 12 .. 31;
   end record;

   --  DDRPHYC DQ/DQS receiver control register
   type DDRPHYC_DBYTE2_DQDQSRCVCNTRL2_Register is record
      --  None
      ENRXAGRESSIVEPDR : Boolean := False;
      --  unspecified
      Reserved_1_31    : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DQDQSRCVCNTRL2_Register use record
      ENRXAGRESSIVEPDR at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_TXODTDRVSTREN_B_ODTSTRENP_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRPHYC_DBYTE2_TXODTDRVSTREN_B_ODTSTRENN_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC TX ODT driver strength control register
   type DDRPHYC_DBYTE2_TXODTDRVSTREN_B_Register is record
      --  ODT pull-up impedance selection
      ODTSTRENP      : DDRPHYC_DBYTE2_TXODTDRVSTREN_B_ODTSTRENP_Field :=
                        16#0#;
      --  ODT pull-down impedance selection
      ODTSTRENN      : DDRPHYC_DBYTE2_TXODTDRVSTREN_B_ODTSTRENN_Field :=
                        16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_TXODTDRVSTREN_B_Register use record
      ODTSTRENP      at 0 range 0 .. 5;
      ODTSTRENN      at 0 range 6 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  DDRPHYC status of RX FIFO consistency checks register
   type DDRPHYC_DBYTE2_RXFIFOCHECKSTATUS_Register is record
      --  Read-only. If this bit is set, the read pointer (DFI side) on the
      --  read FIFO associated with data bits [3:0]
      RXFIFOLOCERR  : Boolean;
      --  Read-only. If this bit is set, the read pointer (DFI side) on the
      --  read FIFO associated with data bits [7:4]
      RXFIFOLOCUERR : Boolean;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXFIFOCHECKSTATUS_Register use record
      RXFIFOLOCERR  at 0 range 0 .. 0;
      RXFIFOLOCUERR at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXFIFOCHECKERRVALUES_RXFIFORDLOCERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE2_RXFIFOCHECKERRVALUES_RXFIFOWRLOCERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE2_RXFIFOCHECKERRVALUES_RXFIFORDLOCUERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE2_RXFIFOCHECKERRVALUES_RXFIFOWRLOCUERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC captured values associated with an RxFIFO consistency	error
   --  register
   type DDRPHYC_DBYTE2_RXFIFOCHECKERRVALUES_Register is record
      --  Read-only. First error value captured for the read pointer (DFI side)
      --  on the read FIFO associated with data bits [3:0]
      RXFIFORDLOCERRVALUE  : DDRPHYC_DBYTE2_RXFIFOCHECKERRVALUES_RXFIFORDLOCERRVALUE_Field;
      --  Read-only. First error value captured for the write pointer (DQS
      --  side) on the read FIFO associated with data bits [3:0]
      RXFIFOWRLOCERRVALUE  : DDRPHYC_DBYTE2_RXFIFOCHECKERRVALUES_RXFIFOWRLOCERRVALUE_Field;
      --  Read-only. First error value captured for the read pointer (DFI side)
      --  on the read FIFO associated with data bits [7:4]
      RXFIFORDLOCUERRVALUE : DDRPHYC_DBYTE2_RXFIFOCHECKERRVALUES_RXFIFORDLOCUERRVALUE_Field;
      --  Read-only. First error value captured for the write pointer (DQS
      --  side) on the read FIFO associated with data bits [7:4]
      RXFIFOWRLOCUERRVALUE : DDRPHYC_DBYTE2_RXFIFOCHECKERRVALUES_RXFIFOWRLOCUERRVALUE_Field;
      --  unspecified
      Reserved_16_31       : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXFIFOCHECKERRVALUES_Register use record
      RXFIFORDLOCERRVALUE  at 0 range 0 .. 3;
      RXFIFOWRLOCERRVALUE  at 0 range 4 .. 7;
      RXFIFORDLOCUERRVALUE at 0 range 8 .. 11;
      RXFIFOWRLOCUERRVALUE at 0 range 12 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXFIFOINFO_RXFIFORDLOC_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE2_RXFIFOINFO_RXFIFOWRLOC_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE2_RXFIFOINFO_RXFIFORDLOCU_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE2_RXFIFOINFO_RXFIFOWRLOCU_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC data receive FIFO pointer values register
   type DDRPHYC_DBYTE2_RXFIFOINFO_Register is record
      --  Read-only. Mission mode read pointer of the lower-nibble Rx FIFO
      RXFIFORDLOC    : DDRPHYC_DBYTE2_RXFIFOINFO_RXFIFORDLOC_Field;
      --  Read-only. Mission mode write pointer of the lower-nibble Rx FIFO
      RXFIFOWRLOC    : DDRPHYC_DBYTE2_RXFIFOINFO_RXFIFOWRLOC_Field;
      --  Read-only. Mission mode read pointer of the upper-nibble Rx FIFO
      RXFIFORDLOCU   : DDRPHYC_DBYTE2_RXFIFOINFO_RXFIFORDLOCU_Field;
      --  Read-only. Mission mode write pointer of the upper-nibble Rx FIFO
      RXFIFOWRLOCU   : DDRPHYC_DBYTE2_RXFIFOINFO_RXFIFOWRLOCU_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXFIFOINFO_Register use record
      RXFIFORDLOC    at 0 range 0 .. 3;
      RXFIFOWRLOC    at 0 range 4 .. 7;
      RXFIFORDLOCU   at 0 range 8 .. 11;
      RXFIFOWRLOCU   at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXFIFOVISIBILITY_RXFIFORDPTR_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC R2 FIFO visibility register
   type DDRPHYC_DBYTE2_RXFIFOVISIBILITY_Register is record
      --  If RXFIFORDPTROVR is set, this bit field selects the Rx FIFO entry.
      RXFIFORDPTR    : DDRPHYC_DBYTE2_RXFIFOVISIBILITY_RXFIFORDPTR_Field :=
                        16#0#;
      --  This bit is programmable as follows:
      RXFIFORDPTROVR : Boolean := False;
      --  Pulse [set 0-->1-->0] this bit to capture the FIFO contents.
      RXFIFORDEN     : Boolean := False;
      --  unspecified
      Reserved_5_31  : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXFIFOVISIBILITY_Register use record
      RXFIFORDPTR    at 0 range 0 .. 2;
      RXFIFORDPTROVR at 0 range 3 .. 3;
      RXFIFORDEN     at 0 range 4 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ3210_RXFIFOCONTENTSDQ3210_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC R2 FIFO content DQ321x register
   type DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ3210_Register is record
      --  Read-only. Window into the contents of the Rx FIFO, as controlled
      RXFIFOCONTENTSDQ3210 : DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ3210_RXFIFOCONTENTSDQ3210_Field;
      --  unspecified
      Reserved_16_31       : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ3210_Register use record
      RXFIFOCONTENTSDQ3210 at 0 range 0 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ7654_RXFIFOCONTENTSDQ7654_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC R2 FIFO content DQ7654 register
   type DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ7654_Register is record
      --  Read-only. Window into the contents of the Rx FIFO as controlled
      RXFIFOCONTENTSDQ7654 : DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ7654_RXFIFOCONTENTSDQ7654_Field;
      --  unspecified
      Reserved_16_31       : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ7654_Register use record
      RXFIFOCONTENTSDQ7654 at 0 range 0 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXFIFOCONTENTSDBI_RXFIFOCONTENTSDBI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC R2 FIFO content DBI register
   type DDRPHYC_DBYTE2_RXFIFOCONTENTSDBI_Register is record
      --  Read-only. Window into the contents of the Rx FIFO, as controlled
      RXFIFOCONTENTSDBI : DDRPHYC_DBYTE2_RXFIFOCONTENTSDBI_RXFIFOCONTENTSDBI_Field;
      --  unspecified
      Reserved_4_31     : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXFIFOCONTENTSDBI_Register use record
      RXFIFOCONTENTSDBI at 0 range 0 .. 3;
      Reserved_4_31     at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_TXSLEWRATE_B_TXPREP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE2_TXSLEWRATE_B_TXPREN_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE2_TXSLEWRATE_B_TXPREDRVMODE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC T2 slew rate controls register
   type DDRPHYC_DBYTE2_TXSLEWRATE_B_Register is record
      --  4-bit binary trim for the driver pull-up slew rate
      TXPREP         : DDRPHYC_DBYTE2_TXSLEWRATE_B_TXPREP_Field := 16#F#;
      --  4-bit binary trim for the driver pull -own slew rate
      TXPREN         : DDRPHYC_DBYTE2_TXSLEWRATE_B_TXPREN_Field := 16#F#;
      --  Controls predrivers to adjust timing of turn-on and turn-off of
      --  pull-up and pull-down segments.
      TXPREDRVMODE   : DDRPHYC_DBYTE2_TXSLEWRATE_B_TXPREDRVMODE_Field :=
                        16#7#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_TXSLEWRATE_B_Register use record
      TXPREP         at 0 range 0 .. 3;
      TXPREN         at 0 range 4 .. 7;
      TXPREDRVMODE   at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXPBDLYTG0_R_RXPBDLYTG0_R0_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRPHYC RxPBDlyTgx_r0 register
   type DDRPHYC_DBYTE2_RXPBDLYTG0_R_Register is record
      --  Read DQ per-bit BDL delay (timing group 0)
      RXPBDLYTG0_R0 : DDRPHYC_DBYTE2_RXPBDLYTG0_R_RXPBDLYTG0_R0_Field :=
                       16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXPBDLYTG0_R_Register use record
      RXPBDLYTG0_R0 at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXPBDLYTG1_R_RXPBDLYTG1_R0_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRPHYC RxPBDlyTg1_rx register
   type DDRPHYC_DBYTE2_RXPBDLYTG1_R_Register is record
      --  Read DQ per-bit BDL delay (timing group 1)
      RXPBDLYTG1_R0 : DDRPHYC_DBYTE2_RXPBDLYTG1_R_RXPBDLYTG1_R0_Field :=
                       16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXPBDLYTG1_R_Register use record
      RXPBDLYTG1_R0 at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXENDLYTG0_U0_RXENDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTgx_u0 register
   type DDRPHYC_DBYTE2_RXENDLYTG0_U0_Register is record
      --  Trained receive enable delay (timing group 0)
      RXENDLYTG0_U0  : DDRPHYC_DBYTE2_RXENDLYTG0_U0_RXENDLYTG0_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXENDLYTG0_U0_Register use record
      RXENDLYTG0_U0  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXENDLYTG1_U0_RXENDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTg1_ux register
   type DDRPHYC_DBYTE2_RXENDLYTG1_U0_Register is record
      --  Trained receive enable delay (timing group 1)
      RXENDLYTG1_U0  : DDRPHYC_DBYTE2_RXENDLYTG1_U0_RXENDLYTG1_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXENDLYTG1_U0_Register use record
      RXENDLYTG1_U0  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXCLKDLYTG0_U0_RXCLKDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTgx_u0 register
   type DDRPHYC_DBYTE2_RXCLKDLYTG0_U0_Register is record
      --  Trained read DQS to RxClk delay (timing group 0)
      RXCLKDLYTG0_U0 : DDRPHYC_DBYTE2_RXCLKDLYTG0_U0_RXCLKDLYTG0_U0_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXCLKDLYTG0_U0_Register use record
      RXCLKDLYTG0_U0 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXCLKDLYTG1_U0_RXCLKDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTg1_ux register
   type DDRPHYC_DBYTE2_RXCLKDLYTG1_U0_Register is record
      --  Trained read DQS to RxClk delay (timing group 1)
      RXCLKDLYTG1_U0 : DDRPHYC_DBYTE2_RXCLKDLYTG1_U0_RXCLKDLYTG1_U0_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXCLKDLYTG1_U0_Register use record
      RXCLKDLYTG1_U0 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXCLKCDLYTG0_U0_RXCLKCDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTgx_u0 register
   type DDRPHYC_DBYTE2_RXCLKCDLYTG0_U0_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 0)
      RXCLKCDLYTG0_U0 : DDRPHYC_DBYTE2_RXCLKCDLYTG0_U0_RXCLKCDLYTG0_U0_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXCLKCDLYTG0_U0_Register use record
      RXCLKCDLYTG0_U0 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXCLKCDLYTG1_U0_RXCLKCDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTg1_ux register
   type DDRPHYC_DBYTE2_RXCLKCDLYTG1_U0_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 1)
      RXCLKCDLYTG1_U0 : DDRPHYC_DBYTE2_RXCLKCDLYTG1_U0_RXCLKCDLYTG1_U0_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXCLKCDLYTG1_U0_Register use record
      RXCLKCDLYTG1_U0 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_DQ0LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE2_DQ0LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE2_DQ0LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DQ0LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_DQ1LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE2_DQ1LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE2_DQ1LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DQ1LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_DQ2LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE2_DQ2LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE2_DQ2LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DQ2LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_DQ3LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE2_DQ3LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE2_DQ3LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DQ3LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_DQ4LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE2_DQ4LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE2_DQ4LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DQ4LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_DQ5LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE2_DQ5LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE2_DQ5LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DQ5LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_DQ6LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE2_DQ6LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE2_DQ6LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DQ6LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_DQ7LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE2_DQ7LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE2_DQ7LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DQ7LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_TXDQDLYTG0_R_TXDQDLYTG0_R0_Field is
     Interfaces.Bit_Types.UInt9;

   --  DDRPHYC TxDqDlyTgx_r0 register
   type DDRPHYC_DBYTE2_TXDQDLYTG0_R_Register is record
      --  Write DQ delay (timing group 0)
      TXDQDLYTG0_R0 : DDRPHYC_DBYTE2_TXDQDLYTG0_R_TXDQDLYTG0_R0_Field :=
                       16#10#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_TXDQDLYTG0_R_Register use record
      TXDQDLYTG0_R0 at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_TXDQDLYTG1_R_TXDQDLYTG1_R0_Field is
     Interfaces.Bit_Types.UInt9;

   --  DDRPHYC TxDqDlyTg1_rx register
   type DDRPHYC_DBYTE2_TXDQDLYTG1_R_Register is record
      --  Write DQ delay (timing group 1)
      TXDQDLYTG1_R0 : DDRPHYC_DBYTE2_TXDQDLYTG1_R_TXDQDLYTG1_R0_Field :=
                       16#10#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_TXDQDLYTG1_R_Register use record
      TXDQDLYTG1_R0 at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_TXDQSDLYTG0_U0_TXDQSDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTgx_u0 register
   type DDRPHYC_DBYTE2_TXDQSDLYTG0_U0_Register is record
      --  Write DQS delay (timing group 0)
      TXDQSDLYTG0_U0 : DDRPHYC_DBYTE2_TXDQSDLYTG0_U0_TXDQSDLYTG0_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_TXDQSDLYTG0_U0_Register use record
      TXDQSDLYTG0_U0 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_TXDQSDLYTG1_U0_TXDQSDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTg1_ux register
   type DDRPHYC_DBYTE2_TXDQSDLYTG1_U0_Register is record
      --  Write DQS delay (timing group 1)
      TXDQSDLYTG1_U0 : DDRPHYC_DBYTE2_TXDQSDLYTG1_U0_TXDQSDLYTG1_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_TXDQSDLYTG1_U0_Register use record
      TXDQSDLYTG1_U0 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_DXLCDLSTATUS_DXLCDLFINESNAPVAL_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC debug status of the DBYTE LCDL register
   type DDRPHYC_DBYTE2_DXLCDLSTATUS_Register is record
      --  Read-only. Value of the LCDL 1UI estimate code, latched by pulse on
      --  LcdlFineSnap while LCDLTSTENABLE = 1
      DXLCDLFINESNAPVAL  : DDRPHYC_DBYTE2_DXLCDLSTATUS_DXLCDLFINESNAPVAL_Field;
      --  Read-only. Value of the LCDL phase-detector output, latched by pulse
      DXLCDLPHDSNAPVAL   : Boolean;
      --  Read-only. Latched value of whether the LCDL ever achieved lock after
      --  the assertion of LCDLTSTENABLE
      DXLCDLSTICKYLOCK   : Boolean;
      --  Read-only. Latched value of whether the LCDL ever lost lock after the
      --  assertion of LCDLTSTENABLE
      DXLCDLSTICKYUNLOCK : Boolean;
      --  Read-only. Present value of whether the LCDL is locked
      DXLCDLLIVELOCK     : Boolean;
      --  unspecified
      Reserved_14_31     : Interfaces.Bit_Types.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_DXLCDLSTATUS_Register use record
      DXLCDLFINESNAPVAL  at 0 range 0 .. 9;
      DXLCDLPHDSNAPVAL   at 0 range 10 .. 10;
      DXLCDLSTICKYLOCK   at 0 range 11 .. 11;
      DXLCDLSTICKYUNLOCK at 0 range 12 .. 12;
      DXLCDLLIVELOCK     at 0 range 13 .. 13;
      Reserved_14_31     at 0 range 14 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXENDLYTG0_U1_RXENDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTgx_u1 register
   type DDRPHYC_DBYTE2_RXENDLYTG0_U1_Register is record
      --  Trained receive enable delay (timing group 0)
      RXENDLYTG0_U1  : DDRPHYC_DBYTE2_RXENDLYTG0_U1_RXENDLYTG0_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXENDLYTG0_U1_Register use record
      RXENDLYTG0_U1  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXENDLYTG1_U1_RXENDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTg1_u1 register
   type DDRPHYC_DBYTE2_RXENDLYTG1_U1_Register is record
      --  Trained receive enable delay (timing group 1)
      RXENDLYTG1_U1  : DDRPHYC_DBYTE2_RXENDLYTG1_U1_RXENDLYTG1_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXENDLYTG1_U1_Register use record
      RXENDLYTG1_U1  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXCLKDLYTG0_U1_RXCLKDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTgx_u1 register
   type DDRPHYC_DBYTE2_RXCLKDLYTG0_U1_Register is record
      --  Trained read DQS to RxClk delay (timing group 0)
      RXCLKDLYTG0_U1 : DDRPHYC_DBYTE2_RXCLKDLYTG0_U1_RXCLKDLYTG0_U1_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXCLKDLYTG0_U1_Register use record
      RXCLKDLYTG0_U1 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXCLKDLYTG1_U1_RXCLKDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTg1_u1 register
   type DDRPHYC_DBYTE2_RXCLKDLYTG1_U1_Register is record
      --  Trained read DQS to RxClk delay (timing group 1)
      RXCLKDLYTG1_U1 : DDRPHYC_DBYTE2_RXCLKDLYTG1_U1_RXCLKDLYTG1_U1_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXCLKDLYTG1_U1_Register use record
      RXCLKDLYTG1_U1 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXCLKCDLYTG0_U1_RXCLKCDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTgx_u1 register
   type DDRPHYC_DBYTE2_RXCLKCDLYTG0_U1_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 0)
      RXCLKCDLYTG0_U1 : DDRPHYC_DBYTE2_RXCLKCDLYTG0_U1_RXCLKCDLYTG0_U1_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXCLKCDLYTG0_U1_Register use record
      RXCLKCDLYTG0_U1 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_RXCLKCDLYTG1_U1_RXCLKCDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTg1_u1 register
   type DDRPHYC_DBYTE2_RXCLKCDLYTG1_U1_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 1)
      RXCLKCDLYTG1_U1 : DDRPHYC_DBYTE2_RXCLKCDLYTG1_U1_RXCLKCDLYTG1_U1_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_RXCLKCDLYTG1_U1_Register use record
      RXCLKCDLYTG1_U1 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_TXDQSDLYTG0_U1_TXDQSDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTgx_u1 register
   type DDRPHYC_DBYTE2_TXDQSDLYTG0_U1_Register is record
      --  Write DQS delay (timing group 0)
      TXDQSDLYTG0_U1 : DDRPHYC_DBYTE2_TXDQSDLYTG0_U1_TXDQSDLYTG0_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_TXDQSDLYTG0_U1_Register use record
      TXDQSDLYTG0_U1 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_DBYTE2_TXDQSDLYTG1_U1_TXDQSDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTg1_u1 register
   type DDRPHYC_DBYTE2_TXDQSDLYTG1_U1_Register is record
      --  Write DQS delay (timing group 1)
      TXDQSDLYTG1_U1 : DDRPHYC_DBYTE2_TXDQSDLYTG1_U1_TXDQSDLYTG1_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE2_TXDQSDLYTG1_U1_Register use record
      TXDQSDLYTG1_U1 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  DDRPHYC DBYTE module disable register
   type DDRPHYC_DBYTE3_DBYTEMISCMODE_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  DBYTE disable
      DBYTEDISABLE  : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DBYTEMISCMODE_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      DBYTEDISABLE  at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_MTESTMUXSEL_MTESTMUXSEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC MtestMuxSel register
   type DDRPHYC_DBYTE3_MTESTMUXSEL_Register is record
      --  Controls for the 64-1 mux for asynchronous data to the digital
      --  observation pin.
      MTESTMUXSEL   : DDRPHYC_DBYTE3_MTESTMUXSEL_MTESTMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_MTESTMUXSEL_Register use record
      MTESTMUXSEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_DFIMRL_DFIMRL_Field is Interfaces.Bit_Types.UInt5;

   --  DDRPHYC DFIMRL register
   type DDRPHYC_DBYTE3_DFIMRL_Register is record
      --  DFI maximum read latency (MRL)
      DFIMRL        : DDRPHYC_DBYTE3_DFIMRL_DFIMRL_Field := 16#6#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DFIMRL_Register use record
      DFIMRL        at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_VREFDAC0_R_VREFDAC0_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRPHYC VrefDAC0_ry register
   type DDRPHYC_DBYTE3_VREFDAC0_R_Register is record
      --  PHY Rx Vless thansub>REFless than/sub> DAC control for rxdq cell
      --  internal Vless thansub>REFless than/sub>
      VREFDAC0      : DDRPHYC_DBYTE3_VREFDAC0_R_VREFDAC0_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_VREFDAC0_R_Register use record
      VREFDAC0      at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_TXIMPEDANCECTRL0_B_DRVSTRENDQP_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRPHYC_DBYTE3_TXIMPEDANCECTRL0_B_DRVSTRENDQN_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC data T3 impedance controls register
   type DDRPHYC_DBYTE3_TXIMPEDANCECTRL0_B_Register is record
      --  6-bit bus used to select the target pull-down output impedance
      DRVSTRENDQP    : DDRPHYC_DBYTE3_TXIMPEDANCECTRL0_B_DRVSTRENDQP_Field :=
                        16#3F#;
      --  6-bit bus used to select the target pull-down output impedance
      DRVSTRENDQN    : DDRPHYC_DBYTE3_TXIMPEDANCECTRL0_B_DRVSTRENDQN_Field :=
                        16#3F#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_TXIMPEDANCECTRL0_B_Register use record
      DRVSTRENDQP    at 0 range 0 .. 5;
      DRVSTRENDQN    at 0 range 6 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B_DFECTRL_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B_MAJORMODEDBYTE_Field is
     Interfaces.Bit_Types.UInt3;
   subtype DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B_GAINCURRADJ_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC DQ/DQS receiver control register
   type DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B_Register is record
      --  Setting this bit forces the local per-bit Vless thansub>REFless
      --  than/sub> generator to pass the global VREFA
      SELANALOGVREF  : Boolean := False;
      --  Extends the range available in the local per-bit VREF generator.
      EXTVREFRANGE   : Boolean := False;
      --  Note: These settings are determined by PHY training firmware, and
      --  must not be overridden.
      DFECTRL        : DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B_DFECTRL_Field := 16#0#;
      --  Selection of the major mode of operation for the receiver
      MAJORMODEDBYTE : DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B_MAJORMODEDBYTE_Field :=
                        16#3#;
      --  Adjusts gain current of RX amplifier stage.
      GAINCURRADJ    : DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B_GAINCURRADJ_Field :=
                        16#B#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B_Register use record
      SELANALOGVREF  at 0 range 0 .. 0;
      EXTVREFRANGE   at 0 range 1 .. 1;
      DFECTRL        at 0 range 2 .. 3;
      MAJORMODEDBYTE at 0 range 4 .. 6;
      GAINCURRADJ    at 0 range 7 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_DQDQSRCVCNTRL1_POWERDOWNRCVR_Field is
     Interfaces.Bit_Types.UInt9;

   --  DDRPHYC DQ/DQS receiver control register
   type DDRPHYC_DBYTE3_DQDQSRCVCNTRL1_Register is record
      --  Active high signal which powers down the receiver
      POWERDOWNRCVR    : DDRPHYC_DBYTE3_DQDQSRCVCNTRL1_POWERDOWNRCVR_Field :=
                          16#0#;
      --  Active high signal which powers down the receiver
      POWERDOWNRCVRDQS : Boolean := False;
      --  Enables rxdq/rxdqs Standby power savings, per pad-group.
      RXPADSTANDBYEN   : Boolean := True;
      --  not used
      ENLPREQPDR       : Boolean := False;
      --  unspecified
      Reserved_12_31   : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DQDQSRCVCNTRL1_Register use record
      POWERDOWNRCVR    at 0 range 0 .. 8;
      POWERDOWNRCVRDQS at 0 range 9 .. 9;
      RXPADSTANDBYEN   at 0 range 10 .. 10;
      ENLPREQPDR       at 0 range 11 .. 11;
      Reserved_12_31   at 0 range 12 .. 31;
   end record;

   --  DDRPHYC DQ/DQS receiver control register
   type DDRPHYC_DBYTE3_DQDQSRCVCNTRL2_Register is record
      --  None
      ENRXAGRESSIVEPDR : Boolean := False;
      --  unspecified
      Reserved_1_31    : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DQDQSRCVCNTRL2_Register use record
      ENRXAGRESSIVEPDR at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_TXODTDRVSTREN_B_ODTSTRENP_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRPHYC_DBYTE3_TXODTDRVSTREN_B_ODTSTRENN_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC TX ODT driver strength control register
   type DDRPHYC_DBYTE3_TXODTDRVSTREN_B_Register is record
      --  ODT pull-up impedance selection
      ODTSTRENP      : DDRPHYC_DBYTE3_TXODTDRVSTREN_B_ODTSTRENP_Field :=
                        16#0#;
      --  ODT pull-down impedance selection
      ODTSTRENN      : DDRPHYC_DBYTE3_TXODTDRVSTREN_B_ODTSTRENN_Field :=
                        16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_TXODTDRVSTREN_B_Register use record
      ODTSTRENP      at 0 range 0 .. 5;
      ODTSTRENN      at 0 range 6 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  DDRPHYC status of RX FIFO consistency checks register
   type DDRPHYC_DBYTE3_RXFIFOCHECKSTATUS_Register is record
      --  Read-only. If this bit is set, the read pointer (DFI side) on the
      --  read FIFO associated with data bits [3:0]
      RXFIFOLOCERR  : Boolean;
      --  Read-only. If this bit is set, the read pointer (DFI side) on the
      --  read FIFO associated with data bits [7:4]
      RXFIFOLOCUERR : Boolean;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXFIFOCHECKSTATUS_Register use record
      RXFIFOLOCERR  at 0 range 0 .. 0;
      RXFIFOLOCUERR at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXFIFOCHECKERRVALUES_RXFIFORDLOCERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE3_RXFIFOCHECKERRVALUES_RXFIFOWRLOCERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE3_RXFIFOCHECKERRVALUES_RXFIFORDLOCUERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE3_RXFIFOCHECKERRVALUES_RXFIFOWRLOCUERRVALUE_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC captured values associated with an RxFIFO consistency	error
   --  register
   type DDRPHYC_DBYTE3_RXFIFOCHECKERRVALUES_Register is record
      --  Read-only. First error value captured for the read pointer (DFI side)
      --  on the read FIFO associated with data bits [3:0]
      RXFIFORDLOCERRVALUE  : DDRPHYC_DBYTE3_RXFIFOCHECKERRVALUES_RXFIFORDLOCERRVALUE_Field;
      --  Read-only. First error value captured for the write pointer (DQS
      --  side) on the read FIFO associated with data bits [3:0]
      RXFIFOWRLOCERRVALUE  : DDRPHYC_DBYTE3_RXFIFOCHECKERRVALUES_RXFIFOWRLOCERRVALUE_Field;
      --  Read-only. First error value captured for the read pointer (DFI side)
      --  on the read FIFO associated with data bits [7:4]
      RXFIFORDLOCUERRVALUE : DDRPHYC_DBYTE3_RXFIFOCHECKERRVALUES_RXFIFORDLOCUERRVALUE_Field;
      --  Read-only. First error value captured for the write pointer (DQS
      --  side) on the read FIFO associated with data bits [7:4]
      RXFIFOWRLOCUERRVALUE : DDRPHYC_DBYTE3_RXFIFOCHECKERRVALUES_RXFIFOWRLOCUERRVALUE_Field;
      --  unspecified
      Reserved_16_31       : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXFIFOCHECKERRVALUES_Register use record
      RXFIFORDLOCERRVALUE  at 0 range 0 .. 3;
      RXFIFOWRLOCERRVALUE  at 0 range 4 .. 7;
      RXFIFORDLOCUERRVALUE at 0 range 8 .. 11;
      RXFIFOWRLOCUERRVALUE at 0 range 12 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXFIFOINFO_RXFIFORDLOC_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE3_RXFIFOINFO_RXFIFOWRLOC_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE3_RXFIFOINFO_RXFIFORDLOCU_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE3_RXFIFOINFO_RXFIFOWRLOCU_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC data receive FIFO pointer values register
   type DDRPHYC_DBYTE3_RXFIFOINFO_Register is record
      --  Read-only. Mission mode read pointer of the lower-nibble Rx FIFO
      RXFIFORDLOC    : DDRPHYC_DBYTE3_RXFIFOINFO_RXFIFORDLOC_Field;
      --  Read-only. Mission mode write pointer of the lower-nibble Rx FIFO
      RXFIFOWRLOC    : DDRPHYC_DBYTE3_RXFIFOINFO_RXFIFOWRLOC_Field;
      --  Read-only. Mission mode read pointer of the upper-nibble Rx FIFO
      RXFIFORDLOCU   : DDRPHYC_DBYTE3_RXFIFOINFO_RXFIFORDLOCU_Field;
      --  Read-only. Mission mode write pointer of the upper-nibble Rx FIFO
      RXFIFOWRLOCU   : DDRPHYC_DBYTE3_RXFIFOINFO_RXFIFOWRLOCU_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXFIFOINFO_Register use record
      RXFIFORDLOC    at 0 range 0 .. 3;
      RXFIFOWRLOC    at 0 range 4 .. 7;
      RXFIFORDLOCU   at 0 range 8 .. 11;
      RXFIFOWRLOCU   at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXFIFOVISIBILITY_RXFIFORDPTR_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC R3 FIFO visibility register
   type DDRPHYC_DBYTE3_RXFIFOVISIBILITY_Register is record
      --  If RXFIFORDPTROVR is set, this bit field selects the Rx FIFO entry.
      RXFIFORDPTR    : DDRPHYC_DBYTE3_RXFIFOVISIBILITY_RXFIFORDPTR_Field :=
                        16#0#;
      --  This bit is programmable as follows:
      RXFIFORDPTROVR : Boolean := False;
      --  Pulse [set 0-->1-->0] this bit to capture the FIFO contents.
      RXFIFORDEN     : Boolean := False;
      --  unspecified
      Reserved_5_31  : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXFIFOVISIBILITY_Register use record
      RXFIFORDPTR    at 0 range 0 .. 2;
      RXFIFORDPTROVR at 0 range 3 .. 3;
      RXFIFORDEN     at 0 range 4 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ3210_RXFIFOCONTENTSDQ3210_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC R3 FIFO content DQ321x register
   type DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ3210_Register is record
      --  Read-only. Window into the contents of the Rx FIFO, as controlled
      RXFIFOCONTENTSDQ3210 : DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ3210_RXFIFOCONTENTSDQ3210_Field;
      --  unspecified
      Reserved_16_31       : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ3210_Register use record
      RXFIFOCONTENTSDQ3210 at 0 range 0 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ7654_RXFIFOCONTENTSDQ7654_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC R3 FIFO content DQ7654 register
   type DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ7654_Register is record
      --  Read-only. Window into the contents of the Rx FIFO as controlled
      RXFIFOCONTENTSDQ7654 : DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ7654_RXFIFOCONTENTSDQ7654_Field;
      --  unspecified
      Reserved_16_31       : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ7654_Register use record
      RXFIFOCONTENTSDQ7654 at 0 range 0 .. 15;
      Reserved_16_31       at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXFIFOCONTENTSDBI_RXFIFOCONTENTSDBI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC R3 FIFO content DBI register
   type DDRPHYC_DBYTE3_RXFIFOCONTENTSDBI_Register is record
      --  Read-only. Window into the contents of the Rx FIFO, as controlled
      RXFIFOCONTENTSDBI : DDRPHYC_DBYTE3_RXFIFOCONTENTSDBI_RXFIFOCONTENTSDBI_Field;
      --  unspecified
      Reserved_4_31     : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXFIFOCONTENTSDBI_Register use record
      RXFIFOCONTENTSDBI at 0 range 0 .. 3;
      Reserved_4_31     at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_TXSLEWRATE_B_TXPREP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE3_TXSLEWRATE_B_TXPREN_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DBYTE3_TXSLEWRATE_B_TXPREDRVMODE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC T3 slew rate controls register
   type DDRPHYC_DBYTE3_TXSLEWRATE_B_Register is record
      --  4-bit binary trim for the driver pull-up slew rate
      TXPREP         : DDRPHYC_DBYTE3_TXSLEWRATE_B_TXPREP_Field := 16#F#;
      --  4-bit binary trim for the driver pull -own slew rate
      TXPREN         : DDRPHYC_DBYTE3_TXSLEWRATE_B_TXPREN_Field := 16#F#;
      --  Controls predrivers to adjust timing of turn-on and turn-off of
      --  pull-up and pull-down segments.
      TXPREDRVMODE   : DDRPHYC_DBYTE3_TXSLEWRATE_B_TXPREDRVMODE_Field :=
                        16#7#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_TXSLEWRATE_B_Register use record
      TXPREP         at 0 range 0 .. 3;
      TXPREN         at 0 range 4 .. 7;
      TXPREDRVMODE   at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXPBDLYTG0_R_RXPBDLYTG0_R0_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRPHYC RxPBDlyTgx_r0 register
   type DDRPHYC_DBYTE3_RXPBDLYTG0_R_Register is record
      --  Read DQ per-bit BDL delay (timing group 0)
      RXPBDLYTG0_R0 : DDRPHYC_DBYTE3_RXPBDLYTG0_R_RXPBDLYTG0_R0_Field :=
                       16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXPBDLYTG0_R_Register use record
      RXPBDLYTG0_R0 at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXPBDLYTG1_R_RXPBDLYTG1_R0_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRPHYC RxPBDlyTg1_rx register
   type DDRPHYC_DBYTE3_RXPBDLYTG1_R_Register is record
      --  Read DQ per-bit BDL delay (timing group 1)
      RXPBDLYTG1_R0 : DDRPHYC_DBYTE3_RXPBDLYTG1_R_RXPBDLYTG1_R0_Field :=
                       16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXPBDLYTG1_R_Register use record
      RXPBDLYTG1_R0 at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXENDLYTG0_U0_RXENDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTgx_u0 register
   type DDRPHYC_DBYTE3_RXENDLYTG0_U0_Register is record
      --  Trained receive enable delay (timing group 0)
      RXENDLYTG0_U0  : DDRPHYC_DBYTE3_RXENDLYTG0_U0_RXENDLYTG0_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXENDLYTG0_U0_Register use record
      RXENDLYTG0_U0  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXENDLYTG1_U0_RXENDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTg1_ux register
   type DDRPHYC_DBYTE3_RXENDLYTG1_U0_Register is record
      --  Trained receive enable delay (timing group 1)
      RXENDLYTG1_U0  : DDRPHYC_DBYTE3_RXENDLYTG1_U0_RXENDLYTG1_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXENDLYTG1_U0_Register use record
      RXENDLYTG1_U0  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXCLKDLYTG0_U0_RXCLKDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTgx_u0 register
   type DDRPHYC_DBYTE3_RXCLKDLYTG0_U0_Register is record
      --  Trained read DQS to RxClk delay (timing group 0)
      RXCLKDLYTG0_U0 : DDRPHYC_DBYTE3_RXCLKDLYTG0_U0_RXCLKDLYTG0_U0_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXCLKDLYTG0_U0_Register use record
      RXCLKDLYTG0_U0 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXCLKDLYTG1_U0_RXCLKDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTg1_ux register
   type DDRPHYC_DBYTE3_RXCLKDLYTG1_U0_Register is record
      --  Trained read DQS to RxClk delay (timing group 1)
      RXCLKDLYTG1_U0 : DDRPHYC_DBYTE3_RXCLKDLYTG1_U0_RXCLKDLYTG1_U0_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXCLKDLYTG1_U0_Register use record
      RXCLKDLYTG1_U0 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXCLKCDLYTG0_U0_RXCLKCDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTgx_u0 register
   type DDRPHYC_DBYTE3_RXCLKCDLYTG0_U0_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 0)
      RXCLKCDLYTG0_U0 : DDRPHYC_DBYTE3_RXCLKCDLYTG0_U0_RXCLKCDLYTG0_U0_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXCLKCDLYTG0_U0_Register use record
      RXCLKCDLYTG0_U0 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXCLKCDLYTG1_U0_RXCLKCDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTg1_ux register
   type DDRPHYC_DBYTE3_RXCLKCDLYTG1_U0_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 1)
      RXCLKCDLYTG1_U0 : DDRPHYC_DBYTE3_RXCLKCDLYTG1_U0_RXCLKCDLYTG1_U0_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXCLKCDLYTG1_U0_Register use record
      RXCLKCDLYTG1_U0 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_DQ0LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE3_DQ0LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE3_DQ0LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DQ0LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_DQ1LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE3_DQ1LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE3_DQ1LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DQ1LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_DQ2LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE3_DQ2LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE3_DQ2LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DQ2LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_DQ3LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE3_DQ3LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE3_DQ3LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DQ3LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_DQ4LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE3_DQ4LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE3_DQ4LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DQ4LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_DQ5LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE3_DQ5LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE3_DQ5LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DQ5LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_DQ6LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE3_DQ6LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE3_DQ6LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DQ6LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_DQ7LNSEL_DQYLNSEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DqLnSel register
   type DDRPHYC_DBYTE3_DQ7LNSEL_Register is record
      --  Supports mapping of PHY DQ to DRAM DQ within a byte (swizzle).
      DQYLNSEL      : DDRPHYC_DBYTE3_DQ7LNSEL_DQYLNSEL_Field := 16#7#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DQ7LNSEL_Register use record
      DQYLNSEL      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_TXDQDLYTG0_R_TXDQDLYTG0_R0_Field is
     Interfaces.Bit_Types.UInt9;

   --  DDRPHYC TxDqDlyTgx_r0 register
   type DDRPHYC_DBYTE3_TXDQDLYTG0_R_Register is record
      --  Write DQ delay (timing group 0)
      TXDQDLYTG0_R0 : DDRPHYC_DBYTE3_TXDQDLYTG0_R_TXDQDLYTG0_R0_Field :=
                       16#10#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_TXDQDLYTG0_R_Register use record
      TXDQDLYTG0_R0 at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_TXDQDLYTG1_R_TXDQDLYTG1_R0_Field is
     Interfaces.Bit_Types.UInt9;

   --  DDRPHYC TxDqDlyTg1_rx register
   type DDRPHYC_DBYTE3_TXDQDLYTG1_R_Register is record
      --  Write DQ delay (timing group 1)
      TXDQDLYTG1_R0 : DDRPHYC_DBYTE3_TXDQDLYTG1_R_TXDQDLYTG1_R0_Field :=
                       16#10#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_TXDQDLYTG1_R_Register use record
      TXDQDLYTG1_R0 at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_TXDQSDLYTG0_U0_TXDQSDLYTG0_U0_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTgx_u0 register
   type DDRPHYC_DBYTE3_TXDQSDLYTG0_U0_Register is record
      --  Write DQS delay (timing group 0)
      TXDQSDLYTG0_U0 : DDRPHYC_DBYTE3_TXDQSDLYTG0_U0_TXDQSDLYTG0_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_TXDQSDLYTG0_U0_Register use record
      TXDQSDLYTG0_U0 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_TXDQSDLYTG1_U0_TXDQSDLYTG1_U0_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTg1_ux register
   type DDRPHYC_DBYTE3_TXDQSDLYTG1_U0_Register is record
      --  Write DQS delay (timing group 1)
      TXDQSDLYTG1_U0 : DDRPHYC_DBYTE3_TXDQSDLYTG1_U0_TXDQSDLYTG1_U0_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_TXDQSDLYTG1_U0_Register use record
      TXDQSDLYTG1_U0 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_DXLCDLSTATUS_DXLCDLFINESNAPVAL_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC debug status of the DBYTE LCDL register
   type DDRPHYC_DBYTE3_DXLCDLSTATUS_Register is record
      --  Read-only. Value of the LCDL 1UI estimate code, latched by pulse on
      --  LcdlFineSnap while LCDLTSTENABLE = 1
      DXLCDLFINESNAPVAL  : DDRPHYC_DBYTE3_DXLCDLSTATUS_DXLCDLFINESNAPVAL_Field;
      --  Read-only. Value of the LCDL phase-detector output, latched by pulse
      DXLCDLPHDSNAPVAL   : Boolean;
      --  Read-only. Latched value of whether the LCDL ever achieved lock after
      --  the assertion of LCDLTSTENABLE
      DXLCDLSTICKYLOCK   : Boolean;
      --  Read-only. Latched value of whether the LCDL ever lost lock after the
      --  assertion of LCDLTSTENABLE
      DXLCDLSTICKYUNLOCK : Boolean;
      --  Read-only. Present value of whether the LCDL is locked
      DXLCDLLIVELOCK     : Boolean;
      --  unspecified
      Reserved_14_31     : Interfaces.Bit_Types.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_DXLCDLSTATUS_Register use record
      DXLCDLFINESNAPVAL  at 0 range 0 .. 9;
      DXLCDLPHDSNAPVAL   at 0 range 10 .. 10;
      DXLCDLSTICKYLOCK   at 0 range 11 .. 11;
      DXLCDLSTICKYUNLOCK at 0 range 12 .. 12;
      DXLCDLLIVELOCK     at 0 range 13 .. 13;
      Reserved_14_31     at 0 range 14 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXENDLYTG0_U1_RXENDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTgx_u1 register
   type DDRPHYC_DBYTE3_RXENDLYTG0_U1_Register is record
      --  Trained receive enable delay (timing group 0)
      RXENDLYTG0_U1  : DDRPHYC_DBYTE3_RXENDLYTG0_U1_RXENDLYTG0_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXENDLYTG0_U1_Register use record
      RXENDLYTG0_U1  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXENDLYTG1_U1_RXENDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC RxEnDlyTg1_u1 register
   type DDRPHYC_DBYTE3_RXENDLYTG1_U1_Register is record
      --  Trained receive enable delay (timing group 1)
      RXENDLYTG1_U1  : DDRPHYC_DBYTE3_RXENDLYTG1_U1_RXENDLYTG1_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXENDLYTG1_U1_Register use record
      RXENDLYTG1_U1  at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXCLKDLYTG0_U1_RXCLKDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTgx_u1 register
   type DDRPHYC_DBYTE3_RXCLKDLYTG0_U1_Register is record
      --  Trained read DQS to RxClk delay (timing group 0)
      RXCLKDLYTG0_U1 : DDRPHYC_DBYTE3_RXCLKDLYTG0_U1_RXCLKDLYTG0_U1_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXCLKDLYTG0_U1_Register use record
      RXCLKDLYTG0_U1 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXCLKDLYTG1_U1_RXCLKDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkDlyTg1_u1 register
   type DDRPHYC_DBYTE3_RXCLKDLYTG1_U1_Register is record
      --  Trained read DQS to RxClk delay (timing group 1)
      RXCLKDLYTG1_U1 : DDRPHYC_DBYTE3_RXCLKDLYTG1_U1_RXCLKDLYTG1_U1_Field :=
                        16#10#;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXCLKDLYTG1_U1_Register use record
      RXCLKDLYTG1_U1 at 0 range 0 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXCLKCDLYTG0_U1_RXCLKCDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTgx_u1 register
   type DDRPHYC_DBYTE3_RXCLKCDLYTG0_U1_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 0)
      RXCLKCDLYTG0_U1 : DDRPHYC_DBYTE3_RXCLKCDLYTG0_U1_RXCLKCDLYTG0_U1_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXCLKCDLYTG0_U1_Register use record
      RXCLKCDLYTG0_U1 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_RXCLKCDLYTG1_U1_RXCLKCDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC RxClkcDlyTg1_u1 register
   type DDRPHYC_DBYTE3_RXCLKCDLYTG1_U1_Register is record
      --  Trained read DQS_c to RxClkc delay (timing group 1)
      RXCLKCDLYTG1_U1 : DDRPHYC_DBYTE3_RXCLKCDLYTG1_U1_RXCLKCDLYTG1_U1_Field :=
                         16#10#;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_RXCLKCDLYTG1_U1_Register use record
      RXCLKCDLYTG1_U1 at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_TXDQSDLYTG0_U1_TXDQSDLYTG0_U1_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTgx_u1 register
   type DDRPHYC_DBYTE3_TXDQSDLYTG0_U1_Register is record
      --  Write DQS delay (timing group 0)
      TXDQSDLYTG0_U1 : DDRPHYC_DBYTE3_TXDQSDLYTG0_U1_TXDQSDLYTG0_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_TXDQSDLYTG0_U1_Register use record
      TXDQSDLYTG0_U1 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_DBYTE3_TXDQSDLYTG1_U1_TXDQSDLYTG1_U1_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC TxDqsDlyTg1_u1 register
   type DDRPHYC_DBYTE3_TXDQSDLYTG1_U1_Register is record
      --  Write DQS delay (timing group 1)
      TXDQSDLYTG1_U1 : DDRPHYC_DBYTE3_TXDQSDLYTG1_U1_TXDQSDLYTG1_U1_Field :=
                        16#100#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DBYTE3_TXDQSDLYTG1_U1_Register use record
      TXDQSDLYTG1_U1 at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  DDRPHYC Rx FIFO pointer initialization control register
   type DDRPHYC_MASTER0_RXFIFOINIT_Register is record
      --  Setting this bit resets the PHY RXDATAFIFO read and write pointers.
      RXFIFOINITPTR   : Boolean := False;
      --  Reserved for training firmware use
      INHIBITRXFIFORD : Boolean := False;
      --  unspecified
      Reserved_2_31   : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_RXFIFOINIT_Register use record
      RXFIFOINITPTR   at 0 range 0 .. 0;
      INHIBITRXFIFORD at 0 range 1 .. 1;
      Reserved_2_31   at 0 range 2 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_FORCECLKDISABLE_FORCECLKDISABLE_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC ForceClkDisable register
   type DDRPHYC_MASTER0_FORCECLKDISABLE_Register is record
      --  This bit field forces the gating of MEMCLKs driven from the PHY.
      FORCECLKDISABLE : DDRPHYC_MASTER0_FORCECLKDISABLE_FORCECLKDISABLE_Field :=
                         16#0#;
      --  unspecified
      Reserved_4_31   : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_FORCECLKDISABLE_Register use record
      FORCECLKDISABLE at 0 range 0 .. 3;
      Reserved_4_31   at 0 range 4 .. 31;
   end record;

   --  DDRPHYC ForceInternalUpdate register
   type DDRPHYC_MASTER0_FORCEINTERNALUPDATE_Register is record
      --  Used by training firmware to force an internal PHY update event
      FORCEINTERNALUPDATE : Boolean := False;
      --  unspecified
      Reserved_1_31       : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_FORCEINTERNALUPDATE_Register use record
      FORCEINTERNALUPDATE at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PHYCONFIG_PHYCONFIGANIBS_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_PHYCONFIG_PHYCONFIGDBYTES_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_PHYCONFIG_PHYCONFIGDFI_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC read-only displays PHY configuration register
   type DDRPHYC_MASTER0_PHYCONFIG_Register is record
      --  Read-only. Returns the following value depending on the define:
      PHYCONFIGANIBS  : DDRPHYC_MASTER0_PHYCONFIG_PHYCONFIGANIBS_Field;
      --  Read-only. Returns the following value depending on the define:
      PHYCONFIGDBYTES : DDRPHYC_MASTER0_PHYCONFIG_PHYCONFIGDBYTES_Field;
      --  Read-only. Returns the following value depending on the define:
      PHYCONFIGDFI    : DDRPHYC_MASTER0_PHYCONFIG_PHYCONFIGDFI_Field;
      --  unspecified
      Reserved_10_31  : Interfaces.Bit_Types.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYCONFIG_Register use record
      PHYCONFIGANIBS  at 0 range 0 .. 3;
      PHYCONFIGDBYTES at 0 range 4 .. 7;
      PHYCONFIGDFI    at 0 range 8 .. 9;
      Reserved_10_31  at 0 range 10 .. 31;
   end record;

   --  DDRPHYC PHY general configuration register
   type DDRPHYC_MASTER0_PGCR_Register is record
      --  Controls independent training for RxClk_c and RxClk_t.
      RXCLKRISEFALLMODE : Boolean := False;
      --  unspecified
      Reserved_1_31     : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PGCR_Register use record
      RXCLKRISEFALLMODE at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_TESTBUMPCNTRL1_TESTMAJORMODE_Field is
     Interfaces.Bit_Types.UInt3;
   subtype DDRPHYC_MASTER0_TESTBUMPCNTRL1_TESTANALOGOUTCTRL_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_TESTBUMPCNTRL1_TESTGAINCURRADJ_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC test bump control1 register
   type DDRPHYC_MASTER0_TESTBUMPCNTRL1_Register is record
      --  Selects the major mode of operation for the receiver.
      TESTMAJORMODE       : DDRPHYC_MASTER0_TESTBUMPCNTRL1_TESTMAJORMODE_Field :=
                             16#3#;
      --  Do not use, for debug only
      TESTBIASBYPASSEN    : Boolean := False;
      --  Reserved and returns zero on reads.
      TESTANALOGOUTCTRL   : DDRPHYC_MASTER0_TESTBUMPCNTRL1_TESTANALOGOUTCTRL_Field :=
                             16#0#;
      --  Adjust gain and current of analog observe RX amplifier stage at
      --  analog test point.
      TESTGAINCURRADJ     : DDRPHYC_MASTER0_TESTBUMPCNTRL1_TESTGAINCURRADJ_Field :=
                             16#B#;
      --  Do not use, for debug only
      TESTSELEXTERNALVREF : Boolean := False;
      --  Setting this bit extends the VREF DAC range for debug.
      TESTEXTVREFRANGE    : Boolean := False;
      --  Do not use, for debug only
      TESTPOWERGATEEN     : Boolean := False;
      --  unspecified
      Reserved_16_31      : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_TESTBUMPCNTRL1_Register use record
      TESTMAJORMODE       at 0 range 0 .. 2;
      TESTBIASBYPASSEN    at 0 range 3 .. 3;
      TESTANALOGOUTCTRL   at 0 range 4 .. 7;
      TESTGAINCURRADJ     at 0 range 8 .. 12;
      TESTSELEXTERNALVREF at 0 range 13 .. 13;
      TESTEXTVREFRANGE    at 0 range 14 .. 14;
      TESTPOWERGATEEN     at 0 range 15 .. 15;
      Reserved_16_31      at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CALUCLKINFO_CALUCLKTICKSPER1US_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRPHYC impedance calibration clock ratio register
   type DDRPHYC_MASTER0_CALUCLKINFO_Register is record
      --  Must be programmed to the number of DfiClks in 1 us (rounded up),
      --  with minimum value
      CALUCLKTICKSPER1US : DDRPHYC_MASTER0_CALUCLKINFO_CALUCLKTICKSPER1US_Field :=
                            16#320#;
      --  unspecified
      Reserved_11_31     : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALUCLKINFO_Register use record
      CALUCLKTICKSPER1US at 0 range 0 .. 10;
      Reserved_11_31     at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_TESTBUMPCNTRL_TESTBUMPEN_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRPHYC_MASTER0_TESTBUMPCNTRL_TESTBUMPDATASEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC test bump control register
   type DDRPHYC_MASTER0_TESTBUMPCNTRL_Register is record
      --  Controls the output function of the signal BP_ALERT_N.
      TESTBUMPEN        : DDRPHYC_MASTER0_TESTBUMPCNTRL_TESTBUMPEN_Field :=
                           16#0#;
      --  Controls the output function of the signal.
      TESTBUMPTOGGLE    : Boolean := False;
      --  RVSD
      TESTBUMPDATASEL   : DDRPHYC_MASTER0_TESTBUMPCNTRL_TESTBUMPDATASEL_Field :=
                           16#0#;
      --  When set, this bit causes the digital observation output pin to be
      --  driven onto BP_ALERT_N.
      FORCEMTESTONALERT : Boolean := False;
      --  unspecified
      Reserved_10_31    : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_TESTBUMPCNTRL_Register use record
      TESTBUMPEN        at 0 range 0 .. 1;
      TESTBUMPTOGGLE    at 0 range 2 .. 2;
      TESTBUMPDATASEL   at 0 range 3 .. 8;
      FORCEMTESTONALERT at 0 range 9 .. 9;
      Reserved_10_31    at 0 range 10 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_SEQ0BDLY0_SEQ0BDLY0_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC Seq0BDLY0 register
   type DDRPHYC_MASTER0_SEQ0BDLY0_Register is record
      --  PIE delay register 0
      SEQ0BDLY0      : DDRPHYC_MASTER0_SEQ0BDLY0_SEQ0BDLY0_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_SEQ0BDLY0_Register use record
      SEQ0BDLY0      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_SEQ0BDLY1_SEQ0BDLY1_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC Seq0BDLY1 register
   type DDRPHYC_MASTER0_SEQ0BDLY1_Register is record
      --  PIE delay register 1
      SEQ0BDLY1      : DDRPHYC_MASTER0_SEQ0BDLY1_SEQ0BDLY1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_SEQ0BDLY1_Register use record
      SEQ0BDLY1      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_SEQ0BDLY2_SEQ0BDLY2_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC Seq0BDLY2 register
   type DDRPHYC_MASTER0_SEQ0BDLY2_Register is record
      --  PIE delay register 2
      SEQ0BDLY2      : DDRPHYC_MASTER0_SEQ0BDLY2_SEQ0BDLY2_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_SEQ0BDLY2_Register use record
      SEQ0BDLY2      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_SEQ0BDLY3_SEQ0BDLY3_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC Seq0BDLY3 register
   type DDRPHYC_MASTER0_SEQ0BDLY3_Register is record
      --  PIE delay register 3
      SEQ0BDLY3      : DDRPHYC_MASTER0_SEQ0BDLY3_SEQ0BDLY3_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_SEQ0BDLY3_Register use record
      SEQ0BDLY3      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DDRPHYC PHY alert status bit register
   type DDRPHYC_MASTER0_PHYALERTSTATUS_Register is record
      --  Read-only. Current state of ALERT_N
      PHYALERT      : Boolean;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYALERTSTATUS_Register use record
      PHYALERT      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PPTTRAINSETUP_PHYMSTRTRAININTERVAL_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_PPTTRAINSETUP_PHYMSTRMAXREQTOACK_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC setup intervals for DFI PHY master operation register
   type DDRPHYC_MASTER0_PPTTRAINSETUP_Register is record
      --  Time between the end of one training, and the start
      PHYMSTRTRAININTERVAL : DDRPHYC_MASTER0_PPTTRAINSETUP_PHYMSTRTRAININTERVAL_Field :=
                              16#0#;
      --  Max time from tdfi_phymstr_req asserted
      PHYMSTRMAXREQTOACK   : DDRPHYC_MASTER0_PPTTRAINSETUP_PHYMSTRMAXREQTOACK_Field :=
                              16#0#;
      --  unspecified
      Reserved_7_31        : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PPTTRAINSETUP_Register use record
      PHYMSTRTRAININTERVAL at 0 range 0 .. 3;
      PHYMSTRMAXREQTOACK   at 0 range 4 .. 6;
      Reserved_7_31        at 0 range 7 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_ATESTMODE_ATESTMODESEL_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC ATestMode control register
   type DDRPHYC_MASTER0_ATESTMODE_Register is record
      --  Enables loopback PRBS7 testing of all the DDR output pins.
      ATESTPRBSEN   : Boolean := False;
      --  Not used
      ATESTCLKEN    : Boolean := False;
      --  Master mode select for ATest (loopback)
      ATESTMODESEL  : DDRPHYC_MASTER0_ATESTMODE_ATESTMODESEL_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_ATESTMODE_Register use record
      ATESTPRBSEN   at 0 range 0 .. 0;
      ATESTCLKEN    at 0 range 1 .. 1;
      ATESTMODESEL  at 0 range 2 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_TXCALBINP_TXCALBINP_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC TxCalBinP register
   type DDRPHYC_MASTER0_TXCALBINP_Register is record
      --  Read-only. Binary result of the 31-bit thermometer pull-up code
      TXCALBINP     : DDRPHYC_MASTER0_TXCALBINP_TXCALBINP_Field;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_TXCALBINP_Register use record
      TXCALBINP     at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_TXCALBINN_TXCALBINN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC TxCalBinN register
   type DDRPHYC_MASTER0_TXCALBINN_Register is record
      --  Read-only. Binary result of the 31-bit thermometer pull-down code
      TXCALBINN     : DDRPHYC_MASTER0_TXCALBINN_TXCALBINN_Field;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_TXCALBINN_Register use record
      TXCALBINN     at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_TXCALPOVR_TXCALBINPOVRVAL_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC TX P impedance calibration override register
   type DDRPHYC_MASTER0_TXCALPOVR_Register is record
      --  Binary value which can override TXCALBINP bitfiled
      TXCALBINPOVRVAL : DDRPHYC_MASTER0_TXCALPOVR_TXCALBINPOVRVAL_Field :=
                         16#0#;
      --  None
      TXCALBINPOVREN  : Boolean := False;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_TXCALPOVR_Register use record
      TXCALBINPOVRVAL at 0 range 0 .. 4;
      TXCALBINPOVREN  at 0 range 5 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_TXCALNOVR_TXCALBINNOVRVAL_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC TX N impedance calibration override register
   type DDRPHYC_MASTER0_TXCALNOVR_Register is record
      --  Binary value which can override TXCALBINN bit field
      TXCALBINNOVRVAL : DDRPHYC_MASTER0_TXCALNOVR_TXCALBINNOVRVAL_Field :=
                         16#0#;
      --  None
      TXCALBINNOVREN  : Boolean := False;
      --  unspecified
      Reserved_6_31   : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_TXCALNOVR_Register use record
      TXCALBINNOVRVAL at 0 range 0 .. 4;
      TXCALBINNOVREN  at 0 range 5 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   --  DDRPHYC enables for update and low-power interfaces for DFI0 and	DFI1
   --  register
   type DDRPHYC_MASTER0_DFIMODE_Register is record
      --  Enables operation for the PHY logic associated with DFI0.
      DFI0ENABLE    : Boolean := True;
      --  Enables operation for the PHY logic associated with DFI1.
      DFI1ENABLE    : Boolean := False;
      --  Controls the PHY logic associated with both DFI0 and DFI1.
      DFI1OVERRIDE  : Boolean := True;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIMODE_Register use record
      DFI0ENABLE    at 0 range 0 .. 0;
      DFI1ENABLE    at 0 range 1 .. 1;
      DFI1OVERRIDE  at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_TRISTATEMODECA_CKDISVAL_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC mode select register for MEMCLK/address/command	tristate
   --  register
   type DDRPHYC_MASTER0_TRISTATEMODECA_Register is record
      --  When this bit is set, the dynamic tristate feature is disabled (on by
      --  default).
      DISDYNADRTRI  : Boolean := False;
      --  Must be set to 1 for dynamic tristate to work when CA bus is 2T or
      --  Geardown mode.
      DDR2TMODE     : Boolean := False;
      --  The PHY provides four memory clocks (0 to 3).
      CKDISVAL      : DDRPHYC_MASTER0_TRISTATEMODECA_CKDISVAL_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_TRISTATEMODECA_Register use record
      DISDYNADRTRI  at 0 range 0 .. 0;
      DDR2TMODE     at 0 range 1 .. 1;
      CKDISVAL      at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MTESTMUXSEL_MTESTMUXSEL_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC MtestMuxSel register
   type DDRPHYC_MASTER0_MTESTMUXSEL_Register is record
      --  Controls for the 64-1 mux for asynchronous data to the digital
      --  observation pin.
      MTESTMUXSEL   : DDRPHYC_MASTER0_MTESTMUXSEL_MTESTMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MTESTMUXSEL_Register use record
      MTESTMUXSEL   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  DDRPHYC MtestPgmInfo register
   type DDRPHYC_MASTER0_MTESTPGMINFO_Register is record
      --  This bit value can be driven onto the digital observation pin (no
      --  other hardware effect).
      MTESTPGMINFO  : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MTESTPGMINFO_Register use record
      MTESTPGMINFO  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DDRPHYC dynamic power up/down control register
   type DDRPHYC_MASTER0_DYNPWRDNUP_Register is record
      --  None
      DYNPOWERDOWN  : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DYNPWRDNUP_Register use record
      DYNPOWERDOWN  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DDRPHYC PMIEnable register
   type DDRPHYC_MASTER0_PMIENABLE_Register is record
      --  This bit is dynamically written by PIE during frequency changes and
      --  must not be written by the user.
      PMIENABLE     : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PMIENABLE_Register use record
      PMIENABLE     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PHYTID_PHYTID_Field is Interfaces.Bit_Types.UInt16;

   --  DDRPHYC PhyTID register
   type DDRPHYC_MASTER0_PHYTID_Register is record
      --  Placeholder to store technology-specific information
      PHYTID         : DDRPHYC_MASTER0_PHYTID_PHYTID_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYTID_Register use record
      PHYTID         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_HWTMRL_HWTMRL_Field is Interfaces.Bit_Types.UInt5;

   --  DDRPHYC HwtMRL register
   type DDRPHYC_MASTER0_HWTMRL_Register is record
      --  Master copy of MRL used by the PHY training firmware only
      HWTMRL        : DDRPHYC_MASTER0_HWTMRL_HWTMRL_Field := 16#6#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_HWTMRL_Register use record
      HWTMRL        at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_DFIPHYUPD_DFIPHYUPDCNT_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_DFIPHYUPD_DFIPHYUPDRESP_Field is
     Interfaces.Bit_Types.UInt3;
   subtype DDRPHYC_MASTER0_DFIPHYUPD_DFIPHYUPDTHRESHOLD_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_DFIPHYUPD_DFIPHYUPDINTTHRESHOLD_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC DFI PhyUpdate request time counter register
   type DDRPHYC_MASTER0_DFIPHYUPD_Register is record
      --  Controls the interval between the end of a PHY update transaction and
      --  a subsequent request.
      DFIPHYUPDCNT          : DDRPHYC_MASTER0_DFIPHYUPD_DFIPHYUPDCNT_Field :=
                               16#7#;
      --  Enforces the t_phyupd_resp time (max time allowed to the controller
      --  to respond to the request for a PHY update).
      DFIPHYUPDRESP         : DDRPHYC_MASTER0_DFIPHYUPD_DFIPHYUPDRESP_Field :=
                               16#0#;
      --  None
      DFIPHYUPDMODE         : Boolean := False;
      --  - Nonzero codes are the threshold value for the change in the master
      --  LCDL 1UI phase code since the last Phy update request that triggers a
      --  new Phy update request;
      DFIPHYUPDTHRESHOLD    : DDRPHYC_MASTER0_DFIPHYUPD_DFIPHYUPDTHRESHOLD_Field :=
                               16#F#;
      --  Similar to DFIPHYUPDTHRESHOLD except that, rather than affecting the
      --  Phy update request, this bit field affects only the threshold used to
      --  generate the VT drift alarm interrupt.
      DFIPHYUPDINTTHRESHOLD : DDRPHYC_MASTER0_DFIPHYUPD_DFIPHYUPDINTTHRESHOLD_Field :=
                               16#F#;
      --  unspecified
      Reserved_16_31        : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIPHYUPD_Register use record
      DFIPHYUPDCNT          at 0 range 0 .. 3;
      DFIPHYUPDRESP         at 0 range 4 .. 6;
      DFIPHYUPDMODE         at 0 range 7 .. 7;
      DFIPHYUPDTHRESHOLD    at 0 range 8 .. 11;
      DFIPHYUPDINTTHRESHOLD at 0 range 12 .. 15;
      Reserved_16_31        at 0 range 16 .. 31;
   end record;

   --  DDRPHYC PdaMrsWriteMode register
   type DDRPHYC_MASTER0_PDAMRSWRITEMODE_Register is record
      --  Controls the write DQ generation per the timing requirements on DQ
      --  signals used for
      PDAMRSWRITEMODE : Boolean := False;
      --  unspecified
      Reserved_1_31   : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PDAMRSWRITEMODE_Register use record
      PDAMRSWRITEMODE at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_DFIGEARDOWNCTL_DFIGEARDOWNCTL_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC DFIGEARDOWNCTL register
   type DDRPHYC_MASTER0_DFIGEARDOWNCTL_Register is record
      --  Bit[0] controls whether dfi_geardown_en causes chip-select (CS)
      --  timing to change.
      DFIGEARDOWNCTL : DDRPHYC_MASTER0_DFIGEARDOWNCTL_DFIGEARDOWNCTL_Field :=
                        16#0#;
      --  unspecified
      Reserved_2_31  : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIGEARDOWNCTL_Register use record
      DFIGEARDOWNCTL at 0 range 0 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_DQSPREAMBLECONTROL_POSITIONDFEINIT_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC control the PHY logic related to the read and write DQS	preamble
   --  register
   type DDRPHYC_MASTER0_DQSPREAMBLECONTROL_Register is record
      --  Widens the RxDqsEn window to allow larger drift in the incoming read
      --  DQS to take advantage of the larger/wider preamble generated by the
      --  DRAMs when D4 DRAMS are configured with DDR4 MR4 A11 read preamble =
      --  1 for causing a 2nCK read preamble.
      TWOTCKRXDQSPRE       : Boolean := False;
      --  For LPDDR4, all write operations are 2nCK such that this control must
      --  be set to 1.
      TWOTCKTXDQSPRE       : Boolean := False;
      --  For DDR4 PHY, only when receive DFE is enabled
      POSITIONDFEINIT      : DDRPHYC_MASTER0_DQSPREAMBLECONTROL_POSITIONDFEINIT_Field :=
                              16#2#;
      --  Used in LPDDR4 mode to modify the early preamble
      --  whenTwoTckTxDqsPre=1.
      LP4TGLTWOTCKTXDQSPRE : Boolean := False;
      --  In LPDDR4 mode, this bit must be set to extend the write postamble.
      LP4POSTAMBLEEXT      : Boolean := False;
      --  Used in LPDDR4 static-preamble mode to bridge the RxEn between two
      --  reads to the same timing group when the bubble is 1 memclk
      LP4STTCPREBRIDGERXEN : Boolean := False;
      --  When this bits is set, DQS_T and DQS_C are driven differentially to 0
      --  and 1, respectively, before and after a write burst, except during a
      --  memory read transaction.
      WDQSEXTENSION        : Boolean := False;
      --  unspecified
      Reserved_9_31        : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DQSPREAMBLECONTROL_Register use record
      TWOTCKRXDQSPRE       at 0 range 0 .. 0;
      TWOTCKTXDQSPRE       at 0 range 1 .. 1;
      POSITIONDFEINIT      at 0 range 2 .. 4;
      LP4TGLTWOTCKTXDQSPRE at 0 range 5 .. 5;
      LP4POSTAMBLEEXT      at 0 range 6 .. 6;
      LP4STTCPREBRIDGERXEN at 0 range 7 .. 7;
      WDQSEXTENSION        at 0 range 8 .. 8;
      Reserved_9_31        at 0 range 9 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MASTERX4CONFIG_X4TG_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MasterX4Config register
   type DDRPHYC_MASTER0_MASTERX4CONFIG_Register is record
      --  Set to 1 if this timing group/rank is x4 (as opposed to x8) memory.
      X4TG          : DDRPHYC_MASTER0_MASTERX4CONFIG_X4TG_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MASTERX4CONFIG_Register use record
      X4TG          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_WRLEVBITS_WRLEVFORDQSL_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_WRLEVBITS_WRLEVFORDQSU_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC write level feedback DQ observability selection register
   type DDRPHYC_MASTER0_WRLEVBITS_Register is record
      --  DQ bit used for write levelization
      WRLEVFORDQSL  : DDRPHYC_MASTER0_WRLEVBITS_WRLEVFORDQSL_Field := 16#8#;
      --  DQ bit used for write levelization
      WRLEVFORDQSU  : DDRPHYC_MASTER0_WRLEVBITS_WRLEVFORDQSU_Field := 16#9#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_WRLEVBITS_Register use record
      WRLEVFORDQSL  at 0 range 0 .. 3;
      WRLEVFORDQSU  at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DDRPHYC EnableCsMulticast register
   type DDRPHYC_MASTER0_ENABLECSMULTICAST_Register is record
      --  Controls whether CS_N[3:2] must be multicast on CID[1:0] in DDR4
      --  mode.
      ENABLECSMULTICAST : Boolean := False;
      --  unspecified
      Reserved_1_31     : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_ENABLECSMULTICAST_Register use record
      ENABLECSMULTICAST at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_ACX4ANIBDIS_ACX4ANIBDIS_Field is
     Interfaces.Bit_Types.UInt12;

   --  DDRPHYC Acx4AnibDis register
   type DDRPHYC_MASTER0_ACX4ANIBDIS_Register is record
      --  When a bit is set, the corresponding ACX nibble is disabled.
      ACX4ANIBDIS    : DDRPHYC_MASTER0_ACX4ANIBDIS_ACX4ANIBDIS_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_ACX4ANIBDIS_Register use record
      ACX4ANIBDIS    at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  DDRPHYC enable Read-DBI function in each DBYTE register
   type DDRPHYC_MASTER0_DMIPINPRESENT_Register is record
      --  This bit must be set if Read-DBI is enabled in a connected DDR4 or
      --  LPDDR4 device.
      RDDBIENABLED  : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DMIPINPRESENT_Register use record
      RDDBIENABLED  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_ARDPTRINITVAL_ARDPTRINITVAL_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC ARdPtrInitVal register
   type DDRPHYC_MASTER0_ARDPTRINITVAL_Register is record
      --  Initial pointer offset for the free-running FIFOs in the DBYTE
      ARDPTRINITVAL : DDRPHYC_MASTER0_ARDPTRINITVAL_ARDPTRINITVAL_Field :=
                       16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_ARDPTRINITVAL_Register use record
      ARDPTRINITVAL at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  DDRPHYC DLL mode control for DBYTEs register
   type DDRPHYC_MASTER0_DBYTEDLLMODECNTRL_Register is record
      --  unspecified
      Reserved_0_0      : Interfaces.Bit_Types.Bit := 16#0#;
      --  This bit must be set to 1 if read DQS preamble contains a toggle, for
      --  example DDR4 or LPDDR4 read toggling preamble mode.
      DLLRXPREAMBLEMODE : Boolean := False;
      --  unspecified
      Reserved_2_31     : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DBYTEDLLMODECNTRL_Register use record
      Reserved_0_0      at 0 range 0 .. 0;
      DLLRXPREAMBLEMODE at 0 range 1 .. 1;
      Reserved_2_31     at 0 range 2 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CALOFFSETS_CALCMPR5OFFSET_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRPHYC_MASTER0_CALOFFSETS_CALDRVPDTHOFFSET_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_CALOFFSETS_CALDRVPUTHOFFSET_Field is
     Interfaces.Bit_Types.UInt4;

   --  IDDRPHYC impedance calibration offsets control register
   type DDRPHYC_MASTER0_CALOFFSETS_Register is record
      --  Adjusts the offset-compensated DAC code for the cmpana circuit at
      --  VREF == 0.
      CALCMPR5OFFSET   : DDRPHYC_MASTER0_CALOFFSETS_CALCMPR5OFFSET_Field :=
                          16#0#;
      --  Adjusts the driver pull-down calibration code.
      CALDRVPDTHOFFSET : DDRPHYC_MASTER0_CALOFFSETS_CALDRVPDTHOFFSET_Field :=
                          16#0#;
      --  Adjusts the driver pull-up calibration code.
      CALDRVPUTHOFFSET : DDRPHYC_MASTER0_CALOFFSETS_CALDRVPUTHOFFSET_Field :=
                          16#0#;
      --  unspecified
      Reserved_14_31   : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALOFFSETS_Register use record
      CALCMPR5OFFSET   at 0 range 0 .. 5;
      CALDRVPDTHOFFSET at 0 range 6 .. 9;
      CALDRVPUTHOFFSET at 0 range 10 .. 13;
      Reserved_14_31   at 0 range 14 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_SARINITVALS_SARINITOFFSET05_Field is
     Interfaces.Bit_Types.UInt3;
   subtype DDRPHYC_MASTER0_SARINITVALS_SARINITNINT_Field is
     Interfaces.Bit_Types.UInt3;
   subtype DDRPHYC_MASTER0_SARINITVALS_SARINITPEXT_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC SarInitVals register
   type DDRPHYC_MASTER0_SARINITVALS_Register is record
      --  Specifies the SAR starting value for OFFSET05 calibration.
      SARINITOFFSET05 : DDRPHYC_MASTER0_SARINITVALS_SARINITOFFSET05_Field :=
                         16#7#;
      --  Specifies the SAR starting value for NINT calibration.
      SARINITNINT     : DDRPHYC_MASTER0_SARINITVALS_SARINITNINT_Field :=
                         16#4#;
      --  Specifies the SAR starting value for PEXT calibration.
      SARINITPEXT     : DDRPHYC_MASTER0_SARINITVALS_SARINITPEXT_Field :=
                         16#4#;
      --  unspecified
      Reserved_9_31   : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_SARINITVALS_Register use record
      SARINITOFFSET05 at 0 range 0 .. 2;
      SARINITNINT     at 0 range 3 .. 5;
      SARINITPEXT     at 0 range 6 .. 8;
      Reserved_9_31   at 0 range 9 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CALPEXTOVR_CALPEXTOVR_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC CalPExtOvr register
   type DDRPHYC_MASTER0_CALPEXTOVR_Register is record
      --  If CALPEXTDIS is set, the value provided here by software is used
      --  instead of the automatically generated value which is visible via
      --  CalPExt field.
      CALPEXTOVR    : DDRPHYC_MASTER0_CALPEXTOVR_CALPEXTOVR_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALPEXTOVR_Register use record
      CALPEXTOVR    at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CALCMPR5OVR_CALCMPR5OVR_Field is
     Interfaces.Bit_Types.Byte;

   --  DDRPHYC CalCmpr5Ovr register
   type DDRPHYC_MASTER0_CALCMPR5OVR_Register is record
      --  If CALCMPR5DIS is set, the value provided here by software is used
      --  instead of the automatically generated value which is visible via
      --  CalCmpr5 field.
      CALCMPR5OVR   : DDRPHYC_MASTER0_CALCMPR5OVR_CALCMPR5OVR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALCMPR5OVR_Register use record
      CALCMPR5OVR   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CALNINTOVR_CALNINTOVR_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC CalNIntOvr register
   type DDRPHYC_MASTER0_CALNINTOVR_Register is record
      --  If the CALNINTDIS is set, the value provided here by software is used
      --  instead of the automatically generated value which is visible via
      --  CalNInt field.
      CALNINTOVR    : DDRPHYC_MASTER0_CALNINTOVR_CALNINTOVR_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALNINTOVR_Register use record
      CALNINTOVR    at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CALDRVSTR0_CALDRVSTRPD50_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_CALDRVSTR0_CALDRVSTRPU50_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC impedance calibration driver strength control register
   type DDRPHYC_MASTER0_CALDRVSTR0_Register is record
      --  3 to 15: Reserved
      CALDRVSTRPD50 : DDRPHYC_MASTER0_CALDRVSTR0_CALDRVSTRPD50_Field := 16#0#;
      --  3 to 15: Reserved
      CALDRVSTRPU50 : DDRPHYC_MASTER0_CALDRVSTR0_CALDRVSTRPU50_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALDRVSTR0_Register use record
      CALDRVSTRPD50 at 0 range 0 .. 3;
      CALDRVSTRPU50 at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PROCODTTIMECTL_PODTTAILWIDTH_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRPHYC_MASTER0_PROCODTTIMECTL_PODTSTARTDELAY_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRPHYC_MASTER0_PROCODTTIMECTL_PODTTAILWIDTHEXT_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC read data on-die termination timing control register
   type DDRPHYC_MASTER0_PROCODTTIMECTL_Register is record
      --  Controls the length of the tail of ProcOdt (units of UI).
      PODTTAILWIDTH    : DDRPHYC_MASTER0_PROCODTTIMECTL_PODTTAILWIDTH_Field :=
                          16#3#;
      --  Controls the start of ProcOdt (units of UI).
      PODTSTARTDELAY   : DDRPHYC_MASTER0_PROCODTTIMECTL_PODTSTARTDELAY_Field :=
                          16#3#;
      --  Controls the length of the tail of ProcOdt (units of UI).
      PODTTAILWIDTHEXT : DDRPHYC_MASTER0_PROCODTTIMECTL_PODTTAILWIDTHEXT_Field :=
                          16#1#;
      --  unspecified
      Reserved_6_31    : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PROCODTTIMECTL_Register use record
      PODTTAILWIDTH    at 0 range 0 .. 1;
      PODTSTARTDELAY   at 0 range 2 .. 3;
      PODTTAILWIDTHEXT at 0 range 4 .. 5;
      Reserved_6_31    at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MEMALERTCONTROL_MALERTVREFLEVEL_Field is
     Interfaces.Bit_Types.UInt7;
   subtype DDRPHYC_MASTER0_MEMALERTCONTROL_MALERTPUSTREN_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MemAlert receiver configuration register
   type DDRPHYC_MASTER0_MEMALERTCONTROL_Register is record
      --  Sets the Vless thansub>REFless than/sub> level of internal Vless
      --  thansub>REFless than/sub> DAC, assuming the following mission mode
      --  settings:
      MALERTVREFLEVEL  : DDRPHYC_MASTER0_MEMALERTCONTROL_MALERTVREFLEVEL_Field :=
                          16#0#;
      --  When set for test/debug, this bit selects external Vless
      --  thansub>REFless than/sub> source.
      MALERTVREFEXTEN  : Boolean := False;
      --  Controls the pull-up termination on MALERT.
      MALERTPUSTREN    : DDRPHYC_MASTER0_MEMALERTCONTROL_MALERTPUSTREN_Field :=
                          16#0#;
      --  When set, this bit enables the pull-up termination on MALERT
      MALERTPUEN       : Boolean := False;
      --  This bit is programmable as follows:
      MALERTRXEN       : Boolean := False;
      --  When MALERTRXEN is not set, this bit state is used to drive
      --  dfi_alert_n.
      MALERTDISABLEVAL : Boolean := True;
      --  When set, this bit state is used to force the parity error to memory.
      MALERTFORCEERROR : Boolean := False;
      --  unspecified
      Reserved_16_31   : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MEMALERTCONTROL_Register use record
      MALERTVREFLEVEL  at 0 range 0 .. 6;
      MALERTVREFEXTEN  at 0 range 7 .. 7;
      MALERTPUSTREN    at 0 range 8 .. 11;
      MALERTPUEN       at 0 range 12 .. 12;
      MALERTRXEN       at 0 range 13 .. 13;
      MALERTDISABLEVAL at 0 range 14 .. 14;
      MALERTFORCEERROR at 0 range 15 .. 15;
      Reserved_16_31   at 0 range 16 .. 31;
   end record;

   --  DDRPHYC MemAlert receiver configuration register 2
   type DDRPHYC_MASTER0_MEMALERTCONTROL2_Register is record
      --  This bit is programmed as follows:
      MALERTSYNCBYPASS : Boolean := False;
      --  unspecified
      Reserved_1_31    : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MEMALERTCONTROL2_Register use record
      MALERTSYNCBYPASS at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  DDRPHYC protection and control of BP_MemReset_L register
   type DDRPHYC_MASTER0_MEMRESETL_Register is record
      --  Controls the MemResetL output of the PHY.
      MEMRESETLVALUE  : Boolean := False;
      --  Controls the MemResetL output of the PHY.
      PROTECTMEMRESET : Boolean := False;
      --  unspecified
      Reserved_2_31   : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MEMRESETL_Register use record
      MEMRESETLVALUE  at 0 range 0 .. 0;
      PROTECTMEMRESET at 0 range 1 .. 1;
      Reserved_2_31   at 0 range 2 .. 31;
   end record;

   --  DDRPHYC PUBMODE - HWT Mux select register
   type DDRPHYC_MASTER0_PUBMODE_Register is record
      --  When this bit is set, the mux that switches between DCT and HWT for
      --  the source of memory transactions is switched to HWT.
      HWTMEMSRC     : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PUBMODE_Register use record
      HWTMEMSRC     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DDRPHYC misc PHY status bits register
   type DDRPHYC_MASTER0_MISCPHYSTATUS_Register is record
      --  Read-only. Returns the status of the custom circuit which protects
      --  the MemResetL output of the PHY on the initial power-on or reset.
      DCTSANE       : Boolean;
      --  Read-only. Returns the active-high value used by the custom circuit
      --  which drives the memory reset signal.
      PORMEMRESET   : Boolean;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MISCPHYSTATUS_Register use record
      DCTSANE       at 0 range 0 .. 0;
      PORMEMRESET   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DDRPHYC CoreLoopbackSel register
   type DDRPHYC_MASTER0_CORELOOPBACKSEL_Register is record
      --  This bit is controlled by the PHY test firmware.
      CORELOOPBACKSEL : Boolean := False;
      --  unspecified
      Reserved_1_31   : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CORELOOPBACKSEL_Register use record
      CORELOOPBACKSEL at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_DLLTRAINPARAM_EXTENDPHDTIME_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC DLL various training parameters register
   type DDRPHYC_MASTER0_DLLTRAINPARAM_Register is record
      --  Used by the PHY firmware locking the LCDL delay cells
      EXTENDPHDTIME : DDRPHYC_MASTER0_DLLTRAINPARAM_EXTENDPHDTIME_Field :=
                       16#2#;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DLLTRAINPARAM_Register use record
      EXTENDPHDTIME at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DDRPHYC HwtLpCsEnBypass register
   type DDRPHYC_MASTER0_HWTLPCSENBYPASS_Register is record
      --  When set, this bit disables LpCsEn function for LPDDR4.
      HWTLPCSENBYPASS : Boolean := False;
      --  unspecified
      Reserved_1_31   : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_HWTLPCSENBYPASS_Register use record
      HWTLPCSENBYPASS at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  DDRPHYC DFI command/address mode register
   type DDRPHYC_MASTER0_DFICAMODE_Register is record
      --  Reserved, must be kept at reset value.
      DFILP3CAMODE   : Boolean := False;
      --  DDR4 mode enable
      DFID4CAMODE    : Boolean := False;
      --  LP4 mode enable
      DFILP4CAMODE   : Boolean := False;
      --  DDR4-Alt mode enable (only available in certain configurations)
      DFID4ALTCAMODE : Boolean := False;
      --  unspecified
      Reserved_4_31  : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFICAMODE_Register use record
      DFILP3CAMODE   at 0 range 0 .. 0;
      DFID4CAMODE    at 0 range 1 .. 1;
      DFILP4CAMODE   at 0 range 2 .. 2;
      DFID4ALTCAMODE at 0 range 3 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   --  DDRPHYC DLL lock state machine control register
   type DDRPHYC_MASTER0_DLLCONTROL_Register is record
      --  Used to reset the DDL/LCDL lock state machine
      DLLRESETRELOCK : Boolean := True;
      --  unspecified
      Reserved_1_31  : Interfaces.Bit_Types.UInt31 := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DLLCONTROL_Register use record
      DLLRESETRELOCK at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PULSEDLLUPDATEPHASE_UPDATEPHASEDESTRESERVED_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC DLL update phase control register
   type DDRPHYC_MASTER0_PULSEDLLUPDATEPHASE_Register is record
      --  Causes a LongBubble to the DBYTE modules, which causes an update of
      --  the DBYTE module DLLs (tx,rxen,rxclk).
      PULSEDBYTEDLLUPDATEPHASE     : Boolean := False;
      --  Causes an AC module CK (memck) DLL phase update.
      PULSEACKDLLUPDATEPHASE       : Boolean := False;
      --  Causes an AC module CA (command/address/cke/odt) DLL phase update.
      PULSEACADLLUPDATEPHASE       : Boolean := False;
      --  reserved, not used
      UPDATEPHASEDESTRESERVED      : DDRPHYC_MASTER0_PULSEDLLUPDATEPHASE_UPDATEPHASEDESTRESERVED_Field :=
                                      16#0#;
      --  Causes LongBubble to update the DBYTE and ANIB LDCL phase.
      TRAINUPDATEPHASEONLONGBUBBLE : Boolean := False;
      --  Causes each new operation to reload the LcdlPhase, and increases
      --  bubbles.
      ALWAYSUPDATELCDLPHASE        : Boolean := False;
      --  unspecified
      Reserved_8_31                : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PULSEDLLUPDATEPHASE_Register use record
      PULSEDBYTEDLLUPDATEPHASE     at 0 range 0 .. 0;
      PULSEACKDLLUPDATEPHASE       at 0 range 1 .. 1;
      PULSEACADLLUPDATEPHASE       at 0 range 2 .. 2;
      UPDATEPHASEDESTRESERVED      at 0 range 3 .. 5;
      TRAINUPDATEPHASEONLONGBUBBLE at 0 range 6 .. 6;
      ALWAYSUPDATELCDLPHASE        at 0 range 7 .. 7;
      Reserved_8_31                at 0 range 8 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_DLLGAINCTL_DLLGAINIV_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_DLLGAINCTL_DLLGAINTV_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_DLLGAINCTL_DLLSEEDSEL_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC DLL gain control register
   type DDRPHYC_MASTER0_DLLGAINCTL_Register is record
      --  Initial value of DllGain
      DLLGAINIV      : DDRPHYC_MASTER0_DLLGAINCTL_DLLGAINIV_Field := 16#1#;
      --  Terminal value of DllGain (value in effect when locking is done), and
      --  value used for maintaining lock (tracking pclk variation)
      DLLGAINTV      : DDRPHYC_MASTER0_DLLGAINCTL_DLLGAINTV_Field := 16#A#;
      --  Reserved, must be configured to be 0.
      DLLSEEDSEL     : DDRPHYC_MASTER0_DLLGAINCTL_DLLSEEDSEL_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DLLGAINCTL_Register use record
      DLLGAINIV      at 0 range 0 .. 3;
      DLLGAINTV      at 0 range 4 .. 7;
      DLLSEEDSEL     at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CALRATE_CALINTERVAL_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC impedance calibration control register
   type DDRPHYC_MASTER0_CALRATE_Register is record
      --  Interval between successive calibrations
      CALINTERVAL                : DDRPHYC_MASTER0_CALRATE_CALINTERVAL_Field :=
                                    16#9#;
      --  This bit is programmed as follows:
      CALRUN                     : Boolean := False;
      --  The setting of this bit changes the behavior of CALRUN.
      CALONCE                    : Boolean := False;
      --  Reserved for debug only
      DISABLEBACKGROUNDZQUPDATES : Boolean := False;
      --  unspecified
      Reserved_7_31              : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALRATE_Register use record
      CALINTERVAL                at 0 range 0 .. 3;
      CALRUN                     at 0 range 4 .. 4;
      CALONCE                    at 0 range 5 .. 5;
      DISABLEBACKGROUNDZQUPDATES at 0 range 6 .. 6;
      Reserved_7_31              at 0 range 7 .. 31;
   end record;

   --  DDRPHYC CalZap register
   type DDRPHYC_MASTER0_CALZAP_Register is record
      --  This bit is written by the PIE, and the data in here are overwritten.
      CALZAP        : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALZAP_Register use record
      CALZAP        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PSTATE_PSTATE_Field is Interfaces.Bit_Types.UInt4;

   --  DDRPHYC PState register
   type DDRPHYC_MASTER0_PSTATE_Register is record
      --  This bit field is written by the PIE, and the data in here are
      --  overwritten.
      PSTATE        : DDRPHYC_MASTER0_PSTATE_PSTATE_Field := 16#C#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PSTATE_Register use record
      PSTATE        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  DDRPHYC PLL output control register
   type DDRPHYC_MASTER0_PLLOUTGATECONTROL_Register is record
      --  Reserved.
      PCLKGATEEN    : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PLLOUTGATECONTROL_Register use record
      PCLKGATEEN    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DDRPHYC PMU power-on reset control register
   type DDRPHYC_MASTER0_PORCONTROL_Register is record
      --  This bit is set by the PIE during execution, and cleared on PHY
      --  reset, or on power cycle.
      PLLDLLLOCKDONE : Boolean := False;
      --  unspecified
      Reserved_1_31  : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PORCONTROL_Register use record
      PLLDLLLOCKDONE at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  DDRPHYC CalBusy register
   type DDRPHYC_MASTER0_CALBUSY_Register is record
      --  Read-only. Read 1 if the calibrator is actively calibrating.
      CALBUSY       : Boolean;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALBUSY_Register use record
      CALBUSY       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CALMISC2_CALNUMVOTES_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRPHYC misc impedance calibration control register
   type DDRPHYC_MASTER0_CALMISC2_Register is record
      --  This bit field controls the number of consecutive comparator output
      --  bits over which majority voting is done.
      CALNUMVOTES          : DDRPHYC_MASTER0_CALMISC2_CALNUMVOTES_Field :=
                              16#4#;
      --  unspecified
      Reserved_3_12        : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  The PEXT and NINT calibration results naturally include a rounding
      --  error which manifests as a change of impedance at the pad.
      CALCANCELROUNDERRDIS : Boolean := False;
      --  When set, this bit doubles the time allowed for the analog comparator
      --  cell to settle before sampling begins.
      CALSLOWCMPANA        : Boolean := False;
      --  unspecified
      Reserved_15_31       : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALMISC2_Register use record
      CALNUMVOTES          at 0 range 0 .. 2;
      Reserved_3_12        at 0 range 3 .. 12;
      CALCANCELROUNDERRDIS at 0 range 13 .. 13;
      CALSLOWCMPANA        at 0 range 14 .. 14;
      Reserved_15_31       at 0 range 15 .. 31;
   end record;

   --  DDRPHYC controls for disabling the impedance calibration of 	certain
   --  target register
   type DDRPHYC_MASTER0_CALMISC_Register is record
      --  Setting this bit prevents the calibration engine from using the
      --  result from the CALCMPR5 stage of calibration.
      CALCMPR5DIS   : Boolean := False;
      --  Setting this bit prevents the calibration engine from overwriting
      --  TXCALBIN and TXCALTHN with an automatically generated value, in which
      --  case a value must be supplied by software.
      CALNINTDIS    : Boolean := False;
      --  Setting this bit prevents the calibration engine from overwriting
      --  TXCALBINP and TXCALTHP with an automatically generated value, in
      --  which case a value must be supplied by software.
      CALPEXTDIS    : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALMISC_Register use record
      CALCMPR5DIS   at 0 range 0 .. 0;
      CALNINTDIS    at 0 range 1 .. 1;
      CALPEXTDIS    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CALVREFS_CALVREFS_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC CalVRef register
   type DDRPHYC_MASTER0_CALVREFS_Register is record
      --  This bit field drives the Cmpdig_CalRef pin of the cmpana cell at
      --  various stages of calibration.
      CALVREFS      : DDRPHYC_MASTER0_CALVREFS_CALVREFS_Field := 16#2#;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALVREFS_Register use record
      CALVREFS      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CALCMPR5_CALCMPR5_Field is
     Interfaces.Bit_Types.Byte;

   --  DDRPHYC CalCmpr5 register
   type DDRPHYC_MASTER0_CALCMPR5_Register is record
      --  Read-only. Offset-compensated DAC code for the cmpana circuit
      CALCMPR5      : DDRPHYC_MASTER0_CALCMPR5_CALCMPR5_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALCMPR5_Register use record
      CALCMPR5      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CALNINT_CALNINTTHB_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC impedance calibration NInt control register
   type DDRPHYC_MASTER0_CALNINT_Register is record
      --  Read-only. Number of thermometer bits which are set
      CALNINTTHB    : DDRPHYC_MASTER0_CALNINT_CALNINTTHB_Field;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALNINT_Register use record
      CALNINTTHB    at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CALPEXT_CALPEXTTHB_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC impedance calibration PExt control register
   type DDRPHYC_MASTER0_CALPEXT_Register is record
      --  Read-only. Number of thermometer bits which are set
      CALPEXTTHB    : DDRPHYC_MASTER0_CALPEXT_CALPEXTTHB_Field;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALPEXT_Register use record
      CALPEXTTHB    at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DDRPHYC impedance calibration Cmp invert control register
   type DDRPHYC_MASTER0_CALCMPINVERT_Register is record
      --  calibration Cmp invert control
      CMPINVERTCALDAC50   : Boolean := True;
      --  Impedance calibration Cmp invert control
      CMPINVERTCALDRVPD50 : Boolean := True;
      --  Impedance calibration Cmp invert control
      CMPINVERTCALDRVPU50 : Boolean := False;
      --  Impedance calibration Cmp invert control
      CMPINVERTCALODTPD   : Boolean := False;
      --  Impedance calibration Cmp invert control
      CMPINVERTCALODTPU   : Boolean := False;
      --  unspecified
      Reserved_5_31       : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALCMPINVERT_Register use record
      CMPINVERTCALDAC50   at 0 range 0 .. 0;
      CMPINVERTCALDRVPD50 at 0 range 1 .. 1;
      CMPINVERTCALDRVPU50 at 0 range 2 .. 2;
      CMPINVERTCALODTPD   at 0 range 3 .. 3;
      CMPINVERTCALODTPU   at 0 range 4 .. 4;
      Reserved_5_31       at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CALCMPANACNTRL_CMPRGAINCURRADJ_Field is
     Interfaces.Bit_Types.Byte;

   --  DDRPHYC impedance calibration Cmpana control register
   type DDRPHYC_MASTER0_CALCMPANACNTRL_Register is record
      --  Impedance calibration Cmpana control
      CMPRGAINCURRADJ  : DDRPHYC_MASTER0_CALCMPANACNTRL_CMPRGAINCURRADJ_Field :=
                          16#12#;
      --  Impedance calibration Cmpana control
      CMPRGAINRESADJ   : Boolean := True;
      --  Impedance calibration Cmpana control
      CMPRBIASBYPASSEN : Boolean := False;
      --  unspecified
      Reserved_10_31   : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CALCMPANACNTRL_Register use record
      CMPRGAINCURRADJ  at 0 range 0 .. 7;
      CMPRGAINRESADJ   at 0 range 8 .. 8;
      CMPRBIASBYPASSEN at 0 range 9 .. 9;
      Reserved_10_31   at 0 range 10 .. 31;
   end record;

   --  DDRPHYC_MASTER0_DFIRDDATACSDESTMAP_DFIRDDESTM array element
   subtype DDRPHYC_MASTER0_DFIRDDATACSDESTMAP_DFIRDDESTM_Element is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC_MASTER0_DFIRDDATACSDESTMAP_DFIRDDESTM array
   type DDRPHYC_MASTER0_DFIRDDATACSDESTMAP_DFIRDDESTM_Field_Array is array (0 .. 3)
     of DDRPHYC_MASTER0_DFIRDDATACSDESTMAP_DFIRDDESTM_Element
     with Component_Size => 2, Size => 8;

   --  Type definition for DDRPHYC_MASTER0_DFIRDDATACSDESTMAP_DFIRDDESTM
   type DDRPHYC_MASTER0_DFIRDDATACSDESTMAP_DFIRDDESTM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DFIRDDESTM as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  DFIRDDESTM as an array
            Arr : DDRPHYC_MASTER0_DFIRDDATACSDESTMAP_DFIRDDESTM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for DDRPHYC_MASTER0_DFIRDDATACSDESTMAP_DFIRDDESTM_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  DDRPHYC maps dfi_rddata_cs_n to destination dimm timing 	group register
   type DDRPHYC_MASTER0_DFIRDDATACSDESTMAP_Register is record
      --  Maps dfi_rddata_cs_n[0] to destination DfiRdDestm0 timing.
      DFIRDDESTM    : DDRPHYC_MASTER0_DFIRDDATACSDESTMAP_DFIRDDESTM_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIRDDATACSDESTMAP_Register use record
      DFIRDDESTM    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_VREFINGLOBAL_GLOBALVREFINSEL_Field is
     Interfaces.Bit_Types.UInt3;
   subtype DDRPHYC_MASTER0_VREFINGLOBAL_GLOBALVREFINDAC_Field is
     Interfaces.Bit_Types.UInt7;

   --  PHY global VREF controls register
   type DDRPHYC_MASTER0_VREFINGLOBAL_Register is record
      --  [1:0] controls the mode of the PHY Vless thansub>REFless than/sub>
      --  DAC and the BP_VREF pin.
      GLOBALVREFINSEL : DDRPHYC_MASTER0_VREFINGLOBAL_GLOBALVREFINSEL_Field :=
                         16#0#;
      --  DAC code for internal Vless thansub>REFless than/sub> generation
      GLOBALVREFINDAC : DDRPHYC_MASTER0_VREFINGLOBAL_GLOBALVREFINDAC_Field :=
                         16#40#;
      --  unspecified
      Reserved_10_31  : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_VREFINGLOBAL_Register use record
      GLOBALVREFINSEL at 0 range 0 .. 2;
      GLOBALVREFINDAC at 0 range 3 .. 9;
      Reserved_10_31  at 0 range 10 .. 31;
   end record;

   --  DDRPHYC_MASTER0_DFIWRDATACSDESTMAP_DFIWRDESTM array element
   subtype DDRPHYC_MASTER0_DFIWRDATACSDESTMAP_DFIWRDESTM_Element is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC_MASTER0_DFIWRDATACSDESTMAP_DFIWRDESTM array
   type DDRPHYC_MASTER0_DFIWRDATACSDESTMAP_DFIWRDESTM_Field_Array is array (0 .. 3)
     of DDRPHYC_MASTER0_DFIWRDATACSDESTMAP_DFIWRDESTM_Element
     with Component_Size => 2, Size => 8;

   --  Type definition for DDRPHYC_MASTER0_DFIWRDATACSDESTMAP_DFIWRDESTM
   type DDRPHYC_MASTER0_DFIWRDATACSDESTMAP_DFIWRDESTM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DFIWRDESTM as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  DFIWRDESTM as an array
            Arr : DDRPHYC_MASTER0_DFIWRDATACSDESTMAP_DFIWRDESTM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for DDRPHYC_MASTER0_DFIWRDATACSDESTMAP_DFIWRDESTM_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  DDRPHYC maps dfi_rddata_cs_n to destination dimm timing 	group register
   type DDRPHYC_MASTER0_DFIWRDATACSDESTMAP_Register is record
      --  Maps dfi_wrdata_cs_n[0] to destination DfiWrDestm0 timing
      DFIWRDESTM    : DDRPHYC_MASTER0_DFIWRDATACSDESTMAP_DFIWRDESTM_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIWRDATACSDESTMAP_Register use record
      DFIWRDESTM    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MASUPDGOODCTR_MASUPDGOODCTR_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC MasUpdGoodCtr register
   type DDRPHYC_MASTER0_MASUPDGOODCTR_Register is record
      --  Read-only. This bit field increments whenever the memory controller
      --  acknowledges a PHY master interface request (a request for the PHY)
      --  to take over the DFI for PPT (as per section 11 of the Preliminary
      --  DFI 4.
      MASUPDGOODCTR  : DDRPHYC_MASTER0_MASUPDGOODCTR_MASUPDGOODCTR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MASUPDGOODCTR_Register use record
      MASUPDGOODCTR  at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PHYUPD0GOODCTR_PHYUPD0GOODCTR_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC PhyUpd0GoodCtr register
   type DDRPHYC_MASTER0_PHYUPD0GOODCTR_Register is record
      --  Read-only. This bit field increments whenever the memory controller
      --  acknowledges a PHY-initiated DFI0 interface update request.
      PHYUPD0GOODCTR : DDRPHYC_MASTER0_PHYUPD0GOODCTR_PHYUPD0GOODCTR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYUPD0GOODCTR_Register use record
      PHYUPD0GOODCTR at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PHYUPD1GOODCTR_PHYUPD1GOODCTR_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC PhyUpd1GoodCtr register
   type DDRPHYC_MASTER0_PHYUPD1GOODCTR_Register is record
      --  Read-only. This bit field increments whenever the memory controller
      --  acknowledges a PHY-initiated DFI1 interface update request.
      PHYUPD1GOODCTR : DDRPHYC_MASTER0_PHYUPD1GOODCTR_PHYUPD1GOODCTR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYUPD1GOODCTR_Register use record
      PHYUPD1GOODCTR at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CTLUPD0GOODCTR_CTLUPD0GOODCTR_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC CtlUpd0GoodCtr register
   type DDRPHYC_MASTER0_CTLUPD0GOODCTR_Register is record
      --  Read-only. This bit field increments whenever the PHY acknowledges a
      --  memory controller-initiated DFI0 interface update request.
      CTLUPD0GOODCTR : DDRPHYC_MASTER0_CTLUPD0GOODCTR_CTLUPD0GOODCTR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CTLUPD0GOODCTR_Register use record
      CTLUPD0GOODCTR at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CTLUPD1GOODCTR_CTLUPD1GOODCTR_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC CtlUpd1GoodCtr register
   type DDRPHYC_MASTER0_CTLUPD1GOODCTR_Register is record
      --  Read-only. This bit field increments whenever the PHY acknowledges a
      --  memory controller-initiated DFI1 interface update request.
      CTLUPD1GOODCTR : DDRPHYC_MASTER0_CTLUPD1GOODCTR_CTLUPD1GOODCTR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CTLUPD1GOODCTR_Register use record
      CTLUPD1GOODCTR at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MASUPDFAILCTR_MASUPDFAILCTR_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC MasUpdFailCtr register
   type DDRPHYC_MASTER0_MASUPDFAILCTR_Register is record
      --  Read-only. This bit field increments whenever the PHY asserts a PHY
      --  master interface request, but the memory controller does not
      --  acknowledge the request within the allowed interval (as per section
      --  11 of the Preliminary DFI 4.
      MASUPDFAILCTR  : DDRPHYC_MASTER0_MASUPDFAILCTR_MASUPDFAILCTR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MASUPDFAILCTR_Register use record
      MASUPDFAILCTR  at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PHYUPD0FAILCTR_PHYUPD0FAILCTR_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC PhyUpd0FailCtr register
   type DDRPHYC_MASTER0_PHYUPD0FAILCTR_Register is record
      --  Read-only. This bit field increments whenever the PHY asserts a DFI0
      --  interface update request, but the memory controller does not
      --  acknowledge the request within the allowed interval (as per section
      --  11 of the Preliminary DFI 4.
      PHYUPD0FAILCTR : DDRPHYC_MASTER0_PHYUPD0FAILCTR_PHYUPD0FAILCTR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYUPD0FAILCTR_Register use record
      PHYUPD0FAILCTR at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PHYUPD1FAILCTR_PHYUPD1FAILCTR_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC PhyUpd1FailCtr register
   type DDRPHYC_MASTER0_PHYUPD1FAILCTR_Register is record
      --  Read-only. This bit field increments whenever the PHY asserts a DFI1
      --  interface update request, but the memory controller does not
      --  acknowledge the request within the allowed interval (as per section
      --  11 of the Preliminary DFI 4.
      PHYUPD1FAILCTR : DDRPHYC_MASTER0_PHYUPD1FAILCTR_PHYUPD1FAILCTR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYUPD1FAILCTR_Register use record
      PHYUPD1FAILCTR at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DDRPHYC performance counter enable register
   type DDRPHYC_MASTER0_PHYPERFCTRENABLE_Register is record
      --  MASUPDGOODCTLR enable
      MASUPDGOODCTL  : Boolean := False;
      --  PHYUPD0GOODCTLR enable
      PHYUPD0GOODCTL : Boolean := False;
      --  PHYUPD1GOODCTLR enable
      PHYUPD1GOODCTL : Boolean := False;
      --  CTLUPD0GOODCTLR enable
      CTLUPD0GOODCTL : Boolean := False;
      --  CTLUPD1GOODCTLR enable
      CTLUPD1GOODCTL : Boolean := False;
      --  MASUPDFAILCTLR enable
      MASUPDFAILCTL  : Boolean := False;
      --  PHYUPD0FAILCTLR enable
      PHYUPD0FAILCTL : Boolean := False;
      --  PHYUPD1FAILCTLR enable
      PHYUPD1FAILCTL : Boolean := False;
      --  unspecified
      Reserved_8_31  : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYPERFCTRENABLE_Register use record
      MASUPDGOODCTL  at 0 range 0 .. 0;
      PHYUPD0GOODCTL at 0 range 1 .. 1;
      PHYUPD1GOODCTL at 0 range 2 .. 2;
      CTLUPD0GOODCTL at 0 range 3 .. 3;
      CTLUPD1GOODCTL at 0 range 4 .. 4;
      MASUPDFAILCTL  at 0 range 5 .. 5;
      PHYUPD0FAILCTL at 0 range 6 .. 6;
      PHYUPD1FAILCTL at 0 range 7 .. 7;
      Reserved_8_31  at 0 range 8 .. 31;
   end record;

   --  DDRPHYC PllPwrDn register
   type DDRPHYC_MASTER0_PLLPWRDN_Register is record
      --  This bit is written by the PIE, and the data in here are overwritten.
      PLLPWRDN      : Boolean := True;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PLLPWRDN_Register use record
      PLLPWRDN      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PLLCTRL2_PLLFREQSEL_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC PState dependent PLL control 2 register
   type DDRPHYC_MASTER0_PLLCTRL2_Register is record
      --  Adjusts the loop parameters to compensate for different VCO bias
      --  points, and input/output clock division ratios.
      PLLFREQSEL    : DDRPHYC_MASTER0_PLLCTRL2_PLLFREQSEL_Field := 16#19#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PLLCTRL2_Register use record
      PLLFREQSEL    at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PLLCTRL0_PLLLOCKPHSEL_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC PLL control 0 register
   type DDRPHYC_MASTER0_PLLCTRL0_Register is record
      --  Connects directly to standby pin of the PLL.
      PLLSTANDBY      : Boolean := False;
      --  unspecified
      Reserved_1_1    : Interfaces.Bit_Types.Bit := 16#0#;
      --  Connects to x2_mode pins of PLL (pllout_x4x2 output frequency
      --  selection).
      PLLX2MODE       : Boolean := False;
      --  Controls the anti-glitch mux on the pllout_x1x2x4 path.
      PLLOUTBYPEN     : Boolean := True;
      --  PLL preset mode
      PLLPRESET       : Boolean := False;
      --  PLL bypass clock mux control
      PLLBYPASSMODE   : Boolean := False;
      --  unspecified
      Reserved_6_6    : Interfaces.Bit_Types.Bit := 16#0#;
      --  Used to flush the syncbus logic of the PLL during PHY initialization
      --  or LP3 exit sequence.
      PLLSYNCBUSFLUSH : Boolean := False;
      --  When asserted, bypasses the Pll SyncPulse, and uses a synchronizer of
      --  the same latency.
      PLLSYNCBUSBYP   : Boolean := False;
      --  unspecified
      Reserved_9_10   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  PLL fast re-locking mode
      PLLGEARSHIFT    : Boolean := False;
      --  Lock detect counter selection
      PLLLOCKCNTSEL   : Boolean := False;
      --  Lock detect phase selection
      PLLLOCKPHSEL    : DDRPHYC_MASTER0_PLLCTRL0_PLLLOCKPHSEL_Field := 16#1#;
      --  Spare bits for PLL control
      PLLSPARECTRL0   : Boolean := False;
      --  unspecified
      Reserved_16_31  : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PLLCTRL0_Register use record
      PLLSTANDBY      at 0 range 0 .. 0;
      Reserved_1_1    at 0 range 1 .. 1;
      PLLX2MODE       at 0 range 2 .. 2;
      PLLOUTBYPEN     at 0 range 3 .. 3;
      PLLPRESET       at 0 range 4 .. 4;
      PLLBYPASSMODE   at 0 range 5 .. 5;
      Reserved_6_6    at 0 range 6 .. 6;
      PLLSYNCBUSFLUSH at 0 range 7 .. 7;
      PLLSYNCBUSBYP   at 0 range 8 .. 8;
      Reserved_9_10   at 0 range 9 .. 10;
      PLLGEARSHIFT    at 0 range 11 .. 11;
      PLLLOCKCNTSEL   at 0 range 12 .. 12;
      PLLLOCKPHSEL    at 0 range 13 .. 14;
      PLLSPARECTRL0   at 0 range 15 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PLLCTRL1_PLLCPINTCTRL_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRPHYC_MASTER0_PLLCTRL1_PLLCPPROPCTRL_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC PState dependent PLL control 1 register
   type DDRPHYC_MASTER0_PLLCTRL1_Register is record
      --  Connects directly to cp_int_cntrlless than4:0> in the PLL.
      PLLCPINTCTRL  : DDRPHYC_MASTER0_PLLCTRL1_PLLCPINTCTRL_Field := 16#0#;
      --  Connects directly to cp_prop_cntrlless than3:0> of the PLL.
      PLLCPPROPCTRL : DDRPHYC_MASTER0_PLLCTRL1_PLLCPPROPCTRL_Field := 16#1#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PLLCTRL1_Register use record
      PLLCPINTCTRL  at 0 range 0 .. 4;
      PLLCPPROPCTRL at 0 range 5 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PLLTST_PLLANATSTSEL_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_PLLTST_PLLDIGTSTSEL_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC PLL testing control register
   type DDRPHYC_MASTER0_PLLTST_Register is record
      --  Analog test port enable
      PLLANATSTEN   : Boolean := False;
      --  Connects directly to pll_ana_test_selless than3:0> of PLL.
      PLLANATSTSEL  : DDRPHYC_MASTER0_PLLTST_PLLANATSTSEL_Field := 16#0#;
      --  Digital test mux select
      PLLDIGTSTSEL  : DDRPHYC_MASTER0_PLLTST_PLLDIGTSTSEL_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PLLTST_Register use record
      PLLANATSTEN   at 0 range 0 .. 0;
      PLLANATSTSEL  at 0 range 1 .. 4;
      PLLDIGTSTSEL  at 0 range 5 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  DDRPHYC PllLockStatus register
   type DDRPHYC_MASTER0_PLLLOCKSTATUS_Register is record
      --  Read-only. Directly connected to the pll_Lock output
      PLLLOCKSTATUS : Boolean;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PLLLOCKSTATUS_Register use record
      PLLLOCKSTATUS at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PLLTESTMODE_PLLTESTMODE_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC PII TestMode register
   type DDRPHYC_MASTER0_PLLTESTMODE_Register is record
      --  Default values for this bit field must be used unless directed
      --  otherwise by Synopsys.
      PLLTESTMODE    : DDRPHYC_MASTER0_PLLTESTMODE_PLLTESTMODE_Field :=
                        16#124#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PLLTESTMODE_Register use record
      PLLTESTMODE    at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PLLCTRL3_PLLSPARE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_PLLCTRL3_PLLMAXRANGE_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRPHYC_MASTER0_PLLCTRL3_PLLDACVALIN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC PLL control 3 register
   type DDRPHYC_MASTER0_PLLCTRL3_Register is record
      --  Spare bits
      PLLSPARE       : DDRPHYC_MASTER0_PLLCTRL3_PLLSPARE_Field := 16#0#;
      --  Connects directly to maxrange of PLL.
      PLLMAXRANGE    : DDRPHYC_MASTER0_PLLCTRL3_PLLMAXRANGE_Field := 16#1F#;
      --  Connects directly to dacval_inless than4:0> of PLL.
      PLLDACVALIN    : DDRPHYC_MASTER0_PLLCTRL3_PLLDACVALIN_Field := 16#0#;
      --  Connects directly to force_cal of PLL.
      PLLFORCECAL    : Boolean := False;
      --  None
      PLLENCAL       : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PLLCTRL3_Register use record
      PLLSPARE       at 0 range 0 .. 3;
      PLLMAXRANGE    at 0 range 4 .. 8;
      PLLDACVALIN    at 0 range 9 .. 13;
      PLLFORCECAL    at 0 range 14 .. 14;
      PLLENCAL       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PLLCTRL4_PLLCPINTGSCTRL_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRPHYC_MASTER0_PLLCTRL4_PLLCPPROPGSCTRL_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC PState dependent PLL control 4 register
   type DDRPHYC_MASTER0_PLLCTRL4_Register is record
      --  Connects directly to cp_int_gs_cntrlless than4:0> in PLL.
      PLLCPINTGSCTRL  : DDRPHYC_MASTER0_PLLCTRL4_PLLCPINTGSCTRL_Field :=
                         16#1F#;
      --  Connects directly to cp_prop_gs_cntrlless than3:0> of PLL.
      PLLCPPROPGSCTRL : DDRPHYC_MASTER0_PLLCTRL4_PLLCPPROPGSCTRL_Field :=
                         16#B#;
      --  unspecified
      Reserved_9_31   : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PLLCTRL4_Register use record
      PLLCPINTGSCTRL  at 0 range 0 .. 4;
      PLLCPPROPGSCTRL at 0 range 5 .. 8;
      Reserved_9_31   at 0 range 9 .. 31;
   end record;

   --  DDRPHYC PllEndofCal register
   type DDRPHYC_MASTER0_PLLENDOFCAL_Register is record
      --  Read-only. Directly connected to the PLL eoc output.
      PLLENDOFCAL   : Boolean;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PLLENDOFCAL_Register use record
      PLLENDOFCAL   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DDRPHYC PllStandbyEff register
   type DDRPHYC_MASTER0_PLLSTANDBYEFF_Register is record
      --  Read-only. State off PLL standby (in PHY LP2 states)
      PLLSTANDBYEFF : Boolean;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PLLSTANDBYEFF_Register use record
      PLLSTANDBYEFF at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PLLDACVALOUT_PLLDACVALOUT_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC PllDacValOut register
   type DDRPHYC_MASTER0_PLLDACVALOUT_Register is record
      --  Read-only. Directly connected to the PLL dacval_out output.
      PLLDACVALOUT  : DDRPHYC_MASTER0_PLLDACVALOUT_PLLDACVALOUT_Field;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PLLDACVALOUT_Register use record
      PLLDACVALOUT  at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_LCDLDBGCNTL_LCDLFINEOVRVAL_Field is
     Interfaces.Bit_Types.UInt9;
   subtype DDRPHYC_MASTER0_LCDLDBGCNTL_LCDLSTATUSSEL_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC LcdlDbgCntl register
   type DDRPHYC_MASTER0_LCDLDBGCNTL_Register is record
      --  Value forced as the initial value while LCDLTSTENABLE = 1 and
      --  LCDLFINEOVR
      LCDLFINEOVRVAL : DDRPHYC_MASTER0_LCDLDBGCNTL_LCDLFINEOVRVAL_Field :=
                        16#0#;
      --  Forces the value of the present LCDL 1UI estimate code to be
      --  LCDLFINEOVRVAL for all LCDLs.
      LCDLFINEOVR    : Boolean := False;
      --  Latch enable for reading the present LCDL 1UI estimate code in
      --  LCDLFINESNAPVAL, and the present phase-detector value in
      --  LCDLPHDSNAPVAL.
      LCDLFINESNAP   : Boolean := False;
      --  Debug/test operations enable
      LCDLTSTENABLE  : Boolean := False;
      --  Selection of the LCDL status
      LCDLSTATUSSEL  : DDRPHYC_MASTER0_LCDLDBGCNTL_LCDLSTATUSSEL_Field :=
                        16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_LCDLDBGCNTL_Register use record
      LCDLFINEOVRVAL at 0 range 0 .. 8;
      LCDLFINEOVR    at 0 range 9 .. 9;
      LCDLFINESNAP   at 0 range 10 .. 10;
      LCDLTSTENABLE  at 0 range 11 .. 11;
      LCDLSTATUSSEL  at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_ACLCDLSTATUS_ACLCDLFINESNAPVAL_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRPHYC Debug status of the DBYTE LCDL register
   type DDRPHYC_MASTER0_ACLCDLSTATUS_Register is record
      --  Read-only. Value of the LCDL 1UI estimate code, latched by pulse on
      --  LCDLFINESNAP, while LCDLTSTENABLE = 1.
      ACLCDLFINESNAPVAL  : DDRPHYC_MASTER0_ACLCDLSTATUS_ACLCDLFINESNAPVAL_Field;
      --  Read-only. Value of the LCDL phase-detector output, latched by pulse
      --  on LCDLFINESNAP, while LCDLTSTENABLE = 1.
      ACLCDLPHDSNAPVAL   : Boolean;
      --  Read-only. Latched value of whether the LCDL ever achieved lock after
      --  the assertion of LCDLTSTENABLE.
      ACLCDLSTICKYLOCK   : Boolean;
      --  Read-only. Latched value of whether the LCDL ever lost lock after the
      --  assertion of LCDLTSTENABLE.
      ACLCDLSTICKYUNLOCK : Boolean;
      --  Read-only. Present value of whether the LCDL is locked
      ACLCDLLIVELOCK     : Boolean;
      --  unspecified
      Reserved_14_31     : Interfaces.Bit_Types.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_ACLCDLSTATUS_Register use record
      ACLCDLFINESNAPVAL  at 0 range 0 .. 9;
      ACLCDLPHDSNAPVAL   at 0 range 10 .. 10;
      ACLCDLSTICKYLOCK   at 0 range 11 .. 11;
      ACLCDLSTICKYUNLOCK at 0 range 12 .. 12;
      ACLCDLLIVELOCK     at 0 range 13 .. 13;
      Reserved_14_31     at 0 range 14 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_CUSTPHYREV_CUSTPHYREV_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC CUSTPHYREV register
   type DDRPHYC_MASTER0_CUSTPHYREV_Register is record
      --  Read-only. Customer settable PHY version number
      CUSTPHYREV    : DDRPHYC_MASTER0_CUSTPHYREV_CUSTPHYREV_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_CUSTPHYREV_Register use record
      CUSTPHYREV    at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PHYREV_PHYMNR_Field is Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_PHYREV_PHYMDR_Field is Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_PHYREV_PHYMJR_Field is Interfaces.Bit_Types.Byte;

   --  DDRPHYC PHYREV register
   type DDRPHYC_MASTER0_PHYREV_Register is record
      --  Read-only. PHY minor update
      PHYMNR         : DDRPHYC_MASTER0_PHYREV_PHYMNR_Field;
      --  Read-only. PHY moderate revision
      PHYMDR         : DDRPHYC_MASTER0_PHYREV_PHYMDR_Field;
      --  Read-only. PHY major revision
      PHYMJR         : DDRPHYC_MASTER0_PHYREV_PHYMJR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYREV_Register use record
      PHYMNR         at 0 range 0 .. 3;
      PHYMDR         at 0 range 4 .. 7;
      PHYMJR         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_LP3EXITSEQ0BSTARTVECTOR_LP3EXITSEQ0BSTARTVECPLLENABLED_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_LP3EXITSEQ0BSTARTVECTOR_LP3EXITSEQ0BSTARTVECPLLBYPASSED_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC Start vector value for LP3-exit or init PIE sequence	register
   type DDRPHYC_MASTER0_LP3EXITSEQ0BSTARTVECTOR_Register is record
      --  PIE start vector value to be used for LP3 exit or init and target
      --  P-state has PLL enabled
      LP3EXITSEQ0BSTARTVECPLLENABLED  : DDRPHYC_MASTER0_LP3EXITSEQ0BSTARTVECTOR_LP3EXITSEQ0BSTARTVECPLLENABLED_Field :=
                                         16#E#;
      --  PIE start vector value to be used for LP3 exit or init and target
      --  P-state has PLL bypassed
      LP3EXITSEQ0BSTARTVECPLLBYPASSED : DDRPHYC_MASTER0_LP3EXITSEQ0BSTARTVECTOR_LP3EXITSEQ0BSTARTVECPLLBYPASSED_Field :=
                                         16#D#;
      --  unspecified
      Reserved_8_31                   : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_LP3EXITSEQ0BSTARTVECTOR_Register use record
      LP3EXITSEQ0BSTARTVECPLLENABLED  at 0 range 0 .. 3;
      LP3EXITSEQ0BSTARTVECPLLBYPASSED at 0 range 4 .. 7;
      Reserved_8_31                   at 0 range 8 .. 31;
   end record;

   --  DDRPHYC_MASTER0_DFIFREQXLAT0_DFIFREQXLATVAL array element
   subtype DDRPHYC_MASTER0_DFIFREQXLAT0_DFIFREQXLATVAL_Element is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC_MASTER0_DFIFREQXLAT0_DFIFREQXLATVAL array
   type DDRPHYC_MASTER0_DFIFREQXLAT0_DFIFREQXLATVAL_Field_Array is array (0 .. 3)
     of DDRPHYC_MASTER0_DFIFREQXLAT0_DFIFREQXLATVAL_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for DDRPHYC_MASTER0_DFIFREQXLAT0_DFIFREQXLATVAL
   type DDRPHYC_MASTER0_DFIFREQXLAT0_DFIFREQXLATVAL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DFIFREQXLATVAL as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  DFIFREQXLATVAL as an array
            Arr : DDRPHYC_MASTER0_DFIFREQXLAT0_DFIFREQXLATVAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DDRPHYC_MASTER0_DFIFREQXLAT0_DFIFREQXLATVAL_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  DDRPHYC DFI frequency translation 0 register
   type DDRPHYC_MASTER0_DFIFREQXLAT0_Register is record
      --  Sequencer start vector used when dfi_freq value is 0
      DFIFREQXLATVAL : DDRPHYC_MASTER0_DFIFREQXLAT0_DFIFREQXLATVAL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIFREQXLAT0_Register use record
      DFIFREQXLATVAL at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DDRPHYC_MASTER0_DFIFREQXLAT1_DFIFREQXLATVAL array element
   subtype DDRPHYC_MASTER0_DFIFREQXLAT1_DFIFREQXLATVAL_Element is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC_MASTER0_DFIFREQXLAT1_DFIFREQXLATVAL array
   type DDRPHYC_MASTER0_DFIFREQXLAT1_DFIFREQXLATVAL_Field_Array is array (4 .. 7)
     of DDRPHYC_MASTER0_DFIFREQXLAT1_DFIFREQXLATVAL_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for DDRPHYC_MASTER0_DFIFREQXLAT1_DFIFREQXLATVAL
   type DDRPHYC_MASTER0_DFIFREQXLAT1_DFIFREQXLATVAL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DFIFREQXLATVAL as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  DFIFREQXLATVAL as an array
            Arr : DDRPHYC_MASTER0_DFIFREQXLAT1_DFIFREQXLATVAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DDRPHYC_MASTER0_DFIFREQXLAT1_DFIFREQXLATVAL_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  DDRPHYC DFI frequency translation 1 register
   type DDRPHYC_MASTER0_DFIFREQXLAT1_Register is record
      --  Sequencer start vector used when dfi_freq value is 4
      DFIFREQXLATVAL : DDRPHYC_MASTER0_DFIFREQXLAT1_DFIFREQXLATVAL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIFREQXLAT1_Register use record
      DFIFREQXLATVAL at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DDRPHYC_MASTER0_DFIFREQXLAT2_DFIFREQXLATVAL array element
   subtype DDRPHYC_MASTER0_DFIFREQXLAT2_DFIFREQXLATVAL_Element is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC_MASTER0_DFIFREQXLAT2_DFIFREQXLATVAL array
   type DDRPHYC_MASTER0_DFIFREQXLAT2_DFIFREQXLATVAL_Field_Array is array (8 .. 11)
     of DDRPHYC_MASTER0_DFIFREQXLAT2_DFIFREQXLATVAL_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for DDRPHYC_MASTER0_DFIFREQXLAT2_DFIFREQXLATVAL
   type DDRPHYC_MASTER0_DFIFREQXLAT2_DFIFREQXLATVAL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DFIFREQXLATVAL as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  DFIFREQXLATVAL as an array
            Arr : DDRPHYC_MASTER0_DFIFREQXLAT2_DFIFREQXLATVAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DDRPHYC_MASTER0_DFIFREQXLAT2_DFIFREQXLATVAL_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  DDRPHYC DFI frequency translation 2 register
   type DDRPHYC_MASTER0_DFIFREQXLAT2_Register is record
      --  Sequencer start vector used when dfi_freq value is 8
      DFIFREQXLATVAL : DDRPHYC_MASTER0_DFIFREQXLAT2_DFIFREQXLATVAL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIFREQXLAT2_Register use record
      DFIFREQXLATVAL at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DDRPHYC_MASTER0_DFIFREQXLAT3_DFIFREQXLATVAL array element
   subtype DDRPHYC_MASTER0_DFIFREQXLAT3_DFIFREQXLATVAL_Element is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC_MASTER0_DFIFREQXLAT3_DFIFREQXLATVAL array
   type DDRPHYC_MASTER0_DFIFREQXLAT3_DFIFREQXLATVAL_Field_Array is array (12 .. 15)
     of DDRPHYC_MASTER0_DFIFREQXLAT3_DFIFREQXLATVAL_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for DDRPHYC_MASTER0_DFIFREQXLAT3_DFIFREQXLATVAL
   type DDRPHYC_MASTER0_DFIFREQXLAT3_DFIFREQXLATVAL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DFIFREQXLATVAL as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  DFIFREQXLATVAL as an array
            Arr : DDRPHYC_MASTER0_DFIFREQXLAT3_DFIFREQXLATVAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DDRPHYC_MASTER0_DFIFREQXLAT3_DFIFREQXLATVAL_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  DDRPHYC DFI frequency translation 3 register
   type DDRPHYC_MASTER0_DFIFREQXLAT3_Register is record
      --  Sequencer start vector used when dfi_freq value is 12
      DFIFREQXLATVAL : DDRPHYC_MASTER0_DFIFREQXLAT3_DFIFREQXLATVAL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIFREQXLAT3_Register use record
      DFIFREQXLATVAL at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DDRPHYC_MASTER0_DFIFREQXLAT4_DFIFREQXLATVAL array element
   subtype DDRPHYC_MASTER0_DFIFREQXLAT4_DFIFREQXLATVAL_Element is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC_MASTER0_DFIFREQXLAT4_DFIFREQXLATVAL array
   type DDRPHYC_MASTER0_DFIFREQXLAT4_DFIFREQXLATVAL_Field_Array is array (16 .. 19)
     of DDRPHYC_MASTER0_DFIFREQXLAT4_DFIFREQXLATVAL_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for DDRPHYC_MASTER0_DFIFREQXLAT4_DFIFREQXLATVAL
   type DDRPHYC_MASTER0_DFIFREQXLAT4_DFIFREQXLATVAL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DFIFREQXLATVAL as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  DFIFREQXLATVAL as an array
            Arr : DDRPHYC_MASTER0_DFIFREQXLAT4_DFIFREQXLATVAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DDRPHYC_MASTER0_DFIFREQXLAT4_DFIFREQXLATVAL_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  DDRPHYC DFI frequency translation 4 register
   type DDRPHYC_MASTER0_DFIFREQXLAT4_Register is record
      --  Sequencer start vector used when dfi_freq value is 16
      DFIFREQXLATVAL : DDRPHYC_MASTER0_DFIFREQXLAT4_DFIFREQXLATVAL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIFREQXLAT4_Register use record
      DFIFREQXLATVAL at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DDRPHYC_MASTER0_DFIFREQXLAT5_DFIFREQXLATVAL array element
   subtype DDRPHYC_MASTER0_DFIFREQXLAT5_DFIFREQXLATVAL_Element is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC_MASTER0_DFIFREQXLAT5_DFIFREQXLATVAL array
   type DDRPHYC_MASTER0_DFIFREQXLAT5_DFIFREQXLATVAL_Field_Array is array (20 .. 23)
     of DDRPHYC_MASTER0_DFIFREQXLAT5_DFIFREQXLATVAL_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for DDRPHYC_MASTER0_DFIFREQXLAT5_DFIFREQXLATVAL
   type DDRPHYC_MASTER0_DFIFREQXLAT5_DFIFREQXLATVAL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DFIFREQXLATVAL as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  DFIFREQXLATVAL as an array
            Arr : DDRPHYC_MASTER0_DFIFREQXLAT5_DFIFREQXLATVAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DDRPHYC_MASTER0_DFIFREQXLAT5_DFIFREQXLATVAL_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  DDRPHYC DFI frequency translation 5 register
   type DDRPHYC_MASTER0_DFIFREQXLAT5_Register is record
      --  Sequencer start vector used when dfi_freq value is 20
      DFIFREQXLATVAL : DDRPHYC_MASTER0_DFIFREQXLAT5_DFIFREQXLATVAL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIFREQXLAT5_Register use record
      DFIFREQXLATVAL at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DDRPHYC_MASTER0_DFIFREQXLAT6_DFIFREQXLATVAL array element
   subtype DDRPHYC_MASTER0_DFIFREQXLAT6_DFIFREQXLATVAL_Element is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC_MASTER0_DFIFREQXLAT6_DFIFREQXLATVAL array
   type DDRPHYC_MASTER0_DFIFREQXLAT6_DFIFREQXLATVAL_Field_Array is array (24 .. 27)
     of DDRPHYC_MASTER0_DFIFREQXLAT6_DFIFREQXLATVAL_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for DDRPHYC_MASTER0_DFIFREQXLAT6_DFIFREQXLATVAL
   type DDRPHYC_MASTER0_DFIFREQXLAT6_DFIFREQXLATVAL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DFIFREQXLATVAL as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  DFIFREQXLATVAL as an array
            Arr : DDRPHYC_MASTER0_DFIFREQXLAT6_DFIFREQXLATVAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DDRPHYC_MASTER0_DFIFREQXLAT6_DFIFREQXLATVAL_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  DDRPHYC DFI frequency translation 6 register
   type DDRPHYC_MASTER0_DFIFREQXLAT6_Register is record
      --  Sequencer start vector used when dfi_freq value is 24
      DFIFREQXLATVAL : DDRPHYC_MASTER0_DFIFREQXLAT6_DFIFREQXLATVAL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIFREQXLAT6_Register use record
      DFIFREQXLATVAL at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DDRPHYC_MASTER0_DFIFREQXLAT7_DFIFREQXLATVAL array element
   subtype DDRPHYC_MASTER0_DFIFREQXLAT7_DFIFREQXLATVAL_Element is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC_MASTER0_DFIFREQXLAT7_DFIFREQXLATVAL array
   type DDRPHYC_MASTER0_DFIFREQXLAT7_DFIFREQXLATVAL_Field_Array is array (28 .. 31)
     of DDRPHYC_MASTER0_DFIFREQXLAT7_DFIFREQXLATVAL_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for DDRPHYC_MASTER0_DFIFREQXLAT7_DFIFREQXLATVAL
   type DDRPHYC_MASTER0_DFIFREQXLAT7_DFIFREQXLATVAL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DFIFREQXLATVAL as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  DFIFREQXLATVAL as an array
            Arr : DDRPHYC_MASTER0_DFIFREQXLAT7_DFIFREQXLATVAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for DDRPHYC_MASTER0_DFIFREQXLAT7_DFIFREQXLATVAL_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  DDRPHYC DFI frequency translation 7 register
   type DDRPHYC_MASTER0_DFIFREQXLAT7_Register is record
      --  Sequencer start vector used when dfi_freq value is 28
      DFIFREQXLATVAL : DDRPHYC_MASTER0_DFIFREQXLAT7_DFIFREQXLATVAL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIFREQXLAT7_Register use record
      DFIFREQXLATVAL at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DDRPHYC TxRdPtrInit register
   type DDRPHYC_MASTER0_TXRDPTRINIT_Register is record
      --  This bit controls TxRdPtrInit, and is meant to be written by the
      --  PState sequencer as part of the power state switching sequence.
      TXRDPTRINIT   : Boolean := True;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_TXRDPTRINIT_Register use record
      TXRDPTRINIT   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DDRPHYC DfiInitComplete register
   type DDRPHYC_MASTER0_DFIINITCOMPLETE_Register is record
      --  This bit directly controls DfiInitComplete, and is meant to be
      --  written by the PState sequencer as part of the power state switching
      --  sequence.
      DFIINITCOMPLETE : Boolean := False;
      --  unspecified
      Reserved_1_31   : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIINITCOMPLETE_Register use record
      DFIINITCOMPLETE at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_DFIFREQRATIO_DFIFREQRATIO_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC DfiFreqRatio register
   type DDRPHYC_MASTER0_DFIFREQRATIO_Register is record
      --  Ratio DfiCtlClk:MemClk
      DFIFREQRATIO  : DDRPHYC_MASTER0_DFIFREQRATIO_DFIFREQRATIO_Field :=
                       16#1#;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIFREQRATIO_Register use record
      DFIFREQRATIO  at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DDRPHYC RxFifoCheck register
   type DDRPHYC_MASTER0_RXFIFOCHECKS_Register is record
      --  None
      DOFREQUENTRXFIFOCHECKS : Boolean := False;
      --  unspecified
      Reserved_1_31          : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_RXFIFOCHECKS_Register use record
      DOFREQUENTRXFIFOCHECKS at 0 range 0 .. 0;
      Reserved_1_31          at 0 range 1 .. 31;
   end record;

   --  DDRPHYC MTestCombo output enable on core-side copy register
   type DDRPHYC_MASTER0_MTESTDTOCTRL_Register is record
      --  This bit is programmed as follows:
      MTESTDTOEN    : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MTESTDTOCTRL_Register use record
      MTESTDTOEN    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAA0TODFI_MAPCAATODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAA[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAA0TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi0_address to CAA x.
      MAPCAATODFI   : DDRPHYC_MASTER0_MAPCAA0TODFI_MAPCAATODFI_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAA0TODFI_Register use record
      MAPCAATODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAA1TODFI_MAPCAATODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAA[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAA1TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi0_address to CAA x.
      MAPCAATODFI   : DDRPHYC_MASTER0_MAPCAA1TODFI_MAPCAATODFI_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAA1TODFI_Register use record
      MAPCAATODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAA2TODFI_MAPCAATODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAA[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAA2TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi0_address to CAA x.
      MAPCAATODFI   : DDRPHYC_MASTER0_MAPCAA2TODFI_MAPCAATODFI_Field := 16#2#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAA2TODFI_Register use record
      MAPCAATODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAA3TODFI_MAPCAATODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAA[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAA3TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi0_address to CAA x.
      MAPCAATODFI   : DDRPHYC_MASTER0_MAPCAA3TODFI_MAPCAATODFI_Field := 16#3#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAA3TODFI_Register use record
      MAPCAATODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAA4TODFI_MAPCAATODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAA[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAA4TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi0_address to CAA x.
      MAPCAATODFI   : DDRPHYC_MASTER0_MAPCAA4TODFI_MAPCAATODFI_Field := 16#4#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAA4TODFI_Register use record
      MAPCAATODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAA5TODFI_MAPCAATODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAA[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAA5TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi0_address to CAA x.
      MAPCAATODFI   : DDRPHYC_MASTER0_MAPCAA5TODFI_MAPCAATODFI_Field := 16#5#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAA5TODFI_Register use record
      MAPCAATODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAA6TODFI_MAPCAATODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAA[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAA6TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi0_address to CAA x.
      MAPCAATODFI   : DDRPHYC_MASTER0_MAPCAA6TODFI_MAPCAATODFI_Field := 16#6#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAA6TODFI_Register use record
      MAPCAATODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAA7TODFI_MAPCAATODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAA[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAA7TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi0_address to CAA x.
      MAPCAATODFI   : DDRPHYC_MASTER0_MAPCAA7TODFI_MAPCAATODFI_Field := 16#7#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAA7TODFI_Register use record
      MAPCAATODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAB0TODFI_MAPCABTODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAB[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAB0TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi1_address to CAB x.
      MAPCABTODFI   : DDRPHYC_MASTER0_MAPCAB0TODFI_MAPCABTODFI_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAB0TODFI_Register use record
      MAPCABTODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAB1TODFI_MAPCABTODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAB[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAB1TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi1_address to CAB x.
      MAPCABTODFI   : DDRPHYC_MASTER0_MAPCAB1TODFI_MAPCABTODFI_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAB1TODFI_Register use record
      MAPCABTODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAB2TODFI_MAPCABTODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAB[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAB2TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi1_address to CAB x.
      MAPCABTODFI   : DDRPHYC_MASTER0_MAPCAB2TODFI_MAPCABTODFI_Field := 16#2#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAB2TODFI_Register use record
      MAPCABTODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAB3TODFI_MAPCABTODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAB[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAB3TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi1_address to CAB x.
      MAPCABTODFI   : DDRPHYC_MASTER0_MAPCAB3TODFI_MAPCABTODFI_Field := 16#3#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAB3TODFI_Register use record
      MAPCABTODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAB4TODFI_MAPCABTODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAB[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAB4TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi1_address to CAB x.
      MAPCABTODFI   : DDRPHYC_MASTER0_MAPCAB4TODFI_MAPCABTODFI_Field := 16#4#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAB4TODFI_Register use record
      MAPCABTODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAB5TODFI_MAPCABTODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAB[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAB5TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi1_address to CAB x.
      MAPCABTODFI   : DDRPHYC_MASTER0_MAPCAB5TODFI_MAPCABTODFI_Field := 16#5#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAB5TODFI_Register use record
      MAPCABTODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAB6TODFI_MAPCABTODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAB[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAB6TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi1_address to CAB x.
      MAPCABTODFI   : DDRPHYC_MASTER0_MAPCAB6TODFI_MAPCABTODFI_Field := 16#6#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAB6TODFI_Register use record
      MAPCABTODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_MAPCAB7TODFI_MAPCABTODFI_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC MapCAB[0to7]toDfi register
   type DDRPHYC_MASTER0_MAPCAB7TODFI_Register is record
      --  For LPDDR4 application, this bit field maps a dfi1_address to CAB x.
      MAPCABTODFI   : DDRPHYC_MASTER0_MAPCAB7TODFI_MAPCABTODFI_Field := 16#7#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_MAPCAB7TODFI_Register use record
      MAPCABTODFI   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PHYINTERRUPTENABLE_PHYVTDRIFTALARMEN_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC interrupt enable register
   type DDRPHYC_MASTER0_PHYINTERRUPTENABLE_Register is record
      --  PHY training complete interrupt enable
      PHYTRNGCMPLTEN    : Boolean := False;
      --  PHY initialization complete interrupt enable
      PHYINITCMPLTEN    : Boolean := False;
      --  PHY training failure interrupt enable
      PHYTRNGFAILEN     : Boolean := False;
      --  unspecified
      Reserved_3_7      : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  PHY VT drift alarm interrupt enable
      PHYVTDRIFTALARMEN : DDRPHYC_MASTER0_PHYINTERRUPTENABLE_PHYVTDRIFTALARMEN_Field :=
                           16#0#;
      --  Rx FIFO pointer check interrupt enable
      PHYRXFIFOCHECKEN  : Boolean := False;
      --  unspecified
      Reserved_11_31    : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYINTERRUPTENABLE_Register use record
      PHYTRNGCMPLTEN    at 0 range 0 .. 0;
      PHYINITCMPLTEN    at 0 range 1 .. 1;
      PHYTRNGFAILEN     at 0 range 2 .. 2;
      Reserved_3_7      at 0 range 3 .. 7;
      PHYVTDRIFTALARMEN at 0 range 8 .. 9;
      PHYRXFIFOCHECKEN  at 0 range 10 .. 10;
      Reserved_11_31    at 0 range 11 .. 31;
   end record;

   --  DDRPHYC interrupt firmware control register
   type DDRPHYC_MASTER0_PHYINTERRUPTFWCONTROL_Register is record
      --  PHY training complete firmware interrupt
      PHYTRNGCMPLTFW : Boolean := False;
      --  PHY initialization complete firmware interrupt
      PHYINITCMPLTFW : Boolean := False;
      --  PHY training failure firmware interrupt
      PHYTRNGFAILFW  : Boolean := False;
      --  unspecified
      Reserved_3_31  : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYINTERRUPTFWCONTROL_Register use record
      PHYTRNGCMPLTFW at 0 range 0 .. 0;
      PHYINITCMPLTFW at 0 range 1 .. 1;
      PHYTRNGFAILFW  at 0 range 2 .. 2;
      Reserved_3_31  at 0 range 3 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PHYINTERRUPTMASK_PHYVTDRIFTALARMMSK_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC interrupt mask register
   type DDRPHYC_MASTER0_PHYINTERRUPTMASK_Register is record
      --  Mask for the PHY training complete interrupt
      PHYTRNGCMPLTMSK    : Boolean := False;
      --  Mask for the PHY initialization complete interrupt
      PHYINITCMPLTMSK    : Boolean := False;
      --  Mask for the PHY training failure interrupt
      PHYTRNGFAILMSK     : Boolean := False;
      --  unspecified
      Reserved_3_7       : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Mask for the PHY VT drift alarm interrupts
      PHYVTDRIFTALARMMSK : DDRPHYC_MASTER0_PHYINTERRUPTMASK_PHYVTDRIFTALARMMSK_Field :=
                            16#0#;
      --  Mask for the Rx FIFO pointers check interrupt
      PHYRXFIFOCHECKMSK  : Boolean := False;
      --  unspecified
      Reserved_11_31     : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYINTERRUPTMASK_Register use record
      PHYTRNGCMPLTMSK    at 0 range 0 .. 0;
      PHYINITCMPLTMSK    at 0 range 1 .. 1;
      PHYTRNGFAILMSK     at 0 range 2 .. 2;
      Reserved_3_7       at 0 range 3 .. 7;
      PHYVTDRIFTALARMMSK at 0 range 8 .. 9;
      PHYRXFIFOCHECKMSK  at 0 range 10 .. 10;
      Reserved_11_31     at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PHYINTERRUPTCLEAR_PHYVTDRIFTALARMCLR_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC interrupt clear register
   type DDRPHYC_MASTER0_PHYINTERRUPTCLEAR_Register is record
      --  PHY training complete interrupt clear
      PHYTRNGCMPLTCLR    : Boolean := False;
      --  PHY initialization complete interrupt clear
      PHYINITCMPLTCLR    : Boolean := False;
      --  PHY training failure interrupt clear
      PHYTRNGFAILCLR     : Boolean := False;
      --  unspecified
      Reserved_3_7       : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  PHY VT drift alarm interrupt clear
      PHYVTDRIFTALARMCLR : DDRPHYC_MASTER0_PHYINTERRUPTCLEAR_PHYVTDRIFTALARMCLR_Field :=
                            16#0#;
      --  Rx FIFO pointers check interrupt clear
      PHYRXFIFOCHECKCLR  : Boolean := False;
      --  unspecified
      Reserved_11_31     : Interfaces.Bit_Types.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYINTERRUPTCLEAR_Register use record
      PHYTRNGCMPLTCLR    at 0 range 0 .. 0;
      PHYINITCMPLTCLR    at 0 range 1 .. 1;
      PHYTRNGFAILCLR     at 0 range 2 .. 2;
      Reserved_3_7       at 0 range 3 .. 7;
      PHYVTDRIFTALARMCLR at 0 range 8 .. 9;
      PHYRXFIFOCHECKCLR  at 0 range 10 .. 10;
      Reserved_11_31     at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_PHYINTERRUPTSTATUS_VTDRIFTALARM_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRPHYC interrupt status register
   type DDRPHYC_MASTER0_PHYINTERRUPTSTATUS_Register is record
      --  Read-only. PHY training complete interrupt
      PHYTRNGCMPLT   : Boolean;
      --  Read-only. PHY initialization complete interrupt
      PHYINITCMPLT   : Boolean;
      --  Read-only. PHY training failure interrupt
      PHYTRNGFAIL    : Boolean;
      --  unspecified
      Reserved_3_7   : Interfaces.Bit_Types.UInt5;
      --  Read-only. PHY VT drift alarm interrupt
      VTDRIFTALARM   : DDRPHYC_MASTER0_PHYINTERRUPTSTATUS_VTDRIFTALARM_Field;
      --  Read-only. A mechanism in the PHY checks the read FIFO pointers for
      --  consistency at times they are idle.
      PHYRXFIFOCHECK : Boolean;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_PHYINTERRUPTSTATUS_Register use record
      PHYTRNGCMPLT   at 0 range 0 .. 0;
      PHYINITCMPLT   at 0 range 1 .. 1;
      PHYTRNGFAIL    at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      VTDRIFTALARM   at 0 range 8 .. 9;
      PHYRXFIFOCHECK at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_HWTSWIZZLEHWTADDRESS_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC HwtSwizzleHwtAddress0 register
   type DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register is record
      --  This bit field is used in DDR3/DDR4 mode where a user has remapped
      --  the DFI inputs to
      HWTSWIZZLEHWTADDRESS : DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_HWTSWIZZLEHWTADDRESS_Field :=
                              16#0#;
      --  unspecified
      Reserved_5_31        : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register use record
      HWTSWIZZLEHWTADDRESS at 0 range 0 .. 4;
      Reserved_5_31        at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_HWTSWIZZLEHWTACTN_HWTSWIZZLEHWTACTN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC HwtSwizzleHwtActN register
   type DDRPHYC_MASTER0_HWTSWIZZLEHWTACTN_Register is record
      --  See HWTSWIZZLEHWTADDRESS0[4:0] description for details.
      HWTSWIZZLEHWTACTN : DDRPHYC_MASTER0_HWTSWIZZLEHWTACTN_HWTSWIZZLEHWTACTN_Field :=
                           16#0#;
      --  unspecified
      Reserved_5_31     : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_HWTSWIZZLEHWTACTN_Register use record
      HWTSWIZZLEHWTACTN at 0 range 0 .. 4;
      Reserved_5_31     at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK0_HWTSWIZZLEHWTBANK0_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC HwtSwizzleHwtBank0 register
   type DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK0_Register is record
      --  See HWTSWIZZLEHWTADDRESS0[4:0] description for details.
      HWTSWIZZLEHWTBANK0 : DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK0_HWTSWIZZLEHWTBANK0_Field :=
                            16#0#;
      --  unspecified
      Reserved_5_31      : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK0_Register use record
      HWTSWIZZLEHWTBANK0 at 0 range 0 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK1_HWTSWIZZLEHWTBANK1_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC HwtSwizzleHwtBank1 register
   type DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK1_Register is record
      --  See HWTSWIZZLEHWTADDRESS0[4:0] description for details.
      HWTSWIZZLEHWTBANK1 : DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK1_HWTSWIZZLEHWTBANK1_Field :=
                            16#0#;
      --  unspecified
      Reserved_5_31      : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK1_Register use record
      HWTSWIZZLEHWTBANK1 at 0 range 0 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK2_HWTSWIZZLEHWTBANK2_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC HwtSwizzleHwtBank2 register
   type DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK2_Register is record
      --  See HWTSWIZZLEHWTADDRESS0[4:0] description for details.
      HWTSWIZZLEHWTBANK2 : DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK2_HWTSWIZZLEHWTBANK2_Field :=
                            16#0#;
      --  unspecified
      Reserved_5_31      : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK2_Register use record
      HWTSWIZZLEHWTBANK2 at 0 range 0 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_HWTSWIZZLEHWTBG0_HWTSWIZZLEHWTBG0_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC HwtSwizzleHwtBg0 register
   type DDRPHYC_MASTER0_HWTSWIZZLEHWTBG0_Register is record
      --  See HWTSWIZZLEHWTADDRESS0[4:0] description for details.
      HWTSWIZZLEHWTBG0 : DDRPHYC_MASTER0_HWTSWIZZLEHWTBG0_HWTSWIZZLEHWTBG0_Field :=
                          16#0#;
      --  unspecified
      Reserved_5_31    : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_HWTSWIZZLEHWTBG0_Register use record
      HWTSWIZZLEHWTBG0 at 0 range 0 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_HWTSWIZZLEHWTBG1_HWTSWIZZLEHWTBG1_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC HwtSwizzleHwtBg1 register
   type DDRPHYC_MASTER0_HWTSWIZZLEHWTBG1_Register is record
      --  See HWTSWIZZLEHWTADDRESS0[4:0] description for details.
      HWTSWIZZLEHWTBG1 : DDRPHYC_MASTER0_HWTSWIZZLEHWTBG1_HWTSWIZZLEHWTBG1_Field :=
                          16#0#;
      --  unspecified
      Reserved_5_31    : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_HWTSWIZZLEHWTBG1_Register use record
      HWTSWIZZLEHWTBG1 at 0 range 0 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_HWTSWIZZLEHWTCASN_HWTSWIZZLEHWTCASN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC HwtSwizzleHwtCasN register
   type DDRPHYC_MASTER0_HWTSWIZZLEHWTCASN_Register is record
      --  See HWTSWIZZLEHWTADDRESS0[4:0] description for details.
      HWTSWIZZLEHWTCASN : DDRPHYC_MASTER0_HWTSWIZZLEHWTCASN_HWTSWIZZLEHWTCASN_Field :=
                           16#0#;
      --  unspecified
      Reserved_5_31     : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_HWTSWIZZLEHWTCASN_Register use record
      HWTSWIZZLEHWTCASN at 0 range 0 .. 4;
      Reserved_5_31     at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_HWTSWIZZLEHWTRASN_HWTSWIZZLEHWTRASN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC HwtSwizzleHwtRasN register
   type DDRPHYC_MASTER0_HWTSWIZZLEHWTRASN_Register is record
      --  See HWTSWIZZLEHWTADDRESS0[4:0] description for details.
      HWTSWIZZLEHWTRASN : DDRPHYC_MASTER0_HWTSWIZZLEHWTRASN_HWTSWIZZLEHWTRASN_Field :=
                           16#0#;
      --  unspecified
      Reserved_5_31     : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_HWTSWIZZLEHWTRASN_Register use record
      HWTSWIZZLEHWTRASN at 0 range 0 .. 4;
      Reserved_5_31     at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_HWTSWIZZLEHWTWEN_HWTSWIZZLEHWTWEN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC HwtSwizzleHwtWeN register
   type DDRPHYC_MASTER0_HWTSWIZZLEHWTWEN_Register is record
      --  See HWTSWIZZLEHWTADDRESS0[4:0] description for details.
      HWTSWIZZLEHWTWEN : DDRPHYC_MASTER0_HWTSWIZZLEHWTWEN_HWTSWIZZLEHWTWEN_Field :=
                          16#0#;
      --  unspecified
      Reserved_5_31    : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_HWTSWIZZLEHWTWEN_Register use record
      HWTSWIZZLEHWTWEN at 0 range 0 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_HWTSWIZZLEHWTPARITYIN_HWTSWIZZLEHWTPARITYIN_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRPHYC HwtSwizzleHwtParityIn register
   type DDRPHYC_MASTER0_HWTSWIZZLEHWTPARITYIN_Register is record
      --  See HWTSWIZZLEHWTADDRESS0[4:0] description for details.
      HWTSWIZZLEHWTPARITYIN : DDRPHYC_MASTER0_HWTSWIZZLEHWTPARITYIN_HWTSWIZZLEHWTPARITYIN_Field :=
                               16#0#;
      --  unspecified
      Reserved_5_31         : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_HWTSWIZZLEHWTPARITYIN_Register use record
      HWTSWIZZLEHWTPARITYIN at 0 range 0 .. 4;
      Reserved_5_31         at 0 range 5 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS0_PHYUPDACKDELAY0_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS0_PHYUPDREQDELAY0_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS0_CTRLUPDACKDELAY0_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS0_CTRLUPDREQDELAY0_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC small delays on handshake signals register 0
   type DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS0_Register is record
      --  Adds 0-15 DfiClks of delay after dfi0_phyupd_ack asserts, before the
      --  PHY takes any action (such as starting DDL calibration).
      PHYUPDACKDELAY0  : DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS0_PHYUPDACKDELAY0_Field :=
                          16#0#;
      --  Adds 0-15 DfiClks of delay after the PHY completes all PHY update
      --  activities, before deasserting dfi0_phyupd_req.
      PHYUPDREQDELAY0  : DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS0_PHYUPDREQDELAY0_Field :=
                          16#0#;
      --  Adds 0-15 DfiClks of delay after dfi0_ctrlupd_req asserts, before the
      --  PHY takes any action.
      CTRLUPDACKDELAY0 : DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS0_CTRLUPDACKDELAY0_Field :=
                          16#0#;
      --  Adds 0-15 DfiClks of delay after the PHY completes all PHY update
      --  activities, before deasserting dfi0_ctrlupd_ack.
      CTRLUPDREQDELAY0 : DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS0_CTRLUPDREQDELAY0_Field :=
                          16#0#;
      --  unspecified
      Reserved_16_31   : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS0_Register use record
      PHYUPDACKDELAY0  at 0 range 0 .. 3;
      PHYUPDREQDELAY0  at 0 range 4 .. 7;
      CTRLUPDACKDELAY0 at 0 range 8 .. 11;
      CTRLUPDREQDELAY0 at 0 range 12 .. 15;
      Reserved_16_31   at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS1_PHYUPDACKDELAY1_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS1_PHYUPDREQDELAY1_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS1_CTRLUPDACKDELAY1_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS1_CTRLUPDREQDELAY1_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC small delays on handshake signals register 1
   type DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS1_Register is record
      --  Adds 0-15 DfiClks of delay after dfi1_phyupd_ack asserts, before the
      --  PHY takes any action (such as starting DDL calibration).
      PHYUPDACKDELAY1  : DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS1_PHYUPDACKDELAY1_Field :=
                          16#0#;
      --  Adds 0-15 DfiClks of delay after the PHY completes all PHY update
      --  activities, before deasserting dfi1_phyupd_req.
      PHYUPDREQDELAY1  : DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS1_PHYUPDREQDELAY1_Field :=
                          16#0#;
      --  Adds 0-15 DfiClks of delay after dfi1_ctrlupd_req asserts, before the
      --  PHY takes any action.
      CTRLUPDACKDELAY1 : DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS1_CTRLUPDACKDELAY1_Field :=
                          16#0#;
      --  Adds 0-15 DfiClks of delay after the PHY completes all PHY update
      --  activities, before deasserting dfi1_ctrlupd_ack.
      CTRLUPDREQDELAY1 : DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS1_CTRLUPDREQDELAY1_Field :=
                          16#0#;
      --  unspecified
      Reserved_16_31   : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS1_Register use record
      PHYUPDACKDELAY1  at 0 range 0 .. 3;
      PHYUPDREQDELAY1  at 0 range 4 .. 7;
      CTRLUPDACKDELAY1 at 0 range 8 .. 11;
      CTRLUPDREQDELAY1 at 0 range 12 .. 15;
      Reserved_16_31   at 0 range 16 .. 31;
   end record;

   --  DDRPHYC remote impedance calibration status register
   type DDRPHYC_MASTER0_REMOTEIMPCAL_Register is record
      --  Read-only. - if DWC_DDRPHY_REMOTE_IMP_CAL is defined, this bit is set
      --  by hardware when
      CALIBSLAVE       : Boolean;
      --  Read-only. - if DWC_DDRPHY_REMOTE_IMP_CAL is defined, this bit is set
      --  by hardware when
      SLAVECODEUPDATED : Boolean;
      --  unspecified
      Reserved_2_31    : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_MASTER0_REMOTEIMPCAL_Register use record
      CALIBSLAVE       at 0 range 0 .. 0;
      SLAVECODEUPDATED at 0 range 1 .. 1;
      Reserved_2_31    at 0 range 2 .. 31;
   end record;

   --  DDRPHYC PhyInLP3 register
   type DDRPHYC_INITENG0_PHYINLP3_Register is record
      --  Read-only. This bit is set by the PIE once the LP3 entry sequence is
      --  completed.
      PHYINLP3      : Boolean;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_INITENG0_PHYINLP3_Register use record
      PHYINLP3      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DDRPHYC Ucclk and Hclk enable register
   type DDRPHYC_DRTUB0_UCCLKHCLKENABLES_Register is record
      --  When the training is complete (and assuming no further need for the
      --  microcontroller), this bit must be cleared to reduce power.
      UCCLKEN       : Boolean := True;
      --  When the training is complete (and assuming no further need for
      --  training hardware), this bit must be cleared to reduce power.
      HCLKEN        : Boolean := True;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DRTUB0_UCCLKHCLKENABLES_Register use record
      UCCLKEN       at 0 range 0 .. 0;
      HCLKEN        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DDRPHYC_DRTUB0_CURPSTATE0B_CURPSTATE0B_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRPHYC CurPstate0b register
   type DDRPHYC_DRTUB0_CURPSTATE0B_Register is record
      --  PIE current PState
      CURPSTATE0B   : DDRPHYC_DRTUB0_CURPSTATE0B_CURPSTATE0B_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DRTUB0_CURPSTATE0B_Register use record
      CURPSTATE0B   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRPHYC_DRTUB0_CUSTPUBREV_CUSTPUBREV_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC CUSTPUBREV register
   type DDRPHYC_DRTUB0_CUSTPUBREV_Register is record
      --  Read-only. Customer settable PUB version number
      CUSTPUBREV    : DDRPHYC_DRTUB0_CUSTPUBREV_CUSTPUBREV_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DRTUB0_CUSTPUBREV_Register use record
      CUSTPUBREV    at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRPHYC_DRTUB0_PUBREV_PUBMNR_Field is Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DRTUB0_PUBREV_PUBMDR_Field is Interfaces.Bit_Types.UInt4;
   subtype DDRPHYC_DRTUB0_PUBREV_PUBMJR_Field is Interfaces.Bit_Types.Byte;

   --  DDRPHYC PUBREV register
   type DDRPHYC_DRTUB0_PUBREV_Register is record
      --  Read-only. PUB minor revision
      PUBMNR         : DDRPHYC_DRTUB0_PUBREV_PUBMNR_Field;
      --  Read-only. PUB moderate revision
      PUBMDR         : DDRPHYC_DRTUB0_PUBREV_PUBMDR_Field;
      --  Read-only. PUB major revision
      PUBMJR         : DDRPHYC_DRTUB0_PUBREV_PUBMJR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_DRTUB0_PUBREV_Register use record
      PUBMNR         at 0 range 0 .. 3;
      PUBMDR         at 0 range 4 .. 7;
      PUBMJR         at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DDRPHYC MicroContMuxSel register
   type DDRPHYC_APBONLY0_MICROCONTMUXSEL_Register is record
      --  Controls access to the PHY configuration registers.
      MICROCONTMUXSEL : Boolean := False;
      --  unspecified
      Reserved_1_31   : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_APBONLY0_MICROCONTMUXSEL_Register use record
      MICROCONTMUXSEL at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  DDRPHYC PMU/controller protocol, controller read-only 	shadow register
   type DDRPHYC_APBONLY0_UCTSHADOWREGS_Register is record
      --  Read-only. None
      UCTWRITEPROTSHADOW : Boolean;
      --  unspecified
      Reserved_1_31      : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_APBONLY0_UCTSHADOWREGS_Register use record
      UCTWRITEPROTSHADOW at 0 range 0 .. 0;
      Reserved_1_31      at 0 range 1 .. 31;
   end record;

   --  DDRPHYC DctWriteProt register
   type DDRPHYC_APBONLY0_DCTWRITEPROT_Register is record
      --  By clearing this bit, the user acknowledges the receipt of the
      --  message.
      DCTWRITEPROT  : Boolean := True;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_APBONLY0_DCTWRITEPROT_Register use record
      DCTWRITEPROT  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRPHYC_APBONLY0_UCTWRITEONLYSHADOW_UCTWRITEONLYSHADOW_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC UctWriteOnlyShadow register
   type DDRPHYC_APBONLY0_UCTWRITEONLYSHADOW_Register is record
      --  Read-only. Used to pass the message ID for major messages, and to
      --  pass the lower 16 bits for streaming messages.
      UCTWRITEONLYSHADOW : DDRPHYC_APBONLY0_UCTWRITEONLYSHADOW_UCTWRITEONLYSHADOW_Field;
      --  unspecified
      Reserved_16_31     : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_APBONLY0_UCTWRITEONLYSHADOW_Register use record
      UCTWRITEONLYSHADOW at 0 range 0 .. 15;
      Reserved_16_31     at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_APBONLY0_UCTDATWRITEONLYSHADOW_UCTDATWRITEONLYSHADOW_Field is
     Interfaces.Bit_Types.UInt16;

   --  DDRPHYC UctDatWriteOnlyShadow register
   type DDRPHYC_APBONLY0_UCTDATWRITEONLYSHADOW_Register is record
      --  Read-only. Used to pass the upper 16 bits for streaming messages.
      UCTDATWRITEONLYSHADOW : DDRPHYC_APBONLY0_UCTDATWRITEONLYSHADOW_UCTDATWRITEONLYSHADOW_Field;
      --  unspecified
      Reserved_16_31        : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_APBONLY0_UCTDATWRITEONLYSHADOW_Register use record
      UCTDATWRITEONLYSHADOW at 0 range 0 .. 15;
      Reserved_16_31        at 0 range 16 .. 31;
   end record;

   subtype DDRPHYC_APBONLY0_DFICFGRDDATAVALIDTICKS_DFICFGRDDATAVALIDTICKS_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRPHYC DfiCfgRdDataValidTicks register
   type DDRPHYC_APBONLY0_DFICFGRDDATAVALIDTICKS_Register is record
      --  Round trip delay of a register read access
      DFICFGRDDATAVALIDTICKS : DDRPHYC_APBONLY0_DFICFGRDDATAVALIDTICKS_DFICFGRDDATAVALIDTICKS_Field :=
                                16#6#;
      --  unspecified
      Reserved_6_31          : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_APBONLY0_DFICFGRDDATAVALIDTICKS_Register use record
      DFICFGRDDATAVALIDTICKS at 0 range 0 .. 5;
      Reserved_6_31          at 0 range 6 .. 31;
   end record;

   --  DDRPHYC reset and clock shutdown control register
   type DDRPHYC_APBONLY0_MICRORESET_Register is record
      --  This bit is programmable as follows:
      STALLTOMICRO  : Boolean := True;
      --  Reserved, must always be set to 0.
      TESTWAKEUP    : Boolean := False;
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      --  This bit is programmable as follows:
      RESETTOMICRO  : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_APBONLY0_MICRORESET_Register use record
      STALLTOMICRO  at 0 range 0 .. 0;
      TESTWAKEUP    at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      RESETTOMICRO  at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  DDRPHYC DfiInitCompleteShadow register
   type DDRPHYC_APBONLY0_DFIINITCOMPLETESHADOW_Register is record
      --  Read-only. This bit presents a read-only view (a shadow) of
      --  DfiInitComplete which is used by the sequencer to control the state
      --  of dfi_init_complete.
      DFIINITCOMPLETESHADOW : Boolean;
      --  unspecified
      Reserved_1_31         : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPHYC_APBONLY0_DFIINITCOMPLETESHADOW_Register use record
      DFIINITCOMPLETESHADOW at 0 range 0 .. 0;
      Reserved_1_31         at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type DDRPHYC_Disc is
     (Ddress17,
      Ctn);

   --  DDRPHYC address block description
   type DDRPHYC_Peripheral
     (Discriminent : DDRPHYC_Disc := Ddress17)
   is record
      --  DDRPHYC MtestMuxSel register
      DDRPHYC_ANIB0_MTESTMUXSEL               : aliased DDRPHYC_ANIB0_MTESTMUXSEL_Register;
      --  DDRPHYC AForceDrvCont register
      DDRPHYC_ANIB0_AFORCEDRVCONT             : aliased DDRPHYC_ANIB0_AFORCEDRVCONT_Register;
      --  DDRPHYC AForceTriCont register
      DDRPHYC_ANIB0_AFORCETRICONT             : aliased DDRPHYC_ANIB0_AFORCETRICONT_Register;
      --  DDRPHYC address T0 impedance control register
      DDRPHYC_ANIB0_ATXIMPEDANCE              : aliased DDRPHYC_ANIB0_ATXIMPEDANCE_Register;
      --  DDRPHYC ATestPrbsErr register
      DDRPHYC_ANIB0_ATESTPRBSERR              : aliased DDRPHYC_ANIB0_ATESTPRBSERR_Register;
      --  DDRPHYC address T0 slew rate and predriver control register
      DDRPHYC_ANIB0_ATXSLEWRATE               : aliased DDRPHYC_ANIB0_ATXSLEWRATE_Register;
      --  DDRPHYC ATestPrbsErrCnt register
      DDRPHYC_ANIB0_ATESTPRBSERRCNT           : aliased DDRPHYC_ANIB0_ATESTPRBSERRCNT_Register;
      --  DDRPHYC ATxDly register
      DDRPHYC_ANIB0_ATXDLY                    : aliased DDRPHYC_ANIB0_ATXDLY_Register;
      --  DDRPHYC MtestMuxSel register
      DDRPHYC_ANIB1_MTESTMUXSEL               : aliased DDRPHYC_ANIB1_MTESTMUXSEL_Register;
      --  DDRPHYC AForceDrvCont register
      DDRPHYC_ANIB1_AFORCEDRVCONT             : aliased DDRPHYC_ANIB1_AFORCEDRVCONT_Register;
      --  DDRPHYC AForceTriCont register
      DDRPHYC_ANIB1_AFORCETRICONT             : aliased DDRPHYC_ANIB1_AFORCETRICONT_Register;
      --  DDRPHYC address T1 impedance control register
      DDRPHYC_ANIB1_ATXIMPEDANCE              : aliased DDRPHYC_ANIB1_ATXIMPEDANCE_Register;
      --  DDRPHYC ATestPrbsErr register
      DDRPHYC_ANIB1_ATESTPRBSERR              : aliased DDRPHYC_ANIB1_ATESTPRBSERR_Register;
      --  DDRPHYC address T1 slew rate and predriver control register
      DDRPHYC_ANIB1_ATXSLEWRATE               : aliased DDRPHYC_ANIB1_ATXSLEWRATE_Register;
      --  DDRPHYC ATestPrbsErrCnt register
      DDRPHYC_ANIB1_ATESTPRBSERRCNT           : aliased DDRPHYC_ANIB1_ATESTPRBSERRCNT_Register;
      --  DDRPHYC ATxDly register
      DDRPHYC_ANIB1_ATXDLY                    : aliased DDRPHYC_ANIB1_ATXDLY_Register;
      --  DDRPHYC MtestMuxSel register
      DDRPHYC_ANIB2_MTESTMUXSEL               : aliased DDRPHYC_ANIB2_MTESTMUXSEL_Register;
      --  DDRPHYC AForceDrvCont register
      DDRPHYC_ANIB2_AFORCEDRVCONT             : aliased DDRPHYC_ANIB2_AFORCEDRVCONT_Register;
      --  DDRPHYC AForceTriCont register
      DDRPHYC_ANIB2_AFORCETRICONT             : aliased DDRPHYC_ANIB2_AFORCETRICONT_Register;
      --  DDRPHYC address T2 impedance control register
      DDRPHYC_ANIB2_ATXIMPEDANCE              : aliased DDRPHYC_ANIB2_ATXIMPEDANCE_Register;
      --  DDRPHYC ATestPrbsErr register
      DDRPHYC_ANIB2_ATESTPRBSERR              : aliased DDRPHYC_ANIB2_ATESTPRBSERR_Register;
      --  DDRPHYC address T2 slew rate and predriver control register
      DDRPHYC_ANIB2_ATXSLEWRATE               : aliased DDRPHYC_ANIB2_ATXSLEWRATE_Register;
      --  DDRPHYC ATestPrbsErrCnt register
      DDRPHYC_ANIB2_ATESTPRBSERRCNT           : aliased DDRPHYC_ANIB2_ATESTPRBSERRCNT_Register;
      --  DDRPHYC ATxDly register
      DDRPHYC_ANIB2_ATXDLY                    : aliased DDRPHYC_ANIB2_ATXDLY_Register;
      --  DDRPHYC MtestMuxSel register
      DDRPHYC_ANIB3_MTESTMUXSEL               : aliased DDRPHYC_ANIB3_MTESTMUXSEL_Register;
      --  DDRPHYC AForceDrvCont register
      DDRPHYC_ANIB3_AFORCEDRVCONT             : aliased DDRPHYC_ANIB3_AFORCEDRVCONT_Register;
      --  DDRPHYC AForceTriCont register
      DDRPHYC_ANIB3_AFORCETRICONT             : aliased DDRPHYC_ANIB3_AFORCETRICONT_Register;
      --  DDRPHYC address T3 impedance control register
      DDRPHYC_ANIB3_ATXIMPEDANCE              : aliased DDRPHYC_ANIB3_ATXIMPEDANCE_Register;
      --  DDRPHYC ATestPrbsErr register
      DDRPHYC_ANIB3_ATESTPRBSERR              : aliased DDRPHYC_ANIB3_ATESTPRBSERR_Register;
      --  DDRPHYC address T3 slew rate and predriver control register
      DDRPHYC_ANIB3_ATXSLEWRATE               : aliased DDRPHYC_ANIB3_ATXSLEWRATE_Register;
      --  DDRPHYC ATestPrbsErrCnt register
      DDRPHYC_ANIB3_ATESTPRBSERRCNT           : aliased DDRPHYC_ANIB3_ATESTPRBSERRCNT_Register;
      --  DDRPHYC ATxDly register
      DDRPHYC_ANIB3_ATXDLY                    : aliased DDRPHYC_ANIB3_ATXDLY_Register;
      --  DDRPHYC MtestMuxSel register
      DDRPHYC_ANIB4_MTESTMUXSEL               : aliased DDRPHYC_ANIB4_MTESTMUXSEL_Register;
      --  DDRPHYC AForceDrvCont register
      DDRPHYC_ANIB4_AFORCEDRVCONT             : aliased DDRPHYC_ANIB4_AFORCEDRVCONT_Register;
      --  DDRPHYC AForceTriCont register
      DDRPHYC_ANIB4_AFORCETRICONT             : aliased DDRPHYC_ANIB4_AFORCETRICONT_Register;
      --  DDRPHYC address T4 impedance control register
      DDRPHYC_ANIB4_ATXIMPEDANCE              : aliased DDRPHYC_ANIB4_ATXIMPEDANCE_Register;
      --  DDRPHYC ATestPrbsErr register
      DDRPHYC_ANIB4_ATESTPRBSERR              : aliased DDRPHYC_ANIB4_ATESTPRBSERR_Register;
      --  DDRPHYC address T4 slew rate and predriver control register
      DDRPHYC_ANIB4_ATXSLEWRATE               : aliased DDRPHYC_ANIB4_ATXSLEWRATE_Register;
      --  DDRPHYC ATestPrbsErrCnt register
      DDRPHYC_ANIB4_ATESTPRBSERRCNT           : aliased DDRPHYC_ANIB4_ATESTPRBSERRCNT_Register;
      --  DDRPHYC ATxDly register
      DDRPHYC_ANIB4_ATXDLY                    : aliased DDRPHYC_ANIB4_ATXDLY_Register;
      --  DDRPHYC MtestMuxSel register
      DDRPHYC_ANIB5_MTESTMUXSEL               : aliased DDRPHYC_ANIB5_MTESTMUXSEL_Register;
      --  DDRPHYC AForceDrvCont register
      DDRPHYC_ANIB5_AFORCEDRVCONT             : aliased DDRPHYC_ANIB5_AFORCEDRVCONT_Register;
      --  DDRPHYC AForceTriCont register
      DDRPHYC_ANIB5_AFORCETRICONT             : aliased DDRPHYC_ANIB5_AFORCETRICONT_Register;
      --  DDRPHYC address T5 impedance control register
      DDRPHYC_ANIB5_ATXIMPEDANCE              : aliased DDRPHYC_ANIB5_ATXIMPEDANCE_Register;
      --  DDRPHYC ATestPrbsErr register
      DDRPHYC_ANIB5_ATESTPRBSERR              : aliased DDRPHYC_ANIB5_ATESTPRBSERR_Register;
      --  DDRPHYC address T5 slew rate and predriver control register
      DDRPHYC_ANIB5_ATXSLEWRATE               : aliased DDRPHYC_ANIB5_ATXSLEWRATE_Register;
      --  DDRPHYC ATestPrbsErrCnt register
      DDRPHYC_ANIB5_ATESTPRBSERRCNT           : aliased DDRPHYC_ANIB5_ATESTPRBSERRCNT_Register;
      --  DDRPHYC ATxDly register
      DDRPHYC_ANIB5_ATXDLY                    : aliased DDRPHYC_ANIB5_ATXDLY_Register;
      --  DDRPHYC MtestMuxSel register
      DDRPHYC_ANIB6_MTESTMUXSEL               : aliased DDRPHYC_ANIB6_MTESTMUXSEL_Register;
      --  DDRPHYC AForceDrvCont register
      DDRPHYC_ANIB6_AFORCEDRVCONT             : aliased DDRPHYC_ANIB6_AFORCEDRVCONT_Register;
      --  DDRPHYC AForceTriCont register
      DDRPHYC_ANIB6_AFORCETRICONT             : aliased DDRPHYC_ANIB6_AFORCETRICONT_Register;
      --  DDRPHYC address T6 impedance control register
      DDRPHYC_ANIB6_ATXIMPEDANCE              : aliased DDRPHYC_ANIB6_ATXIMPEDANCE_Register;
      --  DDRPHYC ATestPrbsErr register
      DDRPHYC_ANIB6_ATESTPRBSERR              : aliased DDRPHYC_ANIB6_ATESTPRBSERR_Register;
      --  DDRPHYC address T6 slew rate and predriver control register
      DDRPHYC_ANIB6_ATXSLEWRATE               : aliased DDRPHYC_ANIB6_ATXSLEWRATE_Register;
      --  DDRPHYC ATestPrbsErrCnt register
      DDRPHYC_ANIB6_ATESTPRBSERRCNT           : aliased DDRPHYC_ANIB6_ATESTPRBSERRCNT_Register;
      --  DDRPHYC ATxDly register
      DDRPHYC_ANIB6_ATXDLY                    : aliased DDRPHYC_ANIB6_ATXDLY_Register;
      --  DDRPHYC MtestMuxSel register
      DDRPHYC_ANIB7_MTESTMUXSEL               : aliased DDRPHYC_ANIB7_MTESTMUXSEL_Register;
      --  DDRPHYC AForceDrvCont register
      DDRPHYC_ANIB7_AFORCEDRVCONT             : aliased DDRPHYC_ANIB7_AFORCEDRVCONT_Register;
      --  DDRPHYC AForceTriCont register
      DDRPHYC_ANIB7_AFORCETRICONT             : aliased DDRPHYC_ANIB7_AFORCETRICONT_Register;
      --  DDRPHYC address T7 impedance control register
      DDRPHYC_ANIB7_ATXIMPEDANCE              : aliased DDRPHYC_ANIB7_ATXIMPEDANCE_Register;
      --  DDRPHYC ATestPrbsErr register
      DDRPHYC_ANIB7_ATESTPRBSERR              : aliased DDRPHYC_ANIB7_ATESTPRBSERR_Register;
      --  DDRPHYC address T7 slew rate and predriver control register
      DDRPHYC_ANIB7_ATXSLEWRATE               : aliased DDRPHYC_ANIB7_ATXSLEWRATE_Register;
      --  DDRPHYC ATestPrbsErrCnt register
      DDRPHYC_ANIB7_ATESTPRBSERRCNT           : aliased DDRPHYC_ANIB7_ATESTPRBSERRCNT_Register;
      --  DDRPHYC ATxDly register
      DDRPHYC_ANIB7_ATXDLY                    : aliased DDRPHYC_ANIB7_ATXDLY_Register;
      --  DDRPHYC DBYTE module disable register
      DDRPHYC_DBYTE0_DBYTEMISCMODE            : aliased DDRPHYC_DBYTE0_DBYTEMISCMODE_Register;
      --  DDRPHYC MtestMuxSel register
      DDRPHYC_DBYTE0_MTESTMUXSEL              : aliased DDRPHYC_DBYTE0_MTESTMUXSEL_Register;
      --  DDRPHYC DFIMRL register
      DDRPHYC_DBYTE0_DFIMRL                   : aliased DDRPHYC_DBYTE0_DFIMRL_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE0_VREFDAC0_R0              : aliased DDRPHYC_DBYTE0_VREFDAC0_R_Register;
      --  DDRPHYC data T0 impedance controls register
      DDRPHYC_DBYTE0_TXIMPEDANCECTRL0_B0      : aliased DDRPHYC_DBYTE0_TXIMPEDANCECTRL0_B_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B0         : aliased DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE0_DQDQSRCVCNTRL1           : aliased DDRPHYC_DBYTE0_DQDQSRCVCNTRL1_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE0_DQDQSRCVCNTRL2           : aliased DDRPHYC_DBYTE0_DQDQSRCVCNTRL2_Register;
      --  DDRPHYC TX ODT driver strength control register
      DDRPHYC_DBYTE0_TXODTDRVSTREN_B0         : aliased DDRPHYC_DBYTE0_TXODTDRVSTREN_B_Register;
      --  DDRPHYC status of RX FIFO consistency checks register
      DDRPHYC_DBYTE0_RXFIFOCHECKSTATUS        : aliased DDRPHYC_DBYTE0_RXFIFOCHECKSTATUS_Register;
      --  DDRPHYC captured values associated with an RxFIFO consistency	error
      --  register
      DDRPHYC_DBYTE0_RXFIFOCHECKERRVALUES     : aliased DDRPHYC_DBYTE0_RXFIFOCHECKERRVALUES_Register;
      --  DDRPHYC data receive FIFO pointer values register
      DDRPHYC_DBYTE0_RXFIFOINFO               : aliased DDRPHYC_DBYTE0_RXFIFOINFO_Register;
      --  DDRPHYC R0 FIFO visibility register
      DDRPHYC_DBYTE0_RXFIFOVISIBILITY         : aliased DDRPHYC_DBYTE0_RXFIFOVISIBILITY_Register;
      --  DDRPHYC R0 FIFO content DQ321x register
      DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ3210     : aliased DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ3210_Register;
      --  DDRPHYC R0 FIFO content DQ7654 register
      DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ7654     : aliased DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ7654_Register;
      --  DDRPHYC R0 FIFO content DBI register
      DDRPHYC_DBYTE0_RXFIFOCONTENTSDBI        : aliased DDRPHYC_DBYTE0_RXFIFOCONTENTSDBI_Register;
      --  DDRPHYC T0 slew rate controls register
      DDRPHYC_DBYTE0_TXSLEWRATE_B0            : aliased DDRPHYC_DBYTE0_TXSLEWRATE_B_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE0_RXPBDLYTG0_R0            : aliased DDRPHYC_DBYTE0_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE0_RXPBDLYTG1_R0            : aliased DDRPHYC_DBYTE0_RXPBDLYTG1_R_Register;
      --  DDRPHYC RxEnDlyTgx_u0 register
      DDRPHYC_DBYTE0_RXENDLYTG0_U0            : aliased DDRPHYC_DBYTE0_RXENDLYTG0_U0_Register;
      --  DDRPHYC RxEnDlyTg1_ux register
      DDRPHYC_DBYTE0_RXENDLYTG1_U0            : aliased DDRPHYC_DBYTE0_RXENDLYTG1_U0_Register;
      --  DDRPHYC RxClkDlyTgx_u0 register
      DDRPHYC_DBYTE0_RXCLKDLYTG0_U0           : aliased DDRPHYC_DBYTE0_RXCLKDLYTG0_U0_Register;
      --  DDRPHYC RxClkDlyTg1_ux register
      DDRPHYC_DBYTE0_RXCLKDLYTG1_U0           : aliased DDRPHYC_DBYTE0_RXCLKDLYTG1_U0_Register;
      --  DDRPHYC RxClkcDlyTgx_u0 register
      DDRPHYC_DBYTE0_RXCLKCDLYTG0_U0          : aliased DDRPHYC_DBYTE0_RXCLKCDLYTG0_U0_Register;
      --  DDRPHYC RxClkcDlyTg1_ux register
      DDRPHYC_DBYTE0_RXCLKCDLYTG1_U0          : aliased DDRPHYC_DBYTE0_RXCLKCDLYTG1_U0_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE0_DQ0LNSEL                 : aliased DDRPHYC_DBYTE0_DQ0LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE0_DQ1LNSEL                 : aliased DDRPHYC_DBYTE0_DQ1LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE0_DQ2LNSEL                 : aliased DDRPHYC_DBYTE0_DQ2LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE0_DQ3LNSEL                 : aliased DDRPHYC_DBYTE0_DQ3LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE0_DQ4LNSEL                 : aliased DDRPHYC_DBYTE0_DQ4LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE0_DQ5LNSEL                 : aliased DDRPHYC_DBYTE0_DQ5LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE0_DQ6LNSEL                 : aliased DDRPHYC_DBYTE0_DQ6LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE0_DQ7LNSEL                 : aliased DDRPHYC_DBYTE0_DQ7LNSEL_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE0_TXDQDLYTG0_R0            : aliased DDRPHYC_DBYTE0_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE0_TXDQDLYTG1_R0            : aliased DDRPHYC_DBYTE0_TXDQDLYTG1_R_Register;
      --  DDRPHYC TxDqsDlyTgx_u0 register
      DDRPHYC_DBYTE0_TXDQSDLYTG0_U0           : aliased DDRPHYC_DBYTE0_TXDQSDLYTG0_U0_Register;
      --  DDRPHYC TxDqsDlyTg1_ux register
      DDRPHYC_DBYTE0_TXDQSDLYTG1_U0           : aliased DDRPHYC_DBYTE0_TXDQSDLYTG1_U0_Register;
      --  DDRPHYC debug status of the DBYTE LCDL register
      DDRPHYC_DBYTE0_DXLCDLSTATUS             : aliased DDRPHYC_DBYTE0_DXLCDLSTATUS_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE0_VREFDAC0_R1              : aliased DDRPHYC_DBYTE0_VREFDAC0_R_Register;
      --  DDRPHYC data T0 impedance controls register
      DDRPHYC_DBYTE0_TXIMPEDANCECTRL0_B1      : aliased DDRPHYC_DBYTE0_TXIMPEDANCECTRL0_B_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B1         : aliased DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B_Register;
      --  DDRPHYC TX ODT driver strength control register
      DDRPHYC_DBYTE0_TXODTDRVSTREN_B1         : aliased DDRPHYC_DBYTE0_TXODTDRVSTREN_B_Register;
      --  DDRPHYC T0 slew rate controls register
      DDRPHYC_DBYTE0_TXSLEWRATE_B1            : aliased DDRPHYC_DBYTE0_TXSLEWRATE_B_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE0_RXPBDLYTG0_R1            : aliased DDRPHYC_DBYTE0_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE0_RXPBDLYTG1_R1            : aliased DDRPHYC_DBYTE0_RXPBDLYTG1_R_Register;
      --  DDRPHYC RxEnDlyTgx_u1 register
      DDRPHYC_DBYTE0_RXENDLYTG0_U1            : aliased DDRPHYC_DBYTE0_RXENDLYTG0_U1_Register;
      --  DDRPHYC RxEnDlyTg1_u1 register
      DDRPHYC_DBYTE0_RXENDLYTG1_U1            : aliased DDRPHYC_DBYTE0_RXENDLYTG1_U1_Register;
      --  DDRPHYC RxClkDlyTgx_u1 register
      DDRPHYC_DBYTE0_RXCLKDLYTG0_U1           : aliased DDRPHYC_DBYTE0_RXCLKDLYTG0_U1_Register;
      --  DDRPHYC RxClkDlyTg1_u1 register
      DDRPHYC_DBYTE0_RXCLKDLYTG1_U1           : aliased DDRPHYC_DBYTE0_RXCLKDLYTG1_U1_Register;
      --  DDRPHYC RxClkcDlyTgx_u1 register
      DDRPHYC_DBYTE0_RXCLKCDLYTG0_U1          : aliased DDRPHYC_DBYTE0_RXCLKCDLYTG0_U1_Register;
      --  DDRPHYC RxClkcDlyTg1_u1 register
      DDRPHYC_DBYTE0_RXCLKCDLYTG1_U1          : aliased DDRPHYC_DBYTE0_RXCLKCDLYTG1_U1_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE0_TXDQDLYTG0_R1            : aliased DDRPHYC_DBYTE0_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE0_TXDQDLYTG1_R1            : aliased DDRPHYC_DBYTE0_TXDQDLYTG1_R_Register;
      --  DDRPHYC TxDqsDlyTgx_u1 register
      DDRPHYC_DBYTE0_TXDQSDLYTG0_U1           : aliased DDRPHYC_DBYTE0_TXDQSDLYTG0_U1_Register;
      --  DDRPHYC TxDqsDlyTg1_u1 register
      DDRPHYC_DBYTE0_TXDQSDLYTG1_U1           : aliased DDRPHYC_DBYTE0_TXDQSDLYTG1_U1_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE0_VREFDAC0_R2              : aliased DDRPHYC_DBYTE0_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE0_RXPBDLYTG0_R2            : aliased DDRPHYC_DBYTE0_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE0_RXPBDLYTG1_R2            : aliased DDRPHYC_DBYTE0_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE0_TXDQDLYTG0_R2            : aliased DDRPHYC_DBYTE0_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE0_TXDQDLYTG1_R2            : aliased DDRPHYC_DBYTE0_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE0_VREFDAC0_R3              : aliased DDRPHYC_DBYTE0_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE0_RXPBDLYTG0_R3            : aliased DDRPHYC_DBYTE0_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE0_RXPBDLYTG1_R3            : aliased DDRPHYC_DBYTE0_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE0_TXDQDLYTG0_R3            : aliased DDRPHYC_DBYTE0_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE0_TXDQDLYTG1_R3            : aliased DDRPHYC_DBYTE0_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE0_VREFDAC0_R4              : aliased DDRPHYC_DBYTE0_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE0_RXPBDLYTG0_R4            : aliased DDRPHYC_DBYTE0_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE0_RXPBDLYTG1_R4            : aliased DDRPHYC_DBYTE0_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE0_TXDQDLYTG0_R4            : aliased DDRPHYC_DBYTE0_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE0_TXDQDLYTG1_R4            : aliased DDRPHYC_DBYTE0_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE0_VREFDAC0_R5              : aliased DDRPHYC_DBYTE0_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE0_RXPBDLYTG0_R5            : aliased DDRPHYC_DBYTE0_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE0_RXPBDLYTG1_R5            : aliased DDRPHYC_DBYTE0_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE0_TXDQDLYTG0_R5            : aliased DDRPHYC_DBYTE0_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE0_TXDQDLYTG1_R5            : aliased DDRPHYC_DBYTE0_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE0_VREFDAC0_R6              : aliased DDRPHYC_DBYTE0_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE0_RXPBDLYTG0_R6            : aliased DDRPHYC_DBYTE0_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE0_RXPBDLYTG1_R6            : aliased DDRPHYC_DBYTE0_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE0_TXDQDLYTG0_R6            : aliased DDRPHYC_DBYTE0_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE0_TXDQDLYTG1_R6            : aliased DDRPHYC_DBYTE0_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE0_VREFDAC0_R7              : aliased DDRPHYC_DBYTE0_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE0_RXPBDLYTG0_R7            : aliased DDRPHYC_DBYTE0_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE0_RXPBDLYTG1_R7            : aliased DDRPHYC_DBYTE0_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE0_TXDQDLYTG0_R7            : aliased DDRPHYC_DBYTE0_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE0_TXDQDLYTG1_R7            : aliased DDRPHYC_DBYTE0_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE0_VREFDAC0_R8              : aliased DDRPHYC_DBYTE0_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE0_RXPBDLYTG0_R8            : aliased DDRPHYC_DBYTE0_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE0_RXPBDLYTG1_R8            : aliased DDRPHYC_DBYTE0_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE0_TXDQDLYTG0_R8            : aliased DDRPHYC_DBYTE0_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE0_TXDQDLYTG1_R8            : aliased DDRPHYC_DBYTE0_TXDQDLYTG1_R_Register;
      --  DDRPHYC DBYTE module disable register
      DDRPHYC_DBYTE1_DBYTEMISCMODE            : aliased DDRPHYC_DBYTE1_DBYTEMISCMODE_Register;
      --  DDRPHYC MtestMuxSel register
      DDRPHYC_DBYTE1_MTESTMUXSEL              : aliased DDRPHYC_DBYTE1_MTESTMUXSEL_Register;
      --  DDRPHYC DFIMRL register
      DDRPHYC_DBYTE1_DFIMRL                   : aliased DDRPHYC_DBYTE1_DFIMRL_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE1_VREFDAC0_R0              : aliased DDRPHYC_DBYTE1_VREFDAC0_R_Register;
      --  DDRPHYC data T1 impedance controls register
      DDRPHYC_DBYTE1_TXIMPEDANCECTRL0_B0      : aliased DDRPHYC_DBYTE1_TXIMPEDANCECTRL0_B_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B0         : aliased DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE1_DQDQSRCVCNTRL1           : aliased DDRPHYC_DBYTE1_DQDQSRCVCNTRL1_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE1_DQDQSRCVCNTRL2           : aliased DDRPHYC_DBYTE1_DQDQSRCVCNTRL2_Register;
      --  DDRPHYC TX ODT driver strength control register
      DDRPHYC_DBYTE1_TXODTDRVSTREN_B0         : aliased DDRPHYC_DBYTE1_TXODTDRVSTREN_B_Register;
      --  DDRPHYC status of RX FIFO consistency checks register
      DDRPHYC_DBYTE1_RXFIFOCHECKSTATUS        : aliased DDRPHYC_DBYTE1_RXFIFOCHECKSTATUS_Register;
      --  DDRPHYC captured values associated with an RxFIFO consistency	error
      --  register
      DDRPHYC_DBYTE1_RXFIFOCHECKERRVALUES     : aliased DDRPHYC_DBYTE1_RXFIFOCHECKERRVALUES_Register;
      --  DDRPHYC data receive FIFO pointer values register
      DDRPHYC_DBYTE1_RXFIFOINFO               : aliased DDRPHYC_DBYTE1_RXFIFOINFO_Register;
      --  DDRPHYC R1 FIFO visibility register
      DDRPHYC_DBYTE1_RXFIFOVISIBILITY         : aliased DDRPHYC_DBYTE1_RXFIFOVISIBILITY_Register;
      --  DDRPHYC R1 FIFO content DQ321x register
      DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ3210     : aliased DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ3210_Register;
      --  DDRPHYC R1 FIFO content DQ7654 register
      DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ7654     : aliased DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ7654_Register;
      --  DDRPHYC R1 FIFO content DBI register
      DDRPHYC_DBYTE1_RXFIFOCONTENTSDBI        : aliased DDRPHYC_DBYTE1_RXFIFOCONTENTSDBI_Register;
      --  DDRPHYC T1 slew rate controls register
      DDRPHYC_DBYTE1_TXSLEWRATE_B0            : aliased DDRPHYC_DBYTE1_TXSLEWRATE_B_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE1_RXPBDLYTG0_R0            : aliased DDRPHYC_DBYTE1_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE1_RXPBDLYTG1_R0            : aliased DDRPHYC_DBYTE1_RXPBDLYTG1_R_Register;
      --  DDRPHYC RxEnDlyTgx_u0 register
      DDRPHYC_DBYTE1_RXENDLYTG0_U0            : aliased DDRPHYC_DBYTE1_RXENDLYTG0_U0_Register;
      --  DDRPHYC RxEnDlyTg1_ux register
      DDRPHYC_DBYTE1_RXENDLYTG1_U0            : aliased DDRPHYC_DBYTE1_RXENDLYTG1_U0_Register;
      --  DDRPHYC RxClkDlyTgx_u0 register
      DDRPHYC_DBYTE1_RXCLKDLYTG0_U0           : aliased DDRPHYC_DBYTE1_RXCLKDLYTG0_U0_Register;
      --  DDRPHYC RxClkDlyTg1_ux register
      DDRPHYC_DBYTE1_RXCLKDLYTG1_U0           : aliased DDRPHYC_DBYTE1_RXCLKDLYTG1_U0_Register;
      --  DDRPHYC RxClkcDlyTgx_u0 register
      DDRPHYC_DBYTE1_RXCLKCDLYTG0_U0          : aliased DDRPHYC_DBYTE1_RXCLKCDLYTG0_U0_Register;
      --  DDRPHYC RxClkcDlyTg1_ux register
      DDRPHYC_DBYTE1_RXCLKCDLYTG1_U0          : aliased DDRPHYC_DBYTE1_RXCLKCDLYTG1_U0_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE1_DQ0LNSEL                 : aliased DDRPHYC_DBYTE1_DQ0LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE1_DQ1LNSEL                 : aliased DDRPHYC_DBYTE1_DQ1LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE1_DQ2LNSEL                 : aliased DDRPHYC_DBYTE1_DQ2LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE1_DQ3LNSEL                 : aliased DDRPHYC_DBYTE1_DQ3LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE1_DQ4LNSEL                 : aliased DDRPHYC_DBYTE1_DQ4LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE1_DQ5LNSEL                 : aliased DDRPHYC_DBYTE1_DQ5LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE1_DQ6LNSEL                 : aliased DDRPHYC_DBYTE1_DQ6LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE1_DQ7LNSEL                 : aliased DDRPHYC_DBYTE1_DQ7LNSEL_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE1_TXDQDLYTG0_R0            : aliased DDRPHYC_DBYTE1_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE1_TXDQDLYTG1_R0            : aliased DDRPHYC_DBYTE1_TXDQDLYTG1_R_Register;
      --  DDRPHYC TxDqsDlyTgx_u0 register
      DDRPHYC_DBYTE1_TXDQSDLYTG0_U0           : aliased DDRPHYC_DBYTE1_TXDQSDLYTG0_U0_Register;
      --  DDRPHYC TxDqsDlyTg1_ux register
      DDRPHYC_DBYTE1_TXDQSDLYTG1_U0           : aliased DDRPHYC_DBYTE1_TXDQSDLYTG1_U0_Register;
      --  DDRPHYC debug status of the DBYTE LCDL register
      DDRPHYC_DBYTE1_DXLCDLSTATUS             : aliased DDRPHYC_DBYTE1_DXLCDLSTATUS_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE1_VREFDAC0_R1              : aliased DDRPHYC_DBYTE1_VREFDAC0_R_Register;
      --  DDRPHYC data T1 impedance controls register
      DDRPHYC_DBYTE1_TXIMPEDANCECTRL0_B1      : aliased DDRPHYC_DBYTE1_TXIMPEDANCECTRL0_B_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B1         : aliased DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B_Register;
      --  DDRPHYC TX ODT driver strength control register
      DDRPHYC_DBYTE1_TXODTDRVSTREN_B1         : aliased DDRPHYC_DBYTE1_TXODTDRVSTREN_B_Register;
      --  DDRPHYC T1 slew rate controls register
      DDRPHYC_DBYTE1_TXSLEWRATE_B1            : aliased DDRPHYC_DBYTE1_TXSLEWRATE_B_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE1_RXPBDLYTG0_R1            : aliased DDRPHYC_DBYTE1_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE1_RXPBDLYTG1_R1            : aliased DDRPHYC_DBYTE1_RXPBDLYTG1_R_Register;
      --  DDRPHYC RxEnDlyTgx_u1 register
      DDRPHYC_DBYTE1_RXENDLYTG0_U1            : aliased DDRPHYC_DBYTE1_RXENDLYTG0_U1_Register;
      --  DDRPHYC RxEnDlyTg1_u1 register
      DDRPHYC_DBYTE1_RXENDLYTG1_U1            : aliased DDRPHYC_DBYTE1_RXENDLYTG1_U1_Register;
      --  DDRPHYC RxClkDlyTgx_u1 register
      DDRPHYC_DBYTE1_RXCLKDLYTG0_U1           : aliased DDRPHYC_DBYTE1_RXCLKDLYTG0_U1_Register;
      --  DDRPHYC RxClkDlyTg1_u1 register
      DDRPHYC_DBYTE1_RXCLKDLYTG1_U1           : aliased DDRPHYC_DBYTE1_RXCLKDLYTG1_U1_Register;
      --  DDRPHYC RxClkcDlyTgx_u1 register
      DDRPHYC_DBYTE1_RXCLKCDLYTG0_U1          : aliased DDRPHYC_DBYTE1_RXCLKCDLYTG0_U1_Register;
      --  DDRPHYC RxClkcDlyTg1_u1 register
      DDRPHYC_DBYTE1_RXCLKCDLYTG1_U1          : aliased DDRPHYC_DBYTE1_RXCLKCDLYTG1_U1_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE1_TXDQDLYTG0_R1            : aliased DDRPHYC_DBYTE1_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE1_TXDQDLYTG1_R1            : aliased DDRPHYC_DBYTE1_TXDQDLYTG1_R_Register;
      --  DDRPHYC TxDqsDlyTgx_u1 register
      DDRPHYC_DBYTE1_TXDQSDLYTG0_U1           : aliased DDRPHYC_DBYTE1_TXDQSDLYTG0_U1_Register;
      --  DDRPHYC TxDqsDlyTg1_u1 register
      DDRPHYC_DBYTE1_TXDQSDLYTG1_U1           : aliased DDRPHYC_DBYTE1_TXDQSDLYTG1_U1_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE1_VREFDAC0_R2              : aliased DDRPHYC_DBYTE1_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE1_RXPBDLYTG0_R2            : aliased DDRPHYC_DBYTE1_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE1_RXPBDLYTG1_R2            : aliased DDRPHYC_DBYTE1_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE1_TXDQDLYTG0_R2            : aliased DDRPHYC_DBYTE1_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE1_TXDQDLYTG1_R2            : aliased DDRPHYC_DBYTE1_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE1_VREFDAC0_R3              : aliased DDRPHYC_DBYTE1_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE1_RXPBDLYTG0_R3            : aliased DDRPHYC_DBYTE1_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE1_RXPBDLYTG1_R3            : aliased DDRPHYC_DBYTE1_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE1_TXDQDLYTG0_R3            : aliased DDRPHYC_DBYTE1_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE1_TXDQDLYTG1_R3            : aliased DDRPHYC_DBYTE1_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE1_VREFDAC0_R4              : aliased DDRPHYC_DBYTE1_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE1_RXPBDLYTG0_R4            : aliased DDRPHYC_DBYTE1_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE1_RXPBDLYTG1_R4            : aliased DDRPHYC_DBYTE1_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE1_TXDQDLYTG0_R4            : aliased DDRPHYC_DBYTE1_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE1_TXDQDLYTG1_R4            : aliased DDRPHYC_DBYTE1_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE1_VREFDAC0_R5              : aliased DDRPHYC_DBYTE1_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE1_RXPBDLYTG0_R5            : aliased DDRPHYC_DBYTE1_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE1_RXPBDLYTG1_R5            : aliased DDRPHYC_DBYTE1_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE1_TXDQDLYTG0_R5            : aliased DDRPHYC_DBYTE1_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE1_TXDQDLYTG1_R5            : aliased DDRPHYC_DBYTE1_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE1_VREFDAC0_R6              : aliased DDRPHYC_DBYTE1_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE1_RXPBDLYTG0_R6            : aliased DDRPHYC_DBYTE1_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE1_RXPBDLYTG1_R6            : aliased DDRPHYC_DBYTE1_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE1_TXDQDLYTG0_R6            : aliased DDRPHYC_DBYTE1_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE1_TXDQDLYTG1_R6            : aliased DDRPHYC_DBYTE1_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE1_VREFDAC0_R7              : aliased DDRPHYC_DBYTE1_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE1_RXPBDLYTG0_R7            : aliased DDRPHYC_DBYTE1_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE1_RXPBDLYTG1_R7            : aliased DDRPHYC_DBYTE1_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE1_TXDQDLYTG0_R7            : aliased DDRPHYC_DBYTE1_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE1_TXDQDLYTG1_R7            : aliased DDRPHYC_DBYTE1_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE1_VREFDAC0_R8              : aliased DDRPHYC_DBYTE1_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE1_RXPBDLYTG0_R8            : aliased DDRPHYC_DBYTE1_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE1_RXPBDLYTG1_R8            : aliased DDRPHYC_DBYTE1_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE1_TXDQDLYTG0_R8            : aliased DDRPHYC_DBYTE1_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE1_TXDQDLYTG1_R8            : aliased DDRPHYC_DBYTE1_TXDQDLYTG1_R_Register;
      --  DDRPHYC DBYTE module disable register
      DDRPHYC_DBYTE2_DBYTEMISCMODE            : aliased DDRPHYC_DBYTE2_DBYTEMISCMODE_Register;
      --  DDRPHYC MtestMuxSel register
      DDRPHYC_DBYTE2_MTESTMUXSEL              : aliased DDRPHYC_DBYTE2_MTESTMUXSEL_Register;
      --  DDRPHYC DFIMRL register
      DDRPHYC_DBYTE2_DFIMRL                   : aliased DDRPHYC_DBYTE2_DFIMRL_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE2_VREFDAC0_R0              : aliased DDRPHYC_DBYTE2_VREFDAC0_R_Register;
      --  DDRPHYC data T2 impedance controls register
      DDRPHYC_DBYTE2_TXIMPEDANCECTRL0_B0      : aliased DDRPHYC_DBYTE2_TXIMPEDANCECTRL0_B_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B0         : aliased DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE2_DQDQSRCVCNTRL1           : aliased DDRPHYC_DBYTE2_DQDQSRCVCNTRL1_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE2_DQDQSRCVCNTRL2           : aliased DDRPHYC_DBYTE2_DQDQSRCVCNTRL2_Register;
      --  DDRPHYC TX ODT driver strength control register
      DDRPHYC_DBYTE2_TXODTDRVSTREN_B0         : aliased DDRPHYC_DBYTE2_TXODTDRVSTREN_B_Register;
      --  DDRPHYC status of RX FIFO consistency checks register
      DDRPHYC_DBYTE2_RXFIFOCHECKSTATUS        : aliased DDRPHYC_DBYTE2_RXFIFOCHECKSTATUS_Register;
      --  DDRPHYC captured values associated with an RxFIFO consistency	error
      --  register
      DDRPHYC_DBYTE2_RXFIFOCHECKERRVALUES     : aliased DDRPHYC_DBYTE2_RXFIFOCHECKERRVALUES_Register;
      --  DDRPHYC data receive FIFO pointer values register
      DDRPHYC_DBYTE2_RXFIFOINFO               : aliased DDRPHYC_DBYTE2_RXFIFOINFO_Register;
      --  DDRPHYC R2 FIFO visibility register
      DDRPHYC_DBYTE2_RXFIFOVISIBILITY         : aliased DDRPHYC_DBYTE2_RXFIFOVISIBILITY_Register;
      --  DDRPHYC R2 FIFO content DQ321x register
      DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ3210     : aliased DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ3210_Register;
      --  DDRPHYC R2 FIFO content DQ7654 register
      DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ7654     : aliased DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ7654_Register;
      --  DDRPHYC R2 FIFO content DBI register
      DDRPHYC_DBYTE2_RXFIFOCONTENTSDBI        : aliased DDRPHYC_DBYTE2_RXFIFOCONTENTSDBI_Register;
      --  DDRPHYC T2 slew rate controls register
      DDRPHYC_DBYTE2_TXSLEWRATE_B0            : aliased DDRPHYC_DBYTE2_TXSLEWRATE_B_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE2_RXPBDLYTG0_R0            : aliased DDRPHYC_DBYTE2_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE2_RXPBDLYTG1_R0            : aliased DDRPHYC_DBYTE2_RXPBDLYTG1_R_Register;
      --  DDRPHYC RxEnDlyTgx_u0 register
      DDRPHYC_DBYTE2_RXENDLYTG0_U0            : aliased DDRPHYC_DBYTE2_RXENDLYTG0_U0_Register;
      --  DDRPHYC RxEnDlyTg1_ux register
      DDRPHYC_DBYTE2_RXENDLYTG1_U0            : aliased DDRPHYC_DBYTE2_RXENDLYTG1_U0_Register;
      --  DDRPHYC RxClkDlyTgx_u0 register
      DDRPHYC_DBYTE2_RXCLKDLYTG0_U0           : aliased DDRPHYC_DBYTE2_RXCLKDLYTG0_U0_Register;
      --  DDRPHYC RxClkDlyTg1_ux register
      DDRPHYC_DBYTE2_RXCLKDLYTG1_U0           : aliased DDRPHYC_DBYTE2_RXCLKDLYTG1_U0_Register;
      --  DDRPHYC RxClkcDlyTgx_u0 register
      DDRPHYC_DBYTE2_RXCLKCDLYTG0_U0          : aliased DDRPHYC_DBYTE2_RXCLKCDLYTG0_U0_Register;
      --  DDRPHYC RxClkcDlyTg1_ux register
      DDRPHYC_DBYTE2_RXCLKCDLYTG1_U0          : aliased DDRPHYC_DBYTE2_RXCLKCDLYTG1_U0_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE2_DQ0LNSEL                 : aliased DDRPHYC_DBYTE2_DQ0LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE2_DQ1LNSEL                 : aliased DDRPHYC_DBYTE2_DQ1LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE2_DQ2LNSEL                 : aliased DDRPHYC_DBYTE2_DQ2LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE2_DQ3LNSEL                 : aliased DDRPHYC_DBYTE2_DQ3LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE2_DQ4LNSEL                 : aliased DDRPHYC_DBYTE2_DQ4LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE2_DQ5LNSEL                 : aliased DDRPHYC_DBYTE2_DQ5LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE2_DQ6LNSEL                 : aliased DDRPHYC_DBYTE2_DQ6LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE2_DQ7LNSEL                 : aliased DDRPHYC_DBYTE2_DQ7LNSEL_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE2_TXDQDLYTG0_R0            : aliased DDRPHYC_DBYTE2_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE2_TXDQDLYTG1_R0            : aliased DDRPHYC_DBYTE2_TXDQDLYTG1_R_Register;
      --  DDRPHYC TxDqsDlyTgx_u0 register
      DDRPHYC_DBYTE2_TXDQSDLYTG0_U0           : aliased DDRPHYC_DBYTE2_TXDQSDLYTG0_U0_Register;
      --  DDRPHYC TxDqsDlyTg1_ux register
      DDRPHYC_DBYTE2_TXDQSDLYTG1_U0           : aliased DDRPHYC_DBYTE2_TXDQSDLYTG1_U0_Register;
      --  DDRPHYC debug status of the DBYTE LCDL register
      DDRPHYC_DBYTE2_DXLCDLSTATUS             : aliased DDRPHYC_DBYTE2_DXLCDLSTATUS_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE2_VREFDAC0_R1              : aliased DDRPHYC_DBYTE2_VREFDAC0_R_Register;
      --  DDRPHYC data T2 impedance controls register
      DDRPHYC_DBYTE2_TXIMPEDANCECTRL0_B1      : aliased DDRPHYC_DBYTE2_TXIMPEDANCECTRL0_B_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B1         : aliased DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B_Register;
      --  DDRPHYC TX ODT driver strength control register
      DDRPHYC_DBYTE2_TXODTDRVSTREN_B1         : aliased DDRPHYC_DBYTE2_TXODTDRVSTREN_B_Register;
      --  DDRPHYC T2 slew rate controls register
      DDRPHYC_DBYTE2_TXSLEWRATE_B1            : aliased DDRPHYC_DBYTE2_TXSLEWRATE_B_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE2_RXPBDLYTG0_R1            : aliased DDRPHYC_DBYTE2_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE2_RXPBDLYTG1_R1            : aliased DDRPHYC_DBYTE2_RXPBDLYTG1_R_Register;
      --  DDRPHYC RxEnDlyTgx_u1 register
      DDRPHYC_DBYTE2_RXENDLYTG0_U1            : aliased DDRPHYC_DBYTE2_RXENDLYTG0_U1_Register;
      --  DDRPHYC RxEnDlyTg1_u1 register
      DDRPHYC_DBYTE2_RXENDLYTG1_U1            : aliased DDRPHYC_DBYTE2_RXENDLYTG1_U1_Register;
      --  DDRPHYC RxClkDlyTgx_u1 register
      DDRPHYC_DBYTE2_RXCLKDLYTG0_U1           : aliased DDRPHYC_DBYTE2_RXCLKDLYTG0_U1_Register;
      --  DDRPHYC RxClkDlyTg1_u1 register
      DDRPHYC_DBYTE2_RXCLKDLYTG1_U1           : aliased DDRPHYC_DBYTE2_RXCLKDLYTG1_U1_Register;
      --  DDRPHYC RxClkcDlyTgx_u1 register
      DDRPHYC_DBYTE2_RXCLKCDLYTG0_U1          : aliased DDRPHYC_DBYTE2_RXCLKCDLYTG0_U1_Register;
      --  DDRPHYC RxClkcDlyTg1_u1 register
      DDRPHYC_DBYTE2_RXCLKCDLYTG1_U1          : aliased DDRPHYC_DBYTE2_RXCLKCDLYTG1_U1_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE2_TXDQDLYTG0_R1            : aliased DDRPHYC_DBYTE2_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE2_TXDQDLYTG1_R1            : aliased DDRPHYC_DBYTE2_TXDQDLYTG1_R_Register;
      --  DDRPHYC TxDqsDlyTgx_u1 register
      DDRPHYC_DBYTE2_TXDQSDLYTG0_U1           : aliased DDRPHYC_DBYTE2_TXDQSDLYTG0_U1_Register;
      --  DDRPHYC TxDqsDlyTg1_u1 register
      DDRPHYC_DBYTE2_TXDQSDLYTG1_U1           : aliased DDRPHYC_DBYTE2_TXDQSDLYTG1_U1_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE2_VREFDAC0_R2              : aliased DDRPHYC_DBYTE2_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE2_RXPBDLYTG0_R2            : aliased DDRPHYC_DBYTE2_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE2_RXPBDLYTG1_R2            : aliased DDRPHYC_DBYTE2_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE2_TXDQDLYTG0_R2            : aliased DDRPHYC_DBYTE2_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE2_TXDQDLYTG1_R2            : aliased DDRPHYC_DBYTE2_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE2_VREFDAC0_R3              : aliased DDRPHYC_DBYTE2_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE2_RXPBDLYTG0_R3            : aliased DDRPHYC_DBYTE2_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE2_RXPBDLYTG1_R3            : aliased DDRPHYC_DBYTE2_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE2_TXDQDLYTG0_R3            : aliased DDRPHYC_DBYTE2_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE2_TXDQDLYTG1_R3            : aliased DDRPHYC_DBYTE2_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE2_VREFDAC0_R4              : aliased DDRPHYC_DBYTE2_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE2_RXPBDLYTG0_R4            : aliased DDRPHYC_DBYTE2_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE2_RXPBDLYTG1_R4            : aliased DDRPHYC_DBYTE2_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE2_TXDQDLYTG0_R4            : aliased DDRPHYC_DBYTE2_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE2_TXDQDLYTG1_R4            : aliased DDRPHYC_DBYTE2_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE2_VREFDAC0_R5              : aliased DDRPHYC_DBYTE2_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE2_RXPBDLYTG0_R5            : aliased DDRPHYC_DBYTE2_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE2_RXPBDLYTG1_R5            : aliased DDRPHYC_DBYTE2_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE2_TXDQDLYTG0_R5            : aliased DDRPHYC_DBYTE2_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE2_TXDQDLYTG1_R5            : aliased DDRPHYC_DBYTE2_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE2_VREFDAC0_R6              : aliased DDRPHYC_DBYTE2_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE2_RXPBDLYTG0_R6            : aliased DDRPHYC_DBYTE2_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE2_RXPBDLYTG1_R6            : aliased DDRPHYC_DBYTE2_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE2_TXDQDLYTG0_R6            : aliased DDRPHYC_DBYTE2_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE2_TXDQDLYTG1_R6            : aliased DDRPHYC_DBYTE2_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE2_VREFDAC0_R7              : aliased DDRPHYC_DBYTE2_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE2_RXPBDLYTG0_R7            : aliased DDRPHYC_DBYTE2_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE2_RXPBDLYTG1_R7            : aliased DDRPHYC_DBYTE2_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE2_TXDQDLYTG0_R7            : aliased DDRPHYC_DBYTE2_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE2_TXDQDLYTG1_R7            : aliased DDRPHYC_DBYTE2_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE2_VREFDAC0_R8              : aliased DDRPHYC_DBYTE2_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE2_RXPBDLYTG0_R8            : aliased DDRPHYC_DBYTE2_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE2_RXPBDLYTG1_R8            : aliased DDRPHYC_DBYTE2_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE2_TXDQDLYTG0_R8            : aliased DDRPHYC_DBYTE2_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE2_TXDQDLYTG1_R8            : aliased DDRPHYC_DBYTE2_TXDQDLYTG1_R_Register;
      --  DDRPHYC DBYTE module disable register
      DDRPHYC_DBYTE3_DBYTEMISCMODE            : aliased DDRPHYC_DBYTE3_DBYTEMISCMODE_Register;
      --  DDRPHYC MtestMuxSel register
      DDRPHYC_DBYTE3_MTESTMUXSEL              : aliased DDRPHYC_DBYTE3_MTESTMUXSEL_Register;
      --  DDRPHYC DFIMRL register
      DDRPHYC_DBYTE3_DFIMRL                   : aliased DDRPHYC_DBYTE3_DFIMRL_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE3_VREFDAC0_R0              : aliased DDRPHYC_DBYTE3_VREFDAC0_R_Register;
      --  DDRPHYC data T3 impedance controls register
      DDRPHYC_DBYTE3_TXIMPEDANCECTRL0_B0      : aliased DDRPHYC_DBYTE3_TXIMPEDANCECTRL0_B_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B0         : aliased DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE3_DQDQSRCVCNTRL1           : aliased DDRPHYC_DBYTE3_DQDQSRCVCNTRL1_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE3_DQDQSRCVCNTRL2           : aliased DDRPHYC_DBYTE3_DQDQSRCVCNTRL2_Register;
      --  DDRPHYC TX ODT driver strength control register
      DDRPHYC_DBYTE3_TXODTDRVSTREN_B0         : aliased DDRPHYC_DBYTE3_TXODTDRVSTREN_B_Register;
      --  DDRPHYC status of RX FIFO consistency checks register
      DDRPHYC_DBYTE3_RXFIFOCHECKSTATUS        : aliased DDRPHYC_DBYTE3_RXFIFOCHECKSTATUS_Register;
      --  DDRPHYC captured values associated with an RxFIFO consistency	error
      --  register
      DDRPHYC_DBYTE3_RXFIFOCHECKERRVALUES     : aliased DDRPHYC_DBYTE3_RXFIFOCHECKERRVALUES_Register;
      --  DDRPHYC data receive FIFO pointer values register
      DDRPHYC_DBYTE3_RXFIFOINFO               : aliased DDRPHYC_DBYTE3_RXFIFOINFO_Register;
      --  DDRPHYC R3 FIFO visibility register
      DDRPHYC_DBYTE3_RXFIFOVISIBILITY         : aliased DDRPHYC_DBYTE3_RXFIFOVISIBILITY_Register;
      --  DDRPHYC R3 FIFO content DQ321x register
      DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ3210     : aliased DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ3210_Register;
      --  DDRPHYC R3 FIFO content DQ7654 register
      DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ7654     : aliased DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ7654_Register;
      --  DDRPHYC R3 FIFO content DBI register
      DDRPHYC_DBYTE3_RXFIFOCONTENTSDBI        : aliased DDRPHYC_DBYTE3_RXFIFOCONTENTSDBI_Register;
      --  DDRPHYC T3 slew rate controls register
      DDRPHYC_DBYTE3_TXSLEWRATE_B0            : aliased DDRPHYC_DBYTE3_TXSLEWRATE_B_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE3_RXPBDLYTG0_R0            : aliased DDRPHYC_DBYTE3_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE3_RXPBDLYTG1_R0            : aliased DDRPHYC_DBYTE3_RXPBDLYTG1_R_Register;
      --  DDRPHYC RxEnDlyTgx_u0 register
      DDRPHYC_DBYTE3_RXENDLYTG0_U0            : aliased DDRPHYC_DBYTE3_RXENDLYTG0_U0_Register;
      --  DDRPHYC RxEnDlyTg1_ux register
      DDRPHYC_DBYTE3_RXENDLYTG1_U0            : aliased DDRPHYC_DBYTE3_RXENDLYTG1_U0_Register;
      --  DDRPHYC RxClkDlyTgx_u0 register
      DDRPHYC_DBYTE3_RXCLKDLYTG0_U0           : aliased DDRPHYC_DBYTE3_RXCLKDLYTG0_U0_Register;
      --  DDRPHYC RxClkDlyTg1_ux register
      DDRPHYC_DBYTE3_RXCLKDLYTG1_U0           : aliased DDRPHYC_DBYTE3_RXCLKDLYTG1_U0_Register;
      --  DDRPHYC RxClkcDlyTgx_u0 register
      DDRPHYC_DBYTE3_RXCLKCDLYTG0_U0          : aliased DDRPHYC_DBYTE3_RXCLKCDLYTG0_U0_Register;
      --  DDRPHYC RxClkcDlyTg1_ux register
      DDRPHYC_DBYTE3_RXCLKCDLYTG1_U0          : aliased DDRPHYC_DBYTE3_RXCLKCDLYTG1_U0_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE3_DQ0LNSEL                 : aliased DDRPHYC_DBYTE3_DQ0LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE3_DQ1LNSEL                 : aliased DDRPHYC_DBYTE3_DQ1LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE3_DQ2LNSEL                 : aliased DDRPHYC_DBYTE3_DQ2LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE3_DQ3LNSEL                 : aliased DDRPHYC_DBYTE3_DQ3LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE3_DQ4LNSEL                 : aliased DDRPHYC_DBYTE3_DQ4LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE3_DQ5LNSEL                 : aliased DDRPHYC_DBYTE3_DQ5LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE3_DQ6LNSEL                 : aliased DDRPHYC_DBYTE3_DQ6LNSEL_Register;
      --  DDRPHYC DqLnSel register
      DDRPHYC_DBYTE3_DQ7LNSEL                 : aliased DDRPHYC_DBYTE3_DQ7LNSEL_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE3_TXDQDLYTG0_R0            : aliased DDRPHYC_DBYTE3_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE3_TXDQDLYTG1_R0            : aliased DDRPHYC_DBYTE3_TXDQDLYTG1_R_Register;
      --  DDRPHYC TxDqsDlyTgx_u0 register
      DDRPHYC_DBYTE3_TXDQSDLYTG0_U0           : aliased DDRPHYC_DBYTE3_TXDQSDLYTG0_U0_Register;
      --  DDRPHYC TxDqsDlyTg1_ux register
      DDRPHYC_DBYTE3_TXDQSDLYTG1_U0           : aliased DDRPHYC_DBYTE3_TXDQSDLYTG1_U0_Register;
      --  DDRPHYC debug status of the DBYTE LCDL register
      DDRPHYC_DBYTE3_DXLCDLSTATUS             : aliased DDRPHYC_DBYTE3_DXLCDLSTATUS_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE3_VREFDAC0_R1              : aliased DDRPHYC_DBYTE3_VREFDAC0_R_Register;
      --  DDRPHYC data T3 impedance controls register
      DDRPHYC_DBYTE3_TXIMPEDANCECTRL0_B1      : aliased DDRPHYC_DBYTE3_TXIMPEDANCECTRL0_B_Register;
      --  DDRPHYC DQ/DQS receiver control register
      DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B1         : aliased DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B_Register;
      --  DDRPHYC TX ODT driver strength control register
      DDRPHYC_DBYTE3_TXODTDRVSTREN_B1         : aliased DDRPHYC_DBYTE3_TXODTDRVSTREN_B_Register;
      --  DDRPHYC T3 slew rate controls register
      DDRPHYC_DBYTE3_TXSLEWRATE_B1            : aliased DDRPHYC_DBYTE3_TXSLEWRATE_B_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE3_RXPBDLYTG0_R1            : aliased DDRPHYC_DBYTE3_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE3_RXPBDLYTG1_R1            : aliased DDRPHYC_DBYTE3_RXPBDLYTG1_R_Register;
      --  DDRPHYC RxEnDlyTgx_u1 register
      DDRPHYC_DBYTE3_RXENDLYTG0_U1            : aliased DDRPHYC_DBYTE3_RXENDLYTG0_U1_Register;
      --  DDRPHYC RxEnDlyTg1_u1 register
      DDRPHYC_DBYTE3_RXENDLYTG1_U1            : aliased DDRPHYC_DBYTE3_RXENDLYTG1_U1_Register;
      --  DDRPHYC RxClkDlyTgx_u1 register
      DDRPHYC_DBYTE3_RXCLKDLYTG0_U1           : aliased DDRPHYC_DBYTE3_RXCLKDLYTG0_U1_Register;
      --  DDRPHYC RxClkDlyTg1_u1 register
      DDRPHYC_DBYTE3_RXCLKDLYTG1_U1           : aliased DDRPHYC_DBYTE3_RXCLKDLYTG1_U1_Register;
      --  DDRPHYC RxClkcDlyTgx_u1 register
      DDRPHYC_DBYTE3_RXCLKCDLYTG0_U1          : aliased DDRPHYC_DBYTE3_RXCLKCDLYTG0_U1_Register;
      --  DDRPHYC RxClkcDlyTg1_u1 register
      DDRPHYC_DBYTE3_RXCLKCDLYTG1_U1          : aliased DDRPHYC_DBYTE3_RXCLKCDLYTG1_U1_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE3_TXDQDLYTG0_R1            : aliased DDRPHYC_DBYTE3_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE3_TXDQDLYTG1_R1            : aliased DDRPHYC_DBYTE3_TXDQDLYTG1_R_Register;
      --  DDRPHYC TxDqsDlyTgx_u1 register
      DDRPHYC_DBYTE3_TXDQSDLYTG0_U1           : aliased DDRPHYC_DBYTE3_TXDQSDLYTG0_U1_Register;
      --  DDRPHYC TxDqsDlyTg1_u1 register
      DDRPHYC_DBYTE3_TXDQSDLYTG1_U1           : aliased DDRPHYC_DBYTE3_TXDQSDLYTG1_U1_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE3_VREFDAC0_R2              : aliased DDRPHYC_DBYTE3_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE3_RXPBDLYTG0_R2            : aliased DDRPHYC_DBYTE3_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE3_RXPBDLYTG1_R2            : aliased DDRPHYC_DBYTE3_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE3_TXDQDLYTG0_R2            : aliased DDRPHYC_DBYTE3_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE3_TXDQDLYTG1_R2            : aliased DDRPHYC_DBYTE3_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE3_VREFDAC0_R3              : aliased DDRPHYC_DBYTE3_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE3_RXPBDLYTG0_R3            : aliased DDRPHYC_DBYTE3_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE3_RXPBDLYTG1_R3            : aliased DDRPHYC_DBYTE3_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE3_TXDQDLYTG0_R3            : aliased DDRPHYC_DBYTE3_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE3_TXDQDLYTG1_R3            : aliased DDRPHYC_DBYTE3_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE3_VREFDAC0_R4              : aliased DDRPHYC_DBYTE3_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE3_RXPBDLYTG0_R4            : aliased DDRPHYC_DBYTE3_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE3_RXPBDLYTG1_R4            : aliased DDRPHYC_DBYTE3_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE3_TXDQDLYTG0_R4            : aliased DDRPHYC_DBYTE3_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE3_TXDQDLYTG1_R4            : aliased DDRPHYC_DBYTE3_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE3_VREFDAC0_R5              : aliased DDRPHYC_DBYTE3_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE3_RXPBDLYTG0_R5            : aliased DDRPHYC_DBYTE3_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE3_RXPBDLYTG1_R5            : aliased DDRPHYC_DBYTE3_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE3_TXDQDLYTG0_R5            : aliased DDRPHYC_DBYTE3_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE3_TXDQDLYTG1_R5            : aliased DDRPHYC_DBYTE3_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE3_VREFDAC0_R6              : aliased DDRPHYC_DBYTE3_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE3_RXPBDLYTG0_R6            : aliased DDRPHYC_DBYTE3_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE3_RXPBDLYTG1_R6            : aliased DDRPHYC_DBYTE3_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE3_TXDQDLYTG0_R6            : aliased DDRPHYC_DBYTE3_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE3_TXDQDLYTG1_R6            : aliased DDRPHYC_DBYTE3_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE3_VREFDAC0_R7              : aliased DDRPHYC_DBYTE3_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE3_RXPBDLYTG0_R7            : aliased DDRPHYC_DBYTE3_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE3_RXPBDLYTG1_R7            : aliased DDRPHYC_DBYTE3_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE3_TXDQDLYTG0_R7            : aliased DDRPHYC_DBYTE3_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE3_TXDQDLYTG1_R7            : aliased DDRPHYC_DBYTE3_TXDQDLYTG1_R_Register;
      --  DDRPHYC VrefDAC0_ry register
      DDRPHYC_DBYTE3_VREFDAC0_R8              : aliased DDRPHYC_DBYTE3_VREFDAC0_R_Register;
      --  DDRPHYC RxPBDlyTgx_r0 register
      DDRPHYC_DBYTE3_RXPBDLYTG0_R8            : aliased DDRPHYC_DBYTE3_RXPBDLYTG0_R_Register;
      --  DDRPHYC RxPBDlyTg1_rx register
      DDRPHYC_DBYTE3_RXPBDLYTG1_R8            : aliased DDRPHYC_DBYTE3_RXPBDLYTG1_R_Register;
      --  DDRPHYC TxDqDlyTgx_r0 register
      DDRPHYC_DBYTE3_TXDQDLYTG0_R8            : aliased DDRPHYC_DBYTE3_TXDQDLYTG0_R_Register;
      --  DDRPHYC TxDqDlyTg1_rx register
      DDRPHYC_DBYTE3_TXDQDLYTG1_R8            : aliased DDRPHYC_DBYTE3_TXDQDLYTG1_R_Register;
      --  DDRPHYC Rx FIFO pointer initialization control register
      DDRPHYC_MASTER0_RXFIFOINIT              : aliased DDRPHYC_MASTER0_RXFIFOINIT_Register;
      --  DDRPHYC ForceClkDisable register
      DDRPHYC_MASTER0_FORCECLKDISABLE         : aliased DDRPHYC_MASTER0_FORCECLKDISABLE_Register;
      --  DDRPHYC ForceInternalUpdate register
      DDRPHYC_MASTER0_FORCEINTERNALUPDATE     : aliased DDRPHYC_MASTER0_FORCEINTERNALUPDATE_Register;
      --  DDRPHYC read-only displays PHY configuration register
      DDRPHYC_MASTER0_PHYCONFIG               : aliased DDRPHYC_MASTER0_PHYCONFIG_Register;
      --  DDRPHYC PHY general configuration register
      DDRPHYC_MASTER0_PGCR                    : aliased DDRPHYC_MASTER0_PGCR_Register;
      --  DDRPHYC test bump control1 register
      DDRPHYC_MASTER0_TESTBUMPCNTRL1          : aliased DDRPHYC_MASTER0_TESTBUMPCNTRL1_Register;
      --  DDRPHYC impedance calibration clock ratio register
      DDRPHYC_MASTER0_CALUCLKINFO             : aliased DDRPHYC_MASTER0_CALUCLKINFO_Register;
      --  DDRPHYC test bump control register
      DDRPHYC_MASTER0_TESTBUMPCNTRL           : aliased DDRPHYC_MASTER0_TESTBUMPCNTRL_Register;
      --  DDRPHYC Seq0BDLY0 register
      DDRPHYC_MASTER0_SEQ0BDLY0               : aliased DDRPHYC_MASTER0_SEQ0BDLY0_Register;
      --  DDRPHYC Seq0BDLY1 register
      DDRPHYC_MASTER0_SEQ0BDLY1               : aliased DDRPHYC_MASTER0_SEQ0BDLY1_Register;
      --  DDRPHYC Seq0BDLY2 register
      DDRPHYC_MASTER0_SEQ0BDLY2               : aliased DDRPHYC_MASTER0_SEQ0BDLY2_Register;
      --  DDRPHYC Seq0BDLY3 register
      DDRPHYC_MASTER0_SEQ0BDLY3               : aliased DDRPHYC_MASTER0_SEQ0BDLY3_Register;
      --  DDRPHYC PHY alert status bit register
      DDRPHYC_MASTER0_PHYALERTSTATUS          : aliased DDRPHYC_MASTER0_PHYALERTSTATUS_Register;
      --  DDRPHYC setup intervals for DFI PHY master operation register
      DDRPHYC_MASTER0_PPTTRAINSETUP           : aliased DDRPHYC_MASTER0_PPTTRAINSETUP_Register;
      --  DDRPHYC ATestMode control register
      DDRPHYC_MASTER0_ATESTMODE               : aliased DDRPHYC_MASTER0_ATESTMODE_Register;
      --  DDRPHYC TxCalBinP register
      DDRPHYC_MASTER0_TXCALBINP               : aliased DDRPHYC_MASTER0_TXCALBINP_Register;
      --  DDRPHYC TxCalBinN register
      DDRPHYC_MASTER0_TXCALBINN               : aliased DDRPHYC_MASTER0_TXCALBINN_Register;
      --  DDRPHYC TX P impedance calibration override register
      DDRPHYC_MASTER0_TXCALPOVR               : aliased DDRPHYC_MASTER0_TXCALPOVR_Register;
      --  DDRPHYC TX N impedance calibration override register
      DDRPHYC_MASTER0_TXCALNOVR               : aliased DDRPHYC_MASTER0_TXCALNOVR_Register;
      --  DDRPHYC enables for update and low-power interfaces for DFI0 and	DFI1
      --  register
      DDRPHYC_MASTER0_DFIMODE                 : aliased DDRPHYC_MASTER0_DFIMODE_Register;
      --  DDRPHYC mode select register for MEMCLK/address/command	tristate
      --  register
      DDRPHYC_MASTER0_TRISTATEMODECA          : aliased DDRPHYC_MASTER0_TRISTATEMODECA_Register;
      --  DDRPHYC MtestMuxSel register
      DDRPHYC_MASTER0_MTESTMUXSEL             : aliased DDRPHYC_MASTER0_MTESTMUXSEL_Register;
      --  DDRPHYC MtestPgmInfo register
      DDRPHYC_MASTER0_MTESTPGMINFO            : aliased DDRPHYC_MASTER0_MTESTPGMINFO_Register;
      --  DDRPHYC dynamic power up/down control register
      DDRPHYC_MASTER0_DYNPWRDNUP              : aliased DDRPHYC_MASTER0_DYNPWRDNUP_Register;
      --  DDRPHYC PMIEnable register
      DDRPHYC_MASTER0_PMIENABLE               : aliased DDRPHYC_MASTER0_PMIENABLE_Register;
      --  DDRPHYC PhyTID register
      DDRPHYC_MASTER0_PHYTID                  : aliased DDRPHYC_MASTER0_PHYTID_Register;
      --  DDRPHYC HwtMRL register
      DDRPHYC_MASTER0_HWTMRL                  : aliased DDRPHYC_MASTER0_HWTMRL_Register;
      --  DDRPHYC DFI PhyUpdate request time counter register
      DDRPHYC_MASTER0_DFIPHYUPD               : aliased DDRPHYC_MASTER0_DFIPHYUPD_Register;
      --  DDRPHYC PdaMrsWriteMode register
      DDRPHYC_MASTER0_PDAMRSWRITEMODE         : aliased DDRPHYC_MASTER0_PDAMRSWRITEMODE_Register;
      --  DDRPHYC DFIGEARDOWNCTL register
      DDRPHYC_MASTER0_DFIGEARDOWNCTL          : aliased DDRPHYC_MASTER0_DFIGEARDOWNCTL_Register;
      --  DDRPHYC control the PHY logic related to the read and write
      --  DQS	preamble register
      DDRPHYC_MASTER0_DQSPREAMBLECONTROL      : aliased DDRPHYC_MASTER0_DQSPREAMBLECONTROL_Register;
      --  DDRPHYC MasterX4Config register
      DDRPHYC_MASTER0_MASTERX4CONFIG          : aliased DDRPHYC_MASTER0_MASTERX4CONFIG_Register;
      --  DDRPHYC write level feedback DQ observability selection register
      DDRPHYC_MASTER0_WRLEVBITS               : aliased DDRPHYC_MASTER0_WRLEVBITS_Register;
      --  DDRPHYC EnableCsMulticast register
      DDRPHYC_MASTER0_ENABLECSMULTICAST       : aliased DDRPHYC_MASTER0_ENABLECSMULTICAST_Register;
      --  DDRPHYC Acx4AnibDis register
      DDRPHYC_MASTER0_ACX4ANIBDIS             : aliased DDRPHYC_MASTER0_ACX4ANIBDIS_Register;
      --  DDRPHYC enable Read-DBI function in each DBYTE register
      DDRPHYC_MASTER0_DMIPINPRESENT           : aliased DDRPHYC_MASTER0_DMIPINPRESENT_Register;
      --  DDRPHYC ARdPtrInitVal register
      DDRPHYC_MASTER0_ARDPTRINITVAL           : aliased DDRPHYC_MASTER0_ARDPTRINITVAL_Register;
      --  DDRPHYC DLL mode control for DBYTEs register
      DDRPHYC_MASTER0_DBYTEDLLMODECNTRL       : aliased DDRPHYC_MASTER0_DBYTEDLLMODECNTRL_Register;
      --  IDDRPHYC impedance calibration offsets control register
      DDRPHYC_MASTER0_CALOFFSETS              : aliased DDRPHYC_MASTER0_CALOFFSETS_Register;
      --  DDRPHYC SarInitVals register
      DDRPHYC_MASTER0_SARINITVALS             : aliased DDRPHYC_MASTER0_SARINITVALS_Register;
      --  DDRPHYC CalPExtOvr register
      DDRPHYC_MASTER0_CALPEXTOVR              : aliased DDRPHYC_MASTER0_CALPEXTOVR_Register;
      --  DDRPHYC CalCmpr5Ovr register
      DDRPHYC_MASTER0_CALCMPR5OVR             : aliased DDRPHYC_MASTER0_CALCMPR5OVR_Register;
      --  DDRPHYC CalNIntOvr register
      DDRPHYC_MASTER0_CALNINTOVR              : aliased DDRPHYC_MASTER0_CALNINTOVR_Register;
      --  DDRPHYC impedance calibration driver strength control register
      DDRPHYC_MASTER0_CALDRVSTR0              : aliased DDRPHYC_MASTER0_CALDRVSTR0_Register;
      --  DDRPHYC read data on-die termination timing control register
      DDRPHYC_MASTER0_PROCODTTIMECTL          : aliased DDRPHYC_MASTER0_PROCODTTIMECTL_Register;
      --  DDRPHYC MemAlert receiver configuration register
      DDRPHYC_MASTER0_MEMALERTCONTROL         : aliased DDRPHYC_MASTER0_MEMALERTCONTROL_Register;
      --  DDRPHYC MemAlert receiver configuration register 2
      DDRPHYC_MASTER0_MEMALERTCONTROL2        : aliased DDRPHYC_MASTER0_MEMALERTCONTROL2_Register;
      --  DDRPHYC protection and control of BP_MemReset_L register
      DDRPHYC_MASTER0_MEMRESETL               : aliased DDRPHYC_MASTER0_MEMRESETL_Register;
      --  DDRPHYC PUBMODE - HWT Mux select register
      DDRPHYC_MASTER0_PUBMODE                 : aliased DDRPHYC_MASTER0_PUBMODE_Register;
      --  DDRPHYC misc PHY status bits register
      DDRPHYC_MASTER0_MISCPHYSTATUS           : aliased DDRPHYC_MASTER0_MISCPHYSTATUS_Register;
      --  DDRPHYC CoreLoopbackSel register
      DDRPHYC_MASTER0_CORELOOPBACKSEL         : aliased DDRPHYC_MASTER0_CORELOOPBACKSEL_Register;
      --  DDRPHYC DLL various training parameters register
      DDRPHYC_MASTER0_DLLTRAINPARAM           : aliased DDRPHYC_MASTER0_DLLTRAINPARAM_Register;
      --  DDRPHYC HwtLpCsEnBypass register
      DDRPHYC_MASTER0_HWTLPCSENBYPASS         : aliased DDRPHYC_MASTER0_HWTLPCSENBYPASS_Register;
      --  DDRPHYC DFI command/address mode register
      DDRPHYC_MASTER0_DFICAMODE               : aliased DDRPHYC_MASTER0_DFICAMODE_Register;
      --  DDRPHYC DLL lock state machine control register
      DDRPHYC_MASTER0_DLLCONTROL              : aliased DDRPHYC_MASTER0_DLLCONTROL_Register;
      --  DDRPHYC DLL update phase control register
      DDRPHYC_MASTER0_PULSEDLLUPDATEPHASE     : aliased DDRPHYC_MASTER0_PULSEDLLUPDATEPHASE_Register;
      --  DDRPHYC DLL gain control register
      DDRPHYC_MASTER0_DLLGAINCTL              : aliased DDRPHYC_MASTER0_DLLGAINCTL_Register;
      --  DDRPHYC impedance calibration control register
      DDRPHYC_MASTER0_CALRATE                 : aliased DDRPHYC_MASTER0_CALRATE_Register;
      --  DDRPHYC CalZap register
      DDRPHYC_MASTER0_CALZAP                  : aliased DDRPHYC_MASTER0_CALZAP_Register;
      --  DDRPHYC PState register
      DDRPHYC_MASTER0_PSTATE                  : aliased DDRPHYC_MASTER0_PSTATE_Register;
      --  DDRPHYC PLL output control register
      DDRPHYC_MASTER0_PLLOUTGATECONTROL       : aliased DDRPHYC_MASTER0_PLLOUTGATECONTROL_Register;
      --  DDRPHYC PMU power-on reset control register
      DDRPHYC_MASTER0_PORCONTROL              : aliased DDRPHYC_MASTER0_PORCONTROL_Register;
      --  DDRPHYC CalBusy register
      DDRPHYC_MASTER0_CALBUSY                 : aliased DDRPHYC_MASTER0_CALBUSY_Register;
      --  DDRPHYC misc impedance calibration control register
      DDRPHYC_MASTER0_CALMISC2                : aliased DDRPHYC_MASTER0_CALMISC2_Register;
      --  DDRPHYC controls for disabling the impedance calibration of 	certain
      --  target register
      DDRPHYC_MASTER0_CALMISC                 : aliased DDRPHYC_MASTER0_CALMISC_Register;
      --  DDRPHYC CalVRef register
      DDRPHYC_MASTER0_CALVREFS                : aliased DDRPHYC_MASTER0_CALVREFS_Register;
      --  DDRPHYC CalCmpr5 register
      DDRPHYC_MASTER0_CALCMPR5                : aliased DDRPHYC_MASTER0_CALCMPR5_Register;
      --  DDRPHYC impedance calibration NInt control register
      DDRPHYC_MASTER0_CALNINT                 : aliased DDRPHYC_MASTER0_CALNINT_Register;
      --  DDRPHYC impedance calibration PExt control register
      DDRPHYC_MASTER0_CALPEXT                 : aliased DDRPHYC_MASTER0_CALPEXT_Register;
      --  DDRPHYC impedance calibration Cmp invert control register
      DDRPHYC_MASTER0_CALCMPINVERT            : aliased DDRPHYC_MASTER0_CALCMPINVERT_Register;
      --  DDRPHYC impedance calibration Cmpana control register
      DDRPHYC_MASTER0_CALCMPANACNTRL          : aliased DDRPHYC_MASTER0_CALCMPANACNTRL_Register;
      --  DDRPHYC maps dfi_rddata_cs_n to destination dimm timing 	group
      --  register
      DDRPHYC_MASTER0_DFIRDDATACSDESTMAP      : aliased DDRPHYC_MASTER0_DFIRDDATACSDESTMAP_Register;
      --  PHY global VREF controls register
      DDRPHYC_MASTER0_VREFINGLOBAL            : aliased DDRPHYC_MASTER0_VREFINGLOBAL_Register;
      --  DDRPHYC maps dfi_rddata_cs_n to destination dimm timing 	group
      --  register
      DDRPHYC_MASTER0_DFIWRDATACSDESTMAP      : aliased DDRPHYC_MASTER0_DFIWRDATACSDESTMAP_Register;
      --  DDRPHYC MasUpdGoodCtr register
      DDRPHYC_MASTER0_MASUPDGOODCTR           : aliased DDRPHYC_MASTER0_MASUPDGOODCTR_Register;
      --  DDRPHYC PhyUpd0GoodCtr register
      DDRPHYC_MASTER0_PHYUPD0GOODCTR          : aliased DDRPHYC_MASTER0_PHYUPD0GOODCTR_Register;
      --  DDRPHYC PhyUpd1GoodCtr register
      DDRPHYC_MASTER0_PHYUPD1GOODCTR          : aliased DDRPHYC_MASTER0_PHYUPD1GOODCTR_Register;
      --  DDRPHYC CtlUpd0GoodCtr register
      DDRPHYC_MASTER0_CTLUPD0GOODCTR          : aliased DDRPHYC_MASTER0_CTLUPD0GOODCTR_Register;
      --  DDRPHYC CtlUpd1GoodCtr register
      DDRPHYC_MASTER0_CTLUPD1GOODCTR          : aliased DDRPHYC_MASTER0_CTLUPD1GOODCTR_Register;
      --  DDRPHYC MasUpdFailCtr register
      DDRPHYC_MASTER0_MASUPDFAILCTR           : aliased DDRPHYC_MASTER0_MASUPDFAILCTR_Register;
      --  DDRPHYC PhyUpd0FailCtr register
      DDRPHYC_MASTER0_PHYUPD0FAILCTR          : aliased DDRPHYC_MASTER0_PHYUPD0FAILCTR_Register;
      --  DDRPHYC PhyUpd1FailCtr register
      DDRPHYC_MASTER0_PHYUPD1FAILCTR          : aliased DDRPHYC_MASTER0_PHYUPD1FAILCTR_Register;
      --  DDRPHYC performance counter enable register
      DDRPHYC_MASTER0_PHYPERFCTRENABLE        : aliased DDRPHYC_MASTER0_PHYPERFCTRENABLE_Register;
      --  DDRPHYC PllPwrDn register
      DDRPHYC_MASTER0_PLLPWRDN                : aliased DDRPHYC_MASTER0_PLLPWRDN_Register;
      --  DDRPHYC PState dependent PLL control 2 register
      DDRPHYC_MASTER0_PLLCTRL2                : aliased DDRPHYC_MASTER0_PLLCTRL2_Register;
      --  DDRPHYC PLL control 0 register
      DDRPHYC_MASTER0_PLLCTRL0                : aliased DDRPHYC_MASTER0_PLLCTRL0_Register;
      --  DDRPHYC PState dependent PLL control 1 register
      DDRPHYC_MASTER0_PLLCTRL1                : aliased DDRPHYC_MASTER0_PLLCTRL1_Register;
      --  DDRPHYC PLL testing control register
      DDRPHYC_MASTER0_PLLTST                  : aliased DDRPHYC_MASTER0_PLLTST_Register;
      --  DDRPHYC PllLockStatus register
      DDRPHYC_MASTER0_PLLLOCKSTATUS           : aliased DDRPHYC_MASTER0_PLLLOCKSTATUS_Register;
      --  DDRPHYC PII TestMode register
      DDRPHYC_MASTER0_PLLTESTMODE             : aliased DDRPHYC_MASTER0_PLLTESTMODE_Register;
      --  DDRPHYC PLL control 3 register
      DDRPHYC_MASTER0_PLLCTRL3                : aliased DDRPHYC_MASTER0_PLLCTRL3_Register;
      --  DDRPHYC PState dependent PLL control 4 register
      DDRPHYC_MASTER0_PLLCTRL4                : aliased DDRPHYC_MASTER0_PLLCTRL4_Register;
      --  DDRPHYC PllEndofCal register
      DDRPHYC_MASTER0_PLLENDOFCAL             : aliased DDRPHYC_MASTER0_PLLENDOFCAL_Register;
      --  DDRPHYC PllStandbyEff register
      DDRPHYC_MASTER0_PLLSTANDBYEFF           : aliased DDRPHYC_MASTER0_PLLSTANDBYEFF_Register;
      --  DDRPHYC PllDacValOut register
      DDRPHYC_MASTER0_PLLDACVALOUT            : aliased DDRPHYC_MASTER0_PLLDACVALOUT_Register;
      --  DDRPHYC LcdlDbgCntl register
      DDRPHYC_MASTER0_LCDLDBGCNTL             : aliased DDRPHYC_MASTER0_LCDLDBGCNTL_Register;
      --  DDRPHYC Debug status of the DBYTE LCDL register
      DDRPHYC_MASTER0_ACLCDLSTATUS            : aliased DDRPHYC_MASTER0_ACLCDLSTATUS_Register;
      --  DDRPHYC CUSTPHYREV register
      DDRPHYC_MASTER0_CUSTPHYREV              : aliased DDRPHYC_MASTER0_CUSTPHYREV_Register;
      --  DDRPHYC PHYREV register
      DDRPHYC_MASTER0_PHYREV                  : aliased DDRPHYC_MASTER0_PHYREV_Register;
      --  DDRPHYC Start vector value for LP3-exit or init PIE sequence	register
      DDRPHYC_MASTER0_LP3EXITSEQ0BSTARTVECTOR : aliased DDRPHYC_MASTER0_LP3EXITSEQ0BSTARTVECTOR_Register;
      --  DDRPHYC DFI frequency translation 0 register
      DDRPHYC_MASTER0_DFIFREQXLAT0            : aliased DDRPHYC_MASTER0_DFIFREQXLAT0_Register;
      --  DDRPHYC DFI frequency translation 1 register
      DDRPHYC_MASTER0_DFIFREQXLAT1            : aliased DDRPHYC_MASTER0_DFIFREQXLAT1_Register;
      --  DDRPHYC DFI frequency translation 2 register
      DDRPHYC_MASTER0_DFIFREQXLAT2            : aliased DDRPHYC_MASTER0_DFIFREQXLAT2_Register;
      --  DDRPHYC DFI frequency translation 3 register
      DDRPHYC_MASTER0_DFIFREQXLAT3            : aliased DDRPHYC_MASTER0_DFIFREQXLAT3_Register;
      --  DDRPHYC DFI frequency translation 4 register
      DDRPHYC_MASTER0_DFIFREQXLAT4            : aliased DDRPHYC_MASTER0_DFIFREQXLAT4_Register;
      --  DDRPHYC DFI frequency translation 5 register
      DDRPHYC_MASTER0_DFIFREQXLAT5            : aliased DDRPHYC_MASTER0_DFIFREQXLAT5_Register;
      --  DDRPHYC DFI frequency translation 6 register
      DDRPHYC_MASTER0_DFIFREQXLAT6            : aliased DDRPHYC_MASTER0_DFIFREQXLAT6_Register;
      --  DDRPHYC DFI frequency translation 7 register
      DDRPHYC_MASTER0_DFIFREQXLAT7            : aliased DDRPHYC_MASTER0_DFIFREQXLAT7_Register;
      --  DDRPHYC TxRdPtrInit register
      DDRPHYC_MASTER0_TXRDPTRINIT             : aliased DDRPHYC_MASTER0_TXRDPTRINIT_Register;
      --  DDRPHYC DfiInitComplete register
      DDRPHYC_MASTER0_DFIINITCOMPLETE         : aliased DDRPHYC_MASTER0_DFIINITCOMPLETE_Register;
      --  DDRPHYC DfiFreqRatio register
      DDRPHYC_MASTER0_DFIFREQRATIO            : aliased DDRPHYC_MASTER0_DFIFREQRATIO_Register;
      --  DDRPHYC RxFifoCheck register
      DDRPHYC_MASTER0_RXFIFOCHECKS            : aliased DDRPHYC_MASTER0_RXFIFOCHECKS_Register;
      --  DDRPHYC MTestCombo output enable on core-side copy register
      DDRPHYC_MASTER0_MTESTDTOCTRL            : aliased DDRPHYC_MASTER0_MTESTDTOCTRL_Register;
      --  DDRPHYC MapCAA[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAA0TODFI            : aliased DDRPHYC_MASTER0_MAPCAA0TODFI_Register;
      --  DDRPHYC MapCAA[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAA1TODFI            : aliased DDRPHYC_MASTER0_MAPCAA1TODFI_Register;
      --  DDRPHYC MapCAA[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAA2TODFI            : aliased DDRPHYC_MASTER0_MAPCAA2TODFI_Register;
      --  DDRPHYC MapCAA[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAA3TODFI            : aliased DDRPHYC_MASTER0_MAPCAA3TODFI_Register;
      --  DDRPHYC MapCAA[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAA4TODFI            : aliased DDRPHYC_MASTER0_MAPCAA4TODFI_Register;
      --  DDRPHYC MapCAA[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAA5TODFI            : aliased DDRPHYC_MASTER0_MAPCAA5TODFI_Register;
      --  DDRPHYC MapCAA[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAA6TODFI            : aliased DDRPHYC_MASTER0_MAPCAA6TODFI_Register;
      --  DDRPHYC MapCAA[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAA7TODFI            : aliased DDRPHYC_MASTER0_MAPCAA7TODFI_Register;
      --  DDRPHYC MapCAB[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAB0TODFI            : aliased DDRPHYC_MASTER0_MAPCAB0TODFI_Register;
      --  DDRPHYC MapCAB[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAB1TODFI            : aliased DDRPHYC_MASTER0_MAPCAB1TODFI_Register;
      --  DDRPHYC MapCAB[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAB2TODFI            : aliased DDRPHYC_MASTER0_MAPCAB2TODFI_Register;
      --  DDRPHYC MapCAB[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAB3TODFI            : aliased DDRPHYC_MASTER0_MAPCAB3TODFI_Register;
      --  DDRPHYC MapCAB[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAB4TODFI            : aliased DDRPHYC_MASTER0_MAPCAB4TODFI_Register;
      --  DDRPHYC MapCAB[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAB5TODFI            : aliased DDRPHYC_MASTER0_MAPCAB5TODFI_Register;
      --  DDRPHYC MapCAB[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAB6TODFI            : aliased DDRPHYC_MASTER0_MAPCAB6TODFI_Register;
      --  DDRPHYC MapCAB[0to7]toDfi register
      DDRPHYC_MASTER0_MAPCAB7TODFI            : aliased DDRPHYC_MASTER0_MAPCAB7TODFI_Register;
      --  DDRPHYC interrupt enable register
      DDRPHYC_MASTER0_PHYINTERRUPTENABLE      : aliased DDRPHYC_MASTER0_PHYINTERRUPTENABLE_Register;
      --  DDRPHYC interrupt firmware control register
      DDRPHYC_MASTER0_PHYINTERRUPTFWCONTROL   : aliased DDRPHYC_MASTER0_PHYINTERRUPTFWCONTROL_Register;
      --  DDRPHYC interrupt mask register
      DDRPHYC_MASTER0_PHYINTERRUPTMASK        : aliased DDRPHYC_MASTER0_PHYINTERRUPTMASK_Register;
      --  DDRPHYC interrupt clear register
      DDRPHYC_MASTER0_PHYINTERRUPTCLEAR       : aliased DDRPHYC_MASTER0_PHYINTERRUPTCLEAR_Register;
      --  DDRPHYC interrupt status register
      DDRPHYC_MASTER0_PHYINTERRUPTSTATUS      : aliased DDRPHYC_MASTER0_PHYINTERRUPTSTATUS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS0   : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS1   : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS2   : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS3   : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS4   : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS5   : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS6   : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS7   : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS8   : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS9   : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS10  : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS11  : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS12  : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS13  : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS14  : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS15  : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtAddress0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS16  : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
      --  DDRPHYC HwtSwizzleHwtBank0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK0      : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK0_Register;
      --  DDRPHYC HwtSwizzleHwtBank1 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK1      : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK1_Register;
      --  DDRPHYC HwtSwizzleHwtBank2 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK2      : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK2_Register;
      --  DDRPHYC HwtSwizzleHwtBg0 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTBG0        : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTBG0_Register;
      --  DDRPHYC HwtSwizzleHwtBg1 register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTBG1        : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTBG1_Register;
      --  DDRPHYC HwtSwizzleHwtCasN register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTCASN       : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTCASN_Register;
      --  DDRPHYC HwtSwizzleHwtRasN register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTRASN       : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTRASN_Register;
      --  DDRPHYC HwtSwizzleHwtWeN register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTWEN        : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTWEN_Register;
      --  DDRPHYC HwtSwizzleHwtParityIn register
      DDRPHYC_MASTER0_HWTSWIZZLEHWTPARITYIN   : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTPARITYIN_Register;
      --  DDRPHYC small delays on handshake signals register 0
      DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS0     : aliased DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS0_Register;
      --  DDRPHYC small delays on handshake signals register 1
      DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS1     : aliased DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS1_Register;
      --  DDRPHYC remote impedance calibration status register
      DDRPHYC_MASTER0_REMOTEIMPCAL            : aliased DDRPHYC_MASTER0_REMOTEIMPCAL_Register;
      --  DDRPHYC PhyInLP3 register
      DDRPHYC_INITENG0_PHYINLP3               : aliased DDRPHYC_INITENG0_PHYINLP3_Register;
      --  DDRPHYC Ucclk and Hclk enable register
      DDRPHYC_DRTUB0_UCCLKHCLKENABLES         : aliased DDRPHYC_DRTUB0_UCCLKHCLKENABLES_Register;
      --  DDRPHYC CurPstate0b register
      DDRPHYC_DRTUB0_CURPSTATE0B              : aliased DDRPHYC_DRTUB0_CURPSTATE0B_Register;
      --  DDRPHYC CUSTPUBREV register
      DDRPHYC_DRTUB0_CUSTPUBREV               : aliased DDRPHYC_DRTUB0_CUSTPUBREV_Register;
      --  DDRPHYC PUBREV register
      DDRPHYC_DRTUB0_PUBREV                   : aliased DDRPHYC_DRTUB0_PUBREV_Register;
      --  DDRPHYC MicroContMuxSel register
      DDRPHYC_APBONLY0_MICROCONTMUXSEL        : aliased DDRPHYC_APBONLY0_MICROCONTMUXSEL_Register;
      --  DDRPHYC PMU/controller protocol, controller read-only 	shadow
      --  register
      DDRPHYC_APBONLY0_UCTSHADOWREGS          : aliased DDRPHYC_APBONLY0_UCTSHADOWREGS_Register;
      --  DDRPHYC DctWriteProt register
      DDRPHYC_APBONLY0_DCTWRITEPROT           : aliased DDRPHYC_APBONLY0_DCTWRITEPROT_Register;
      --  DDRPHYC UctWriteOnlyShadow register
      DDRPHYC_APBONLY0_UCTWRITEONLYSHADOW     : aliased DDRPHYC_APBONLY0_UCTWRITEONLYSHADOW_Register;
      --  DDRPHYC UctDatWriteOnlyShadow register
      DDRPHYC_APBONLY0_UCTDATWRITEONLYSHADOW  : aliased DDRPHYC_APBONLY0_UCTDATWRITEONLYSHADOW_Register;
      --  DDRPHYC DfiCfgRdDataValidTicks register
      DDRPHYC_APBONLY0_DFICFGRDDATAVALIDTICKS : aliased DDRPHYC_APBONLY0_DFICFGRDDATAVALIDTICKS_Register;
      --  DDRPHYC reset and clock shutdown control register
      DDRPHYC_APBONLY0_MICRORESET             : aliased DDRPHYC_APBONLY0_MICRORESET_Register;
      --  DDRPHYC DfiInitCompleteShadow register
      DDRPHYC_APBONLY0_DFIINITCOMPLETESHADOW  : aliased DDRPHYC_APBONLY0_DFIINITCOMPLETESHADOW_Register;
      case Discriminent is
         when Ddress17 =>
            --  DDRPHYC HwtSwizzleHwtAddress0 register
            DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS17 : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS_Register;
         when Ctn =>
            --  DDRPHYC HwtSwizzleHwtActN register
            DDRPHYC_MASTER0_HWTSWIZZLEHWTACTN : aliased DDRPHYC_MASTER0_HWTSWIZZLEHWTACTN_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for DDRPHYC_Peripheral use record
      DDRPHYC_ANIB0_MTESTMUXSEL               at 16#68# range 0 .. 31;
      DDRPHYC_ANIB0_AFORCEDRVCONT             at 16#9C# range 0 .. 31;
      DDRPHYC_ANIB0_AFORCETRICONT             at 16#A0# range 0 .. 31;
      DDRPHYC_ANIB0_ATXIMPEDANCE              at 16#10C# range 0 .. 31;
      DDRPHYC_ANIB0_ATESTPRBSERR              at 16#14C# range 0 .. 31;
      DDRPHYC_ANIB0_ATXSLEWRATE               at 16#154# range 0 .. 31;
      DDRPHYC_ANIB0_ATESTPRBSERRCNT           at 16#158# range 0 .. 31;
      DDRPHYC_ANIB0_ATXDLY                    at 16#200# range 0 .. 31;
      DDRPHYC_ANIB1_MTESTMUXSEL               at 16#4068# range 0 .. 31;
      DDRPHYC_ANIB1_AFORCEDRVCONT             at 16#409C# range 0 .. 31;
      DDRPHYC_ANIB1_AFORCETRICONT             at 16#40A0# range 0 .. 31;
      DDRPHYC_ANIB1_ATXIMPEDANCE              at 16#410C# range 0 .. 31;
      DDRPHYC_ANIB1_ATESTPRBSERR              at 16#414C# range 0 .. 31;
      DDRPHYC_ANIB1_ATXSLEWRATE               at 16#4154# range 0 .. 31;
      DDRPHYC_ANIB1_ATESTPRBSERRCNT           at 16#4158# range 0 .. 31;
      DDRPHYC_ANIB1_ATXDLY                    at 16#4200# range 0 .. 31;
      DDRPHYC_ANIB2_MTESTMUXSEL               at 16#8068# range 0 .. 31;
      DDRPHYC_ANIB2_AFORCEDRVCONT             at 16#809C# range 0 .. 31;
      DDRPHYC_ANIB2_AFORCETRICONT             at 16#80A0# range 0 .. 31;
      DDRPHYC_ANIB2_ATXIMPEDANCE              at 16#810C# range 0 .. 31;
      DDRPHYC_ANIB2_ATESTPRBSERR              at 16#814C# range 0 .. 31;
      DDRPHYC_ANIB2_ATXSLEWRATE               at 16#8154# range 0 .. 31;
      DDRPHYC_ANIB2_ATESTPRBSERRCNT           at 16#8158# range 0 .. 31;
      DDRPHYC_ANIB2_ATXDLY                    at 16#8200# range 0 .. 31;
      DDRPHYC_ANIB3_MTESTMUXSEL               at 16#C068# range 0 .. 31;
      DDRPHYC_ANIB3_AFORCEDRVCONT             at 16#C09C# range 0 .. 31;
      DDRPHYC_ANIB3_AFORCETRICONT             at 16#C0A0# range 0 .. 31;
      DDRPHYC_ANIB3_ATXIMPEDANCE              at 16#C10C# range 0 .. 31;
      DDRPHYC_ANIB3_ATESTPRBSERR              at 16#C14C# range 0 .. 31;
      DDRPHYC_ANIB3_ATXSLEWRATE               at 16#C154# range 0 .. 31;
      DDRPHYC_ANIB3_ATESTPRBSERRCNT           at 16#C158# range 0 .. 31;
      DDRPHYC_ANIB3_ATXDLY                    at 16#C200# range 0 .. 31;
      DDRPHYC_ANIB4_MTESTMUXSEL               at 16#10068# range 0 .. 31;
      DDRPHYC_ANIB4_AFORCEDRVCONT             at 16#1009C# range 0 .. 31;
      DDRPHYC_ANIB4_AFORCETRICONT             at 16#100A0# range 0 .. 31;
      DDRPHYC_ANIB4_ATXIMPEDANCE              at 16#1010C# range 0 .. 31;
      DDRPHYC_ANIB4_ATESTPRBSERR              at 16#1014C# range 0 .. 31;
      DDRPHYC_ANIB4_ATXSLEWRATE               at 16#10154# range 0 .. 31;
      DDRPHYC_ANIB4_ATESTPRBSERRCNT           at 16#10158# range 0 .. 31;
      DDRPHYC_ANIB4_ATXDLY                    at 16#10200# range 0 .. 31;
      DDRPHYC_ANIB5_MTESTMUXSEL               at 16#14068# range 0 .. 31;
      DDRPHYC_ANIB5_AFORCEDRVCONT             at 16#1409C# range 0 .. 31;
      DDRPHYC_ANIB5_AFORCETRICONT             at 16#140A0# range 0 .. 31;
      DDRPHYC_ANIB5_ATXIMPEDANCE              at 16#1410C# range 0 .. 31;
      DDRPHYC_ANIB5_ATESTPRBSERR              at 16#1414C# range 0 .. 31;
      DDRPHYC_ANIB5_ATXSLEWRATE               at 16#14154# range 0 .. 31;
      DDRPHYC_ANIB5_ATESTPRBSERRCNT           at 16#14158# range 0 .. 31;
      DDRPHYC_ANIB5_ATXDLY                    at 16#14200# range 0 .. 31;
      DDRPHYC_ANIB6_MTESTMUXSEL               at 16#18068# range 0 .. 31;
      DDRPHYC_ANIB6_AFORCEDRVCONT             at 16#1809C# range 0 .. 31;
      DDRPHYC_ANIB6_AFORCETRICONT             at 16#180A0# range 0 .. 31;
      DDRPHYC_ANIB6_ATXIMPEDANCE              at 16#1810C# range 0 .. 31;
      DDRPHYC_ANIB6_ATESTPRBSERR              at 16#1814C# range 0 .. 31;
      DDRPHYC_ANIB6_ATXSLEWRATE               at 16#18154# range 0 .. 31;
      DDRPHYC_ANIB6_ATESTPRBSERRCNT           at 16#18158# range 0 .. 31;
      DDRPHYC_ANIB6_ATXDLY                    at 16#18200# range 0 .. 31;
      DDRPHYC_ANIB7_MTESTMUXSEL               at 16#1C068# range 0 .. 31;
      DDRPHYC_ANIB7_AFORCEDRVCONT             at 16#1C09C# range 0 .. 31;
      DDRPHYC_ANIB7_AFORCETRICONT             at 16#1C0A0# range 0 .. 31;
      DDRPHYC_ANIB7_ATXIMPEDANCE              at 16#1C10C# range 0 .. 31;
      DDRPHYC_ANIB7_ATESTPRBSERR              at 16#1C14C# range 0 .. 31;
      DDRPHYC_ANIB7_ATXSLEWRATE               at 16#1C154# range 0 .. 31;
      DDRPHYC_ANIB7_ATESTPRBSERRCNT           at 16#1C158# range 0 .. 31;
      DDRPHYC_ANIB7_ATXDLY                    at 16#1C200# range 0 .. 31;
      DDRPHYC_DBYTE0_DBYTEMISCMODE            at 16#40000# range 0 .. 31;
      DDRPHYC_DBYTE0_MTESTMUXSEL              at 16#40068# range 0 .. 31;
      DDRPHYC_DBYTE0_DFIMRL                   at 16#40080# range 0 .. 31;
      DDRPHYC_DBYTE0_VREFDAC0_R0              at 16#40100# range 0 .. 31;
      DDRPHYC_DBYTE0_TXIMPEDANCECTRL0_B0      at 16#40104# range 0 .. 31;
      DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B0         at 16#4010C# range 0 .. 31;
      DDRPHYC_DBYTE0_DQDQSRCVCNTRL1           at 16#40128# range 0 .. 31;
      DDRPHYC_DBYTE0_DQDQSRCVCNTRL2           at 16#40130# range 0 .. 31;
      DDRPHYC_DBYTE0_TXODTDRVSTREN_B0         at 16#40134# range 0 .. 31;
      DDRPHYC_DBYTE0_RXFIFOCHECKSTATUS        at 16#40158# range 0 .. 31;
      DDRPHYC_DBYTE0_RXFIFOCHECKERRVALUES     at 16#4015C# range 0 .. 31;
      DDRPHYC_DBYTE0_RXFIFOINFO               at 16#40160# range 0 .. 31;
      DDRPHYC_DBYTE0_RXFIFOVISIBILITY         at 16#40164# range 0 .. 31;
      DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ3210     at 16#40168# range 0 .. 31;
      DDRPHYC_DBYTE0_RXFIFOCONTENTSDQ7654     at 16#4016C# range 0 .. 31;
      DDRPHYC_DBYTE0_RXFIFOCONTENTSDBI        at 16#40170# range 0 .. 31;
      DDRPHYC_DBYTE0_TXSLEWRATE_B0            at 16#4017C# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG0_R0            at 16#401A0# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG1_R0            at 16#401A4# range 0 .. 31;
      DDRPHYC_DBYTE0_RXENDLYTG0_U0            at 16#40200# range 0 .. 31;
      DDRPHYC_DBYTE0_RXENDLYTG1_U0            at 16#40204# range 0 .. 31;
      DDRPHYC_DBYTE0_RXCLKDLYTG0_U0           at 16#40230# range 0 .. 31;
      DDRPHYC_DBYTE0_RXCLKDLYTG1_U0           at 16#40234# range 0 .. 31;
      DDRPHYC_DBYTE0_RXCLKCDLYTG0_U0          at 16#40240# range 0 .. 31;
      DDRPHYC_DBYTE0_RXCLKCDLYTG1_U0          at 16#40244# range 0 .. 31;
      DDRPHYC_DBYTE0_DQ0LNSEL                 at 16#40280# range 0 .. 31;
      DDRPHYC_DBYTE0_DQ1LNSEL                 at 16#40284# range 0 .. 31;
      DDRPHYC_DBYTE0_DQ2LNSEL                 at 16#40288# range 0 .. 31;
      DDRPHYC_DBYTE0_DQ3LNSEL                 at 16#4028C# range 0 .. 31;
      DDRPHYC_DBYTE0_DQ4LNSEL                 at 16#40290# range 0 .. 31;
      DDRPHYC_DBYTE0_DQ5LNSEL                 at 16#40294# range 0 .. 31;
      DDRPHYC_DBYTE0_DQ6LNSEL                 at 16#40298# range 0 .. 31;
      DDRPHYC_DBYTE0_DQ7LNSEL                 at 16#4029C# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG0_R0            at 16#40300# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG1_R0            at 16#40304# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQSDLYTG0_U0           at 16#40340# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQSDLYTG1_U0           at 16#40344# range 0 .. 31;
      DDRPHYC_DBYTE0_DXLCDLSTATUS             at 16#40390# range 0 .. 31;
      DDRPHYC_DBYTE0_VREFDAC0_R1              at 16#40500# range 0 .. 31;
      DDRPHYC_DBYTE0_TXIMPEDANCECTRL0_B1      at 16#40504# range 0 .. 31;
      DDRPHYC_DBYTE0_DQDQSRCVCNTRL_B1         at 16#4050C# range 0 .. 31;
      DDRPHYC_DBYTE0_TXODTDRVSTREN_B1         at 16#40534# range 0 .. 31;
      DDRPHYC_DBYTE0_TXSLEWRATE_B1            at 16#4057C# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG0_R1            at 16#405A0# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG1_R1            at 16#405A4# range 0 .. 31;
      DDRPHYC_DBYTE0_RXENDLYTG0_U1            at 16#40600# range 0 .. 31;
      DDRPHYC_DBYTE0_RXENDLYTG1_U1            at 16#40604# range 0 .. 31;
      DDRPHYC_DBYTE0_RXCLKDLYTG0_U1           at 16#40630# range 0 .. 31;
      DDRPHYC_DBYTE0_RXCLKDLYTG1_U1           at 16#40634# range 0 .. 31;
      DDRPHYC_DBYTE0_RXCLKCDLYTG0_U1          at 16#40640# range 0 .. 31;
      DDRPHYC_DBYTE0_RXCLKCDLYTG1_U1          at 16#40644# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG0_R1            at 16#40700# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG1_R1            at 16#40704# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQSDLYTG0_U1           at 16#40740# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQSDLYTG1_U1           at 16#40744# range 0 .. 31;
      DDRPHYC_DBYTE0_VREFDAC0_R2              at 16#40900# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG0_R2            at 16#409A0# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG1_R2            at 16#409A4# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG0_R2            at 16#40B00# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG1_R2            at 16#40B04# range 0 .. 31;
      DDRPHYC_DBYTE0_VREFDAC0_R3              at 16#40D00# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG0_R3            at 16#40DA0# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG1_R3            at 16#40DA4# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG0_R3            at 16#40F00# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG1_R3            at 16#40F04# range 0 .. 31;
      DDRPHYC_DBYTE0_VREFDAC0_R4              at 16#41100# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG0_R4            at 16#411A0# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG1_R4            at 16#411A4# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG0_R4            at 16#41300# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG1_R4            at 16#41304# range 0 .. 31;
      DDRPHYC_DBYTE0_VREFDAC0_R5              at 16#41500# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG0_R5            at 16#415A0# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG1_R5            at 16#415A4# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG0_R5            at 16#41700# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG1_R5            at 16#41704# range 0 .. 31;
      DDRPHYC_DBYTE0_VREFDAC0_R6              at 16#41900# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG0_R6            at 16#419A0# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG1_R6            at 16#419A4# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG0_R6            at 16#41B00# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG1_R6            at 16#41B04# range 0 .. 31;
      DDRPHYC_DBYTE0_VREFDAC0_R7              at 16#41D00# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG0_R7            at 16#41DA0# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG1_R7            at 16#41DA4# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG0_R7            at 16#41F00# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG1_R7            at 16#41F04# range 0 .. 31;
      DDRPHYC_DBYTE0_VREFDAC0_R8              at 16#42100# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG0_R8            at 16#421A0# range 0 .. 31;
      DDRPHYC_DBYTE0_RXPBDLYTG1_R8            at 16#421A4# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG0_R8            at 16#42300# range 0 .. 31;
      DDRPHYC_DBYTE0_TXDQDLYTG1_R8            at 16#42304# range 0 .. 31;
      DDRPHYC_DBYTE1_DBYTEMISCMODE            at 16#44000# range 0 .. 31;
      DDRPHYC_DBYTE1_MTESTMUXSEL              at 16#44068# range 0 .. 31;
      DDRPHYC_DBYTE1_DFIMRL                   at 16#44080# range 0 .. 31;
      DDRPHYC_DBYTE1_VREFDAC0_R0              at 16#44100# range 0 .. 31;
      DDRPHYC_DBYTE1_TXIMPEDANCECTRL0_B0      at 16#44104# range 0 .. 31;
      DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B0         at 16#4410C# range 0 .. 31;
      DDRPHYC_DBYTE1_DQDQSRCVCNTRL1           at 16#44128# range 0 .. 31;
      DDRPHYC_DBYTE1_DQDQSRCVCNTRL2           at 16#44130# range 0 .. 31;
      DDRPHYC_DBYTE1_TXODTDRVSTREN_B0         at 16#44134# range 0 .. 31;
      DDRPHYC_DBYTE1_RXFIFOCHECKSTATUS        at 16#44158# range 0 .. 31;
      DDRPHYC_DBYTE1_RXFIFOCHECKERRVALUES     at 16#4415C# range 0 .. 31;
      DDRPHYC_DBYTE1_RXFIFOINFO               at 16#44160# range 0 .. 31;
      DDRPHYC_DBYTE1_RXFIFOVISIBILITY         at 16#44164# range 0 .. 31;
      DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ3210     at 16#44168# range 0 .. 31;
      DDRPHYC_DBYTE1_RXFIFOCONTENTSDQ7654     at 16#4416C# range 0 .. 31;
      DDRPHYC_DBYTE1_RXFIFOCONTENTSDBI        at 16#44170# range 0 .. 31;
      DDRPHYC_DBYTE1_TXSLEWRATE_B0            at 16#4417C# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG0_R0            at 16#441A0# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG1_R0            at 16#441A4# range 0 .. 31;
      DDRPHYC_DBYTE1_RXENDLYTG0_U0            at 16#44200# range 0 .. 31;
      DDRPHYC_DBYTE1_RXENDLYTG1_U0            at 16#44204# range 0 .. 31;
      DDRPHYC_DBYTE1_RXCLKDLYTG0_U0           at 16#44230# range 0 .. 31;
      DDRPHYC_DBYTE1_RXCLKDLYTG1_U0           at 16#44234# range 0 .. 31;
      DDRPHYC_DBYTE1_RXCLKCDLYTG0_U0          at 16#44240# range 0 .. 31;
      DDRPHYC_DBYTE1_RXCLKCDLYTG1_U0          at 16#44244# range 0 .. 31;
      DDRPHYC_DBYTE1_DQ0LNSEL                 at 16#44280# range 0 .. 31;
      DDRPHYC_DBYTE1_DQ1LNSEL                 at 16#44284# range 0 .. 31;
      DDRPHYC_DBYTE1_DQ2LNSEL                 at 16#44288# range 0 .. 31;
      DDRPHYC_DBYTE1_DQ3LNSEL                 at 16#4428C# range 0 .. 31;
      DDRPHYC_DBYTE1_DQ4LNSEL                 at 16#44290# range 0 .. 31;
      DDRPHYC_DBYTE1_DQ5LNSEL                 at 16#44294# range 0 .. 31;
      DDRPHYC_DBYTE1_DQ6LNSEL                 at 16#44298# range 0 .. 31;
      DDRPHYC_DBYTE1_DQ7LNSEL                 at 16#4429C# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG0_R0            at 16#44300# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG1_R0            at 16#44304# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQSDLYTG0_U0           at 16#44340# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQSDLYTG1_U0           at 16#44344# range 0 .. 31;
      DDRPHYC_DBYTE1_DXLCDLSTATUS             at 16#44390# range 0 .. 31;
      DDRPHYC_DBYTE1_VREFDAC0_R1              at 16#44500# range 0 .. 31;
      DDRPHYC_DBYTE1_TXIMPEDANCECTRL0_B1      at 16#44504# range 0 .. 31;
      DDRPHYC_DBYTE1_DQDQSRCVCNTRL_B1         at 16#4450C# range 0 .. 31;
      DDRPHYC_DBYTE1_TXODTDRVSTREN_B1         at 16#44534# range 0 .. 31;
      DDRPHYC_DBYTE1_TXSLEWRATE_B1            at 16#4457C# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG0_R1            at 16#445A0# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG1_R1            at 16#445A4# range 0 .. 31;
      DDRPHYC_DBYTE1_RXENDLYTG0_U1            at 16#44600# range 0 .. 31;
      DDRPHYC_DBYTE1_RXENDLYTG1_U1            at 16#44604# range 0 .. 31;
      DDRPHYC_DBYTE1_RXCLKDLYTG0_U1           at 16#44630# range 0 .. 31;
      DDRPHYC_DBYTE1_RXCLKDLYTG1_U1           at 16#44634# range 0 .. 31;
      DDRPHYC_DBYTE1_RXCLKCDLYTG0_U1          at 16#44640# range 0 .. 31;
      DDRPHYC_DBYTE1_RXCLKCDLYTG1_U1          at 16#44644# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG0_R1            at 16#44700# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG1_R1            at 16#44704# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQSDLYTG0_U1           at 16#44740# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQSDLYTG1_U1           at 16#44744# range 0 .. 31;
      DDRPHYC_DBYTE1_VREFDAC0_R2              at 16#44900# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG0_R2            at 16#449A0# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG1_R2            at 16#449A4# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG0_R2            at 16#44B00# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG1_R2            at 16#44B04# range 0 .. 31;
      DDRPHYC_DBYTE1_VREFDAC0_R3              at 16#44D00# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG0_R3            at 16#44DA0# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG1_R3            at 16#44DA4# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG0_R3            at 16#44F00# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG1_R3            at 16#44F04# range 0 .. 31;
      DDRPHYC_DBYTE1_VREFDAC0_R4              at 16#45100# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG0_R4            at 16#451A0# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG1_R4            at 16#451A4# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG0_R4            at 16#45300# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG1_R4            at 16#45304# range 0 .. 31;
      DDRPHYC_DBYTE1_VREFDAC0_R5              at 16#45500# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG0_R5            at 16#455A0# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG1_R5            at 16#455A4# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG0_R5            at 16#45700# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG1_R5            at 16#45704# range 0 .. 31;
      DDRPHYC_DBYTE1_VREFDAC0_R6              at 16#45900# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG0_R6            at 16#459A0# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG1_R6            at 16#459A4# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG0_R6            at 16#45B00# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG1_R6            at 16#45B04# range 0 .. 31;
      DDRPHYC_DBYTE1_VREFDAC0_R7              at 16#45D00# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG0_R7            at 16#45DA0# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG1_R7            at 16#45DA4# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG0_R7            at 16#45F00# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG1_R7            at 16#45F04# range 0 .. 31;
      DDRPHYC_DBYTE1_VREFDAC0_R8              at 16#46100# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG0_R8            at 16#461A0# range 0 .. 31;
      DDRPHYC_DBYTE1_RXPBDLYTG1_R8            at 16#461A4# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG0_R8            at 16#46300# range 0 .. 31;
      DDRPHYC_DBYTE1_TXDQDLYTG1_R8            at 16#46304# range 0 .. 31;
      DDRPHYC_DBYTE2_DBYTEMISCMODE            at 16#48000# range 0 .. 31;
      DDRPHYC_DBYTE2_MTESTMUXSEL              at 16#48068# range 0 .. 31;
      DDRPHYC_DBYTE2_DFIMRL                   at 16#48080# range 0 .. 31;
      DDRPHYC_DBYTE2_VREFDAC0_R0              at 16#48100# range 0 .. 31;
      DDRPHYC_DBYTE2_TXIMPEDANCECTRL0_B0      at 16#48104# range 0 .. 31;
      DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B0         at 16#4810C# range 0 .. 31;
      DDRPHYC_DBYTE2_DQDQSRCVCNTRL1           at 16#48128# range 0 .. 31;
      DDRPHYC_DBYTE2_DQDQSRCVCNTRL2           at 16#48130# range 0 .. 31;
      DDRPHYC_DBYTE2_TXODTDRVSTREN_B0         at 16#48134# range 0 .. 31;
      DDRPHYC_DBYTE2_RXFIFOCHECKSTATUS        at 16#48158# range 0 .. 31;
      DDRPHYC_DBYTE2_RXFIFOCHECKERRVALUES     at 16#4815C# range 0 .. 31;
      DDRPHYC_DBYTE2_RXFIFOINFO               at 16#48160# range 0 .. 31;
      DDRPHYC_DBYTE2_RXFIFOVISIBILITY         at 16#48164# range 0 .. 31;
      DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ3210     at 16#48168# range 0 .. 31;
      DDRPHYC_DBYTE2_RXFIFOCONTENTSDQ7654     at 16#4816C# range 0 .. 31;
      DDRPHYC_DBYTE2_RXFIFOCONTENTSDBI        at 16#48170# range 0 .. 31;
      DDRPHYC_DBYTE2_TXSLEWRATE_B0            at 16#4817C# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG0_R0            at 16#481A0# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG1_R0            at 16#481A4# range 0 .. 31;
      DDRPHYC_DBYTE2_RXENDLYTG0_U0            at 16#48200# range 0 .. 31;
      DDRPHYC_DBYTE2_RXENDLYTG1_U0            at 16#48204# range 0 .. 31;
      DDRPHYC_DBYTE2_RXCLKDLYTG0_U0           at 16#48230# range 0 .. 31;
      DDRPHYC_DBYTE2_RXCLKDLYTG1_U0           at 16#48234# range 0 .. 31;
      DDRPHYC_DBYTE2_RXCLKCDLYTG0_U0          at 16#48240# range 0 .. 31;
      DDRPHYC_DBYTE2_RXCLKCDLYTG1_U0          at 16#48244# range 0 .. 31;
      DDRPHYC_DBYTE2_DQ0LNSEL                 at 16#48280# range 0 .. 31;
      DDRPHYC_DBYTE2_DQ1LNSEL                 at 16#48284# range 0 .. 31;
      DDRPHYC_DBYTE2_DQ2LNSEL                 at 16#48288# range 0 .. 31;
      DDRPHYC_DBYTE2_DQ3LNSEL                 at 16#4828C# range 0 .. 31;
      DDRPHYC_DBYTE2_DQ4LNSEL                 at 16#48290# range 0 .. 31;
      DDRPHYC_DBYTE2_DQ5LNSEL                 at 16#48294# range 0 .. 31;
      DDRPHYC_DBYTE2_DQ6LNSEL                 at 16#48298# range 0 .. 31;
      DDRPHYC_DBYTE2_DQ7LNSEL                 at 16#4829C# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG0_R0            at 16#48300# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG1_R0            at 16#48304# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQSDLYTG0_U0           at 16#48340# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQSDLYTG1_U0           at 16#48344# range 0 .. 31;
      DDRPHYC_DBYTE2_DXLCDLSTATUS             at 16#48390# range 0 .. 31;
      DDRPHYC_DBYTE2_VREFDAC0_R1              at 16#48500# range 0 .. 31;
      DDRPHYC_DBYTE2_TXIMPEDANCECTRL0_B1      at 16#48504# range 0 .. 31;
      DDRPHYC_DBYTE2_DQDQSRCVCNTRL_B1         at 16#4850C# range 0 .. 31;
      DDRPHYC_DBYTE2_TXODTDRVSTREN_B1         at 16#48534# range 0 .. 31;
      DDRPHYC_DBYTE2_TXSLEWRATE_B1            at 16#4857C# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG0_R1            at 16#485A0# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG1_R1            at 16#485A4# range 0 .. 31;
      DDRPHYC_DBYTE2_RXENDLYTG0_U1            at 16#48600# range 0 .. 31;
      DDRPHYC_DBYTE2_RXENDLYTG1_U1            at 16#48604# range 0 .. 31;
      DDRPHYC_DBYTE2_RXCLKDLYTG0_U1           at 16#48630# range 0 .. 31;
      DDRPHYC_DBYTE2_RXCLKDLYTG1_U1           at 16#48634# range 0 .. 31;
      DDRPHYC_DBYTE2_RXCLKCDLYTG0_U1          at 16#48640# range 0 .. 31;
      DDRPHYC_DBYTE2_RXCLKCDLYTG1_U1          at 16#48644# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG0_R1            at 16#48700# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG1_R1            at 16#48704# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQSDLYTG0_U1           at 16#48740# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQSDLYTG1_U1           at 16#48744# range 0 .. 31;
      DDRPHYC_DBYTE2_VREFDAC0_R2              at 16#48900# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG0_R2            at 16#489A0# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG1_R2            at 16#489A4# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG0_R2            at 16#48B00# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG1_R2            at 16#48B04# range 0 .. 31;
      DDRPHYC_DBYTE2_VREFDAC0_R3              at 16#48D00# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG0_R3            at 16#48DA0# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG1_R3            at 16#48DA4# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG0_R3            at 16#48F00# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG1_R3            at 16#48F04# range 0 .. 31;
      DDRPHYC_DBYTE2_VREFDAC0_R4              at 16#49100# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG0_R4            at 16#491A0# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG1_R4            at 16#491A4# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG0_R4            at 16#49300# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG1_R4            at 16#49304# range 0 .. 31;
      DDRPHYC_DBYTE2_VREFDAC0_R5              at 16#49500# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG0_R5            at 16#495A0# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG1_R5            at 16#495A4# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG0_R5            at 16#49700# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG1_R5            at 16#49704# range 0 .. 31;
      DDRPHYC_DBYTE2_VREFDAC0_R6              at 16#49900# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG0_R6            at 16#499A0# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG1_R6            at 16#499A4# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG0_R6            at 16#49B00# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG1_R6            at 16#49B04# range 0 .. 31;
      DDRPHYC_DBYTE2_VREFDAC0_R7              at 16#49D00# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG0_R7            at 16#49DA0# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG1_R7            at 16#49DA4# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG0_R7            at 16#49F00# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG1_R7            at 16#49F04# range 0 .. 31;
      DDRPHYC_DBYTE2_VREFDAC0_R8              at 16#4A100# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG0_R8            at 16#4A1A0# range 0 .. 31;
      DDRPHYC_DBYTE2_RXPBDLYTG1_R8            at 16#4A1A4# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG0_R8            at 16#4A300# range 0 .. 31;
      DDRPHYC_DBYTE2_TXDQDLYTG1_R8            at 16#4A304# range 0 .. 31;
      DDRPHYC_DBYTE3_DBYTEMISCMODE            at 16#4C000# range 0 .. 31;
      DDRPHYC_DBYTE3_MTESTMUXSEL              at 16#4C068# range 0 .. 31;
      DDRPHYC_DBYTE3_DFIMRL                   at 16#4C080# range 0 .. 31;
      DDRPHYC_DBYTE3_VREFDAC0_R0              at 16#4C100# range 0 .. 31;
      DDRPHYC_DBYTE3_TXIMPEDANCECTRL0_B0      at 16#4C104# range 0 .. 31;
      DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B0         at 16#4C10C# range 0 .. 31;
      DDRPHYC_DBYTE3_DQDQSRCVCNTRL1           at 16#4C128# range 0 .. 31;
      DDRPHYC_DBYTE3_DQDQSRCVCNTRL2           at 16#4C130# range 0 .. 31;
      DDRPHYC_DBYTE3_TXODTDRVSTREN_B0         at 16#4C134# range 0 .. 31;
      DDRPHYC_DBYTE3_RXFIFOCHECKSTATUS        at 16#4C158# range 0 .. 31;
      DDRPHYC_DBYTE3_RXFIFOCHECKERRVALUES     at 16#4C15C# range 0 .. 31;
      DDRPHYC_DBYTE3_RXFIFOINFO               at 16#4C160# range 0 .. 31;
      DDRPHYC_DBYTE3_RXFIFOVISIBILITY         at 16#4C164# range 0 .. 31;
      DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ3210     at 16#4C168# range 0 .. 31;
      DDRPHYC_DBYTE3_RXFIFOCONTENTSDQ7654     at 16#4C16C# range 0 .. 31;
      DDRPHYC_DBYTE3_RXFIFOCONTENTSDBI        at 16#4C170# range 0 .. 31;
      DDRPHYC_DBYTE3_TXSLEWRATE_B0            at 16#4C17C# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG0_R0            at 16#4C1A0# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG1_R0            at 16#4C1A4# range 0 .. 31;
      DDRPHYC_DBYTE3_RXENDLYTG0_U0            at 16#4C200# range 0 .. 31;
      DDRPHYC_DBYTE3_RXENDLYTG1_U0            at 16#4C204# range 0 .. 31;
      DDRPHYC_DBYTE3_RXCLKDLYTG0_U0           at 16#4C230# range 0 .. 31;
      DDRPHYC_DBYTE3_RXCLKDLYTG1_U0           at 16#4C234# range 0 .. 31;
      DDRPHYC_DBYTE3_RXCLKCDLYTG0_U0          at 16#4C240# range 0 .. 31;
      DDRPHYC_DBYTE3_RXCLKCDLYTG1_U0          at 16#4C244# range 0 .. 31;
      DDRPHYC_DBYTE3_DQ0LNSEL                 at 16#4C280# range 0 .. 31;
      DDRPHYC_DBYTE3_DQ1LNSEL                 at 16#4C284# range 0 .. 31;
      DDRPHYC_DBYTE3_DQ2LNSEL                 at 16#4C288# range 0 .. 31;
      DDRPHYC_DBYTE3_DQ3LNSEL                 at 16#4C28C# range 0 .. 31;
      DDRPHYC_DBYTE3_DQ4LNSEL                 at 16#4C290# range 0 .. 31;
      DDRPHYC_DBYTE3_DQ5LNSEL                 at 16#4C294# range 0 .. 31;
      DDRPHYC_DBYTE3_DQ6LNSEL                 at 16#4C298# range 0 .. 31;
      DDRPHYC_DBYTE3_DQ7LNSEL                 at 16#4C29C# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG0_R0            at 16#4C300# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG1_R0            at 16#4C304# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQSDLYTG0_U0           at 16#4C340# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQSDLYTG1_U0           at 16#4C344# range 0 .. 31;
      DDRPHYC_DBYTE3_DXLCDLSTATUS             at 16#4C390# range 0 .. 31;
      DDRPHYC_DBYTE3_VREFDAC0_R1              at 16#4C500# range 0 .. 31;
      DDRPHYC_DBYTE3_TXIMPEDANCECTRL0_B1      at 16#4C504# range 0 .. 31;
      DDRPHYC_DBYTE3_DQDQSRCVCNTRL_B1         at 16#4C50C# range 0 .. 31;
      DDRPHYC_DBYTE3_TXODTDRVSTREN_B1         at 16#4C534# range 0 .. 31;
      DDRPHYC_DBYTE3_TXSLEWRATE_B1            at 16#4C57C# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG0_R1            at 16#4C5A0# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG1_R1            at 16#4C5A4# range 0 .. 31;
      DDRPHYC_DBYTE3_RXENDLYTG0_U1            at 16#4C600# range 0 .. 31;
      DDRPHYC_DBYTE3_RXENDLYTG1_U1            at 16#4C604# range 0 .. 31;
      DDRPHYC_DBYTE3_RXCLKDLYTG0_U1           at 16#4C630# range 0 .. 31;
      DDRPHYC_DBYTE3_RXCLKDLYTG1_U1           at 16#4C634# range 0 .. 31;
      DDRPHYC_DBYTE3_RXCLKCDLYTG0_U1          at 16#4C640# range 0 .. 31;
      DDRPHYC_DBYTE3_RXCLKCDLYTG1_U1          at 16#4C644# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG0_R1            at 16#4C700# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG1_R1            at 16#4C704# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQSDLYTG0_U1           at 16#4C740# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQSDLYTG1_U1           at 16#4C744# range 0 .. 31;
      DDRPHYC_DBYTE3_VREFDAC0_R2              at 16#4C900# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG0_R2            at 16#4C9A0# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG1_R2            at 16#4C9A4# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG0_R2            at 16#4CB00# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG1_R2            at 16#4CB04# range 0 .. 31;
      DDRPHYC_DBYTE3_VREFDAC0_R3              at 16#4CD00# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG0_R3            at 16#4CDA0# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG1_R3            at 16#4CDA4# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG0_R3            at 16#4CF00# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG1_R3            at 16#4CF04# range 0 .. 31;
      DDRPHYC_DBYTE3_VREFDAC0_R4              at 16#4D100# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG0_R4            at 16#4D1A0# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG1_R4            at 16#4D1A4# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG0_R4            at 16#4D300# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG1_R4            at 16#4D304# range 0 .. 31;
      DDRPHYC_DBYTE3_VREFDAC0_R5              at 16#4D500# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG0_R5            at 16#4D5A0# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG1_R5            at 16#4D5A4# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG0_R5            at 16#4D700# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG1_R5            at 16#4D704# range 0 .. 31;
      DDRPHYC_DBYTE3_VREFDAC0_R6              at 16#4D900# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG0_R6            at 16#4D9A0# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG1_R6            at 16#4D9A4# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG0_R6            at 16#4DB00# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG1_R6            at 16#4DB04# range 0 .. 31;
      DDRPHYC_DBYTE3_VREFDAC0_R7              at 16#4DD00# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG0_R7            at 16#4DDA0# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG1_R7            at 16#4DDA4# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG0_R7            at 16#4DF00# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG1_R7            at 16#4DF04# range 0 .. 31;
      DDRPHYC_DBYTE3_VREFDAC0_R8              at 16#4E100# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG0_R8            at 16#4E1A0# range 0 .. 31;
      DDRPHYC_DBYTE3_RXPBDLYTG1_R8            at 16#4E1A4# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG0_R8            at 16#4E300# range 0 .. 31;
      DDRPHYC_DBYTE3_TXDQDLYTG1_R8            at 16#4E304# range 0 .. 31;
      DDRPHYC_MASTER0_RXFIFOINIT              at 16#80000# range 0 .. 31;
      DDRPHYC_MASTER0_FORCECLKDISABLE         at 16#80004# range 0 .. 31;
      DDRPHYC_MASTER0_FORCEINTERNALUPDATE     at 16#8000C# range 0 .. 31;
      DDRPHYC_MASTER0_PHYCONFIG               at 16#80010# range 0 .. 31;
      DDRPHYC_MASTER0_PGCR                    at 16#80014# range 0 .. 31;
      DDRPHYC_MASTER0_TESTBUMPCNTRL1          at 16#8001C# range 0 .. 31;
      DDRPHYC_MASTER0_CALUCLKINFO             at 16#80020# range 0 .. 31;
      DDRPHYC_MASTER0_TESTBUMPCNTRL           at 16#80028# range 0 .. 31;
      DDRPHYC_MASTER0_SEQ0BDLY0               at 16#8002C# range 0 .. 31;
      DDRPHYC_MASTER0_SEQ0BDLY1               at 16#80030# range 0 .. 31;
      DDRPHYC_MASTER0_SEQ0BDLY2               at 16#80034# range 0 .. 31;
      DDRPHYC_MASTER0_SEQ0BDLY3               at 16#80038# range 0 .. 31;
      DDRPHYC_MASTER0_PHYALERTSTATUS          at 16#8003C# range 0 .. 31;
      DDRPHYC_MASTER0_PPTTRAINSETUP           at 16#80040# range 0 .. 31;
      DDRPHYC_MASTER0_ATESTMODE               at 16#80048# range 0 .. 31;
      DDRPHYC_MASTER0_TXCALBINP               at 16#80050# range 0 .. 31;
      DDRPHYC_MASTER0_TXCALBINN               at 16#80054# range 0 .. 31;
      DDRPHYC_MASTER0_TXCALPOVR               at 16#80058# range 0 .. 31;
      DDRPHYC_MASTER0_TXCALNOVR               at 16#8005C# range 0 .. 31;
      DDRPHYC_MASTER0_DFIMODE                 at 16#80060# range 0 .. 31;
      DDRPHYC_MASTER0_TRISTATEMODECA          at 16#80064# range 0 .. 31;
      DDRPHYC_MASTER0_MTESTMUXSEL             at 16#80068# range 0 .. 31;
      DDRPHYC_MASTER0_MTESTPGMINFO            at 16#8006C# range 0 .. 31;
      DDRPHYC_MASTER0_DYNPWRDNUP              at 16#80070# range 0 .. 31;
      DDRPHYC_MASTER0_PMIENABLE               at 16#80074# range 0 .. 31;
      DDRPHYC_MASTER0_PHYTID                  at 16#80078# range 0 .. 31;
      DDRPHYC_MASTER0_HWTMRL                  at 16#80080# range 0 .. 31;
      DDRPHYC_MASTER0_DFIPHYUPD               at 16#80084# range 0 .. 31;
      DDRPHYC_MASTER0_PDAMRSWRITEMODE         at 16#80088# range 0 .. 31;
      DDRPHYC_MASTER0_DFIGEARDOWNCTL          at 16#8008C# range 0 .. 31;
      DDRPHYC_MASTER0_DQSPREAMBLECONTROL      at 16#80090# range 0 .. 31;
      DDRPHYC_MASTER0_MASTERX4CONFIG          at 16#80094# range 0 .. 31;
      DDRPHYC_MASTER0_WRLEVBITS               at 16#80098# range 0 .. 31;
      DDRPHYC_MASTER0_ENABLECSMULTICAST       at 16#8009C# range 0 .. 31;
      DDRPHYC_MASTER0_ACX4ANIBDIS             at 16#800B0# range 0 .. 31;
      DDRPHYC_MASTER0_DMIPINPRESENT           at 16#800B4# range 0 .. 31;
      DDRPHYC_MASTER0_ARDPTRINITVAL           at 16#800B8# range 0 .. 31;
      DDRPHYC_MASTER0_DBYTEDLLMODECNTRL       at 16#800E8# range 0 .. 31;
      DDRPHYC_MASTER0_CALOFFSETS              at 16#80114# range 0 .. 31;
      DDRPHYC_MASTER0_SARINITVALS             at 16#8011C# range 0 .. 31;
      DDRPHYC_MASTER0_CALPEXTOVR              at 16#80124# range 0 .. 31;
      DDRPHYC_MASTER0_CALCMPR5OVR             at 16#80128# range 0 .. 31;
      DDRPHYC_MASTER0_CALNINTOVR              at 16#8012C# range 0 .. 31;
      DDRPHYC_MASTER0_CALDRVSTR0              at 16#80140# range 0 .. 31;
      DDRPHYC_MASTER0_PROCODTTIMECTL          at 16#80158# range 0 .. 31;
      DDRPHYC_MASTER0_MEMALERTCONTROL         at 16#8016C# range 0 .. 31;
      DDRPHYC_MASTER0_MEMALERTCONTROL2        at 16#80170# range 0 .. 31;
      DDRPHYC_MASTER0_MEMRESETL               at 16#80180# range 0 .. 31;
      DDRPHYC_MASTER0_PUBMODE                 at 16#801B8# range 0 .. 31;
      DDRPHYC_MASTER0_MISCPHYSTATUS           at 16#801BC# range 0 .. 31;
      DDRPHYC_MASTER0_CORELOOPBACKSEL         at 16#801C0# range 0 .. 31;
      DDRPHYC_MASTER0_DLLTRAINPARAM           at 16#801C4# range 0 .. 31;
      DDRPHYC_MASTER0_HWTLPCSENBYPASS         at 16#801D0# range 0 .. 31;
      DDRPHYC_MASTER0_DFICAMODE               at 16#801D4# range 0 .. 31;
      DDRPHYC_MASTER0_DLLCONTROL              at 16#801E0# range 0 .. 31;
      DDRPHYC_MASTER0_PULSEDLLUPDATEPHASE     at 16#801E4# range 0 .. 31;
      DDRPHYC_MASTER0_DLLGAINCTL              at 16#801F0# range 0 .. 31;
      DDRPHYC_MASTER0_CALRATE                 at 16#80220# range 0 .. 31;
      DDRPHYC_MASTER0_CALZAP                  at 16#80224# range 0 .. 31;
      DDRPHYC_MASTER0_PSTATE                  at 16#8022C# range 0 .. 31;
      DDRPHYC_MASTER0_PLLOUTGATECONTROL       at 16#80234# range 0 .. 31;
      DDRPHYC_MASTER0_PORCONTROL              at 16#80240# range 0 .. 31;
      DDRPHYC_MASTER0_CALBUSY                 at 16#8025C# range 0 .. 31;
      DDRPHYC_MASTER0_CALMISC2                at 16#80260# range 0 .. 31;
      DDRPHYC_MASTER0_CALMISC                 at 16#80268# range 0 .. 31;
      DDRPHYC_MASTER0_CALVREFS                at 16#8026C# range 0 .. 31;
      DDRPHYC_MASTER0_CALCMPR5                at 16#80270# range 0 .. 31;
      DDRPHYC_MASTER0_CALNINT                 at 16#80274# range 0 .. 31;
      DDRPHYC_MASTER0_CALPEXT                 at 16#80278# range 0 .. 31;
      DDRPHYC_MASTER0_CALCMPINVERT            at 16#802A0# range 0 .. 31;
      DDRPHYC_MASTER0_CALCMPANACNTRL          at 16#802B8# range 0 .. 31;
      DDRPHYC_MASTER0_DFIRDDATACSDESTMAP      at 16#802C0# range 0 .. 31;
      DDRPHYC_MASTER0_VREFINGLOBAL            at 16#802C8# range 0 .. 31;
      DDRPHYC_MASTER0_DFIWRDATACSDESTMAP      at 16#802D0# range 0 .. 31;
      DDRPHYC_MASTER0_MASUPDGOODCTR           at 16#802D4# range 0 .. 31;
      DDRPHYC_MASTER0_PHYUPD0GOODCTR          at 16#802D8# range 0 .. 31;
      DDRPHYC_MASTER0_PHYUPD1GOODCTR          at 16#802DC# range 0 .. 31;
      DDRPHYC_MASTER0_CTLUPD0GOODCTR          at 16#802E0# range 0 .. 31;
      DDRPHYC_MASTER0_CTLUPD1GOODCTR          at 16#802E4# range 0 .. 31;
      DDRPHYC_MASTER0_MASUPDFAILCTR           at 16#802E8# range 0 .. 31;
      DDRPHYC_MASTER0_PHYUPD0FAILCTR          at 16#802EC# range 0 .. 31;
      DDRPHYC_MASTER0_PHYUPD1FAILCTR          at 16#802F0# range 0 .. 31;
      DDRPHYC_MASTER0_PHYPERFCTRENABLE        at 16#802F4# range 0 .. 31;
      DDRPHYC_MASTER0_PLLPWRDN                at 16#8030C# range 0 .. 31;
      DDRPHYC_MASTER0_PLLCTRL2                at 16#80314# range 0 .. 31;
      DDRPHYC_MASTER0_PLLCTRL0                at 16#80318# range 0 .. 31;
      DDRPHYC_MASTER0_PLLCTRL1                at 16#8031C# range 0 .. 31;
      DDRPHYC_MASTER0_PLLTST                  at 16#80320# range 0 .. 31;
      DDRPHYC_MASTER0_PLLLOCKSTATUS           at 16#80324# range 0 .. 31;
      DDRPHYC_MASTER0_PLLTESTMODE             at 16#80328# range 0 .. 31;
      DDRPHYC_MASTER0_PLLCTRL3                at 16#8032C# range 0 .. 31;
      DDRPHYC_MASTER0_PLLCTRL4                at 16#80330# range 0 .. 31;
      DDRPHYC_MASTER0_PLLENDOFCAL             at 16#80334# range 0 .. 31;
      DDRPHYC_MASTER0_PLLSTANDBYEFF           at 16#80338# range 0 .. 31;
      DDRPHYC_MASTER0_PLLDACVALOUT            at 16#8033C# range 0 .. 31;
      DDRPHYC_MASTER0_LCDLDBGCNTL             at 16#8038C# range 0 .. 31;
      DDRPHYC_MASTER0_ACLCDLSTATUS            at 16#80390# range 0 .. 31;
      DDRPHYC_MASTER0_CUSTPHYREV              at 16#803B4# range 0 .. 31;
      DDRPHYC_MASTER0_PHYREV                  at 16#803B8# range 0 .. 31;
      DDRPHYC_MASTER0_LP3EXITSEQ0BSTARTVECTOR at 16#803BC# range 0 .. 31;
      DDRPHYC_MASTER0_DFIFREQXLAT0            at 16#803C0# range 0 .. 31;
      DDRPHYC_MASTER0_DFIFREQXLAT1            at 16#803C4# range 0 .. 31;
      DDRPHYC_MASTER0_DFIFREQXLAT2            at 16#803C8# range 0 .. 31;
      DDRPHYC_MASTER0_DFIFREQXLAT3            at 16#803CC# range 0 .. 31;
      DDRPHYC_MASTER0_DFIFREQXLAT4            at 16#803D0# range 0 .. 31;
      DDRPHYC_MASTER0_DFIFREQXLAT5            at 16#803D4# range 0 .. 31;
      DDRPHYC_MASTER0_DFIFREQXLAT6            at 16#803D8# range 0 .. 31;
      DDRPHYC_MASTER0_DFIFREQXLAT7            at 16#803DC# range 0 .. 31;
      DDRPHYC_MASTER0_TXRDPTRINIT             at 16#803E0# range 0 .. 31;
      DDRPHYC_MASTER0_DFIINITCOMPLETE         at 16#803E4# range 0 .. 31;
      DDRPHYC_MASTER0_DFIFREQRATIO            at 16#803E8# range 0 .. 31;
      DDRPHYC_MASTER0_RXFIFOCHECKS            at 16#803EC# range 0 .. 31;
      DDRPHYC_MASTER0_MTESTDTOCTRL            at 16#803FC# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAA0TODFI            at 16#80400# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAA1TODFI            at 16#80404# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAA2TODFI            at 16#80408# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAA3TODFI            at 16#8040C# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAA4TODFI            at 16#80410# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAA5TODFI            at 16#80414# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAA6TODFI            at 16#80418# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAA7TODFI            at 16#8041C# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAB0TODFI            at 16#80440# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAB1TODFI            at 16#80444# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAB2TODFI            at 16#80448# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAB3TODFI            at 16#8044C# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAB4TODFI            at 16#80450# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAB5TODFI            at 16#80454# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAB6TODFI            at 16#80458# range 0 .. 31;
      DDRPHYC_MASTER0_MAPCAB7TODFI            at 16#8045C# range 0 .. 31;
      DDRPHYC_MASTER0_PHYINTERRUPTENABLE      at 16#8046C# range 0 .. 31;
      DDRPHYC_MASTER0_PHYINTERRUPTFWCONTROL   at 16#80470# range 0 .. 31;
      DDRPHYC_MASTER0_PHYINTERRUPTMASK        at 16#80474# range 0 .. 31;
      DDRPHYC_MASTER0_PHYINTERRUPTCLEAR       at 16#80478# range 0 .. 31;
      DDRPHYC_MASTER0_PHYINTERRUPTSTATUS      at 16#8047C# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS0   at 16#80480# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS1   at 16#80484# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS2   at 16#80488# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS3   at 16#8048C# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS4   at 16#80490# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS5   at 16#80494# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS6   at 16#80498# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS7   at 16#8049C# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS8   at 16#804A0# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS9   at 16#804A4# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS10  at 16#804A8# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS11  at 16#804AC# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS12  at 16#804B0# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS13  at 16#804B4# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS14  at 16#804B8# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS15  at 16#804BC# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS16  at 16#804C0# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK0      at 16#804C8# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK1      at 16#804CC# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTBANK2      at 16#804D0# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTBG0        at 16#804D4# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTBG1        at 16#804D8# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTCASN       at 16#804DC# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTRASN       at 16#804E0# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTWEN        at 16#804E4# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTPARITYIN   at 16#804E8# range 0 .. 31;
      DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS0     at 16#804F0# range 0 .. 31;
      DDRPHYC_MASTER0_DFIHANDSHAKEDELAYS1     at 16#804F4# range 0 .. 31;
      DDRPHYC_MASTER0_REMOTEIMPCAL            at 16#804F8# range 0 .. 31;
      DDRPHYC_INITENG0_PHYINLP3               at 16#2400A0# range 0 .. 31;
      DDRPHYC_DRTUB0_UCCLKHCLKENABLES         at 16#300200# range 0 .. 31;
      DDRPHYC_DRTUB0_CURPSTATE0B              at 16#300204# range 0 .. 31;
      DDRPHYC_DRTUB0_CUSTPUBREV               at 16#3003B4# range 0 .. 31;
      DDRPHYC_DRTUB0_PUBREV                   at 16#3003B8# range 0 .. 31;
      DDRPHYC_APBONLY0_MICROCONTMUXSEL        at 16#340000# range 0 .. 31;
      DDRPHYC_APBONLY0_UCTSHADOWREGS          at 16#340010# range 0 .. 31;
      DDRPHYC_APBONLY0_DCTWRITEPROT           at 16#3400C4# range 0 .. 31;
      DDRPHYC_APBONLY0_UCTWRITEONLYSHADOW     at 16#3400C8# range 0 .. 31;
      DDRPHYC_APBONLY0_UCTDATWRITEONLYSHADOW  at 16#3400D0# range 0 .. 31;
      DDRPHYC_APBONLY0_DFICFGRDDATAVALIDTICKS at 16#3400DC# range 0 .. 31;
      DDRPHYC_APBONLY0_MICRORESET             at 16#340264# range 0 .. 31;
      DDRPHYC_APBONLY0_DFIINITCOMPLETESHADOW  at 16#3403E8# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTADDRESS17  at 16#804C4# range 0 .. 31;
      DDRPHYC_MASTER0_HWTSWIZZLEHWTACTN       at 16#804C4# range 0 .. 31;
   end record;

   --  DDRPHYC address block description
   DDRPHYC_Periph : aliased DDRPHYC_Peripheral
     with Import, Address => DDRPHYC_Base;

   --  DDRPHYC address block description
   DDRPHYC_S_Periph : aliased DDRPHYC_Peripheral
     with Import, Address => DDRPHYC_S_Base;

end Interfaces.STM32.DDRPHYC;
