--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.ADCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  ADC common status register
   type ADCC_CSR_Register is record
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
      --  Read-only. Injected context queue overflow flag of the master ADC
      JQOVF_MST      : Boolean;
      --  unspecified
      Reserved_11_11 : HAL.Bit;
      --  Read-only. ADC internal voltage regulator flag of the master ADC
      LDORDY_MST     : Boolean;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Slave ADC ready
      ADRDY_SLV      : Boolean;
      --  Read-only. End of sampling phase flag of the slave ADC
      EOSMP_SLV      : Boolean;
      --  Read-only. End of regular conversion of the slave ADC
      EOC_SLV        : Boolean;
      --  Read-only. End of regular sequence flag of the slave ADC.
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
      --  Read-only. Injected context queue overflow flag of the slave ADC
      JQOVF_SLV      : Boolean;
      --  unspecified
      Reserved_27_27 : HAL.Bit;
      --  Read-only. ADC internal voltage regulator flag of the slave ADC
      LDORDY_SLV     : Boolean;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCC_CSR_Register use record
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
      JQOVF_MST      at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      LDORDY_MST     at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
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
      JQOVF_SLV      at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      LDORDY_SLV     at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ADCC_CCR_DUAL_Field is HAL.UInt5;
   subtype ADCC_CCR_DELAY_Field is HAL.UInt4;
   subtype ADCC_CCR_DAMDF_Field is HAL.UInt2;

   --  ADC common control register
   type ADCC_CCR_Register is record
      --  Dual ADC mode selection
      DUAL           : ADCC_CCR_DUAL_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Delay between two sampling phases
      DELAY_k        : ADCC_CCR_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Dual ADC mode data format
      DAMDF          : ADCC_CCR_DAMDF_Field := 16#0#;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  Vless thansub>REFINTless than/sub> enable
      VREFEN         : Boolean := False;
      --  Temperature sensor voltage enable
      TSEN           : Boolean := False;
      --  VBAT enable
      VBATEN         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCC_CCR_Register use record
      DUAL           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DELAY_k        at 0 range 8 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      DAMDF          at 0 range 14 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      VREFEN         at 0 range 22 .. 22;
      TSEN           at 0 range 23 .. 23;
      VBATEN         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ADCC_CDR_RDATA_MST_Field is HAL.UInt16;
   subtype ADCC_CDR_RDATA_SLV_Field is HAL.UInt16;

   --  ADC common regular data register for dual mode
   type ADCC_CDR_Register is record
      --  Read-only. Regular data of the master ADC.
      RDATA_MST : ADCC_CDR_RDATA_MST_Field;
      --  Read-only. Regular data of the slave ADC
      RDATA_SLV : ADCC_CDR_RDATA_SLV_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCC_CDR_Register use record
      RDATA_MST at 0 range 0 .. 15;
      RDATA_SLV at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ADC12 address block description
   type ADCC_Peripheral is record
      --  ADC common status register
      ADCC_CSR  : aliased ADCC_CSR_Register;
      --  ADC common control register
      ADCC_CCR  : aliased ADCC_CCR_Register;
      --  ADC common regular data register for dual mode
      ADCC_CDR  : aliased ADCC_CDR_Register;
      --  ADC common regular data register for dual mode
      ADCC_CDR2 : aliased HAL.UInt32;
   end record
     with Volatile;

   for ADCC_Peripheral use record
      ADCC_CSR  at 16#0# range 0 .. 31;
      ADCC_CCR  at 16#8# range 0 .. 31;
      ADCC_CDR  at 16#C# range 0 .. 31;
      ADCC_CDR2 at 16#10# range 0 .. 31;
   end record;

   --  ADC12 address block description
   ADC12_Periph : aliased ADCC_Peripheral
     with Import, Address => ADC12_Base;

   --  ADC12 address block description
   SEC_ADC12_Periph : aliased ADCC_Peripheral
     with Import, Address => SEC_ADC12_Base;

end STM32_SVD.ADCC;
