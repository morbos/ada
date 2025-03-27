--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.ADC12 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  ADC12 common status register
   type ADC12_CSR_Register is record
      --  Read-only. Master ADC ready
      ADRDY_MST      : Boolean;
      --  Read-only. End of Sampling phase flag of the master ADC
      EOSMP_MST      : Boolean;
      --  Read-only. End of regular conversion of the master ADC
      EOC_MST        : Boolean;
      --  Read-only. End of regular sequence flag of the master ADC
      EOS_MST        : Boolean;
      --  Read-only. Overrun flag of the master ADC
      OVR_MST        : Boolean;
      --  Read-only. End of injected conversion flag of the master ADC
      JEOC_MST       : Boolean;
      --  Read-only. End of injected sequence flag of the master ADC
      JEOS_MST       : Boolean;
      --  Read-only. Analog watchdog 1 flag of the master ADC
      AWD1_MST       : Boolean;
      --  Read-only. Analog watchdog 2 flag of the master ADC
      AWD2_MST       : Boolean;
      --  Read-only. Analog watchdog 3 flag of the master ADC
      AWD3_MST       : Boolean;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6;
      --  Read-only. Slave ADC ready
      ADRDY_SLV      : Boolean;
      --  Read-only. End of Sampling phase flag of the slave ADC
      EOSMP_SLV      : Boolean;
      --  Read-only. End of regular conversion of the slave ADC
      EOC_SLV        : Boolean;
      --  Read-only. End of regular sequence flag of the slave ADC. This bit is
      --  a copy of the EOS bit in the corresponding ADC_ISR register.
      EOS_SLV        : Boolean;
      --  Read-only. Overrun flag of the slave ADC
      OVR_SLV        : Boolean;
      --  Read-only. End of injected conversion flag of the slave ADC
      JEOC_SLV       : Boolean;
      --  Read-only. End of injected sequence flag of the slave ADC
      JEOS_SLV       : Boolean;
      --  Read-only. Analog watchdog 1 flag of the slave ADC
      AWD1_SLV       : Boolean;
      --  Read-only. Analog watchdog 2 flag of the slave ADC
      AWD2_SLV       : Boolean;
      --  Read-only. Analog watchdog 3 flag of the slave ADC
      AWD3_SLV       : Boolean;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12_CSR_Register use record
      ADRDY_MST      at 0 range 0 .. 0;
      EOSMP_MST      at 0 range 1 .. 1;
      EOC_MST        at 0 range 2 .. 2;
      EOS_MST        at 0 range 3 .. 3;
      OVR_MST        at 0 range 4 .. 4;
      JEOC_MST       at 0 range 5 .. 5;
      JEOS_MST       at 0 range 6 .. 6;
      AWD1_MST       at 0 range 7 .. 7;
      AWD2_MST       at 0 range 8 .. 8;
      AWD3_MST       at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      ADRDY_SLV      at 0 range 16 .. 16;
      EOSMP_SLV      at 0 range 17 .. 17;
      EOC_SLV        at 0 range 18 .. 18;
      EOS_SLV        at 0 range 19 .. 19;
      OVR_SLV        at 0 range 20 .. 20;
      JEOC_SLV       at 0 range 21 .. 21;
      JEOS_SLV       at 0 range 22 .. 22;
      AWD1_SLV       at 0 range 23 .. 23;
      AWD2_SLV       at 0 range 24 .. 24;
      AWD3_SLV       at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype ADC12_CCR_DUAL_Field is Interfaces.Bit_Types.UInt5;
   subtype ADC12_CCR_DELAY_Field is Interfaces.Bit_Types.UInt4;
   subtype ADC12_CCR_DAMDF_Field is Interfaces.Bit_Types.UInt2;

   --  ADC12 common control register
   type ADC12_CCR_Register is record
      --  Dual ADC mode selection
      DUAL           : ADC12_CCR_DUAL_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Delay between two sampling phases
      DELAY_k        : ADC12_CCR_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Dual ADC mode data format
      DAMDF          : ADC12_CCR_DAMDF_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Vless thansub>REFINTless than/sub> enable
      VREFEN         : Boolean := False;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  VBAT enable
      VBATEN         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12_CCR_Register use record
      DUAL           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DELAY_k        at 0 range 8 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      DAMDF          at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      VREFEN         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      VBATEN         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ADC12_CDR_RDATA_MST_Field is Interfaces.Bit_Types.UInt16;
   subtype ADC12_CDR_RDATA_SLV_Field is Interfaces.Bit_Types.UInt16;

   --  ADC12 common regular data register for Dual mode
   type ADC12_CDR_Register is record
      --  Read-only. Regular data of the master ADC.
      RDATA_MST : ADC12_CDR_RDATA_MST_Field;
      --  Read-only. Regular data of the slave ADC
      RDATA_SLV : ADC12_CDR_RDATA_SLV_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC12_CDR_Register use record
      RDATA_MST at 0 range 0 .. 15;
      RDATA_SLV at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ADC common registers
   type ADC12_Peripheral is record
      --  ADC12 common status register
      ADC12_CSR  : aliased ADC12_CSR_Register;
      --  ADC12 common control register
      ADC12_CCR  : aliased ADC12_CCR_Register;
      --  ADC12 common regular data register for Dual mode
      ADC12_CDR  : aliased ADC12_CDR_Register;
      --  ADC12 common regular data register for Dual mode
      ADC12_CDR2 : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for ADC12_Peripheral use record
      ADC12_CSR  at 16#300# range 0 .. 31;
      ADC12_CCR  at 16#308# range 0 .. 31;
      ADC12_CDR  at 16#30C# range 0 .. 31;
      ADC12_CDR2 at 16#310# range 0 .. 31;
   end record;

   --  ADC common registers
   ADC12_Periph : aliased ADC12_Peripheral
     with Import, Address => ADC12_Base;

   --  ADC common registers
   ADC12_S_Periph : aliased ADC12_Peripheral
     with Import, Address => ADC12_S_Base;

end Interfaces.STM32.ADC12;
