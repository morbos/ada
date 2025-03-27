--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.DTS is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  DTS PVT lock status register
   type DTS_PVTLOCK_SR_Register is record
      --  Read-only. Software lock input status
      SW_LOCK_STATUS : Boolean;
      --  Read-only. Hardware lock input status
      HW_LOCK_STATUS : Boolean;
      --  unspecified
      Reserved_2_31  : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_PVTLOCK_SR_Register use record
      SW_LOCK_STATUS at 0 range 0 .. 0;
      HW_LOCK_STATUS at 0 range 1 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   subtype DTS_PVTTMR_CR_TMR_DELAY_Field is Interfaces.Bit_Types.UInt16;

   --  DTS PVT timer control register
   type DTS_PVTTMR_CR_Register is record
      --  Timer delay
      TMR_DELAY      : DTS_PVTTMR_CR_TMR_DELAY_Field := 16#0#;
      --  Timer count enable bit
      TMR_RUN        : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_PVTTMR_CR_Register use record
      TMR_DELAY      at 0 range 0 .. 15;
      TMR_RUN        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  DTS PVT timer status register
   type DTS_PVTTMR_SR_Register is record
      --  Read-only. Counter busy flag
      TMR_BUSY      : Boolean;
      --  Read-only. Counter delay expiration flag
      TMR_DONE      : Boolean;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_PVTTMR_SR_Register use record
      TMR_BUSY      at 0 range 0 .. 0;
      TMR_DONE      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DTS PVT IRQ enable register
   type DTS_PVT_IER_Register is record
      --  Timer IRQ source enable bit
      TMR_IRQ_ENABLE : Boolean := False;
      --  TS IRQ source enable bit
      TS_IRQ_ENABLE  : Boolean := False;
      --  unspecified
      Reserved_2_31  : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_PVT_IER_Register use record
      TMR_IRQ_ENABLE at 0 range 0 .. 0;
      TS_IRQ_ENABLE  at 0 range 1 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   --  DTS PVT IRQ timer mask register
   type DTS_PVTIRQTRMASKR_Register is record
      --  Timer IRQ source mask bit
      TMR_IRQ_MASK  : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_PVTIRQTRMASKR_Register use record
      TMR_IRQ_MASK  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DTS PVT IRQ TS mask register
   type DTS_TS_MR_Register is record
      --  TS0 IRQ source mask bit
      TS0_IRQ_MASK  : Boolean := False;
      --  TS1 IRQ source mask bit
      TS1_IRQ_MASK  : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS_MR_Register use record
      TS0_IRQ_MASK  at 0 range 0 .. 0;
      TS1_IRQ_MASK  at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DTS PVT IRQ timer status register
   type DTS_PVTTR_SR_Register is record
      --  Read-only. Timer IRQ status bit after masking
      TMR_IRQ_STATUS : Boolean;
      --  unspecified
      Reserved_1_31  : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_PVTTR_SR_Register use record
      TMR_IRQ_STATUS at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  DTS PVT IRQ TS status register
   type DTS_TS_ISR_Register is record
      --  Read-only. TS0 IRQ status bit after masking
      TS0_IRQ_STATUS : Boolean;
      --  Read-only. TS1 IRQ status bit after masking
      TS1_IRQ_STATUS : Boolean;
      --  unspecified
      Reserved_2_31  : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS_ISR_Register use record
      TS0_IRQ_STATUS at 0 range 0 .. 0;
      TS1_IRQ_STATUS at 0 range 1 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   --  DTS PVT IRQ timer raw status register
   type DTS_PVTTMRRAW_ISR_Register is record
      --  Read-only. TMR IRQ status bit before masking
      TMR_IRQ_RAW_STATUS : Boolean;
      --  unspecified
      Reserved_1_31      : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_PVTTMRRAW_ISR_Register use record
      TMR_IRQ_RAW_STATUS at 0 range 0 .. 0;
      Reserved_1_31      at 0 range 1 .. 31;
   end record;

   --  DTS PVT IRQ TS raw status register
   type DTS_TSRAW_ISR_Register is record
      --  Read-only. TS0 IRQ status bit before masking
      TS0_IRQ_RAW_STATUS : Boolean;
      --  Read-only. TS1 IRQ status bit before masking
      TS1_IRQ_RAW_STATUS : Boolean;
      --  unspecified
      Reserved_2_31      : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TSRAW_ISR_Register use record
      TS0_IRQ_RAW_STATUS at 0 range 0 .. 0;
      TS1_IRQ_RAW_STATUS at 0 range 1 .. 1;
      Reserved_2_31      at 0 range 2 .. 31;
   end record;

   subtype DTS_TSCCLKSYNTHR_CLK_SYNTH_LO_Field is Interfaces.Bit_Types.Byte;
   subtype DTS_TSCCLKSYNTHR_CLK_SYNTH_HI_Field is Interfaces.Bit_Types.Byte;
   subtype DTS_TSCCLKSYNTHR_CLK_SYNTH_HOLD_Field is Interfaces.Bit_Types.UInt4;

   --  DTS TSC clock synthesizer register
   type DTS_TSCCLKSYNTHR_Register is record
      --  Synthesized clk_ts low period
      CLK_SYNTH_LO   : DTS_TSCCLKSYNTHR_CLK_SYNTH_LO_Field := 16#0#;
      --  Synthesized clk_ts high period
      CLK_SYNTH_HI   : DTS_TSCCLKSYNTHR_CLK_SYNTH_HI_Field := 16#0#;
      --  SDA master-to-SDA slave output hold delay/SDA slave-to-SDA master
      --  input setup delay
      CLK_SYNTH_HOLD : DTS_TSCCLKSYNTHR_CLK_SYNTH_HOLD_Field := 16#1#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Synthesized clk_ts enable bit
      CLK_SYTH_EN    : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TSCCLKSYNTHR_Register use record
      CLK_SYNTH_LO   at 0 range 0 .. 7;
      CLK_SYNTH_HI   at 0 range 8 .. 15;
      CLK_SYNTH_HOLD at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      CLK_SYTH_EN    at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  DTS TSC SDIF interface disable register
   type DTS_TSCSDIFDISABLER_Register is record
      --  TS0 serial data interface (SDIF) disable bit
      TS0_SDIF_DISABLE : Boolean := False;
      --  TS1 serial data interface (SDIF) disable bit
      TS1_SDIF_DISABLE : Boolean := False;
      --  unspecified
      Reserved_2_31    : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TSCSDIFDISABLER_Register use record
      TS0_SDIF_DISABLE at 0 range 0 .. 0;
      TS1_SDIF_DISABLE at 0 range 1 .. 1;
      Reserved_2_31    at 0 range 2 .. 31;
   end record;

   --  DTS TSC SDIF status register
   type DTS_TSCSDIF_SR_Register is record
      --  Read-only. SDIF busy flag
      SDIF_BUSY     : Boolean;
      --  Read-only. SDIF locked flag
      SDIF_LOCK     : Boolean;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TSCSDIF_SR_Register use record
      SDIF_BUSY     at 0 range 0 .. 0;
      SDIF_LOCK     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DTS_TSCSDIF_CR_SDIF_WDATA_Field is Interfaces.Bit_Types.UInt24;
   subtype DTS_TSCSDIF_CR_SDIF_ADDR_Field is Interfaces.Bit_Types.UInt3;

   --  DTS TSC SDIF register
   type DTS_TSCSDIF_CR_Register is record
      --  Serial interface write data
      SDIF_WDATA     : DTS_TSCSDIF_CR_SDIF_WDATA_Field := 16#0#;
      --  Serial interface register address
      SDIF_ADDR      : DTS_TSCSDIF_CR_SDIF_ADDR_Field := 16#0#;
      --  Serial interface write/no read control bit
      SDIF_WRN       : Boolean := False;
      --  unspecified
      Reserved_28_30 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Write-only. Serial interface program request
      SDIF_PROG      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TSCSDIF_CR_Register use record
      SDIF_WDATA     at 0 range 0 .. 23;
      SDIF_ADDR      at 0 range 24 .. 26;
      SDIF_WRN       at 0 range 27 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      SDIF_PROG      at 0 range 31 .. 31;
   end record;

   --  DTS TSC SDIF halt register
   type DTS_TSCSDIFHALTR_Register is record
      --  Write-only. Serial data interface (SDIF) stop
      SDIF_STOP     : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TSCSDIFHALTR_Register use record
      SDIF_STOP     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DTS_TSCSDIF_CFGR_SDIF_INHIBIT_Field is Interfaces.Bit_Types.UInt2;

   --  DTS TSC SDIF control register
   type DTS_TSCSDIF_CFGR_Register is record
      --  Serial data interface (SDIF) programming inhibit
      SDIF_INHIBIT  : DTS_TSCSDIF_CFGR_SDIF_INHIBIT_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TSCSDIF_CFGR_Register use record
      SDIF_INHIBIT  at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DTS TSC sample control register
   type DTS_TSCSMPL_CR_Register is record
      --  Sample counter disable bit
      SMPL_CTR_DISABLE : Boolean := False;
      --  Sample counter hold bit
      SMPL_CTR_HOLD    : Boolean := False;
      --  Sample discard bit
      SMPL_DISCARD     : Boolean := False;
      --  unspecified
      Reserved_3_31    : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TSCSMPL_CR_Register use record
      SMPL_CTR_DISABLE at 0 range 0 .. 0;
      SMPL_CTR_HOLD    at 0 range 1 .. 1;
      SMPL_DISCARD     at 0 range 2 .. 2;
      Reserved_3_31    at 0 range 3 .. 31;
   end record;

   --  DTS TSC sample clear register
   type DTS_TSCSDIFSMPLCLRR_Register is record
      --  Write-only. Sample counter clear bit
      SMPL_CNTER_CLEAR : Boolean := False;
      --  unspecified
      Reserved_1_31    : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TSCSDIFSMPLCLRR_Register use record
      SMPL_CNTER_CLEAR at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   subtype DTS_TSCSMPLCNTR_SMPL_COUNT_Field is Interfaces.Bit_Types.UInt16;

   --  DTS TSC sample count register
   type DTS_TSCSMPLCNTR_Register is record
      --  Read-only. Sample counter
      SMPL_COUNT     : DTS_TSCSMPLCNTR_SMPL_COUNT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TSCSMPLCNTR_Register use record
      SMPL_COUNT     at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DTS TS0 IRQ enable register
   type DTS_TS0_IER_Register is record
      --  Fault IRQ enable bit
      IRQ_EN_FAULT  : Boolean := False;
      --  Sample done IRQ enable bit
      IRQ_EN_DONE   : Boolean := False;
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Alarm A IRQ enable bit
      IRQ_EN_ALARMA : Boolean := False;
      --  Alarm B IRQ enable bit
      IRQ_EN_ALARMB : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS0_IER_Register use record
      IRQ_EN_FAULT  at 0 range 0 .. 0;
      IRQ_EN_DONE   at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      IRQ_EN_ALARMA at 0 range 3 .. 3;
      IRQ_EN_ALARMB at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DTS TS0 IRQ status register
   type DTS_TS0_ISR_Register is record
      --  Read-only. Fault IRQ status bit
      IRQ_STATUS_FAULT  : Boolean;
      --  Read-only. Sample done IRQ status bit
      IRQ_STATUS_DONE   : Boolean;
      --  unspecified
      Reserved_2_2      : Interfaces.Bit_Types.Bit;
      --  Read-only. Alarm A IRQ status bit
      IRQ_STATUS_ALARMA : Boolean;
      --  Read-only. Alarm B IRQ status bit
      IRQ_STATUS_ALARMB : Boolean;
      --  unspecified
      Reserved_5_31     : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS0_ISR_Register use record
      IRQ_STATUS_FAULT  at 0 range 0 .. 0;
      IRQ_STATUS_DONE   at 0 range 1 .. 1;
      Reserved_2_2      at 0 range 2 .. 2;
      IRQ_STATUS_ALARMA at 0 range 3 .. 3;
      IRQ_STATUS_ALARMB at 0 range 4 .. 4;
      Reserved_5_31     at 0 range 5 .. 31;
   end record;

   --  DTS TS0 IRQ clear register
   type DTS_TS0_ICR_Register is record
      --  Write-only. Fault IRQ clear bit
      IRQ_CLEAR_FAULT  : Boolean := False;
      --  Write-only. Sample done IRQ clear bit
      IRQ_CLEAR_DONE   : Boolean := False;
      --  unspecified
      Reserved_2_2     : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Alarm A IRQ clear bit
      IRQ_CLEAR_ALARMA : Boolean := False;
      --  Write-only. Alarm B IRQ clear bit
      IRQ_CLEAR_ALARMB : Boolean := False;
      --  unspecified
      Reserved_5_31    : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS0_ICR_Register use record
      IRQ_CLEAR_FAULT  at 0 range 0 .. 0;
      IRQ_CLEAR_DONE   at 0 range 1 .. 1;
      Reserved_2_2     at 0 range 2 .. 2;
      IRQ_CLEAR_ALARMA at 0 range 3 .. 3;
      IRQ_CLEAR_ALARMB at 0 range 4 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   --  DTS TS0 IRQ test register
   type DTS_TS0IRQTESTR_Register is record
      --  Fault IRQ test bit
      IRQ_TEST_FAULT  : Boolean := False;
      --  Sample done IRQ test bit
      IRQ_TEST_DONE   : Boolean := False;
      --  unspecified
      Reserved_2_2    : Interfaces.Bit_Types.Bit := 16#0#;
      --  Alarm A IRQ test bit
      IRQ_TEST_ALARMA : Boolean := False;
      --  Alarm B IRQ test bit
      IRQ_TEST_ALARMB : Boolean := False;
      --  unspecified
      Reserved_5_31   : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS0IRQTESTR_Register use record
      IRQ_TEST_FAULT  at 0 range 0 .. 0;
      IRQ_TEST_DONE   at 0 range 1 .. 1;
      Reserved_2_2    at 0 range 2 .. 2;
      IRQ_TEST_ALARMA at 0 range 3 .. 3;
      IRQ_TEST_ALARMB at 0 range 4 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype DTS_TS0SDIFRDATAR_SDIF_RDATA_Field is Interfaces.Bit_Types.UInt24;

   --  DTS TS0 SDIF RDATA register
   type DTS_TS0SDIFRDATAR_Register is record
      --  Read-only. SDIF read data
      SDIF_RDATA     : DTS_TS0SDIFRDATAR_SDIF_RDATA_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS0SDIFRDATAR_Register use record
      SDIF_RDATA     at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  DTS TS0 SDIF done register
   type DTS_TS0SDIFDONER_Register is record
      --  Read-only. Sample done flag
      SDIF_SMPL_DONE : Boolean;
      --  unspecified
      Reserved_1_31  : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS0SDIFDONER_Register use record
      SDIF_SMPL_DONE at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   subtype DTS_TS0SDIFDATAR_SAMPLE_DATA_Field is Interfaces.Bit_Types.UInt16;

   --  DTS TS0 SDIF data register
   type DTS_TS0SDIFDATAR_Register is record
      --  Read-only. Sample data.
      SAMPLE_DATA    : DTS_TS0SDIFDATAR_SAMPLE_DATA_Field;
      --  Read-only. TS sample type
      SAMPLE_TYPE    : Boolean;
      --  Read-only. Sample fault
      SAMPLE_FAULT   : Boolean;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS0SDIFDATAR_Register use record
      SAMPLE_DATA    at 0 range 0 .. 15;
      SAMPLE_TYPE    at 0 range 16 .. 16;
      SAMPLE_FAULT   at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype DTS_TS0ALARMA_CFGR_HYSTA_THRESH_Field is
     Interfaces.Bit_Types.UInt16;
   subtype DTS_TS0ALARMA_CFGR_ALARMA_THRESH_Field is
     Interfaces.Bit_Types.UInt16;

   --  DTS TS0 alarm A configuration register
   type DTS_TS0ALARMA_CFGR_Register is record
      --  Alarm A hysteresis threshold
      HYSTA_THRESH  : DTS_TS0ALARMA_CFGR_HYSTA_THRESH_Field := 16#0#;
      --  Alarm A threshold
      ALARMA_THRESH : DTS_TS0ALARMA_CFGR_ALARMA_THRESH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS0ALARMA_CFGR_Register use record
      HYSTA_THRESH  at 0 range 0 .. 15;
      ALARMA_THRESH at 0 range 16 .. 31;
   end record;

   subtype DTS_TS0ALARMB_CFGR_HYSTB_THRESH_Field is
     Interfaces.Bit_Types.UInt16;
   subtype DTS_TS0ALARMB_CFGR_ALARMB_THRESH_Field is
     Interfaces.Bit_Types.UInt16;

   --  DTS TS0 alarm B configuration register
   type DTS_TS0ALARMB_CFGR_Register is record
      --  Alarm B hysteresis threshold
      HYSTB_THRESH  : DTS_TS0ALARMB_CFGR_HYSTB_THRESH_Field := 16#0#;
      --  Alarm B threshold
      ALARMB_THRESH : DTS_TS0ALARMB_CFGR_ALARMB_THRESH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS0ALARMB_CFGR_Register use record
      HYSTB_THRESH  at 0 range 0 .. 15;
      ALARMB_THRESH at 0 range 16 .. 31;
   end record;

   subtype DTS_TS0HLSAMPLER_SMPL_LO_Field is Interfaces.Bit_Types.UInt16;
   subtype DTS_TS0HLSAMPLER_SMPL_HI_Field is Interfaces.Bit_Types.UInt16;

   --  DTS TS0 high/low sample register
   type DTS_TS0HLSAMPLER_Register is record
      --  Read-only. Lowest valid data sample value received
      SMPL_LO : DTS_TS0HLSAMPLER_SMPL_LO_Field;
      --  Read-only. Highest valid data sample value received
      SMPL_HI : DTS_TS0HLSAMPLER_SMPL_HI_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS0HLSAMPLER_Register use record
      SMPL_LO at 0 range 0 .. 15;
      SMPL_HI at 0 range 16 .. 31;
   end record;

   --  DTS TS0 high/low reset register
   type DTS_TS0HILORESETR_Register is record
      --  Write-only. Sample Low Set
      SMPL_LO_SET   : Boolean := False;
      --  Write-only. Sample high clear 0
      SMPL_HI_CLR   : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS0HILORESETR_Register use record
      SMPL_LO_SET   at 0 range 0 .. 0;
      SMPL_HI_CLR   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DTS TS1 IRQ enable register
   type DTS_TS1_IER_Register is record
      --  Fault IRQ enable bit
      IRQ_EN_FAULT  : Boolean := False;
      --  Sample done IRQ enable bit
      IRQ_EN_DONE   : Boolean := False;
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Alarm A IRQ enable bit
      IRQ_EN_ALARMA : Boolean := False;
      --  Alarm B IRQ enable bit
      IRQ_EN_ALARMB : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS1_IER_Register use record
      IRQ_EN_FAULT  at 0 range 0 .. 0;
      IRQ_EN_DONE   at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      IRQ_EN_ALARMA at 0 range 3 .. 3;
      IRQ_EN_ALARMB at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DTS TS1 IRQ status register
   type DTS_TS1_ISR_Register is record
      --  Read-only. Fault IRQ status bit
      IRQ_STATUS_FAULT  : Boolean;
      --  Read-only. Sample done IRQ status bit
      IRQ_STATUS_DONE   : Boolean;
      --  unspecified
      Reserved_2_2      : Interfaces.Bit_Types.Bit;
      --  Read-only. Alarm A IRQ status bit
      IRQ_STATUS_ALARMA : Boolean;
      --  Read-only. Alarm B IRQ status bit
      IRQ_STATUS_ALARMB : Boolean;
      --  unspecified
      Reserved_5_31     : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS1_ISR_Register use record
      IRQ_STATUS_FAULT  at 0 range 0 .. 0;
      IRQ_STATUS_DONE   at 0 range 1 .. 1;
      Reserved_2_2      at 0 range 2 .. 2;
      IRQ_STATUS_ALARMA at 0 range 3 .. 3;
      IRQ_STATUS_ALARMB at 0 range 4 .. 4;
      Reserved_5_31     at 0 range 5 .. 31;
   end record;

   --  DTS TS1 IRQ clear register
   type DTS_TS1_ICR_Register is record
      --  Write-only. Fault IRQ clear bit
      IRQ_CLEAR_FAULT  : Boolean := False;
      --  Write-only. Sample done IRQ clear bit
      IRQ_CLEAR_DONE   : Boolean := False;
      --  unspecified
      Reserved_2_2     : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Alarm A IRQ clear bit
      IRQ_CLEAR_ALARMA : Boolean := False;
      --  Write-only. Alarm B IRQ clear bit
      IRQ_CLEAR_ALARMB : Boolean := False;
      --  unspecified
      Reserved_5_31    : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS1_ICR_Register use record
      IRQ_CLEAR_FAULT  at 0 range 0 .. 0;
      IRQ_CLEAR_DONE   at 0 range 1 .. 1;
      Reserved_2_2     at 0 range 2 .. 2;
      IRQ_CLEAR_ALARMA at 0 range 3 .. 3;
      IRQ_CLEAR_ALARMB at 0 range 4 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   --  DTS TS1 IRQ test register
   type DTS_TS1IRQTESTR_Register is record
      --  Fault IRQ test bit
      IRQ_TEST_FAULT  : Boolean := False;
      --  Sample done IRQ test bit
      IRQ_TEST_DONE   : Boolean := False;
      --  unspecified
      Reserved_2_2    : Interfaces.Bit_Types.Bit := 16#0#;
      --  Alarm A IRQ test bit
      IRQ_TEST_ALARMA : Boolean := False;
      --  Alarm B IRQ test bit
      IRQ_TEST_ALARMB : Boolean := False;
      --  unspecified
      Reserved_5_31   : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS1IRQTESTR_Register use record
      IRQ_TEST_FAULT  at 0 range 0 .. 0;
      IRQ_TEST_DONE   at 0 range 1 .. 1;
      Reserved_2_2    at 0 range 2 .. 2;
      IRQ_TEST_ALARMA at 0 range 3 .. 3;
      IRQ_TEST_ALARMB at 0 range 4 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype DTS_TS1SDIFRDATAR_SDIF_RDATA_Field is Interfaces.Bit_Types.UInt24;

   --  DTS TS1 SDIF RDATA register
   type DTS_TS1SDIFRDATAR_Register is record
      --  Read-only. SDIF read data
      SDIF_RDATA     : DTS_TS1SDIFRDATAR_SDIF_RDATA_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS1SDIFRDATAR_Register use record
      SDIF_RDATA     at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  DTS TS1 SDIF done register
   type DTS_TS1SDIFDONER_Register is record
      --  Read-only. Sample done flag
      SDIF_SMPL_DONE : Boolean;
      --  unspecified
      Reserved_1_31  : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS1SDIFDONER_Register use record
      SDIF_SMPL_DONE at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   subtype DTS_TS1SDIFDATAR_SAMPLE_DATA_Field is Interfaces.Bit_Types.UInt16;

   --  DTS TS1 SDIF data register
   type DTS_TS1SDIFDATAR_Register is record
      --  Read-only. Sample data.
      SAMPLE_DATA    : DTS_TS1SDIFDATAR_SAMPLE_DATA_Field;
      --  Read-only. TS sample type
      SAMPLE_TYPE    : Boolean;
      --  Read-only. Sample fault
      SAMPLE_FAULT   : Boolean;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS1SDIFDATAR_Register use record
      SAMPLE_DATA    at 0 range 0 .. 15;
      SAMPLE_TYPE    at 0 range 16 .. 16;
      SAMPLE_FAULT   at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype DTS_TS1ALARMA_CFGR_HYSTA_THRESH_Field is
     Interfaces.Bit_Types.UInt16;
   subtype DTS_TS1ALARMA_CFGR_ALARMA_THRESH_Field is
     Interfaces.Bit_Types.UInt16;

   --  DTS TS1 alarm A configuration register
   type DTS_TS1ALARMA_CFGR_Register is record
      --  Alarm A hysteresis threshold
      HYSTA_THRESH  : DTS_TS1ALARMA_CFGR_HYSTA_THRESH_Field := 16#0#;
      --  Alarm A threshold
      ALARMA_THRESH : DTS_TS1ALARMA_CFGR_ALARMA_THRESH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS1ALARMA_CFGR_Register use record
      HYSTA_THRESH  at 0 range 0 .. 15;
      ALARMA_THRESH at 0 range 16 .. 31;
   end record;

   subtype DTS_TS1ALARMB_CFGR_HYSTB_THRESH_Field is
     Interfaces.Bit_Types.UInt16;
   subtype DTS_TS1ALARMB_CFGR_ALARMB_THRESH_Field is
     Interfaces.Bit_Types.UInt16;

   --  DTS TS1 alarm B configuration register
   type DTS_TS1ALARMB_CFGR_Register is record
      --  Alarm B hysteresis threshold
      HYSTB_THRESH  : DTS_TS1ALARMB_CFGR_HYSTB_THRESH_Field := 16#0#;
      --  Alarm B threshold
      ALARMB_THRESH : DTS_TS1ALARMB_CFGR_ALARMB_THRESH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS1ALARMB_CFGR_Register use record
      HYSTB_THRESH  at 0 range 0 .. 15;
      ALARMB_THRESH at 0 range 16 .. 31;
   end record;

   subtype DTS_TS1HLSAMPLER_SMPL_LO_Field is Interfaces.Bit_Types.UInt16;
   subtype DTS_TS1HLSAMPLER_SMPL_HI_Field is Interfaces.Bit_Types.UInt16;

   --  DTS TS1 high/low sample register
   type DTS_TS1HLSAMPLER_Register is record
      --  Read-only. Lowest valid data sample value received
      SMPL_LO : DTS_TS1HLSAMPLER_SMPL_LO_Field;
      --  Read-only. Highest valid data sample value received
      SMPL_HI : DTS_TS1HLSAMPLER_SMPL_HI_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS1HLSAMPLER_Register use record
      SMPL_LO at 0 range 0 .. 15;
      SMPL_HI at 0 range 16 .. 31;
   end record;

   --  DTS TS1 high/low reset register
   type DTS_TS1HILORESETR_Register is record
      --  Write-only. Sample Low Set
      SMPL_LO_SET   : Boolean := False;
      --  Write-only. Sample high clear 0
      SMPL_HI_CLR   : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTS_TS1HILORESETR_Register use record
      SMPL_LO_SET   at 0 range 0 .. 0;
      SMPL_HI_CLR   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital temperature sensor
   type DTS_Peripheral is record
      --  DTS PVT register lock register
      DTS_PVTREG_LOCKR    : aliased Interfaces.Bit_Types.UInt32;
      --  DTS PVT lock status register
      DTS_PVTLOCK_SR      : aliased DTS_PVTLOCK_SR_Register;
      --  DTS PVT timer control register
      DTS_PVTTMR_CR       : aliased DTS_PVTTMR_CR_Register;
      --  DTS PVT timer status register
      DTS_PVTTMR_SR       : aliased DTS_PVTTMR_SR_Register;
      --  DTS PVT IRQ enable register
      DTS_PVT_IER         : aliased DTS_PVT_IER_Register;
      --  DTS PVT IRQ timer mask register
      DTS_PVTIRQTRMASKR   : aliased DTS_PVTIRQTRMASKR_Register;
      --  DTS PVT IRQ TS mask register
      DTS_TS_MR           : aliased DTS_TS_MR_Register;
      --  DTS PVT IRQ timer status register
      DTS_PVTTR_SR        : aliased DTS_PVTTR_SR_Register;
      --  DTS PVT IRQ TS status register
      DTS_TS_ISR          : aliased DTS_TS_ISR_Register;
      --  DTS PVT IRQ timer raw status register
      DTS_PVTTMRRAW_ISR   : aliased DTS_PVTTMRRAW_ISR_Register;
      --  DTS PVT IRQ TS raw status register
      DTS_TSRAW_ISR       : aliased DTS_TSRAW_ISR_Register;
      --  DTS TSC clock synthesizer register
      DTS_TSCCLKSYNTHR    : aliased DTS_TSCCLKSYNTHR_Register;
      --  DTS TSC SDIF interface disable register
      DTS_TSCSDIFDISABLER : aliased DTS_TSCSDIFDISABLER_Register;
      --  DTS TSC SDIF status register
      DTS_TSCSDIF_SR      : aliased DTS_TSCSDIF_SR_Register;
      --  DTS TSC SDIF register
      DTS_TSCSDIF_CR      : aliased DTS_TSCSDIF_CR_Register;
      --  DTS TSC SDIF halt register
      DTS_TSCSDIFHALTR    : aliased DTS_TSCSDIFHALTR_Register;
      --  DTS TSC SDIF control register
      DTS_TSCSDIF_CFGR    : aliased DTS_TSCSDIF_CFGR_Register;
      --  DTS TSC sample control register
      DTS_TSCSMPL_CR      : aliased DTS_TSCSMPL_CR_Register;
      --  DTS TSC sample clear register
      DTS_TSCSDIFSMPLCLRR : aliased DTS_TSCSDIFSMPLCLRR_Register;
      --  DTS TSC sample count register
      DTS_TSCSMPLCNTR     : aliased DTS_TSCSMPLCNTR_Register;
      --  DTS TS0 IRQ enable register
      DTS_TS0_IER         : aliased DTS_TS0_IER_Register;
      --  DTS TS0 IRQ status register
      DTS_TS0_ISR         : aliased DTS_TS0_ISR_Register;
      --  DTS TS0 IRQ clear register
      DTS_TS0_ICR         : aliased DTS_TS0_ICR_Register;
      --  DTS TS0 IRQ test register
      DTS_TS0IRQTESTR     : aliased DTS_TS0IRQTESTR_Register;
      --  DTS TS0 SDIF RDATA register
      DTS_TS0SDIFRDATAR   : aliased DTS_TS0SDIFRDATAR_Register;
      --  DTS TS0 SDIF done register
      DTS_TS0SDIFDONER    : aliased DTS_TS0SDIFDONER_Register;
      --  DTS TS0 SDIF data register
      DTS_TS0SDIFDATAR    : aliased DTS_TS0SDIFDATAR_Register;
      --  DTS TS0 alarm A configuration register
      DTS_TS0ALARMA_CFGR  : aliased DTS_TS0ALARMA_CFGR_Register;
      --  DTS TS0 alarm B configuration register
      DTS_TS0ALARMB_CFGR  : aliased DTS_TS0ALARMB_CFGR_Register;
      --  DTS TS0 high/low sample register
      DTS_TS0HLSAMPLER    : aliased DTS_TS0HLSAMPLER_Register;
      --  DTS TS0 high/low reset register
      DTS_TS0HILORESETR   : aliased DTS_TS0HILORESETR_Register;
      --  DTS TS1 IRQ enable register
      DTS_TS1_IER         : aliased DTS_TS1_IER_Register;
      --  DTS TS1 IRQ status register
      DTS_TS1_ISR         : aliased DTS_TS1_ISR_Register;
      --  DTS TS1 IRQ clear register
      DTS_TS1_ICR         : aliased DTS_TS1_ICR_Register;
      --  DTS TS1 IRQ test register
      DTS_TS1IRQTESTR     : aliased DTS_TS1IRQTESTR_Register;
      --  DTS TS1 SDIF RDATA register
      DTS_TS1SDIFRDATAR   : aliased DTS_TS1SDIFRDATAR_Register;
      --  DTS TS1 SDIF done register
      DTS_TS1SDIFDONER    : aliased DTS_TS1SDIFDONER_Register;
      --  DTS TS1 SDIF data register
      DTS_TS1SDIFDATAR    : aliased DTS_TS1SDIFDATAR_Register;
      --  DTS TS1 alarm A configuration register
      DTS_TS1ALARMA_CFGR  : aliased DTS_TS1ALARMA_CFGR_Register;
      --  DTS TS1 alarm B configuration register
      DTS_TS1ALARMB_CFGR  : aliased DTS_TS1ALARMB_CFGR_Register;
      --  DTS TS1 high/low sample register
      DTS_TS1HLSAMPLER    : aliased DTS_TS1HLSAMPLER_Register;
      --  DTS TS1 high/low reset register
      DTS_TS1HILORESETR   : aliased DTS_TS1HILORESETR_Register;
   end record
     with Volatile;

   for DTS_Peripheral use record
      DTS_PVTREG_LOCKR    at 16#10# range 0 .. 31;
      DTS_PVTLOCK_SR      at 16#14# range 0 .. 31;
      DTS_PVTTMR_CR       at 16#20# range 0 .. 31;
      DTS_PVTTMR_SR       at 16#24# range 0 .. 31;
      DTS_PVT_IER         at 16#40# range 0 .. 31;
      DTS_PVTIRQTRMASKR   at 16#50# range 0 .. 31;
      DTS_TS_MR           at 16#54# range 0 .. 31;
      DTS_PVTTR_SR        at 16#60# range 0 .. 31;
      DTS_TS_ISR          at 16#64# range 0 .. 31;
      DTS_PVTTMRRAW_ISR   at 16#70# range 0 .. 31;
      DTS_TSRAW_ISR       at 16#74# range 0 .. 31;
      DTS_TSCCLKSYNTHR    at 16#80# range 0 .. 31;
      DTS_TSCSDIFDISABLER at 16#84# range 0 .. 31;
      DTS_TSCSDIF_SR      at 16#88# range 0 .. 31;
      DTS_TSCSDIF_CR      at 16#8C# range 0 .. 31;
      DTS_TSCSDIFHALTR    at 16#90# range 0 .. 31;
      DTS_TSCSDIF_CFGR    at 16#94# range 0 .. 31;
      DTS_TSCSMPL_CR      at 16#A0# range 0 .. 31;
      DTS_TSCSDIFSMPLCLRR at 16#A4# range 0 .. 31;
      DTS_TSCSMPLCNTR     at 16#A8# range 0 .. 31;
      DTS_TS0_IER         at 16#C0# range 0 .. 31;
      DTS_TS0_ISR         at 16#C4# range 0 .. 31;
      DTS_TS0_ICR         at 16#C8# range 0 .. 31;
      DTS_TS0IRQTESTR     at 16#CC# range 0 .. 31;
      DTS_TS0SDIFRDATAR   at 16#D0# range 0 .. 31;
      DTS_TS0SDIFDONER    at 16#D4# range 0 .. 31;
      DTS_TS0SDIFDATAR    at 16#D8# range 0 .. 31;
      DTS_TS0ALARMA_CFGR  at 16#E0# range 0 .. 31;
      DTS_TS0ALARMB_CFGR  at 16#E4# range 0 .. 31;
      DTS_TS0HLSAMPLER    at 16#E8# range 0 .. 31;
      DTS_TS0HILORESETR   at 16#EC# range 0 .. 31;
      DTS_TS1_IER         at 16#100# range 0 .. 31;
      DTS_TS1_ISR         at 16#104# range 0 .. 31;
      DTS_TS1_ICR         at 16#108# range 0 .. 31;
      DTS_TS1IRQTESTR     at 16#10C# range 0 .. 31;
      DTS_TS1SDIFRDATAR   at 16#110# range 0 .. 31;
      DTS_TS1SDIFDONER    at 16#114# range 0 .. 31;
      DTS_TS1SDIFDATAR    at 16#118# range 0 .. 31;
      DTS_TS1ALARMA_CFGR  at 16#120# range 0 .. 31;
      DTS_TS1ALARMB_CFGR  at 16#124# range 0 .. 31;
      DTS_TS1HLSAMPLER    at 16#128# range 0 .. 31;
      DTS_TS1HILORESETR   at 16#12C# range 0 .. 31;
   end record;

   --  Digital temperature sensor
   DTS_Periph : aliased DTS_Peripheral
     with Import, Address => DTS_Base;

   --  Digital temperature sensor
   DTS_S_Periph : aliased DTS_Peripheral
     with Import, Address => DTS_S_Base;

end Interfaces.STM32.DTS;
