--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM0P.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.DAC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR_EN1_Field is Interfaces.Bit_Types.Bit;
   subtype CR_TEN1_Field is Interfaces.Bit_Types.Bit;
   --  CR_TSEL array element
   subtype CR_TSEL_Element is Interfaces.Bit_Types.Bit;

   --  CR_TSEL array
   type CR_TSEL_Field_Array is array (10 .. 13) of CR_TSEL_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for CR_TSEL
   type CR_TSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TSEL as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  TSEL as an array
            Arr : CR_TSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CR_TSEL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype CR_WAVE1_Field is Interfaces.Bit_Types.UInt2;
   subtype CR_MAMP1_Field is Interfaces.Bit_Types.UInt4;
   subtype CR_DMAEN1_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DMAUDRIE1_Field is Interfaces.Bit_Types.Bit;
   subtype CR_CEN1_Field is Interfaces.Bit_Types.Bit;

   --  control register
   type CR_Register is record
      --  DAC channel1 enable
      EN1            : CR_EN1_Field := 16#0#;
      --  DAC channel1 trigger enable
      TEN1           : CR_TEN1_Field := 16#0#;
      --  TSEL10
      TSEL           : CR_TSEL_Field := (As_Array => False, Val => 16#0#);
      --  DAC channel1 noise/triangle wave generation enable
      WAVE1          : CR_WAVE1_Field := 16#0#;
      --  DAC channel1 mask/amplitude selector
      MAMP1          : CR_MAMP1_Field := 16#0#;
      --  DAC channel1 DMA enable
      DMAEN1         : CR_DMAEN1_Field := 16#0#;
      --  DAC channel1 DMA Underrun Interrupt enable
      DMAUDRIE1      : CR_DMAUDRIE1_Field := 16#0#;
      --  DAC Channel 1 calibration enable
      CEN1           : CR_CEN1_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      EN1            at 0 range 0 .. 0;
      TEN1           at 0 range 1 .. 1;
      TSEL           at 0 range 2 .. 5;
      WAVE1          at 0 range 6 .. 7;
      MAMP1          at 0 range 8 .. 11;
      DMAEN1         at 0 range 12 .. 12;
      DMAUDRIE1      at 0 range 13 .. 13;
      CEN1           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype SWTRGR_SWTRIG1_Field is Interfaces.Bit_Types.Bit;

   --  software trigger register
   type SWTRGR_Register is record
      --  Write-only. DAC channel1 software trigger
      SWTRIG1       : SWTRGR_SWTRIG1_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWTRGR_Register use record
      SWTRIG1       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DHR12R1_DACC1DHR_Field is Interfaces.Bit_Types.UInt12;

   --  channel1 12-bit right-aligned data holding register
   type DHR12R1_Register is record
      --  DAC channel1 12-bit right-aligned data
      DACC1DHR       : DHR12R1_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DHR12R1_Register use record
      DACC1DHR       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DHR12L1_DACC1DHR_Field is Interfaces.Bit_Types.UInt12;

   --  channel1 12-bit left aligned data holding register
   type DHR12L1_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  DAC channel1 12-bit left-aligned data
      DACC1DHR       : DHR12L1_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DHR12L1_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      DACC1DHR       at 0 range 4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DHR8R1_DACC1DHR_Field is Interfaces.Bit_Types.Byte;

   --  channel1 8-bit right aligned data holding register
   type DHR8R1_Register is record
      --  DAC channel1 8-bit right-aligned data
      DACC1DHR      : DHR8R1_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DHR8R1_Register use record
      DACC1DHR      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DHR12RD_DACC1DHR_Field is Interfaces.Bit_Types.UInt12;

   --  Dual DAC 12-bit right-aligned data holding register
   type DHR12RD_Register is record
      --  DAC channel1 12-bit right-aligned data
      DACC1DHR       : DHR12RD_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DHR12RD_Register use record
      DACC1DHR       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DHR12LD_DACC1DHR_Field is Interfaces.Bit_Types.UInt12;

   --  Dual DAC 12-bit left aligned data holding register
   type DHR12LD_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  DAC channel1 12-bit left-aligned data
      DACC1DHR       : DHR12LD_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DHR12LD_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      DACC1DHR       at 0 range 4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DHR8RD_DACC1DHR_Field is Interfaces.Bit_Types.Byte;

   --  Dual DAC 8-bit right aligned data holding register
   type DHR8RD_Register is record
      --  DAC channel1 8-bit right-aligned data
      DACC1DHR      : DHR8RD_DACC1DHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DHR8RD_Register use record
      DACC1DHR      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DOR1_DACC1DOR_Field is Interfaces.Bit_Types.UInt12;

   --  DAC channel1 data output register
   type DOR1_Register is record
      --  Read-only. DACC1DOR
      DACC1DOR       : DOR1_DACC1DOR_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOR1_Register use record
      DACC1DOR       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SR_DMAUDR1_Field is Interfaces.Bit_Types.Bit;
   subtype SR_CAL_FLAG1_Field is Interfaces.Bit_Types.Bit;
   subtype SR_BWST1_Field is Interfaces.Bit_Types.Bit;

   --  status register
   type SR_Register is record
      --  unspecified
      Reserved_0_12  : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  DAC channel1 DMA underrun flag
      DMAUDR1        : SR_DMAUDR1_Field := 16#0#;
      --  Read-only. DAC Channel 1 calibration offset status
      CAL_FLAG1      : SR_CAL_FLAG1_Field := 16#0#;
      --  Read-only. DAC Channel 1 busy writing sample time flag
      BWST1          : SR_BWST1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      Reserved_0_12  at 0 range 0 .. 12;
      DMAUDR1        at 0 range 13 .. 13;
      CAL_FLAG1      at 0 range 14 .. 14;
      BWST1          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CCR_OTRIM1_Field is Interfaces.Bit_Types.UInt5;

   --  calibration control register
   type CCR_Register is record
      --  DAC Channel 1 offset trimming value
      OTRIM1        : CCR_OTRIM1_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      OTRIM1        at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype MCR_MODE1_Field is Interfaces.Bit_Types.UInt3;

   --  mode control register
   type MCR_Register is record
      --  DAC Channel 1 mode
      MODE1         : MCR_MODE1_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MCR_Register use record
      MODE1         at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SHSR1_TSAMPLE1_Field is Interfaces.Bit_Types.UInt10;

   --  Sample and Hold sample time register 1
   type SHSR1_Register is record
      --  DAC Channel 1 sample Time (only valid in Sample and Hold mode)
      TSAMPLE1       : SHSR1_TSAMPLE1_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHSR1_Register use record
      TSAMPLE1       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SHHR_THOLD1_Field is Interfaces.Bit_Types.UInt10;

   --  Sample and Hold hold time register
   type SHHR_Register is record
      --  DAC Channel 1 hold Time (only valid in Sample and Hold mode)
      THOLD1         : SHHR_THOLD1_Field := 16#1#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#40#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHHR_Register use record
      THOLD1         at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SHRR_TREFRESH1_Field is Interfaces.Bit_Types.Byte;

   --  Sample and Hold refresh time register
   type SHRR_Register is record
      --  DAC Channel 1 refresh Time (only valid in Sample and Hold mode)
      TREFRESH1     : SHRR_TREFRESH1_Field := 16#1#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#100#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHRR_Register use record
      TREFRESH1     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Digital-to-analog converter
   type DAC_Peripheral is record
      --  control register
      CR      : aliased CR_Register;
      --  software trigger register
      SWTRGR  : aliased SWTRGR_Register;
      --  channel1 12-bit right-aligned data holding register
      DHR12R1 : aliased DHR12R1_Register;
      --  channel1 12-bit left aligned data holding register
      DHR12L1 : aliased DHR12L1_Register;
      --  channel1 8-bit right aligned data holding register
      DHR8R1  : aliased DHR8R1_Register;
      --  Dual DAC 12-bit right-aligned data holding register
      DHR12RD : aliased DHR12RD_Register;
      --  Dual DAC 12-bit left aligned data holding register
      DHR12LD : aliased DHR12LD_Register;
      --  Dual DAC 8-bit right aligned data holding register
      DHR8RD  : aliased DHR8RD_Register;
      --  DAC channel1 data output register
      DOR1    : aliased DOR1_Register;
      --  status register
      SR      : aliased SR_Register;
      --  calibration control register
      CCR     : aliased CCR_Register;
      --  mode control register
      MCR     : aliased MCR_Register;
      --  Sample and Hold sample time register 1
      SHSR1   : aliased SHSR1_Register;
      --  Sample and Hold hold time register
      SHHR    : aliased SHHR_Register;
      --  Sample and Hold refresh time register
      SHRR    : aliased SHRR_Register;
   end record
     with Volatile;

   for DAC_Peripheral use record
      CR      at 16#0# range 0 .. 31;
      SWTRGR  at 16#4# range 0 .. 31;
      DHR12R1 at 16#8# range 0 .. 31;
      DHR12L1 at 16#C# range 0 .. 31;
      DHR8R1  at 16#10# range 0 .. 31;
      DHR12RD at 16#20# range 0 .. 31;
      DHR12LD at 16#24# range 0 .. 31;
      DHR8RD  at 16#28# range 0 .. 31;
      DOR1    at 16#2C# range 0 .. 31;
      SR      at 16#34# range 0 .. 31;
      CCR     at 16#38# range 0 .. 31;
      MCR     at 16#3C# range 0 .. 31;
      SHSR1   at 16#40# range 0 .. 31;
      SHHR    at 16#48# range 0 .. 31;
      SHRR    at 16#4C# range 0 .. 31;
   end record;

   --  Digital-to-analog converter
   DAC_Periph : aliased DAC_Peripheral
     with Import, Address => DAC_Base;

end Interfaces.STM32.DAC;
