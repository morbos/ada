--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.ADCC12 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  ADC12 common status register
   type ADCC12_CSR_Register is record
      --  Read-only. Master ADC ready This bit is a copy of the ADRDY bit in
      --  the corresponding ADC_ISR register.
      ADRDY_MST      : Boolean;
      --  Read-only. End of Sampling phase flag of the master ADC This bit is a
      --  copy of the EOSMP bit in the corresponding ADC_ISR register.
      EOSMP_MST      : Boolean;
      --  Read-only. End of regular conversion of the master ADC This bit is a
      --  copy of the EOC bit in the corresponding ADC_ISR register.
      EOC_MST        : Boolean;
      --  Read-only. End of regular sequence flag of the master ADC This bit is
      --  a copy of the EOS bit in the corresponding ADC_ISR register.
      EOS_MST        : Boolean;
      --  Read-only. Overrun flag of the master ADC This bit is a copy of the
      --  OVR bit in the corresponding ADC_ISR register.
      OVR_MST        : Boolean;
      --  Read-only. End of injected conversion flag of the master ADC This bit
      --  is a copy of the JEOC bit in the corresponding ADC_ISR register.
      JEOC_MST       : Boolean;
      --  Read-only. End of injected sequence flag of the master ADC This bit
      --  is a copy of the JEOS bit in the corresponding ADC_ISR register.
      JEOS_MST       : Boolean;
      --  Read-only. Analog watchdog 1 flag of the master ADC This bit is a
      --  copy of the AWD1 bit in the corresponding ADC_ISR register.
      AWD1_MST       : Boolean;
      --  Read-only. Analog watchdog 2 flag of the master ADC This bit is a
      --  copy of the AWD2 bit in the corresponding ADC_ISR register.
      AWD2_MST       : Boolean;
      --  Read-only. Analog watchdog 3 flag of the master ADC This bit is a
      --  copy of the AWD3 bit in the corresponding ADC_ISR register.
      AWD3_MST       : Boolean;
      --  unspecified
      Reserved_10_15 : Interfaces.Bit_Types.UInt6;
      --  Read-only. Slave ADC ready This bit is a copy of the ADRDY bit in the
      --  corresponding ADC_ISR register.
      ADRDY_SLV      : Boolean;
      --  Read-only. End of sampling phase flag of the slave ADC This bit is a
      --  copy of the EOSMP2 bit in the corresponding ADC_ISR register.
      EOSMP_SLV      : Boolean;
      --  Read-only. End of regular conversion of the slave ADC This bit is a
      --  copy of the EOC bit in the corresponding ADC_ISR register.
      EOC_SLV        : Boolean;
      --  Read-only. End of regular sequence flag of the slave ADC. This bit is
      --  a copy of the EOS bit in the corresponding ADC_ISR register.
      EOS_SLV        : Boolean;
      --  Read-only. Overrun flag of the slave ADC This bit is a copy of the
      --  OVR bit in the corresponding ADC_ISR register.
      OVR_SLV        : Boolean;
      --  Read-only. End of injected conversion flag of the slave ADC This bit
      --  is a copy of the JEOC bit in the corresponding ADC_ISR register.
      JEOC_SLV       : Boolean;
      --  Read-only. End of injected sequence flag of the slave ADC This bit is
      --  a copy of the JEOS bit in the corresponding ADC_ISR register.
      JEOS_SLV       : Boolean;
      --  Read-only. Analog watchdog 1 flag of the slave ADC This bit is a copy
      --  of the AWD1 bit in the corresponding ADC_ISR register.
      AWD1_SLV       : Boolean;
      --  Read-only. Analog watchdog 2 flag of the slave ADC This bit is a copy
      --  of the AWD2 bit in the corresponding ADC_ISR register.
      AWD2_SLV       : Boolean;
      --  Read-only. Analog watchdog 3 flag of the slave ADC This bit is a copy
      --  of the AWD3 bit in the corresponding ADC_ISR register.
      AWD3_SLV       : Boolean;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCC12_CSR_Register use record
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

   subtype ADCC12_CCR_PRESC_Field is Interfaces.Bit_Types.UInt4;

   --  ADC12 common control register
   type ADCC12_CCR_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Single prescaler mode This bit is set and cleared by software to
      --  enable/disable the single prescaler mode. Note: The software is
      --  allowed to write this bit only when both ADC1 and ADC2 are disabled.
      SPRES          : Boolean := False;
      --  unspecified
      Reserved_13_17 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  ADC prescaler These bits are set and cleared by software to select
      --  the frequency of the clock to the ADC. The clock is common for all
      --  the ADCs. Other: reserved, must not be used Note: The software is
      --  allowed to write these bits only when the ADC is disabled (ADCAL=0,
      --  JADSTART=0, ADSTART=0, ADSTP=0, ADDIS=0 and ADEN=0).
      PRESC          : ADCC12_CCR_PRESC_Field := 16#0#;
      --  VsubREFINT/sub enable This bit is set and cleared by software to
      --  enable/disable the VsubREFINT/sub channel. Note: VsubREFINT/sub is
      --  not available on all ADC instances. Refer to Section41.4.4: ADC
      --  connectivity for details.
      VREFEN         : Boolean := False;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  VBAT enable This bit is set and cleared by software to enable/disable
      --  the VsubBAT/sub channel. Note: VsubBAT /subis not available on all
      --  ADC instances. Refer to Section41.4.4: ADC connectivity for details.
      VBATEN         : Boolean := False;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCC12_CCR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      SPRES          at 0 range 12 .. 12;
      Reserved_13_17 at 0 range 13 .. 17;
      PRESC          at 0 range 18 .. 21;
      VREFEN         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      VBATEN         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ADCC12_HWCFGR1_ADCNUM_Field is Interfaces.Bit_Types.UInt4;
   subtype ADCC12_HWCFGR1_OPBITS_Field is Interfaces.Bit_Types.UInt4;
   subtype ADCC12_HWCFGR1_ANAIP_Field is Interfaces.Bit_Types.UInt4;

   --  ADC12 hardware configuration register
   type ADCC12_HWCFGR1_Register is record
      --  Read-only. Number of ADCs implemented
      ADCNUM         : ADCC12_HWCFGR1_ADCNUM_Field;
      --  Read-only. Number of option bits
      OPBITS         : ADCC12_HWCFGR1_OPBITS_Field;
      --  Read-only. Analog IP compatibility
      ANAIP          : ADCC12_HWCFGR1_ANAIP_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCC12_HWCFGR1_Register use record
      ADCNUM         at 0 range 0 .. 3;
      OPBITS         at 0 range 4 .. 7;
      ANAIP          at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ADCC12_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype ADCC12_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  ADC12 version register
   type ADCC12_VERR_Register is record
      --  Read-only. Minor revision These bits returns the ADC IP minor
      --  revision
      MINREV        : ADCC12_VERR_MINREV_Field;
      --  Read-only. Major revision These bits returns the ADC IP major
      --  revision
      MAJREV        : ADCC12_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCC12_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ADCC12 register block
   type ADCC12_Peripheral is record
      --  ADC12 common status register
      ADCC12_CSR     : aliased ADCC12_CSR_Register;
      --  ADC12 common control register
      ADCC12_CCR     : aliased ADCC12_CCR_Register;
      --  ADC12 hardware configuration register
      ADCC12_HWCFGR1 : aliased ADCC12_HWCFGR1_Register;
      --  ADC12 version register
      ADCC12_VERR    : aliased ADCC12_VERR_Register;
      --  ADC12 identification register
      ADCC12_IPIDR   : aliased Interfaces.Bit_Types.UInt32;
      --  ADC12 size identification register
      ADCC12_SIDR    : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for ADCC12_Peripheral use record
      ADCC12_CSR     at 16#0# range 0 .. 31;
      ADCC12_CCR     at 16#8# range 0 .. 31;
      ADCC12_HWCFGR1 at 16#F0# range 0 .. 31;
      ADCC12_VERR    at 16#F4# range 0 .. 31;
      ADCC12_IPIDR   at 16#F8# range 0 .. 31;
      ADCC12_SIDR    at 16#FC# range 0 .. 31;
   end record;

   --  ADCC12 register block
   ADCC12_Periph : aliased ADCC12_Peripheral
     with Import, Address => ADCC12_Base;

end Interfaces.STM32.ADCC12;
