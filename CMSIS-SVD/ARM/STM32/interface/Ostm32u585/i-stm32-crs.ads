--
--  Copyright (C) 2022, AdaCore
--

--  This spec has been automatically generated from STM32U5xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.CRS is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR_TRIM_Field is Interfaces.Bit_Types.UInt7;

   --  control register
   type CR_Register is record
      --  SYNC event OK interrupt enable
      SYNCOKIE       : Boolean := False;
      --  SYNC warning interrupt enable
      SYNCWARNIE     : Boolean := False;
      --  Synchronization or trimming error interrupt enable
      ERRIE          : Boolean := False;
      --  Expected SYNC interrupt enable
      ESYNCIE        : Boolean := False;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Frequency error counter enable
      CEN            : Boolean := False;
      --  Automatic trimming enable
      AUTOTRIMEN     : Boolean := False;
      --  Generate software SYNC event
      SWSYNC         : Boolean := False;
      --  HSI48 oscillator smooth trimming
      TRIM           : CR_TRIM_Field := 16#40#;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      SYNCOKIE       at 0 range 0 .. 0;
      SYNCWARNIE     at 0 range 1 .. 1;
      ERRIE          at 0 range 2 .. 2;
      ESYNCIE        at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      CEN            at 0 range 5 .. 5;
      AUTOTRIMEN     at 0 range 6 .. 6;
      SWSYNC         at 0 range 7 .. 7;
      TRIM           at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype CFGR_RELOAD_Field is Interfaces.Bit_Types.UInt16;
   subtype CFGR_FELIM_Field is Interfaces.Bit_Types.Byte;
   subtype CFGR_SYNCDIV_Field is Interfaces.Bit_Types.UInt3;
   subtype CFGR_SYNCSRC_Field is Interfaces.Bit_Types.UInt2;

   --  configuration register
   type CFGR_Register is record
      --  Counter reload value
      RELOAD         : CFGR_RELOAD_Field := 16#BB7F#;
      --  Frequency error limit
      FELIM          : CFGR_FELIM_Field := 16#22#;
      --  SYNC divider
      SYNCDIV        : CFGR_SYNCDIV_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.Bit_Types.Bit := 16#0#;
      --  SYNC signal source selection
      SYNCSRC        : CFGR_SYNCSRC_Field := 16#2#;
      --  unspecified
      Reserved_30_30 : Interfaces.Bit_Types.Bit := 16#0#;
      --  SYNC polarity selection
      SYNCPOL        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      RELOAD         at 0 range 0 .. 15;
      FELIM          at 0 range 16 .. 23;
      SYNCDIV        at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SYNCSRC        at 0 range 28 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      SYNCPOL        at 0 range 31 .. 31;
   end record;

   subtype ISR_FECAP_Field is Interfaces.Bit_Types.UInt16;

   --  interrupt and status register
   type ISR_Register is record
      --  Read-only. SYNC event OK flag
      SYNCOKF        : Boolean;
      --  Read-only. SYNC warning flag
      SYNCWARNF      : Boolean;
      --  Read-only. Error flag
      ERRF           : Boolean;
      --  Read-only. Expected SYNC flag
      ESYNCF         : Boolean;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4;
      --  Read-only. SYNC error
      SYNCERR        : Boolean;
      --  Read-only. SYNC missed
      SYNCMISS       : Boolean;
      --  Read-only. Trimming overflow or underflow
      TRIMOVF        : Boolean;
      --  unspecified
      Reserved_11_14 : Interfaces.Bit_Types.UInt4;
      --  Read-only. Frequency error direction
      FEDIR          : Boolean;
      --  Read-only. Frequency error capture
      FECAP          : ISR_FECAP_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      SYNCOKF        at 0 range 0 .. 0;
      SYNCWARNF      at 0 range 1 .. 1;
      ERRF           at 0 range 2 .. 2;
      ESYNCF         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      SYNCERR        at 0 range 8 .. 8;
      SYNCMISS       at 0 range 9 .. 9;
      TRIMOVF        at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      FEDIR          at 0 range 15 .. 15;
      FECAP          at 0 range 16 .. 31;
   end record;

   --  interrupt flag clear register
   type ICR_Register is record
      --  SYNC event OK clear flag
      SYNCOKC       : Boolean := False;
      --  SYNC warning clear flag
      SYNCWARNC     : Boolean := False;
      --  Error clear flag
      ERRC          : Boolean := False;
      --  Expected SYNC clear flag
      ESYNCC        : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      SYNCOKC       at 0 range 0 .. 0;
      SYNCWARNC     at 0 range 1 .. 1;
      ERRC          at 0 range 2 .. 2;
      ESYNCC        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clock recovery system
   type CRS_Peripheral is record
      --  control register
      CR   : aliased CR_Register;
      --  configuration register
      CFGR : aliased CFGR_Register;
      --  interrupt and status register
      ISR  : aliased ISR_Register;
      --  interrupt flag clear register
      ICR  : aliased ICR_Register;
   end record
     with Volatile;

   for CRS_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      CFGR at 16#4# range 0 .. 31;
      ISR  at 16#8# range 0 .. 31;
      ICR  at 16#C# range 0 .. 31;
   end record;

   --  Clock recovery system
   CRS_Periph : aliased CRS_Peripheral
     with Import, Address => CRS_Base;

   --  Clock recovery system
   SEC_CRS_Periph : aliased CRS_Peripheral
     with Import, Address => SEC_CRS_Base;

end Interfaces.STM32.CRS;
