--
--  Copyright (C) 2021, AdaCore
--

--  This spec has been automatically generated from STM32WL5x_CM0P.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.ADC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype ADC_ISR_ADRDY_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_ISR_EOSMP_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_ISR_EOC_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_ISR_EOS_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_ISR_OVR_Field is Interfaces.Bit_Types.Bit;
   --  ADC_ISR_AWD array element
   subtype ADC_ISR_AWD_Element is Interfaces.Bit_Types.Bit;

   --  ADC_ISR_AWD array
   type ADC_ISR_AWD_Field_Array is array (1 .. 3) of ADC_ISR_AWD_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC_ISR_AWD
   type ADC_ISR_AWD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AWD as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  AWD as an array
            Arr : ADC_ISR_AWD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC_ISR_AWD_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype ADC_ISR_EOCAL_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_ISR_CCRDY_Field is Interfaces.Bit_Types.Bit;

   --  ADC interrupt and status register
   type ADC_ISR_Register is record
      --  ADRDY
      ADRDY          : ADC_ISR_ADRDY_Field := 16#0#;
      --  EOSMP
      EOSMP          : ADC_ISR_EOSMP_Field := 16#0#;
      --  EOC
      EOC            : ADC_ISR_EOC_Field := 16#0#;
      --  EOS
      EOS            : ADC_ISR_EOS_Field := 16#0#;
      --  OVR
      OVR            : ADC_ISR_OVR_Field := 16#0#;
      --  unspecified
      Reserved_5_6   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  AWD1
      AWD            : ADC_ISR_AWD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  EOCAL
      EOCAL          : ADC_ISR_EOCAL_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CCRDY
      CCRDY          : ADC_ISR_CCRDY_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_ISR_Register use record
      ADRDY          at 0 range 0 .. 0;
      EOSMP          at 0 range 1 .. 1;
      EOC            at 0 range 2 .. 2;
      EOS            at 0 range 3 .. 3;
      OVR            at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      AWD            at 0 range 7 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      EOCAL          at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      CCRDY          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype ADC_IER_ADRDYIE_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_IER_EOSMPIE_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_IER_EOCIE_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_IER_EOSIE_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_IER_OVRIE_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_IER_AWD1IE_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_IER_AWD2IE_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_IER_AWD3IE_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_IER_EOCALIE_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_IER_CCRDYIE_Field is Interfaces.Bit_Types.Bit;

   --  ADC interrupt enable register
   type ADC_IER_Register is record
      --  ADRDYIE
      ADRDYIE        : ADC_IER_ADRDYIE_Field := 16#0#;
      --  EOSMPIE
      EOSMPIE        : ADC_IER_EOSMPIE_Field := 16#0#;
      --  EOCIE
      EOCIE          : ADC_IER_EOCIE_Field := 16#0#;
      --  EOSIE
      EOSIE          : ADC_IER_EOSIE_Field := 16#0#;
      --  OVRIE
      OVRIE          : ADC_IER_OVRIE_Field := 16#0#;
      --  unspecified
      Reserved_5_6   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  AWD1IE
      AWD1IE         : ADC_IER_AWD1IE_Field := 16#0#;
      --  AWD2IE
      AWD2IE         : ADC_IER_AWD2IE_Field := 16#0#;
      --  AWD3IE
      AWD3IE         : ADC_IER_AWD3IE_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  EOCALIE
      EOCALIE        : ADC_IER_EOCALIE_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CCRDYIE
      CCRDYIE        : ADC_IER_CCRDYIE_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_IER_Register use record
      ADRDYIE        at 0 range 0 .. 0;
      EOSMPIE        at 0 range 1 .. 1;
      EOCIE          at 0 range 2 .. 2;
      EOSIE          at 0 range 3 .. 3;
      OVRIE          at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      AWD1IE         at 0 range 7 .. 7;
      AWD2IE         at 0 range 8 .. 8;
      AWD3IE         at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      EOCALIE        at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      CCRDYIE        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype ADC_CR_ADEN_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CR_ADDIS_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CR_ADSTART_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CR_ADSTP_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CR_ADVREGEN_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CR_ADCAL_Field is Interfaces.Bit_Types.Bit;

   --  ADC control register
   type ADC_CR_Register is record
      --  ADEN
      ADEN           : ADC_CR_ADEN_Field := 16#0#;
      --  ADDIS
      ADDIS          : ADC_CR_ADDIS_Field := 16#0#;
      --  ADSTART
      ADSTART        : ADC_CR_ADSTART_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  ADSTP
      ADSTP          : ADC_CR_ADSTP_Field := 16#0#;
      --  unspecified
      Reserved_5_27  : Interfaces.Bit_Types.UInt23 := 16#0#;
      --  ADVREGEN
      ADVREGEN       : ADC_CR_ADVREGEN_Field := 16#0#;
      --  unspecified
      Reserved_29_30 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ADCAL
      ADCAL          : ADC_CR_ADCAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CR_Register use record
      ADEN           at 0 range 0 .. 0;
      ADDIS          at 0 range 1 .. 1;
      ADSTART        at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ADSTP          at 0 range 4 .. 4;
      Reserved_5_27  at 0 range 5 .. 27;
      ADVREGEN       at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      ADCAL          at 0 range 31 .. 31;
   end record;

   subtype ADC_CFGR1_DMAEN_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR1_DMACFG_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR1_SCANDIR_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR1_RES_Field is Interfaces.Bit_Types.UInt2;
   subtype ADC_CFGR1_ALIGN_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR1_EXTSEL_Field is Interfaces.Bit_Types.UInt3;
   subtype ADC_CFGR1_EXTEN_Field is Interfaces.Bit_Types.UInt2;
   subtype ADC_CFGR1_OVRMOD_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR1_CONT_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR1_WAIT_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR1_AUTOFF_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR1_DISCEN_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR1_CHSELRMOD_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR1_AWD1SGL_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR1_AWD1EN_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR1_AWD1CH_Field is Interfaces.Bit_Types.UInt5;

   --  ADC configuration register 1
   type ADC_CFGR1_Register is record
      --  DMAEN
      DMAEN          : ADC_CFGR1_DMAEN_Field := 16#0#;
      --  DMACFG
      DMACFG         : ADC_CFGR1_DMACFG_Field := 16#0#;
      --  SCANDIR
      SCANDIR        : ADC_CFGR1_SCANDIR_Field := 16#0#;
      --  RES
      RES            : ADC_CFGR1_RES_Field := 16#0#;
      --  ALIGN
      ALIGN          : ADC_CFGR1_ALIGN_Field := 16#0#;
      --  EXTSEL
      EXTSEL         : ADC_CFGR1_EXTSEL_Field := 16#0#;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit := 16#0#;
      --  EXTEN
      EXTEN          : ADC_CFGR1_EXTEN_Field := 16#0#;
      --  OVRMOD
      OVRMOD         : ADC_CFGR1_OVRMOD_Field := 16#0#;
      --  CONT
      CONT           : ADC_CFGR1_CONT_Field := 16#0#;
      --  WAIT
      WAIT           : ADC_CFGR1_WAIT_Field := 16#0#;
      --  AUTOFF
      AUTOFF         : ADC_CFGR1_AUTOFF_Field := 16#0#;
      --  DISCEN
      DISCEN         : ADC_CFGR1_DISCEN_Field := 16#0#;
      --  unspecified
      Reserved_17_20 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  CHSELRMOD
      CHSELRMOD      : ADC_CFGR1_CHSELRMOD_Field := 16#0#;
      --  AWD1SGL
      AWD1SGL        : ADC_CFGR1_AWD1SGL_Field := 16#0#;
      --  AWD1EN
      AWD1EN         : ADC_CFGR1_AWD1EN_Field := 16#0#;
      --  unspecified
      Reserved_24_25 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  AWD1CH
      AWD1CH         : ADC_CFGR1_AWD1CH_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CFGR1_Register use record
      DMAEN          at 0 range 0 .. 0;
      DMACFG         at 0 range 1 .. 1;
      SCANDIR        at 0 range 2 .. 2;
      RES            at 0 range 3 .. 4;
      ALIGN          at 0 range 5 .. 5;
      EXTSEL         at 0 range 6 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      EXTEN          at 0 range 10 .. 11;
      OVRMOD         at 0 range 12 .. 12;
      CONT           at 0 range 13 .. 13;
      WAIT           at 0 range 14 .. 14;
      AUTOFF         at 0 range 15 .. 15;
      DISCEN         at 0 range 16 .. 16;
      Reserved_17_20 at 0 range 17 .. 20;
      CHSELRMOD      at 0 range 21 .. 21;
      AWD1SGL        at 0 range 22 .. 22;
      AWD1EN         at 0 range 23 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      AWD1CH         at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ADC_CFGR2_OVSE_Field is Interfaces.Bit_Types.Bit;
   --  ADC_CFGR2_OVSR array element
   subtype ADC_CFGR2_OVSR_Element is Interfaces.Bit_Types.Bit;

   --  ADC_CFGR2_OVSR array
   type ADC_CFGR2_OVSR_Field_Array is array (0 .. 2)
     of ADC_CFGR2_OVSR_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for ADC_CFGR2_OVSR
   type ADC_CFGR2_OVSR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVSR as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  OVSR as an array
            Arr : ADC_CFGR2_OVSR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for ADC_CFGR2_OVSR_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  ADC_CFGR2_OVSS array element
   subtype ADC_CFGR2_OVSS_Element is Interfaces.Bit_Types.Bit;

   --  ADC_CFGR2_OVSS array
   type ADC_CFGR2_OVSS_Field_Array is array (0 .. 3)
     of ADC_CFGR2_OVSS_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC_CFGR2_OVSS
   type ADC_CFGR2_OVSS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OVSS as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  OVSS as an array
            Arr : ADC_CFGR2_OVSS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC_CFGR2_OVSS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype ADC_CFGR2_TOVS_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR2_LFTRIG_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CFGR2_CKMODE_Field is Interfaces.Bit_Types.UInt2;

   --  ADC configuration register 2
   type ADC_CFGR2_Register is record
      --  OVSE
      OVSE           : ADC_CFGR2_OVSE_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit := 16#0#;
      --  OVSR0
      OVSR           : ADC_CFGR2_OVSR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  OVSS0
      OVSS           : ADC_CFGR2_OVSS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  TOVS
      TOVS           : ADC_CFGR2_TOVS_Field := 16#0#;
      --  unspecified
      Reserved_10_28 : Interfaces.Bit_Types.UInt19 := 16#0#;
      --  LFTRIG
      LFTRIG         : ADC_CFGR2_LFTRIG_Field := 16#0#;
      --  CKMODE
      CKMODE         : ADC_CFGR2_CKMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CFGR2_Register use record
      OVSE           at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      OVSR           at 0 range 2 .. 4;
      OVSS           at 0 range 5 .. 8;
      TOVS           at 0 range 9 .. 9;
      Reserved_10_28 at 0 range 10 .. 28;
      LFTRIG         at 0 range 29 .. 29;
      CKMODE         at 0 range 30 .. 31;
   end record;

   subtype ADC_SMPR_SMP1_Field is Interfaces.Bit_Types.UInt3;
   subtype ADC_SMPR_SMP2_Field is Interfaces.Bit_Types.UInt3;
   subtype ADC_SMPR_SMPSEL_Field is Interfaces.Bit_Types.UInt18;

   --  ADC sampling time register
   type ADC_SMPR_Register is record
      --  SMP1
      SMP1           : ADC_SMPR_SMP1_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SMP2
      SMP2           : ADC_SMPR_SMP2_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  SMPSEL
      SMPSEL         : ADC_SMPR_SMPSEL_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_SMPR_Register use record
      SMP1           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SMP2           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SMPSEL         at 0 range 8 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype ADC_AWD1TR_LT1_Field is Interfaces.Bit_Types.UInt12;
   subtype ADC_AWD1TR_HT1_Field is Interfaces.Bit_Types.UInt12;

   --  ADC watchdog threshold register
   type ADC_AWD1TR_Register is record
      --  LT1
      LT1            : ADC_AWD1TR_LT1_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  HT1
      HT1            : ADC_AWD1TR_HT1_Field := 16#FFF#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD1TR_Register use record
      LT1            at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HT1            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ADC_AWD2TR_LT2_Field is Interfaces.Bit_Types.UInt12;
   subtype ADC_AWD2TR_HT2_Field is Interfaces.Bit_Types.UInt12;

   --  ADC watchdog threshold register
   type ADC_AWD2TR_Register is record
      --  LT2
      LT2            : ADC_AWD2TR_LT2_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  HT2
      HT2            : ADC_AWD2TR_HT2_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD2TR_Register use record
      LT2            at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HT2            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ADC_CHSELR0_CHSEL_Field is Interfaces.Bit_Types.UInt18;

   --  channel selection register
   type ADC_CHSELR0_Register is record
      --  CHSEL
      CHSEL          : ADC_CHSELR0_CHSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CHSELR0_Register use record
      CHSEL          at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  ADC_CHSELR1_SQ array element
   subtype ADC_CHSELR1_SQ_Element is Interfaces.Bit_Types.UInt4;

   --  ADC_CHSELR1_SQ array
   type ADC_CHSELR1_SQ_Field_Array is array (1 .. 8)
     of ADC_CHSELR1_SQ_Element
     with Component_Size => 4, Size => 32;

   --  channel selection register
   type ADC_CHSELR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SQ as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  SQ as an array
            Arr : ADC_CHSELR1_SQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CHSELR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ADC_AWD3TR_LT3_Field is Interfaces.Bit_Types.UInt12;
   subtype ADC_AWD3TR_HT3_Field is Interfaces.Bit_Types.UInt12;

   --  ADC watchdog threshold register
   type ADC_AWD3TR_Register is record
      --  LT3
      LT3            : ADC_AWD3TR_LT3_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  HT3
      HT3            : ADC_AWD3TR_HT3_Field := 16#FFF#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD3TR_Register use record
      LT3            at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      HT3            at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype ADC_DR_DATA_Field is Interfaces.Bit_Types.UInt16;

   --  ADC data register
   type ADC_DR_Register is record
      --  Read-only. DATA
      DATA           : ADC_DR_DATA_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_DR_Register use record
      DATA           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADC_AWD2CR_AWD2CH_Field is Interfaces.Bit_Types.UInt18;

   --  ADC Analog Watchdog 2 Configuration register
   type ADC_AWD2CR_Register is record
      --  AWD2CH
      AWD2CH         : ADC_AWD2CR_AWD2CH_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD2CR_Register use record
      AWD2CH         at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype ADC_AWD3CR_AWD3CH_Field is Interfaces.Bit_Types.UInt18;

   --  ADC Analog Watchdog 3 Configuration register
   type ADC_AWD3CR_Register is record
      --  AWD3CH
      AWD3CH         : ADC_AWD3CR_AWD3CH_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_AWD3CR_Register use record
      AWD3CH         at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype ADC_CALFACT_CALFACT_Field is Interfaces.Bit_Types.UInt7;

   --  ADC Calibration factor
   type ADC_CALFACT_Register is record
      --  CALFACT
      CALFACT       : ADC_CALFACT_CALFACT_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CALFACT_Register use record
      CALFACT       at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  ADC_CCR_PRESC array element
   subtype ADC_CCR_PRESC_Element is Interfaces.Bit_Types.Bit;

   --  ADC_CCR_PRESC array
   type ADC_CCR_PRESC_Field_Array is array (0 .. 3) of ADC_CCR_PRESC_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for ADC_CCR_PRESC
   type ADC_CCR_PRESC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRESC as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  PRESC as an array
            Arr : ADC_CCR_PRESC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for ADC_CCR_PRESC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype ADC_CCR_VREFEN_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CCR_TSEN_Field is Interfaces.Bit_Types.Bit;
   subtype ADC_CCR_VBATEN_Field is Interfaces.Bit_Types.Bit;

   --  ADC common configuration register
   type ADC_CCR_Register is record
      --  unspecified
      Reserved_0_17  : Interfaces.Bit_Types.UInt18 := 16#0#;
      --  PRESC0
      PRESC          : ADC_CCR_PRESC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  VREFEN
      VREFEN         : ADC_CCR_VREFEN_Field := 16#0#;
      --  TSEN
      TSEN           : ADC_CCR_TSEN_Field := 16#0#;
      --  VBATEN
      VBATEN         : ADC_CCR_VBATEN_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADC_CCR_Register use record
      Reserved_0_17  at 0 range 0 .. 17;
      PRESC          at 0 range 18 .. 21;
      VREFEN         at 0 range 22 .. 22;
      TSEN           at 0 range 23 .. 23;
      VBATEN         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type ADC_Disc is
     (Val_0,
      Val_1);

   --  Analog to digital convertor
   type ADC_Peripheral
     (Discriminent : ADC_Disc := Val_0)
   is record
      --  ADC interrupt and status register
      ADC_ISR     : aliased ADC_ISR_Register;
      --  ADC interrupt enable register
      ADC_IER     : aliased ADC_IER_Register;
      --  ADC control register
      ADC_CR      : aliased ADC_CR_Register;
      --  ADC configuration register 1
      ADC_CFGR1   : aliased ADC_CFGR1_Register;
      --  ADC configuration register 2
      ADC_CFGR2   : aliased ADC_CFGR2_Register;
      --  ADC sampling time register
      ADC_SMPR    : aliased ADC_SMPR_Register;
      --  ADC watchdog threshold register
      ADC_AWD1TR  : aliased ADC_AWD1TR_Register;
      --  ADC watchdog threshold register
      ADC_AWD2TR  : aliased ADC_AWD2TR_Register;
      --  ADC watchdog threshold register
      ADC_AWD3TR  : aliased ADC_AWD3TR_Register;
      --  ADC data register
      ADC_DR      : aliased ADC_DR_Register;
      --  ADC Analog Watchdog 2 Configuration register
      ADC_AWD2CR  : aliased ADC_AWD2CR_Register;
      --  ADC Analog Watchdog 3 Configuration register
      ADC_AWD3CR  : aliased ADC_AWD3CR_Register;
      --  ADC Calibration factor
      ADC_CALFACT : aliased ADC_CALFACT_Register;
      --  ADC common configuration register
      ADC_CCR     : aliased ADC_CCR_Register;
      case Discriminent is
         when Val_0 =>
            --  channel selection register
            ADC_CHSELR0 : aliased ADC_CHSELR0_Register;
         when Val_1 =>
            --  channel selection register
            ADC_CHSELR1 : aliased ADC_CHSELR1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for ADC_Peripheral use record
      ADC_ISR     at 16#0# range 0 .. 31;
      ADC_IER     at 16#4# range 0 .. 31;
      ADC_CR      at 16#8# range 0 .. 31;
      ADC_CFGR1   at 16#C# range 0 .. 31;
      ADC_CFGR2   at 16#10# range 0 .. 31;
      ADC_SMPR    at 16#14# range 0 .. 31;
      ADC_AWD1TR  at 16#20# range 0 .. 31;
      ADC_AWD2TR  at 16#24# range 0 .. 31;
      ADC_AWD3TR  at 16#2C# range 0 .. 31;
      ADC_DR      at 16#40# range 0 .. 31;
      ADC_AWD2CR  at 16#A0# range 0 .. 31;
      ADC_AWD3CR  at 16#A4# range 0 .. 31;
      ADC_CALFACT at 16#B4# range 0 .. 31;
      ADC_CCR     at 16#308# range 0 .. 31;
      ADC_CHSELR0 at 16#28# range 0 .. 31;
      ADC_CHSELR1 at 16#28# range 0 .. 31;
   end record;

   --  Analog to digital convertor
   ADC_Periph : aliased ADC_Peripheral
     with Import, Address => ADC_Base;

end Interfaces.STM32.ADC;
