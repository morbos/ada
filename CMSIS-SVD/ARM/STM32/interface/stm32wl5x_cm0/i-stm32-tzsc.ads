--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM0P.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.TZSC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype IER1_TZICIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER1_TZSCIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER1_AESIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER1_RNGIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER1_SUBGHZSPIIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER1_PWRIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER1_FLASHIFIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER1_DMA1IE_Field is Interfaces.Bit_Types.Bit;
   subtype IER1_DMA2IE_Field is Interfaces.Bit_Types.Bit;
   subtype IER1_DMAMUX1IE_Field is Interfaces.Bit_Types.Bit;
   subtype IER1_FLASHIE_Field is Interfaces.Bit_Types.Bit;
   subtype IER1_SRAM1IE_Field is Interfaces.Bit_Types.Bit;
   subtype IER1_SRAM2IE_Field is Interfaces.Bit_Types.Bit;
   subtype IER1_PKAIE_Field is Interfaces.Bit_Types.Bit;

   --  TZIC interrupt enable register 1
   type IER1_Register is record
      --  TZICIE
      TZICIE         : IER1_TZICIE_Field := 16#1#;
      --  TZSCIE
      TZSCIE         : IER1_TZSCIE_Field := 16#1#;
      --  AESIE
      AESIE          : IER1_AESIE_Field := 16#1#;
      --  RNGIE
      RNGIE          : IER1_RNGIE_Field := 16#1#;
      --  SUBGHZSPIIE
      SUBGHZSPIIE    : IER1_SUBGHZSPIIE_Field := 16#1#;
      --  PWRIE
      PWRIE          : IER1_PWRIE_Field := 16#1#;
      --  FLASHIFIE
      FLASHIFIE      : IER1_FLASHIFIE_Field := 16#1#;
      --  DMA1IE
      DMA1IE         : IER1_DMA1IE_Field := 16#1#;
      --  DMA2IE
      DMA2IE         : IER1_DMA2IE_Field := 16#1#;
      --  DMAMUX1IE
      DMAMUX1IE      : IER1_DMAMUX1IE_Field := 16#1#;
      --  FLASHIE
      FLASHIE        : IER1_FLASHIE_Field := 16#1#;
      --  SRAM1IE
      SRAM1IE        : IER1_SRAM1IE_Field := 16#1#;
      --  SRAM2IE
      SRAM2IE        : IER1_SRAM2IE_Field := 16#1#;
      --  PKAIE
      PKAIE          : IER1_PKAIE_Field := 16#1#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#3FFFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER1_Register use record
      TZICIE         at 0 range 0 .. 0;
      TZSCIE         at 0 range 1 .. 1;
      AESIE          at 0 range 2 .. 2;
      RNGIE          at 0 range 3 .. 3;
      SUBGHZSPIIE    at 0 range 4 .. 4;
      PWRIE          at 0 range 5 .. 5;
      FLASHIFIE      at 0 range 6 .. 6;
      DMA1IE         at 0 range 7 .. 7;
      DMA2IE         at 0 range 8 .. 8;
      DMAMUX1IE      at 0 range 9 .. 9;
      FLASHIE        at 0 range 10 .. 10;
      SRAM1IE        at 0 range 11 .. 11;
      SRAM2IE        at 0 range 12 .. 12;
      PKAIE          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype MISR1_TZICMF_Field is Interfaces.Bit_Types.Bit;
   subtype MISR1_TZSCMF_Field is Interfaces.Bit_Types.Bit;
   subtype MISR1_AESMF_Field is Interfaces.Bit_Types.Bit;
   subtype MISR1_RNGMF_Field is Interfaces.Bit_Types.Bit;
   subtype MISR1_SUBGHZSPIMF_Field is Interfaces.Bit_Types.Bit;
   subtype MISR1_PWRMF_Field is Interfaces.Bit_Types.Bit;
   subtype MISR1_FLASHIFMF_Field is Interfaces.Bit_Types.Bit;
   subtype MISR1_DMA1MF_Field is Interfaces.Bit_Types.Bit;
   subtype MISR1_DMA2MF_Field is Interfaces.Bit_Types.Bit;
   subtype MISR1_DMAMUX1MF_Field is Interfaces.Bit_Types.Bit;
   subtype MISR1_FLASHMF_Field is Interfaces.Bit_Types.Bit;
   subtype MISR1_SRAM1MF_Field is Interfaces.Bit_Types.Bit;
   subtype MISR1_SRAM2MF_Field is Interfaces.Bit_Types.Bit;
   subtype MISR1_PKAMF_Field is Interfaces.Bit_Types.Bit;

   --  TZIC status register 1
   type MISR1_Register is record
      --  Read-only. TZICMF
      TZICMF         : MISR1_TZICMF_Field;
      --  Read-only. TZSCMF
      TZSCMF         : MISR1_TZSCMF_Field;
      --  Read-only. AESMF
      AESMF          : MISR1_AESMF_Field;
      --  Read-only. RNGMF
      RNGMF          : MISR1_RNGMF_Field;
      --  Read-only. SUBGHZSPIMF
      SUBGHZSPIMF    : MISR1_SUBGHZSPIMF_Field;
      --  Read-only. PWRMF
      PWRMF          : MISR1_PWRMF_Field;
      --  Read-only. FLASHIFMF
      FLASHIFMF      : MISR1_FLASHIFMF_Field;
      --  Read-only. DMA1MF
      DMA1MF         : MISR1_DMA1MF_Field;
      --  Read-only. DMA2MF
      DMA2MF         : MISR1_DMA2MF_Field;
      --  Read-only. DMAMUX1MF
      DMAMUX1MF      : MISR1_DMAMUX1MF_Field;
      --  Read-only. FLASHMF
      FLASHMF        : MISR1_FLASHMF_Field;
      --  Read-only. SRAM1MF
      SRAM1MF        : MISR1_SRAM1MF_Field;
      --  Read-only. SRAM2MF
      SRAM2MF        : MISR1_SRAM2MF_Field;
      --  Read-only. PKAMF
      PKAMF          : MISR1_PKAMF_Field;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MISR1_Register use record
      TZICMF         at 0 range 0 .. 0;
      TZSCMF         at 0 range 1 .. 1;
      AESMF          at 0 range 2 .. 2;
      RNGMF          at 0 range 3 .. 3;
      SUBGHZSPIMF    at 0 range 4 .. 4;
      PWRMF          at 0 range 5 .. 5;
      FLASHIFMF      at 0 range 6 .. 6;
      DMA1MF         at 0 range 7 .. 7;
      DMA2MF         at 0 range 8 .. 8;
      DMAMUX1MF      at 0 range 9 .. 9;
      FLASHMF        at 0 range 10 .. 10;
      SRAM1MF        at 0 range 11 .. 11;
      SRAM2MF        at 0 range 12 .. 12;
      PKAMF          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype ICR1_TZICCF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR1_TZSCCF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR1_AESCF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR1_RNGCF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR1_SUBGHZSPICF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR1_PWRCF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR1_FLASHIFCF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR1_DMA1CF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR1_DMA2CF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR1_DMAMUX1CF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR1_FLASHCF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR1_SRAM1CF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR1_SRAM2CF_Field is Interfaces.Bit_Types.Bit;
   subtype ICR1_PKACF_Field is Interfaces.Bit_Types.Bit;

   --  TZIC interrupt status clear register 1
   type ICR1_Register is record
      --  TZICCF
      TZICCF         : ICR1_TZICCF_Field := 16#0#;
      --  TZSCCF
      TZSCCF         : ICR1_TZSCCF_Field := 16#0#;
      --  AESCF
      AESCF          : ICR1_AESCF_Field := 16#0#;
      --  RNGCF
      RNGCF          : ICR1_RNGCF_Field := 16#0#;
      --  SUBGHZSPICF
      SUBGHZSPICF    : ICR1_SUBGHZSPICF_Field := 16#0#;
      --  PWRCF
      PWRCF          : ICR1_PWRCF_Field := 16#0#;
      --  FLASHIFCF
      FLASHIFCF      : ICR1_FLASHIFCF_Field := 16#0#;
      --  DMA1CF
      DMA1CF         : ICR1_DMA1CF_Field := 16#0#;
      --  DMA2CF
      DMA2CF         : ICR1_DMA2CF_Field := 16#0#;
      --  DMAMUX1CF
      DMAMUX1CF      : ICR1_DMAMUX1CF_Field := 16#0#;
      --  FLASHCF
      FLASHCF        : ICR1_FLASHCF_Field := 16#0#;
      --  SRAM1CF
      SRAM1CF        : ICR1_SRAM1CF_Field := 16#0#;
      --  SRAM2CF
      SRAM2CF        : ICR1_SRAM2CF_Field := 16#0#;
      --  PKACF
      PKACF          : ICR1_PKACF_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR1_Register use record
      TZICCF         at 0 range 0 .. 0;
      TZSCCF         at 0 range 1 .. 1;
      AESCF          at 0 range 2 .. 2;
      RNGCF          at 0 range 3 .. 3;
      SUBGHZSPICF    at 0 range 4 .. 4;
      PWRCF          at 0 range 5 .. 5;
      FLASHIFCF      at 0 range 6 .. 6;
      DMA1CF         at 0 range 7 .. 7;
      DMA2CF         at 0 range 8 .. 8;
      DMAMUX1CF      at 0 range 9 .. 9;
      FLASHCF        at 0 range 10 .. 10;
      SRAM1CF        at 0 range 11 .. 11;
      SRAM2CF        at 0 range 12 .. 12;
      PKACF          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype TZSC_CR_LCK_Field is Interfaces.Bit_Types.Bit;

   --  TZSC control register
   type TZSC_CR_Register is record
      --  LCK
      LCK           : TZSC_CR_LCK_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TZSC_CR_Register use record
      LCK           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype TZSC_SECCFGR1_AESSEC_Field is Interfaces.Bit_Types.Bit;
   subtype TZSC_SECCFGR1_RNGSEC_Field is Interfaces.Bit_Types.Bit;
   subtype TZSC_SECCFGR1_PKASEC_Field is Interfaces.Bit_Types.Bit;

   --  TZSC security configuration register
   type TZSC_SECCFGR1_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  AESSEC
      AESSEC         : TZSC_SECCFGR1_AESSEC_Field := 16#0#;
      --  RNGSEC
      RNGSEC         : TZSC_SECCFGR1_RNGSEC_Field := 16#0#;
      --  unspecified
      Reserved_4_12  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  PKASEC
      PKASEC         : TZSC_SECCFGR1_PKASEC_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TZSC_SECCFGR1_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      AESSEC         at 0 range 2 .. 2;
      RNGSEC         at 0 range 3 .. 3;
      Reserved_4_12  at 0 range 4 .. 12;
      PKASEC         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype TZSC_PRIVCFGR1_AESPRIV_Field is Interfaces.Bit_Types.Bit;
   subtype TZSC_PRIVCFGR1_RNGPRIV_Field is Interfaces.Bit_Types.Bit;
   subtype TZSC_PRIVCFGR1_SUBGHZSPIPRIV_Field is Interfaces.Bit_Types.Bit;
   subtype TZSC_PRIVCFGR1_PKAPRIV_Field is Interfaces.Bit_Types.Bit;

   --  TZSC privilege configuration register 1
   type TZSC_PRIVCFGR1_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  AESPRIV
      AESPRIV        : TZSC_PRIVCFGR1_AESPRIV_Field := 16#0#;
      --  RNGPRIV
      RNGPRIV        : TZSC_PRIVCFGR1_RNGPRIV_Field := 16#0#;
      --  SUBGHZSPIPRIV
      SUBGHZSPIPRIV  : TZSC_PRIVCFGR1_SUBGHZSPIPRIV_Field := 16#0#;
      --  unspecified
      Reserved_5_12  : Interfaces.Bit_Types.Byte := 16#0#;
      --  PKAPRIV
      PKAPRIV        : TZSC_PRIVCFGR1_PKAPRIV_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TZSC_PRIVCFGR1_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      AESPRIV        at 0 range 2 .. 2;
      RNGPRIV        at 0 range 3 .. 3;
      SUBGHZSPIPRIV  at 0 range 4 .. 4;
      Reserved_5_12  at 0 range 5 .. 12;
      PKAPRIV        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype TZSC_MPCWM1_UPWMR_LGTH_Field is Interfaces.Bit_Types.UInt12;

   --  Unprivileged Water Mark 1 register
   type TZSC_MPCWM1_UPWMR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  LGTH
      LGTH           : TZSC_MPCWM1_UPWMR_LGTH_Field := 16#FFF#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TZSC_MPCWM1_UPWMR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      LGTH           at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TZSC_MPCWM1_UPWWMR_LGTH_Field is Interfaces.Bit_Types.UInt12;

   --  Unprivileged Writable Water Mark 1 register
   type TZSC_MPCWM1_UPWWMR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Define the length of Flash Unprivileged Writable area, in 2
      LGTH           : TZSC_MPCWM1_UPWWMR_LGTH_Field := 16#FFF#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TZSC_MPCWM1_UPWWMR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      LGTH           at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TZSC_MPCWM2_UPWMR_LGTH_Field is Interfaces.Bit_Types.UInt12;

   --  Unprivileged Water Mark 2 register
   type TZSC_MPCWM2_UPWMR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  LGTH
      LGTH           : TZSC_MPCWM2_UPWMR_LGTH_Field := 16#FFF#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TZSC_MPCWM2_UPWMR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      LGTH           at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TZSC_MPCWM3_UPWMR_LGTH_Field is Interfaces.Bit_Types.UInt12;

   --  Unprivileged Water Mark 3 register
   type TZSC_MPCWM3_UPWMR_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  LGTH
      LGTH           : TZSC_MPCWM3_UPWMR_LGTH_Field := 16#FFF#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TZSC_MPCWM3_UPWMR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      LGTH           at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  TrustZone Interrupt Control
   type TZIC_Peripheral is record
      --  TZIC interrupt enable register 1
      IER1  : aliased IER1_Register;
      --  TZIC status register 1
      MISR1 : aliased MISR1_Register;
      --  TZIC interrupt status clear register 1
      ICR1  : aliased ICR1_Register;
   end record
     with Volatile;

   for TZIC_Peripheral use record
      IER1  at 16#0# range 0 .. 31;
      MISR1 at 16#10# range 0 .. 31;
      ICR1  at 16#20# range 0 .. 31;
   end record;

   --  TrustZone Interrupt Control
   TZIC_Periph : aliased TZIC_Peripheral
     with Import, Address => TZIC_Base;

   --  Global TrustZone Controller
   type TZSC_Peripheral is record
      --  TZSC control register
      TZSC_CR            : aliased TZSC_CR_Register;
      --  TZSC security configuration register
      TZSC_SECCFGR1      : aliased TZSC_SECCFGR1_Register;
      --  TZSC privilege configuration register 1
      TZSC_PRIVCFGR1     : aliased TZSC_PRIVCFGR1_Register;
      --  Unprivileged Water Mark 1 register
      TZSC_MPCWM1_UPWMR  : aliased TZSC_MPCWM1_UPWMR_Register;
      --  Unprivileged Writable Water Mark 1 register
      TZSC_MPCWM1_UPWWMR : aliased TZSC_MPCWM1_UPWWMR_Register;
      --  Unprivileged Water Mark 2 register
      TZSC_MPCWM2_UPWMR  : aliased TZSC_MPCWM2_UPWMR_Register;
      --  Unprivileged Water Mark 3 register
      TZSC_MPCWM3_UPWMR  : aliased TZSC_MPCWM3_UPWMR_Register;
   end record
     with Volatile;

   for TZSC_Peripheral use record
      TZSC_CR            at 16#0# range 0 .. 31;
      TZSC_SECCFGR1      at 16#10# range 0 .. 31;
      TZSC_PRIVCFGR1     at 16#20# range 0 .. 31;
      TZSC_MPCWM1_UPWMR  at 16#130# range 0 .. 31;
      TZSC_MPCWM1_UPWWMR at 16#134# range 0 .. 31;
      TZSC_MPCWM2_UPWMR  at 16#138# range 0 .. 31;
      TZSC_MPCWM3_UPWMR  at 16#140# range 0 .. 31;
   end record;

   --  Global TrustZone Controller
   TZSC_Periph : aliased TZSC_Peripheral
     with Import, Address => TZSC_Base;

end Interfaces.STM32.TZSC;
