--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.RTC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype RTC_TR_SU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_TR_ST_Field is Interfaces.Bit_Types.UInt3;
   subtype RTC_TR_MNU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_TR_MNT_Field is Interfaces.Bit_Types.UInt3;
   subtype RTC_TR_HU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_TR_HT_Field is Interfaces.Bit_Types.UInt2;

   --  RTC time register
   type RTC_TR_Register is record
      --  Second units in BCD format
      SU             : RTC_TR_SU_Field := 16#0#;
      --  Second tens in BCD format
      ST             : RTC_TR_ST_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Minute units in BCD format
      MNU            : RTC_TR_MNU_Field := 16#0#;
      --  Minute tens in BCD format
      MNT            : RTC_TR_MNT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Hour units in BCD format
      HU             : RTC_TR_HU_Field := 16#0#;
      --  Hour tens in BCD format
      HT             : RTC_TR_HT_Field := 16#0#;
      --  AM/PM notation
      PM             : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TR_Register use record
      SU             at 0 range 0 .. 3;
      ST             at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MNU            at 0 range 8 .. 11;
      MNT            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HU             at 0 range 16 .. 19;
      HT             at 0 range 20 .. 21;
      PM             at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype RTC_DR_DU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_DR_DT_Field is Interfaces.Bit_Types.UInt2;
   subtype RTC_DR_MU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_DR_WDU_Field is Interfaces.Bit_Types.UInt3;
   subtype RTC_DR_YU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_DR_YT_Field is Interfaces.Bit_Types.UInt4;

   --  RTC date register
   type RTC_DR_Register is record
      --  Date units in BCD format
      DU             : RTC_DR_DU_Field := 16#1#;
      --  Date tens in BCD format
      DT             : RTC_DR_DT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Month units in BCD format
      MU             : RTC_DR_MU_Field := 16#1#;
      --  Month tens in BCD format
      MT             : Boolean := False;
      --  Week day units
      WDU            : RTC_DR_WDU_Field := 16#1#;
      --  Year units in BCD format
      YU             : RTC_DR_YU_Field := 16#0#;
      --  Year tens in BCD format
      YT             : RTC_DR_YT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_DR_Register use record
      DU             at 0 range 0 .. 3;
      DT             at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MU             at 0 range 8 .. 11;
      MT             at 0 range 12 .. 12;
      WDU            at 0 range 13 .. 15;
      YU             at 0 range 16 .. 19;
      YT             at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RTC_ICSR_BIN_Field is Interfaces.Bit_Types.UInt2;
   subtype RTC_ICSR_BCDU_Field is Interfaces.Bit_Types.UInt3;

   --  RTC initialization control and status register
   type RTC_ICSR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  Read-only. Wake-up timer write flag
      WUTWF          : Boolean := True;
      --  Read-only. Shift operation pending
      SHPF           : Boolean := False;
      --  Read-only. Initialization status flag
      INITS          : Boolean := False;
      --  Registers synchronization flag
      RSF            : Boolean := False;
      --  Read-only. Initialization flag
      INITF          : Boolean := False;
      --  Initialization mode
      INIT           : Boolean := False;
      --  Binary mode
      BIN            : RTC_ICSR_BIN_Field := 16#0#;
      --  BCD update (BIN = 10 or 11)
      BCDU           : RTC_ICSR_BCDU_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Recalibration pending Flag
      RECALPF        : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_ICSR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      WUTWF          at 0 range 2 .. 2;
      SHPF           at 0 range 3 .. 3;
      INITS          at 0 range 4 .. 4;
      RSF            at 0 range 5 .. 5;
      INITF          at 0 range 6 .. 6;
      INIT           at 0 range 7 .. 7;
      BIN            at 0 range 8 .. 9;
      BCDU           at 0 range 10 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      RECALPF        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype RTC_PRER_PREDIV_S_Field is Interfaces.Bit_Types.UInt15;
   subtype RTC_PRER_PREDIV_A_Field is Interfaces.Bit_Types.UInt7;

   --  RTC prescaler register
   type RTC_PRER_Register is record
      --  Synchronous prescaler factor
      PREDIV_S       : RTC_PRER_PREDIV_S_Field := 16#FF#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Asynchronous prescaler factor
      PREDIV_A       : RTC_PRER_PREDIV_A_Field := 16#7F#;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_PRER_Register use record
      PREDIV_S       at 0 range 0 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      PREDIV_A       at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype RTC_WUTR_WUT_Field is Interfaces.Bit_Types.UInt16;
   subtype RTC_WUTR_WUTOCLR_Field is Interfaces.Bit_Types.UInt16;

   --  RTC wake-up timer register
   type RTC_WUTR_Register is record
      --  Wake-up auto-reload value bits
      WUT     : RTC_WUTR_WUT_Field := 16#FFFF#;
      --  Wake-up auto-reload output clear value
      WUTOCLR : RTC_WUTR_WUTOCLR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_WUTR_Register use record
      WUT     at 0 range 0 .. 15;
      WUTOCLR at 0 range 16 .. 31;
   end record;

   subtype RTC_CR_WUCKSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype RTC_CR_OSEL_Field is Interfaces.Bit_Types.UInt2;

   --  RTC control register
   type RTC_CR_Register is record
      --  ck_wut wake-up clock selection
      WUCKSEL       : RTC_CR_WUCKSEL_Field := 16#0#;
      --  Timestamp event active edge
      TSEDGE        : Boolean := False;
      --  RTC_REFIN reference clock detection enable (50 or 60 Hz)
      REFCKON       : Boolean := False;
      --  Bypass the shadow registers
      BYPSHAD       : Boolean := False;
      --  Hour format
      FMT           : Boolean := False;
      --  SSR underflow interrupt enable
      SSRUIE        : Boolean := False;
      --  Alarm A enable
      ALRAE         : Boolean := False;
      --  Alarm B enable
      ALRBE         : Boolean := False;
      --  Wake-up timer enable
      WUTE          : Boolean := False;
      --  timestamp enable
      TSE           : Boolean := False;
      --  Alarm A interrupt enable
      ALRAIE        : Boolean := False;
      --  Alarm B interrupt enable
      ALRBIE        : Boolean := False;
      --  Wake-up timer interrupt enable
      WUTIE         : Boolean := False;
      --  Timestamp interrupt enable
      TSIE          : Boolean := False;
      --  Write-only. Add 1 hour (summer time change)
      ADD1H         : Boolean := False;
      --  Write-only. Subtract 1 hour (winter time change)
      SUB1H         : Boolean := False;
      --  Backup
      BKP           : Boolean := False;
      --  Calibration output selection
      COSEL         : Boolean := False;
      --  Output polarity
      POL           : Boolean := False;
      --  Output selection
      OSEL          : RTC_CR_OSEL_Field := 16#0#;
      --  Calibration output enable
      COE           : Boolean := False;
      --  timestamp on internal event enable
      ITSE          : Boolean := False;
      --  Activate timestamp on tamper detection event
      TAMPTS        : Boolean := False;
      --  Tamper detection output enable on TAMPALRM
      TAMPOE        : Boolean := False;
      --  Alarm A flag automatic clear
      ALRAFCLR      : Boolean := False;
      --  Alarm B flag automatic clear
      ALRBFCLR      : Boolean := False;
      --  TAMPALRM pull-up enable
      TAMPALRM_PU   : Boolean := False;
      --  TAMPALRM output type
      TAMPALRM_TYPE : Boolean := False;
      --  RTC_OUT2 output enable
      OUT2EN        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CR_Register use record
      WUCKSEL       at 0 range 0 .. 2;
      TSEDGE        at 0 range 3 .. 3;
      REFCKON       at 0 range 4 .. 4;
      BYPSHAD       at 0 range 5 .. 5;
      FMT           at 0 range 6 .. 6;
      SSRUIE        at 0 range 7 .. 7;
      ALRAE         at 0 range 8 .. 8;
      ALRBE         at 0 range 9 .. 9;
      WUTE          at 0 range 10 .. 10;
      TSE           at 0 range 11 .. 11;
      ALRAIE        at 0 range 12 .. 12;
      ALRBIE        at 0 range 13 .. 13;
      WUTIE         at 0 range 14 .. 14;
      TSIE          at 0 range 15 .. 15;
      ADD1H         at 0 range 16 .. 16;
      SUB1H         at 0 range 17 .. 17;
      BKP           at 0 range 18 .. 18;
      COSEL         at 0 range 19 .. 19;
      POL           at 0 range 20 .. 20;
      OSEL          at 0 range 21 .. 22;
      COE           at 0 range 23 .. 23;
      ITSE          at 0 range 24 .. 24;
      TAMPTS        at 0 range 25 .. 25;
      TAMPOE        at 0 range 26 .. 26;
      ALRAFCLR      at 0 range 27 .. 27;
      ALRBFCLR      at 0 range 28 .. 28;
      TAMPALRM_PU   at 0 range 29 .. 29;
      TAMPALRM_TYPE at 0 range 30 .. 30;
      OUT2EN        at 0 range 31 .. 31;
   end record;

   --  RTC privilege mode control register
   type RTC_PRIVCFGR_Register is record
      --  Alarm A and SSR underflow privilege protection
      ALRAPRIV       : Boolean := False;
      --  Alarm B privilege protection
      ALRBPRIV       : Boolean := False;
      --  Wake-up timer privilege protection
      WUTPRIV        : Boolean := False;
      --  Timestamp privilege protection
      TSPRIV         : Boolean := False;
      --  unspecified
      Reserved_4_12  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Shift register, Delight saving, calibration and reference clock
      --  privilege protection
      CALPRIV        : Boolean := False;
      --  Initialization privilege protection
      INITPRIV       : Boolean := False;
      --  RTC privilege protection
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_PRIVCFGR_Register use record
      ALRAPRIV       at 0 range 0 .. 0;
      ALRBPRIV       at 0 range 1 .. 1;
      WUTPRIV        at 0 range 2 .. 2;
      TSPRIV         at 0 range 3 .. 3;
      Reserved_4_12  at 0 range 4 .. 12;
      CALPRIV        at 0 range 13 .. 13;
      INITPRIV       at 0 range 14 .. 14;
      PRIV           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RTC secure configuration register
   type RTC_SECCFGR_Register is record
      --  Alarm A and SSR underflow protection
      ALRASEC        : Boolean := False;
      --  Alarm B protection
      ALRBSEC        : Boolean := False;
      --  Wake-up timer protection
      WUTSEC         : Boolean := False;
      --  Timestamp protection
      TSSEC          : Boolean := False;
      --  unspecified
      Reserved_4_12  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Shift register, daylight saving, calibration and reference clock
      --  protection
      CALSEC         : Boolean := False;
      --  Initialization protection
      INITSEC        : Boolean := False;
      --  RTC global protection
      SEC            : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SECCFGR_Register use record
      ALRASEC        at 0 range 0 .. 0;
      ALRBSEC        at 0 range 1 .. 1;
      WUTSEC         at 0 range 2 .. 2;
      TSSEC          at 0 range 3 .. 3;
      Reserved_4_12  at 0 range 4 .. 12;
      CALSEC         at 0 range 13 .. 13;
      INITSEC        at 0 range 14 .. 14;
      SEC            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RTC_WPR_KEY_Field is Interfaces.Bit_Types.Byte;

   --  RTC write protection register
   type RTC_WPR_Register is record
      --  Write-only. Write protection key
      KEY           : RTC_WPR_KEY_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_WPR_Register use record
      KEY           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RTC_CALR_CALM_Field is Interfaces.Bit_Types.UInt9;

   --  RTC calibration register
   type RTC_CALR_Register is record
      --  Calibration minus
      CALM           : RTC_CALR_CALM_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  RTC low-power mode
      LPCAL          : Boolean := False;
      --  Use a 16-second calibration cycle period
      CALW16         : Boolean := False;
      --  Use an 8-second calibration cycle period
      CALW8          : Boolean := False;
      --  Increase frequency of RTC by 488.5 ppm
      CALP           : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_CALR_Register use record
      CALM           at 0 range 0 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      LPCAL          at 0 range 12 .. 12;
      CALW16         at 0 range 13 .. 13;
      CALW8          at 0 range 14 .. 14;
      CALP           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RTC_SHIFTR_SUBFS_Field is Interfaces.Bit_Types.UInt15;

   --  RTC shift control register
   type RTC_SHIFTR_Register is record
      --  Write-only. Subtract a fraction of a second
      SUBFS          : RTC_SHIFTR_SUBFS_Field := 16#0#;
      --  unspecified
      Reserved_15_30 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Write-only. Add one second
      ADD1S          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SHIFTR_Register use record
      SUBFS          at 0 range 0 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      ADD1S          at 0 range 31 .. 31;
   end record;

   subtype RTC_TSTR_SU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_TSTR_ST_Field is Interfaces.Bit_Types.UInt3;
   subtype RTC_TSTR_MNU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_TSTR_MNT_Field is Interfaces.Bit_Types.UInt3;
   subtype RTC_TSTR_HU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_TSTR_HT_Field is Interfaces.Bit_Types.UInt2;

   --  RTC timestamp time register
   type RTC_TSTR_Register is record
      --  Read-only. Second units in BCD format.
      SU             : RTC_TSTR_SU_Field;
      --  Read-only. Second tens in BCD format.
      ST             : RTC_TSTR_ST_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit;
      --  Read-only. Minute units in BCD format.
      MNU            : RTC_TSTR_MNU_Field;
      --  Read-only. Minute tens in BCD format.
      MNT            : RTC_TSTR_MNT_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit;
      --  Read-only. Hour units in BCD format.
      HU             : RTC_TSTR_HU_Field;
      --  Read-only. Hour tens in BCD format.
      HT             : RTC_TSTR_HT_Field;
      --  Read-only. AM/PM notation
      PM             : Boolean;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TSTR_Register use record
      SU             at 0 range 0 .. 3;
      ST             at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MNU            at 0 range 8 .. 11;
      MNT            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HU             at 0 range 16 .. 19;
      HT             at 0 range 20 .. 21;
      PM             at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype RTC_TSDR_DU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_TSDR_DT_Field is Interfaces.Bit_Types.UInt2;
   subtype RTC_TSDR_MU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_TSDR_WDU_Field is Interfaces.Bit_Types.UInt3;

   --  RTC timestamp date register
   type RTC_TSDR_Register is record
      --  Read-only. Date units in BCD format
      DU             : RTC_TSDR_DU_Field;
      --  Read-only. Date tens in BCD format
      DT             : RTC_TSDR_DT_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. Month units in BCD format
      MU             : RTC_TSDR_MU_Field;
      --  Read-only. Month tens in BCD format
      MT             : Boolean;
      --  Read-only. Week day units
      WDU            : RTC_TSDR_WDU_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_TSDR_Register use record
      DU             at 0 range 0 .. 3;
      DT             at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MU             at 0 range 8 .. 11;
      MT             at 0 range 12 .. 12;
      WDU            at 0 range 13 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RTC_ALRMAR_SU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_ALRMAR_ST_Field is Interfaces.Bit_Types.UInt3;
   subtype RTC_ALRMAR_MNU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_ALRMAR_MNT_Field is Interfaces.Bit_Types.UInt3;
   subtype RTC_ALRMAR_HU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_ALRMAR_HT_Field is Interfaces.Bit_Types.UInt2;
   subtype RTC_ALRMAR_DU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_ALRMAR_DT_Field is Interfaces.Bit_Types.UInt2;

   --  RTC alarm A register
   type RTC_ALRMAR_Register is record
      --  Second units in BCD format.
      SU    : RTC_ALRMAR_SU_Field := 16#0#;
      --  Second tens in BCD format.
      ST    : RTC_ALRMAR_ST_Field := 16#0#;
      --  Alarm A seconds mask
      MSK1  : Boolean := False;
      --  Minute units in BCD format
      MNU   : RTC_ALRMAR_MNU_Field := 16#0#;
      --  Minute tens in BCD format
      MNT   : RTC_ALRMAR_MNT_Field := 16#0#;
      --  Alarm A minutes mask
      MSK2  : Boolean := False;
      --  Hour units in BCD format
      HU    : RTC_ALRMAR_HU_Field := 16#0#;
      --  Hour tens in BCD format
      HT    : RTC_ALRMAR_HT_Field := 16#0#;
      --  AM/PM notation
      PM    : Boolean := False;
      --  Alarm A hours mask
      MSK3  : Boolean := False;
      --  Date units or day in BCD format
      DU    : RTC_ALRMAR_DU_Field := 16#0#;
      --  Date tens in BCD format
      DT    : RTC_ALRMAR_DT_Field := 16#0#;
      --  Week day selection
      WDSEL : Boolean := False;
      --  Alarm A date mask
      MSK4  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_ALRMAR_Register use record
      SU    at 0 range 0 .. 3;
      ST    at 0 range 4 .. 6;
      MSK1  at 0 range 7 .. 7;
      MNU   at 0 range 8 .. 11;
      MNT   at 0 range 12 .. 14;
      MSK2  at 0 range 15 .. 15;
      HU    at 0 range 16 .. 19;
      HT    at 0 range 20 .. 21;
      PM    at 0 range 22 .. 22;
      MSK3  at 0 range 23 .. 23;
      DU    at 0 range 24 .. 27;
      DT    at 0 range 28 .. 29;
      WDSEL at 0 range 30 .. 30;
      MSK4  at 0 range 31 .. 31;
   end record;

   subtype RTC_ALRMASSR_SS_Field is Interfaces.Bit_Types.UInt15;
   subtype RTC_ALRMASSR_MASKSS_Field is Interfaces.Bit_Types.UInt6;

   --  RTC alarm A subsecond register
   type RTC_ALRMASSR_Register is record
      --  Subseconds value
      SS             : RTC_ALRMASSR_SS_Field := 16#0#;
      --  unspecified
      Reserved_15_23 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Mask the most-significant bits starting at this bit
      MASKSS         : RTC_ALRMASSR_MASKSS_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Clear synchronous counter on alarm (Binary mode only)
      SSCLR          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_ALRMASSR_Register use record
      SS             at 0 range 0 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      MASKSS         at 0 range 24 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      SSCLR          at 0 range 31 .. 31;
   end record;

   subtype RTC_ALRMBR_SU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_ALRMBR_ST_Field is Interfaces.Bit_Types.UInt3;
   subtype RTC_ALRMBR_MNU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_ALRMBR_MNT_Field is Interfaces.Bit_Types.UInt3;
   subtype RTC_ALRMBR_HU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_ALRMBR_HT_Field is Interfaces.Bit_Types.UInt2;
   subtype RTC_ALRMBR_DU_Field is Interfaces.Bit_Types.UInt4;
   subtype RTC_ALRMBR_DT_Field is Interfaces.Bit_Types.UInt2;

   --  RTC alarm B register
   type RTC_ALRMBR_Register is record
      --  Second units in BCD format
      SU    : RTC_ALRMBR_SU_Field := 16#0#;
      --  Second tens in BCD format
      ST    : RTC_ALRMBR_ST_Field := 16#0#;
      --  Alarm B seconds mask
      MSK1  : Boolean := False;
      --  Minute units in BCD format
      MNU   : RTC_ALRMBR_MNU_Field := 16#0#;
      --  Minute tens in BCD format
      MNT   : RTC_ALRMBR_MNT_Field := 16#0#;
      --  Alarm B minutes mask
      MSK2  : Boolean := False;
      --  Hour units in BCD format
      HU    : RTC_ALRMBR_HU_Field := 16#0#;
      --  Hour tens in BCD format
      HT    : RTC_ALRMBR_HT_Field := 16#0#;
      --  AM/PM notation
      PM    : Boolean := False;
      --  Alarm B hours mask
      MSK3  : Boolean := False;
      --  Date units or day in BCD format
      DU    : RTC_ALRMBR_DU_Field := 16#0#;
      --  Date tens in BCD format
      DT    : RTC_ALRMBR_DT_Field := 16#0#;
      --  Week day selection
      WDSEL : Boolean := False;
      --  Alarm B date mask
      MSK4  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_ALRMBR_Register use record
      SU    at 0 range 0 .. 3;
      ST    at 0 range 4 .. 6;
      MSK1  at 0 range 7 .. 7;
      MNU   at 0 range 8 .. 11;
      MNT   at 0 range 12 .. 14;
      MSK2  at 0 range 15 .. 15;
      HU    at 0 range 16 .. 19;
      HT    at 0 range 20 .. 21;
      PM    at 0 range 22 .. 22;
      MSK3  at 0 range 23 .. 23;
      DU    at 0 range 24 .. 27;
      DT    at 0 range 28 .. 29;
      WDSEL at 0 range 30 .. 30;
      MSK4  at 0 range 31 .. 31;
   end record;

   subtype RTC_ALRMBSSR_SS_Field is Interfaces.Bit_Types.UInt15;
   subtype RTC_ALRMBSSR_MASKSS_Field is Interfaces.Bit_Types.UInt6;

   --  RTC alarm B subsecond register
   type RTC_ALRMBSSR_Register is record
      --  Subseconds value
      SS             : RTC_ALRMBSSR_SS_Field := 16#0#;
      --  unspecified
      Reserved_15_23 : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Mask the most-significant bits starting at this bit
      MASKSS         : RTC_ALRMBSSR_MASKSS_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Clear synchronous counter on alarm (Binary mode only)
      SSCLR          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_ALRMBSSR_Register use record
      SS             at 0 range 0 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      MASKSS         at 0 range 24 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      SSCLR          at 0 range 31 .. 31;
   end record;

   --  RTC status register
   type RTC_SR_Register is record
      --  Read-only. Alarm A flag
      ALRAF         : Boolean;
      --  Read-only. Alarm B flag
      ALRBF         : Boolean;
      --  Read-only. Wake-up timer flag
      WUTF          : Boolean;
      --  Read-only. Timestamp flag
      TSF           : Boolean;
      --  Read-only. Timestamp overflow flag
      TSOVF         : Boolean;
      --  Read-only. Internal timestamp flag
      ITSF          : Boolean;
      --  Read-only. SSR underflow flag
      SSRUF         : Boolean;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SR_Register use record
      ALRAF         at 0 range 0 .. 0;
      ALRBF         at 0 range 1 .. 1;
      WUTF          at 0 range 2 .. 2;
      TSF           at 0 range 3 .. 3;
      TSOVF         at 0 range 4 .. 4;
      ITSF          at 0 range 5 .. 5;
      SSRUF         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RTC non-secure masked interrupt status register
   type RTC_MISR_Register is record
      --  Read-only. Alarm A masked flag
      ALRAMF        : Boolean;
      --  Read-only. Alarm B non-secure masked flag
      ALRBMF        : Boolean;
      --  Read-only. Wake-up timer non-secure masked flag
      WUTMF         : Boolean;
      --  Read-only. Timestamp non-secure masked flag
      TSMF          : Boolean;
      --  Read-only. Timestamp overflow non-secure masked flag
      TSOVMF        : Boolean;
      --  Read-only. Internal timestamp non-secure masked flag
      ITSMF         : Boolean;
      --  Read-only. SSR underflow non-secure masked flag
      SSRUMF        : Boolean;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_MISR_Register use record
      ALRAMF        at 0 range 0 .. 0;
      ALRBMF        at 0 range 1 .. 1;
      WUTMF         at 0 range 2 .. 2;
      TSMF          at 0 range 3 .. 3;
      TSOVMF        at 0 range 4 .. 4;
      ITSMF         at 0 range 5 .. 5;
      SSRUMF        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RTC secure masked interrupt status register
   type RTC_SMISR_Register is record
      --  Read-only. Alarm A interrupt secure masked flag
      ALRAMF        : Boolean;
      --  Read-only. Alarm B interrupt secure masked flag
      ALRBMF        : Boolean;
      --  Read-only. Wake-up timer interrupt secure masked flag
      WUTMF         : Boolean;
      --  Read-only. Timestamp interrupt secure masked flag
      TSMF          : Boolean;
      --  Read-only. Timestamp overflow interrupt secure masked flag
      TSOVMF        : Boolean;
      --  Read-only. Internal timestamp interrupt secure masked flag
      ITSMF         : Boolean;
      --  Read-only. SSR underflow secure masked flag
      SSRUMF        : Boolean;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SMISR_Register use record
      ALRAMF        at 0 range 0 .. 0;
      ALRBMF        at 0 range 1 .. 1;
      WUTMF         at 0 range 2 .. 2;
      TSMF          at 0 range 3 .. 3;
      TSOVMF        at 0 range 4 .. 4;
      ITSMF         at 0 range 5 .. 5;
      SSRUMF        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RTC status clear register
   type RTC_SCR_Register is record
      --  Write-only. Clear alarm A flag
      CALRAF        : Boolean := False;
      --  Write-only. Clear alarm B flag
      CALRBF        : Boolean := False;
      --  Write-only. Clear wake-up timer flag
      CWUTF         : Boolean := False;
      --  Write-only. Clear timestamp flag
      CTSF          : Boolean := False;
      --  Write-only. Clear timestamp overflow flag
      CTSOVF        : Boolean := False;
      --  Write-only. Clear internal timestamp flag
      CITSF         : Boolean := False;
      --  Write-only. Clear SSR underflow flag
      CSSRUF        : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTC_SCR_Register use record
      CALRAF        at 0 range 0 .. 0;
      CALRBF        at 0 range 1 .. 1;
      CWUTF         at 0 range 2 .. 2;
      CTSF          at 0 range 3 .. 3;
      CTSOVF        at 0 range 4 .. 4;
      CITSF         at 0 range 5 .. 5;
      CSSRUF        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Real-time clock
   type RTC_Peripheral is record
      --  RTC time register
      RTC_TR       : aliased RTC_TR_Register;
      --  RTC date register
      RTC_DR       : aliased RTC_DR_Register;
      --  RTC subsecond register
      RTC_SSR      : aliased Interfaces.Bit_Types.UInt32;
      --  RTC initialization control and status register
      RTC_ICSR     : aliased RTC_ICSR_Register;
      --  RTC prescaler register
      RTC_PRER     : aliased RTC_PRER_Register;
      --  RTC wake-up timer register
      RTC_WUTR     : aliased RTC_WUTR_Register;
      --  RTC control register
      RTC_CR       : aliased RTC_CR_Register;
      --  RTC privilege mode control register
      RTC_PRIVCFGR : aliased RTC_PRIVCFGR_Register;
      --  RTC secure configuration register
      RTC_SECCFGR  : aliased RTC_SECCFGR_Register;
      --  RTC write protection register
      RTC_WPR      : aliased RTC_WPR_Register;
      --  RTC calibration register
      RTC_CALR     : aliased RTC_CALR_Register;
      --  RTC shift control register
      RTC_SHIFTR   : aliased RTC_SHIFTR_Register;
      --  RTC timestamp time register
      RTC_TSTR     : aliased RTC_TSTR_Register;
      --  RTC timestamp date register
      RTC_TSDR     : aliased RTC_TSDR_Register;
      --  RTC timestamp subsecond register
      RTC_TSSSR    : aliased Interfaces.Bit_Types.UInt32;
      --  RTC alarm A register
      RTC_ALRMAR   : aliased RTC_ALRMAR_Register;
      --  RTC alarm A subsecond register
      RTC_ALRMASSR : aliased RTC_ALRMASSR_Register;
      --  RTC alarm B register
      RTC_ALRMBR   : aliased RTC_ALRMBR_Register;
      --  RTC alarm B subsecond register
      RTC_ALRMBSSR : aliased RTC_ALRMBSSR_Register;
      --  RTC status register
      RTC_SR       : aliased RTC_SR_Register;
      --  RTC non-secure masked interrupt status register
      RTC_MISR     : aliased RTC_MISR_Register;
      --  RTC secure masked interrupt status register
      RTC_SMISR    : aliased RTC_SMISR_Register;
      --  RTC status clear register
      RTC_SCR      : aliased RTC_SCR_Register;
      --  RTC alarm A binary mode register
      RTC_ALRABINR : aliased Interfaces.Bit_Types.UInt32;
      --  RTC alarm B binary mode register
      RTC_ALRBBINR : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for RTC_Peripheral use record
      RTC_TR       at 16#0# range 0 .. 31;
      RTC_DR       at 16#4# range 0 .. 31;
      RTC_SSR      at 16#8# range 0 .. 31;
      RTC_ICSR     at 16#C# range 0 .. 31;
      RTC_PRER     at 16#10# range 0 .. 31;
      RTC_WUTR     at 16#14# range 0 .. 31;
      RTC_CR       at 16#18# range 0 .. 31;
      RTC_PRIVCFGR at 16#1C# range 0 .. 31;
      RTC_SECCFGR  at 16#20# range 0 .. 31;
      RTC_WPR      at 16#24# range 0 .. 31;
      RTC_CALR     at 16#28# range 0 .. 31;
      RTC_SHIFTR   at 16#2C# range 0 .. 31;
      RTC_TSTR     at 16#30# range 0 .. 31;
      RTC_TSDR     at 16#34# range 0 .. 31;
      RTC_TSSSR    at 16#38# range 0 .. 31;
      RTC_ALRMAR   at 16#40# range 0 .. 31;
      RTC_ALRMASSR at 16#44# range 0 .. 31;
      RTC_ALRMBR   at 16#48# range 0 .. 31;
      RTC_ALRMBSSR at 16#4C# range 0 .. 31;
      RTC_SR       at 16#50# range 0 .. 31;
      RTC_MISR     at 16#54# range 0 .. 31;
      RTC_SMISR    at 16#58# range 0 .. 31;
      RTC_SCR      at 16#5C# range 0 .. 31;
      RTC_ALRABINR at 16#70# range 0 .. 31;
      RTC_ALRBBINR at 16#74# range 0 .. 31;
   end record;

   --  Real-time clock
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => RTC_Base;

   --  Real-time clock
   RTC_S_Periph : aliased RTC_Peripheral
     with Import, Address => RTC_S_Base;

end Interfaces.STM32.RTC;
