--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.ADCC3 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ADC3 common status register
   type ADCC3_CSR_Register is record
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
      Reserved_10_15 : HAL.UInt6;
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
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCC3_CSR_Register use record
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

   subtype ADCC3_CCR_PRESC_Field is HAL.UInt4;

   --  ADC3 common control register
   type ADCC3_CCR_Register is record
      --  unspecified
      Reserved_0_11  : HAL.UInt12 := 16#0#;
      --  Single prescaler mode This bit is set and cleared by software to
      --  enable/disable the single prescaler mode. Note: The software is
      --  allowed to write this bit only when both ADC1 and ADC2 are disabled.
      SPRES          : Boolean := False;
      --  unspecified
      Reserved_13_17 : HAL.UInt5 := 16#0#;
      --  ADC prescaler These bits are set and cleared by software to select
      --  the frequency of the clock to the ADC. The clock is common for all
      --  the ADCs. Other: reserved, must not be used Note: The software is
      --  allowed to write these bits only when the ADC is disabled (ADCAL=0,
      --  JADSTART=0, ADSTART=0, ADSTP=0, ADDIS=0 and ADEN=0).
      PRESC          : ADCC3_CCR_PRESC_Field := 16#0#;
      --  VsubREFINT/sub enable This bit is set and cleared by software to
      --  enable/disable the VsubREFINT/sub channel. Note: VsubREFINT/sub is
      --  not available on all ADC instances. Refer to Section41.4.4: ADC
      --  connectivity for details.
      VREFEN         : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  VBAT enable This bit is set and cleared by software to enable/disable
      --  the VsubBAT/sub channel. Note: VsubBAT /subis not available on all
      --  ADC instances. Refer to Section41.4.4: ADC connectivity for details.
      VBATEN         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCC3_CCR_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      SPRES          at 0 range 12 .. 12;
      Reserved_13_17 at 0 range 13 .. 17;
      PRESC          at 0 range 18 .. 21;
      VREFEN         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      VBATEN         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ADCC3_HWCFGR1_ADCNUM_Field is HAL.UInt4;
   subtype ADCC3_HWCFGR1_OPBITS_Field is HAL.UInt4;
   subtype ADCC3_HWCFGR1_ANAIP_Field is HAL.UInt4;

   --  ADC3 hardware configuration register
   type ADCC3_HWCFGR1_Register is record
      --  Read-only. Number of ADCs implemented
      ADCNUM         : ADCC3_HWCFGR1_ADCNUM_Field;
      --  Read-only. Number of option bits
      OPBITS         : ADCC3_HWCFGR1_OPBITS_Field;
      --  Read-only. Analog IP compatibility
      ANAIP          : ADCC3_HWCFGR1_ANAIP_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCC3_HWCFGR1_Register use record
      ADCNUM         at 0 range 0 .. 3;
      OPBITS         at 0 range 4 .. 7;
      ANAIP          at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ADCC3_VERR_MINREV_Field is HAL.UInt4;
   subtype ADCC3_VERR_MAJREV_Field is HAL.UInt4;

   --  ADC3 version register
   type ADCC3_VERR_Register is record
      --  Read-only. Minor revision These bits returns the ADC IP minor
      --  revision
      MINREV        : ADCC3_VERR_MINREV_Field;
      --  Read-only. Major revision These bits returns the ADC IP major
      --  revision
      MAJREV        : ADCC3_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCC3_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ADCC3 register block
   type ADCC3_Peripheral is record
      --  ADC3 common status register
      ADCC3_CSR     : aliased ADCC3_CSR_Register;
      --  ADC3 common control register
      ADCC3_CCR     : aliased ADCC3_CCR_Register;
      --  ADC3 hardware configuration register
      ADCC3_HWCFGR1 : aliased ADCC3_HWCFGR1_Register;
      --  ADC3 version register
      ADCC3_VERR    : aliased ADCC3_VERR_Register;
      --  ADC3 identification register
      ADCC3_IPIDR   : aliased HAL.UInt32;
      --  ADC3 size identification register
      ADCC3_SIDR    : aliased HAL.UInt32;
   end record
     with Volatile;

   for ADCC3_Peripheral use record
      ADCC3_CSR     at 16#0# range 0 .. 31;
      ADCC3_CCR     at 16#8# range 0 .. 31;
      ADCC3_HWCFGR1 at 16#F0# range 0 .. 31;
      ADCC3_VERR    at 16#F4# range 0 .. 31;
      ADCC3_IPIDR   at 16#F8# range 0 .. 31;
      ADCC3_SIDR    at 16#FC# range 0 .. 31;
   end record;

   --  ADCC3 register block
   ADC3_S_Periph : aliased ADCC3_Peripheral
     with Import, Address => ADC3_S_Base;

   --  ADCC3 register block
   ADCC3_Periph : aliased ADCC3_Peripheral
     with Import, Address => ADCC3_Base;

end STM32_SVD.ADCC3;
