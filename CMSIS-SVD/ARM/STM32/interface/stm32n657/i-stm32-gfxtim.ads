--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.GFXTIM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype GFXTIM_CR_TES_Field is Interfaces.Bit_Types.UInt2;
   subtype GFXTIM_CR_SYNCS_Field is Interfaces.Bit_Types.UInt2;

   --  GFXTIM configuration register
   type GFXTIM_CR_Register is record
      --  tearing source
      TES            : GFXTIM_CR_TES_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  tearing--effect polarity
      TEPOL          : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  synchronization source
      SYNCS          : GFXTIM_CR_SYNCS_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  frame-clock calibration output enable
      FCCOE          : Boolean := False;
      --  line-clock calibration output enable
      LCCOE          : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_CR_Register use record
      TES            at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      TEPOL          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SYNCS          at 0 range 8 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      FCCOE          at 0 range 16 .. 16;
      LCCOE          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype GFXTIM_CGCR_LCS_Field is Interfaces.Bit_Types.UInt3;
   subtype GFXTIM_CGCR_LCCHRS_Field is Interfaces.Bit_Types.UInt3;
   subtype GFXTIM_CGCR_FCS_Field is Interfaces.Bit_Types.UInt3;
   subtype GFXTIM_CGCR_FCCCS_Field is Interfaces.Bit_Types.UInt3;
   subtype GFXTIM_CGCR_FCCHRS_Field is Interfaces.Bit_Types.UInt3;

   --  GFXTIM clock generator configuration register
   type GFXTIM_CGCR_Register is record
      --  line clock source
      LCS            : GFXTIM_CGCR_LCS_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  line clock counter clock source
      LCCCS          : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. line clock counter force reload
      LCCFR          : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  line clock counter hardware reload source
      LCCHRS         : GFXTIM_CGCR_LCCHRS_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  frame clock source
      FCS            : GFXTIM_CGCR_FCS_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  frame clock counter clock source
      FCCCS          : GFXTIM_CGCR_FCCCS_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. frame clock counter force reload
      FCCFR          : Boolean := False;
      --  unspecified
      Reserved_25_27 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  frame- -clock counter hardware reload source
      FCCHRS         : GFXTIM_CGCR_FCCHRS_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_CGCR_Register use record
      LCS            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      LCCCS          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      LCCFR          at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      LCCHRS         at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FCS            at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      FCCCS          at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      FCCFR          at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      FCCHRS         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  GFXTIM timers configuration register
   type GFXTIM_TCR_Register is record
      --  Write-only. absolute frame counter enable
      AFCEN          : Boolean := False;
      --  Write-only. force absolute frame counter reset
      FAFCR          : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. absolute line counter enable
      ALCEN          : Boolean := False;
      --  Write-only. force absolute line counter reset
      FALCR          : Boolean := False;
      --  unspecified
      Reserved_6_15  : Interfaces.Bit_Types.UInt10 := 16#0#;
      --  Write-only. relative frame counter 1 enable
      RFC1EN         : Boolean := False;
      --  relative frame counter 1 continuous mode
      RFC1CM         : Boolean := False;
      --  Write-only. force relative frame counter 1 reload
      FRFC1R         : Boolean := False;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. relative frame counter 2 enable
      RFC2EN         : Boolean := False;
      --  relative frame counter 2 continuous mode
      RFC2CM         : Boolean := False;
      --  Write-only. force relative frame counter 2 reload
      FRFC2R         : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_TCR_Register use record
      AFCEN          at 0 range 0 .. 0;
      FAFCR          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ALCEN          at 0 range 4 .. 4;
      FALCR          at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      RFC1EN         at 0 range 16 .. 16;
      RFC1CM         at 0 range 17 .. 17;
      FRFC1R         at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      RFC2EN         at 0 range 20 .. 20;
      RFC2CM         at 0 range 21 .. 21;
      FRFC2R         at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  GFXTIM timers disable register
   type GFXTIM_TDR_Register is record
      --  Write-only. absolute frame counter disable
      AFCDIS         : Boolean := False;
      --  unspecified
      Reserved_1_3   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. absolute line counter disable
      ALCDIS         : Boolean := False;
      --  unspecified
      Reserved_5_15  : Interfaces.Bit_Types.UInt11 := 16#0#;
      --  Write-only. relative frame counter 1 disable
      RFC1DIS        : Boolean := False;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. relative frame counter 2 disable
      RFC2DIS        : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_TDR_Register use record
      AFCDIS         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      ALCDIS         at 0 range 4 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      RFC1DIS        at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      RFC2DIS        at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  GFXTIM events control register
   type GFXTIM_EVCR_Register is record
      --  event 1 enable
      EV1EN         : Boolean := False;
      --  event 2 enable
      EV2EN         : Boolean := False;
      --  event 3 enable
      EV3EN         : Boolean := False;
      --  event 4 enable
      EV4EN         : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_EVCR_Register use record
      EV1EN         at 0 range 0 .. 0;
      EV2EN         at 0 range 1 .. 1;
      EV3EN         at 0 range 2 .. 2;
      EV4EN         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype GFXTIM_EVSR_LES1_Field is Interfaces.Bit_Types.UInt3;
   subtype GFXTIM_EVSR_FES1_Field is Interfaces.Bit_Types.UInt3;
   subtype GFXTIM_EVSR_LES2_Field is Interfaces.Bit_Types.UInt3;
   subtype GFXTIM_EVSR_FES2_Field is Interfaces.Bit_Types.UInt3;
   subtype GFXTIM_EVSR_LES3_Field is Interfaces.Bit_Types.UInt3;
   subtype GFXTIM_EVSR_FES3_Field is Interfaces.Bit_Types.UInt3;
   subtype GFXTIM_EVSR_LES4_Field is Interfaces.Bit_Types.UInt3;
   subtype GFXTIM_EVSR_FES4_Field is Interfaces.Bit_Types.UInt3;

   --  GFXTIM events selection register
   type GFXTIM_EVSR_Register is record
      --  line-event selection 1
      LES1           : GFXTIM_EVSR_LES1_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  frame-event selection 1
      FES1           : GFXTIM_EVSR_FES1_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  line-event selection 2
      LES2           : GFXTIM_EVSR_LES2_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : Interfaces.Bit_Types.Bit := 16#0#;
      --  frame-event selection 2
      FES2           : GFXTIM_EVSR_FES2_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  line-event selection 3
      LES3           : GFXTIM_EVSR_LES3_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  frame-event selection 3
      FES3           : GFXTIM_EVSR_FES3_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  line-event selection 4
      LES4           : GFXTIM_EVSR_LES4_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  frame-event selection 4
      FES4           : GFXTIM_EVSR_FES4_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_EVSR_Register use record
      LES1           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      FES1           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LES2           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      FES2           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      LES3           at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      FES3           at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      LES4           at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      FES4           at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype GFXTIM_WDGTCR_WDGHRC_Field is Interfaces.Bit_Types.UInt2;
   subtype GFXTIM_WDGTCR_WDGCS_Field is Interfaces.Bit_Types.UInt4;

   --  GFXTIM watchdog timer configuration register
   type GFXTIM_WDGTCR_Register is record
      --  Write-only. watchdog enable
      WDGEN          : Boolean := False;
      --  Write-only. watchdog disable
      WDGDIS         : Boolean := False;
      --  Read-only. watchdog status
      WDGS           : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  watchdog hardware reload configuration
      WDGHRC         : GFXTIM_WDGTCR_WDGHRC_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  watchdog clock source
      WDGCS          : GFXTIM_WDGTCR_WDGCS_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. force watchdog reload
      FWDGR          : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_WDGTCR_Register use record
      WDGEN          at 0 range 0 .. 0;
      WDGDIS         at 0 range 1 .. 1;
      WDGS           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      WDGHRC         at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      WDGCS          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FWDGR          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GFXTIM interrupt status register
   type GFXTIM_ISR_Register is record
      --  Read-only. absolute frame counter overflow flag
      AFCOF          : Boolean;
      --  Read-only. absolute line counter overflow flag
      ALCOF          : Boolean;
      --  Read-only. tearing-effect flag
      TEF            : Boolean;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit;
      --  Read-only. absolute frame counter compare 1 flag
      AFCC1F         : Boolean;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3;
      --  Read-only. absolute line counter compare 1 flag
      ALCC1F         : Boolean;
      --  Read-only. absolute line counter compare 2 flag
      ALCC2F         : Boolean;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2;
      --  Read-only. relative frame counter 1 reload flag
      RFC1RF         : Boolean;
      --  Read-only. relative frame counter 2 reload flag
      RFC2RF         : Boolean;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2;
      --  Read-only. event 1 flag
      EV1F           : Boolean;
      --  Read-only. event 2 flag
      EV2F           : Boolean;
      --  Read-only. event 3 flag
      EV3F           : Boolean;
      --  Read-only. event 4 flag
      EV4F           : Boolean;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4;
      --  Read-only. watchdog alarm flag
      WDGAF          : Boolean;
      --  Read-only. watchdog pre-alarm flag
      WDGPF          : Boolean;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_ISR_Register use record
      AFCOF          at 0 range 0 .. 0;
      ALCOF          at 0 range 1 .. 1;
      TEF            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      AFCC1F         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ALCC1F         at 0 range 8 .. 8;
      ALCC2F         at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RFC1RF         at 0 range 12 .. 12;
      RFC2RF         at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      EV1F           at 0 range 16 .. 16;
      EV2F           at 0 range 17 .. 17;
      EV3F           at 0 range 18 .. 18;
      EV4F           at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      WDGAF          at 0 range 24 .. 24;
      WDGPF          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  GFXTIM interrupt clear register
   type GFXTIM_ICR_Register is record
      --  Write-only. clear absolute frame counter overflow flag
      CAFCOF         : Boolean := False;
      --  Write-only. clear absolute line counter overflow flag
      CALCOF         : Boolean := False;
      --  Write-only. clear tearing-effect flag
      CTEF           : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. clear absolute frame counter compare 1 flag
      CAFCC1F        : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. clear absolute line counter compare 1 flag
      CALCC1F        : Boolean := False;
      --  Write-only. clear absolute line counter compare 2 flag
      CALCC2F        : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. clear relative frame counter 1 reload flag
      CRFC1RF        : Boolean := False;
      --  Write-only. clear relative frame counter 2 reload flag
      CRFC2RF        : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. clear event 1 flag
      CEV1F          : Boolean := False;
      --  Write-only. clear event 2 flag
      CEV2F          : Boolean := False;
      --  Write-only. clear event 3 flag
      CEV3F          : Boolean := False;
      --  Write-only. clear event 4 flag
      CEV4F          : Boolean := False;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. clear watchdog alarm flag
      CWDGAF         : Boolean := False;
      --  Write-only. clear watchdog pre-alarm flag
      CWDGPF         : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_ICR_Register use record
      CAFCOF         at 0 range 0 .. 0;
      CALCOF         at 0 range 1 .. 1;
      CTEF           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CAFCC1F        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CALCC1F        at 0 range 8 .. 8;
      CALCC2F        at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CRFC1RF        at 0 range 12 .. 12;
      CRFC2RF        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CEV1F          at 0 range 16 .. 16;
      CEV2F          at 0 range 17 .. 17;
      CEV3F          at 0 range 18 .. 18;
      CEV4F          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      CWDGAF         at 0 range 24 .. 24;
      CWDGPF         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  GFXTIM interrupt enable register
   type GFXTIM_IER_Register is record
      --  absolute frame counter overflow interrupt enable
      AFCOIE         : Boolean := False;
      --  absolute line counter overflow interrupt enable
      ALCOIE         : Boolean := False;
      --  tearing-effect interrupt enable
      TEIE           : Boolean := False;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  absolute frame counter compare 1 interrupt enable
      AFCC1IE        : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  absolute line counter compare 1 interrupt enable
      ALCC1IE        : Boolean := False;
      --  absolute line counter compare 2 interrupt enable
      ALCC2IE        : Boolean := False;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  relative frame counter 1 reload interrupt enable
      RFC1RIE        : Boolean := False;
      --  relative frame counter 2 reload interrupt enable
      RFC2RIE        : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  event 1 interrupt enable
      EV1IE          : Boolean := False;
      --  event 2 interrupt enable
      EV2IE          : Boolean := False;
      --  event 3 interrupt enable
      EV3IE          : Boolean := False;
      --  event 4 interrupt enable
      EV4IE          : Boolean := False;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  watchdog alarm interrupt enable
      WDGAIE         : Boolean := False;
      --  watchdog pre-alarm interrupt enable
      WDGPIE         : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_IER_Register use record
      AFCOIE         at 0 range 0 .. 0;
      ALCOIE         at 0 range 1 .. 1;
      TEIE           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      AFCC1IE        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ALCC1IE        at 0 range 8 .. 8;
      ALCC2IE        at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RFC1RIE        at 0 range 12 .. 12;
      RFC2RIE        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      EV1IE          at 0 range 16 .. 16;
      EV2IE          at 0 range 17 .. 17;
      EV3IE          at 0 range 18 .. 18;
      EV4IE          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      WDGAIE         at 0 range 24 .. 24;
      WDGPIE         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  GFXTIM timers status register
   type GFXTIM_TSR_Register is record
      --  Read-only. absolute frame counter status
      AFCS           : Boolean;
      --  unspecified
      Reserved_1_3   : Interfaces.Bit_Types.UInt3;
      --  Read-only. absolute line counter status
      ALCS           : Boolean;
      --  unspecified
      Reserved_5_15  : Interfaces.Bit_Types.UInt11;
      --  Read-only. relative frame counter 1 status
      RFC1S          : Boolean;
      --  unspecified
      Reserved_17_19 : Interfaces.Bit_Types.UInt3;
      --  Read-only. relative frame counter 2 status
      RFC2S          : Boolean;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_TSR_Register use record
      AFCS           at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      ALCS           at 0 range 4 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      RFC1S          at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      RFC2S          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype GFXTIM_LCCRR_RELOAD_Field is Interfaces.Bit_Types.UInt22;

   --  GFXTIM line clock counter reload register
   type GFXTIM_LCCRR_Register is record
      --  reload value
      RELOAD         : GFXTIM_LCCRR_RELOAD_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_LCCRR_Register use record
      RELOAD         at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype GFXTIM_FCCRR_RELOAD_Field is Interfaces.Bit_Types.UInt12;

   --  GFXTIM frame clock counter reload register
   type GFXTIM_FCCRR_Register is record
      --  reload value
      RELOAD         : GFXTIM_FCCRR_RELOAD_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_FCCRR_Register use record
      RELOAD         at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype GFXTIM_ATR_LINE_Field is Interfaces.Bit_Types.UInt12;
   subtype GFXTIM_ATR_FRAME_Field is Interfaces.Bit_Types.UInt20;

   --  GFXTIM absolute time register
   type GFXTIM_ATR_Register is record
      --  Read-only. line number
      LINE  : GFXTIM_ATR_LINE_Field;
      --  Read-only. fame number
      FRAME : GFXTIM_ATR_FRAME_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_ATR_Register use record
      LINE  at 0 range 0 .. 11;
      FRAME at 0 range 12 .. 31;
   end record;

   subtype GFXTIM_AFCR_FRAME_Field is Interfaces.Bit_Types.UInt20;

   --  GFXTIM absolute frame counter register
   type GFXTIM_AFCR_Register is record
      --  frame number
      FRAME          : GFXTIM_AFCR_FRAME_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_AFCR_Register use record
      FRAME          at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype GFXTIM_ALCR_LINE_Field is Interfaces.Bit_Types.UInt12;

   --  GFXTIM absolute line counter register
   type GFXTIM_ALCR_Register is record
      --  line number
      LINE           : GFXTIM_ALCR_LINE_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_ALCR_Register use record
      LINE           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype GFXTIM_AFCC1R_FRAME_Field is Interfaces.Bit_Types.UInt20;

   --  GFXTIM absolute frame counter compare 1 register
   type GFXTIM_AFCC1R_Register is record
      --  frame number
      FRAME          : GFXTIM_AFCC1R_FRAME_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_AFCC1R_Register use record
      FRAME          at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype GFXTIM_ALCC1R_LINE_Field is Interfaces.Bit_Types.UInt12;

   --  GFXTIM absolute line counter compare 1 register
   type GFXTIM_ALCC1R_Register is record
      --  line number
      LINE           : GFXTIM_ALCC1R_LINE_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_ALCC1R_Register use record
      LINE           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype GFXTIM_ALCC2R_LINE_Field is Interfaces.Bit_Types.UInt12;

   --  GFXTIM absolute line counter compare 2 register
   type GFXTIM_ALCC2R_Register is record
      --  line number
      LINE           : GFXTIM_ALCC2R_LINE_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_ALCC2R_Register use record
      LINE           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype GFXTIM_RFC1R_FRAME_Field is Interfaces.Bit_Types.UInt12;

   --  GFXTIM relative frame counter 1 register
   type GFXTIM_RFC1R_Register is record
      --  Read-only. frame number
      FRAME          : GFXTIM_RFC1R_FRAME_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_RFC1R_Register use record
      FRAME          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype GFXTIM_RFC1RR_FRAME_Field is Interfaces.Bit_Types.UInt12;

   --  GFXTIM relative frame counter 1 reload register
   type GFXTIM_RFC1RR_Register is record
      --  frame reload value
      FRAME          : GFXTIM_RFC1RR_FRAME_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_RFC1RR_Register use record
      FRAME          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype GFXTIM_RFC2R_FRAME_Field is Interfaces.Bit_Types.UInt12;

   --  GFXTIM relative frame counter 2 register
   type GFXTIM_RFC2R_Register is record
      --  Read-only. frame number
      FRAME          : GFXTIM_RFC2R_FRAME_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_RFC2R_Register use record
      FRAME          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype GFXTIM_RFC2RR_FRAME_Field is Interfaces.Bit_Types.UInt12;

   --  GFXTIM relative frame counter 2 reload register
   type GFXTIM_RFC2RR_Register is record
      --  frame reload value
      FRAME          : GFXTIM_RFC2RR_FRAME_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_RFC2RR_Register use record
      FRAME          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype GFXTIM_WDGCR_VALUE_Field is Interfaces.Bit_Types.UInt16;

   --  GFXTIM watchdog counter register
   type GFXTIM_WDGCR_Register is record
      --  Read-only. value
      VALUE          : GFXTIM_WDGCR_VALUE_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_WDGCR_Register use record
      VALUE          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GFXTIM_WDGRR_RELOAD_Field is Interfaces.Bit_Types.UInt16;

   --  GFXTIM watchdog reload register
   type GFXTIM_WDGRR_Register is record
      --  reload value
      RELOAD         : GFXTIM_WDGRR_RELOAD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_WDGRR_Register use record
      RELOAD         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GFXTIM_WDGPAR_PREALARM_Field is Interfaces.Bit_Types.UInt16;

   --  GFXTIM watchdog pre-alarm register
   type GFXTIM_WDGPAR_Register is record
      --  pre-alarm value
      PREALARM       : GFXTIM_WDGPAR_PREALARM_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GFXTIM_WDGPAR_Register use record
      PREALARM       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Graphic timer
   type GFXTIM_Peripheral is record
      --  GFXTIM configuration register
      GFXTIM_CR     : aliased GFXTIM_CR_Register;
      --  GFXTIM clock generator configuration register
      GFXTIM_CGCR   : aliased GFXTIM_CGCR_Register;
      --  GFXTIM timers configuration register
      GFXTIM_TCR    : aliased GFXTIM_TCR_Register;
      --  GFXTIM timers disable register
      GFXTIM_TDR    : aliased GFXTIM_TDR_Register;
      --  GFXTIM events control register
      GFXTIM_EVCR   : aliased GFXTIM_EVCR_Register;
      --  GFXTIM events selection register
      GFXTIM_EVSR   : aliased GFXTIM_EVSR_Register;
      --  GFXTIM watchdog timer configuration register
      GFXTIM_WDGTCR : aliased GFXTIM_WDGTCR_Register;
      --  GFXTIM interrupt status register
      GFXTIM_ISR    : aliased GFXTIM_ISR_Register;
      --  GFXTIM interrupt clear register
      GFXTIM_ICR    : aliased GFXTIM_ICR_Register;
      --  GFXTIM interrupt enable register
      GFXTIM_IER    : aliased GFXTIM_IER_Register;
      --  GFXTIM timers status register
      GFXTIM_TSR    : aliased GFXTIM_TSR_Register;
      --  GFXTIM line clock counter reload register
      GFXTIM_LCCRR  : aliased GFXTIM_LCCRR_Register;
      --  GFXTIM frame clock counter reload register
      GFXTIM_FCCRR  : aliased GFXTIM_FCCRR_Register;
      --  GFXTIM absolute time register
      GFXTIM_ATR    : aliased GFXTIM_ATR_Register;
      --  GFXTIM absolute frame counter register
      GFXTIM_AFCR   : aliased GFXTIM_AFCR_Register;
      --  GFXTIM absolute line counter register
      GFXTIM_ALCR   : aliased GFXTIM_ALCR_Register;
      --  GFXTIM absolute frame counter compare 1 register
      GFXTIM_AFCC1R : aliased GFXTIM_AFCC1R_Register;
      --  GFXTIM absolute line counter compare 1 register
      GFXTIM_ALCC1R : aliased GFXTIM_ALCC1R_Register;
      --  GFXTIM absolute line counter compare 2 register
      GFXTIM_ALCC2R : aliased GFXTIM_ALCC2R_Register;
      --  GFXTIM relative frame counter 1 register
      GFXTIM_RFC1R  : aliased GFXTIM_RFC1R_Register;
      --  GFXTIM relative frame counter 1 reload register
      GFXTIM_RFC1RR : aliased GFXTIM_RFC1RR_Register;
      --  GFXTIM relative frame counter 2 register
      GFXTIM_RFC2R  : aliased GFXTIM_RFC2R_Register;
      --  GFXTIM relative frame counter 2 reload register
      GFXTIM_RFC2RR : aliased GFXTIM_RFC2RR_Register;
      --  GFXTIM watchdog counter register
      GFXTIM_WDGCR  : aliased GFXTIM_WDGCR_Register;
      --  GFXTIM watchdog reload register
      GFXTIM_WDGRR  : aliased GFXTIM_WDGRR_Register;
      --  GFXTIM watchdog pre-alarm register
      GFXTIM_WDGPAR : aliased GFXTIM_WDGPAR_Register;
   end record
     with Volatile;

   for GFXTIM_Peripheral use record
      GFXTIM_CR     at 16#0# range 0 .. 31;
      GFXTIM_CGCR   at 16#4# range 0 .. 31;
      GFXTIM_TCR    at 16#8# range 0 .. 31;
      GFXTIM_TDR    at 16#C# range 0 .. 31;
      GFXTIM_EVCR   at 16#10# range 0 .. 31;
      GFXTIM_EVSR   at 16#14# range 0 .. 31;
      GFXTIM_WDGTCR at 16#20# range 0 .. 31;
      GFXTIM_ISR    at 16#30# range 0 .. 31;
      GFXTIM_ICR    at 16#34# range 0 .. 31;
      GFXTIM_IER    at 16#38# range 0 .. 31;
      GFXTIM_TSR    at 16#3C# range 0 .. 31;
      GFXTIM_LCCRR  at 16#40# range 0 .. 31;
      GFXTIM_FCCRR  at 16#44# range 0 .. 31;
      GFXTIM_ATR    at 16#50# range 0 .. 31;
      GFXTIM_AFCR   at 16#54# range 0 .. 31;
      GFXTIM_ALCR   at 16#58# range 0 .. 31;
      GFXTIM_AFCC1R at 16#60# range 0 .. 31;
      GFXTIM_ALCC1R at 16#70# range 0 .. 31;
      GFXTIM_ALCC2R at 16#74# range 0 .. 31;
      GFXTIM_RFC1R  at 16#80# range 0 .. 31;
      GFXTIM_RFC1RR at 16#84# range 0 .. 31;
      GFXTIM_RFC2R  at 16#88# range 0 .. 31;
      GFXTIM_RFC2RR at 16#8C# range 0 .. 31;
      GFXTIM_WDGCR  at 16#A0# range 0 .. 31;
      GFXTIM_WDGRR  at 16#A4# range 0 .. 31;
      GFXTIM_WDGPAR at 16#A8# range 0 .. 31;
   end record;

   --  Graphic timer
   GFXTIM_Periph : aliased GFXTIM_Peripheral
     with Import, Address => GFXTIM_Base;

   --  Graphic timer
   GFXTIM_S_Periph : aliased GFXTIM_Peripheral
     with Import, Address => GFXTIM_S_Base;

end Interfaces.STM32.GFXTIM;
