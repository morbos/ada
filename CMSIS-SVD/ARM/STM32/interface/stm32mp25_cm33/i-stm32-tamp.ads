--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.TAMP is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  TAMP control register 1
   type TAMP_CR1_Register is record
      --  Tamper detection on TAMP_IN1 enable
      TAMP1E         : Boolean := False;
      --  Tamper detection on TAMP_IN2 enableless thansup>(1)less than/sup>
      TAMP2E         : Boolean := False;
      --  Tamper detection on TAMP_IN3 enableless thansup>(1)less than/sup>
      TAMP3E         : Boolean := False;
      --  Tamper detection on TAMP_IN4 enableless thansup>(1)less than/sup>
      TAMP4E         : Boolean := False;
      --  Tamper detection on TAMP_IN5 enableless thansup>(1)less than/sup>
      TAMP5E         : Boolean := False;
      --  Tamper detection on TAMP_IN6 enableless thansup>(1)less than/sup>
      TAMP6E         : Boolean := False;
      --  Tamper detection on TAMP_IN7 enableless thansup>(1)less than/sup>
      TAMP7E         : Boolean := False;
      --  Tamper detection on TAMP_IN8 enableless thansup>(1)less than/sup>
      TAMP8E         : Boolean := False;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Internal tamper 1 enable
      ITAMP1E        : Boolean := False;
      --  Internal tamper 2 enable
      ITAMP2E        : Boolean := False;
      --  Internal tamper 3 enable
      ITAMP3E        : Boolean := False;
      --  Internal tamper 4 enable
      ITAMP4E        : Boolean := False;
      --  Internal tamper 5 enable
      ITAMP5E        : Boolean := False;
      --  Internal tamper 6 enable
      ITAMP6E        : Boolean := False;
      --  Internal tamper 7 enable
      ITAMP7E        : Boolean := False;
      --  Internal tamper 8 enable
      ITAMP8E        : Boolean := False;
      --  Internal tamper 9 enable
      ITAMP9E        : Boolean := False;
      --  Internal tamper 10 enable
      ITAMP10E       : Boolean := False;
      --  Internal tamper 11 enable
      ITAMP11E       : Boolean := False;
      --  Internal tamper 12 enable
      ITAMP12E       : Boolean := False;
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Internal tamper 14 enable
      ITAMP14E       : Boolean := False;
      --  Internal tamper 15 enable
      ITAMP15E       : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_CR1_Register use record
      TAMP1E         at 0 range 0 .. 0;
      TAMP2E         at 0 range 1 .. 1;
      TAMP3E         at 0 range 2 .. 2;
      TAMP4E         at 0 range 3 .. 3;
      TAMP5E         at 0 range 4 .. 4;
      TAMP6E         at 0 range 5 .. 5;
      TAMP7E         at 0 range 6 .. 6;
      TAMP8E         at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      ITAMP1E        at 0 range 16 .. 16;
      ITAMP2E        at 0 range 17 .. 17;
      ITAMP3E        at 0 range 18 .. 18;
      ITAMP4E        at 0 range 19 .. 19;
      ITAMP5E        at 0 range 20 .. 20;
      ITAMP6E        at 0 range 21 .. 21;
      ITAMP7E        at 0 range 22 .. 22;
      ITAMP8E        at 0 range 23 .. 23;
      ITAMP9E        at 0 range 24 .. 24;
      ITAMP10E       at 0 range 25 .. 25;
      ITAMP11E       at 0 range 26 .. 26;
      ITAMP12E       at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      ITAMP14E       at 0 range 29 .. 29;
      ITAMP15E       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  TAMP control register 2
   type TAMP_CR2_Register is record
      --  Tamper 1 potential mode
      TAMP1POM       : Boolean := False;
      --  Tamper 2 potential mode
      TAMP2POM       : Boolean := False;
      --  Tamper 3 potential mode
      TAMP3POM       : Boolean := False;
      --  Tamper 4 potential mode
      TAMP4POM       : Boolean := False;
      --  Tamper 5 potential mode
      TAMP5POM       : Boolean := False;
      --  Tamper 6 potential mode
      TAMP6POM       : Boolean := False;
      --  Tamper 7 potential mode
      TAMP7POM       : Boolean := False;
      --  Tamper 8 potential mode
      TAMP8POM       : Boolean := False;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Tamper 1 mask
      TAMP1MSK       : Boolean := False;
      --  Tamper 2 mask
      TAMP2MSK       : Boolean := False;
      --  Tamper 3 mask
      TAMP3MSK       : Boolean := False;
      --  unspecified
      Reserved_19_21 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Backup registers and device secretsless thansup>(1)less than/sup>
      --  access blocked
      BKBLOCK        : Boolean := False;
      --  Write-only. Backup registers and device secretsless thansup>(1)less
      --  than/sup> erase
      BKERASE        : Boolean := False;
      --  Active level for tamper 1 input
      TAMP1TRG       : Boolean := False;
      --  Active level for tamper 2 input
      TAMP2TRG       : Boolean := False;
      --  Active level for tamper 3 input
      TAMP3TRG       : Boolean := False;
      --  Active level for tamper 4 input (active mode disabled)
      TAMP4TRG       : Boolean := False;
      --  Active level for tamper 5 input (active mode disabled)
      TAMP5TRG       : Boolean := False;
      --  Active level for tamper 6 input (active mode disabled)
      TAMP6TRG       : Boolean := False;
      --  Active level for tamper 7 input (active mode disabled)
      TAMP7TRG       : Boolean := False;
      --  Active level for tamper 8 input (active mode disabled)
      TAMP8TRG       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_CR2_Register use record
      TAMP1POM       at 0 range 0 .. 0;
      TAMP2POM       at 0 range 1 .. 1;
      TAMP3POM       at 0 range 2 .. 2;
      TAMP4POM       at 0 range 3 .. 3;
      TAMP5POM       at 0 range 4 .. 4;
      TAMP6POM       at 0 range 5 .. 5;
      TAMP7POM       at 0 range 6 .. 6;
      TAMP8POM       at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TAMP1MSK       at 0 range 16 .. 16;
      TAMP2MSK       at 0 range 17 .. 17;
      TAMP3MSK       at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      BKBLOCK        at 0 range 22 .. 22;
      BKERASE        at 0 range 23 .. 23;
      TAMP1TRG       at 0 range 24 .. 24;
      TAMP2TRG       at 0 range 25 .. 25;
      TAMP3TRG       at 0 range 26 .. 26;
      TAMP4TRG       at 0 range 27 .. 27;
      TAMP5TRG       at 0 range 28 .. 28;
      TAMP6TRG       at 0 range 29 .. 29;
      TAMP7TRG       at 0 range 30 .. 30;
      TAMP8TRG       at 0 range 31 .. 31;
   end record;

   --  TAMP control register 3
   type TAMP_CR3_Register is record
      --  Internal tamper 1 potential mode
      ITAMP1POM      : Boolean := False;
      --  Internal tamper 2 potential mode
      ITAMP2POM      : Boolean := False;
      --  Internal tamper 3 potential mode
      ITAMP3POM      : Boolean := False;
      --  Internal tamper 4 potential mode
      ITAMP4POM      : Boolean := False;
      --  Internal tamper 5 potential mode
      ITAMP5POM      : Boolean := False;
      --  Internal tamper 6 potential mode
      ITAMP6POM      : Boolean := False;
      --  Internal tamper 7 potential mode
      ITAMP7POM      : Boolean := False;
      --  Internal tamper 8 potential mode
      ITAMP8POM      : Boolean := False;
      --  Internal tamper 9 potential mode
      ITAMP9POM      : Boolean := False;
      --  Internal tamper 10 potential mode
      ITAMP10POM     : Boolean := False;
      --  Internal tamper 11 potential mode
      ITAMP11POM     : Boolean := False;
      --  Internal tamper 12 potential mode
      ITAMP12POM     : Boolean := False;
      --  unspecified
      Reserved_12_12 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Internal tamper 14 potential mode
      ITAMP14POM     : Boolean := False;
      --  Internal tamper 15 potential mode
      ITAMP15POM     : Boolean := False;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_CR3_Register use record
      ITAMP1POM      at 0 range 0 .. 0;
      ITAMP2POM      at 0 range 1 .. 1;
      ITAMP3POM      at 0 range 2 .. 2;
      ITAMP4POM      at 0 range 3 .. 3;
      ITAMP5POM      at 0 range 4 .. 4;
      ITAMP6POM      at 0 range 5 .. 5;
      ITAMP7POM      at 0 range 6 .. 6;
      ITAMP8POM      at 0 range 7 .. 7;
      ITAMP9POM      at 0 range 8 .. 8;
      ITAMP10POM     at 0 range 9 .. 9;
      ITAMP11POM     at 0 range 10 .. 10;
      ITAMP12POM     at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      ITAMP14POM     at 0 range 13 .. 13;
      ITAMP15POM     at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype TAMP_FLTCR_TAMPFREQ_Field is Interfaces.Bit_Types.UInt3;
   subtype TAMP_FLTCR_TAMPFLT_Field is Interfaces.Bit_Types.UInt2;
   subtype TAMP_FLTCR_TAMPPRCH_Field is Interfaces.Bit_Types.UInt2;

   --  TAMP filter control register
   type TAMP_FLTCR_Register is record
      --  Tamper sampling frequency
      TAMPFREQ      : TAMP_FLTCR_TAMPFREQ_Field := 16#0#;
      --  TAMP_INx filter count
      TAMPFLT       : TAMP_FLTCR_TAMPFLT_Field := 16#0#;
      --  TAMP_INx precharge duration
      TAMPPRCH      : TAMP_FLTCR_TAMPPRCH_Field := 16#0#;
      --  TAMP_INx pull-up disable
      TAMPPUDIS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_FLTCR_Register use record
      TAMPFREQ      at 0 range 0 .. 2;
      TAMPFLT       at 0 range 3 .. 4;
      TAMPPRCH      at 0 range 5 .. 6;
      TAMPPUDIS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  TAMP_ATCR1_ATOSEL array element
   subtype TAMP_ATCR1_ATOSEL_Element is Interfaces.Bit_Types.UInt2;

   --  TAMP_ATCR1_ATOSEL array
   type TAMP_ATCR1_ATOSEL_Field_Array is array (1 .. 4)
     of TAMP_ATCR1_ATOSEL_Element
     with Component_Size => 2, Size => 8;

   --  Type definition for TAMP_ATCR1_ATOSEL
   type TAMP_ATCR1_ATOSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ATOSEL as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  ATOSEL as an array
            Arr : TAMP_ATCR1_ATOSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for TAMP_ATCR1_ATOSEL_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype TAMP_ATCR1_ATCKSEL_Field is Interfaces.Bit_Types.UInt4;
   subtype TAMP_ATCR1_ATPER_Field is Interfaces.Bit_Types.UInt3;

   --  TAMP active tamper control register 1
   type TAMP_ATCR1_Register is record
      --  Tamper 1 active mode
      TAMP1AM        : Boolean := False;
      --  Tamper 2 active mode
      TAMP2AM        : Boolean := False;
      --  Tamper 3 active mode
      TAMP3AM        : Boolean := False;
      --  Tamper 4 active mode
      TAMP4AM        : Boolean := False;
      --  Tamper 5 active mode
      TAMP5AM        : Boolean := False;
      --  Tamper 6 active mode
      TAMP6AM        : Boolean := False;
      --  Tamper 7 active mode
      TAMP7AM        : Boolean := False;
      --  Tamper 8 active mode
      TAMP8AM        : Boolean := False;
      --  Active tamper shared output 1 selection
      ATOSEL         : TAMP_ATCR1_ATOSEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Active tamper RTC asynchronous prescaler clock selection
      ATCKSEL        : TAMP_ATCR1_ATCKSEL_Field := 16#7#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Active tamper output change period
      ATPER          : TAMP_ATCR1_ATPER_Field := 16#0#;
      --  unspecified
      Reserved_27_29 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Active tamper output sharing
      ATOSHARE       : Boolean := False;
      --  Active tamper filter enable
      FLTEN          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_ATCR1_Register use record
      TAMP1AM        at 0 range 0 .. 0;
      TAMP2AM        at 0 range 1 .. 1;
      TAMP3AM        at 0 range 2 .. 2;
      TAMP4AM        at 0 range 3 .. 3;
      TAMP5AM        at 0 range 4 .. 4;
      TAMP6AM        at 0 range 5 .. 5;
      TAMP7AM        at 0 range 6 .. 6;
      TAMP8AM        at 0 range 7 .. 7;
      ATOSEL         at 0 range 8 .. 15;
      ATCKSEL        at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ATPER          at 0 range 24 .. 26;
      Reserved_27_29 at 0 range 27 .. 29;
      ATOSHARE       at 0 range 30 .. 30;
      FLTEN          at 0 range 31 .. 31;
   end record;

   subtype TAMP_ATOR_PRNG_Field is Interfaces.Bit_Types.Byte;

   --  TAMP active tamper output register
   type TAMP_ATOR_Register is record
      --  Read-only. Pseudo-random generator value
      PRNG           : TAMP_ATOR_PRNG_Field;
      --  unspecified
      Reserved_8_13  : Interfaces.Bit_Types.UInt6;
      --  Read-only. Seed running flag
      SEEDF          : Boolean;
      --  Read-only. Active tamper initialization status
      INITS          : Boolean;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_ATOR_Register use record
      PRNG           at 0 range 0 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      SEEDF          at 0 range 14 .. 14;
      INITS          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  TAMP_ATCR2_ATOSEL array element
   subtype TAMP_ATCR2_ATOSEL_Element is Interfaces.Bit_Types.UInt3;

   --  TAMP_ATCR2_ATOSEL array
   type TAMP_ATCR2_ATOSEL_Field_Array is array (1 .. 8)
     of TAMP_ATCR2_ATOSEL_Element
     with Component_Size => 3, Size => 24;

   --  Type definition for TAMP_ATCR2_ATOSEL
   type TAMP_ATCR2_ATOSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ATOSEL as a value
            Val : Interfaces.Bit_Types.UInt24;
         when True =>
            --  ATOSEL as an array
            Arr : TAMP_ATCR2_ATOSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for TAMP_ATCR2_ATOSEL_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  TAMP active tamper control register 2
   type TAMP_ATCR2_Register is record
      --  unspecified
      Reserved_0_7 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Active tamper shared output 1 selection
      ATOSEL       : TAMP_ATCR2_ATOSEL_Field :=
                      (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_ATCR2_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      ATOSEL       at 0 range 8 .. 31;
   end record;

   subtype TAMP_SECCFGR_BKPRWSEC_Field is Interfaces.Bit_Types.Byte;
   subtype TAMP_SECCFGR_BKPWSEC_Field is Interfaces.Bit_Types.Byte;

   --  TAMP secure configuration register
   type TAMP_SECCFGR_Register is record
      --  Backup registers read/write protection offset
      BKPRWSEC       : TAMP_SECCFGR_BKPRWSEC_Field := 16#0#;
      --  unspecified
      Reserved_8_13  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Monotonic counter 2 secure protection
      CNT2SEC        : Boolean := False;
      --  Monotonic counter 1 secure protection
      CNT1SEC        : Boolean := False;
      --  Backup registers write protection offset
      BKPWSEC        : TAMP_SECCFGR_BKPWSEC_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Boot hardware key lock
      BHKLOCK        : Boolean := False;
      --  Tamper protection (excluding monotonic counters and backup registers)
      TAMPSEC        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_SECCFGR_Register use record
      BKPRWSEC       at 0 range 0 .. 7;
      Reserved_8_13  at 0 range 8 .. 13;
      CNT2SEC        at 0 range 14 .. 14;
      CNT1SEC        at 0 range 15 .. 15;
      BKPWSEC        at 0 range 16 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      BHKLOCK        at 0 range 30 .. 30;
      TAMPSEC        at 0 range 31 .. 31;
   end record;

   --  TAMP privilege configuration register
   type TAMP_PRIVCFGR_Register is record
      --  unspecified
      Reserved_0_13  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Monotonic counter 2 privilege protection
      CNT2PRIV       : Boolean := False;
      --  Monotonic counter 1 privilege protection
      CNT1PRIV       : Boolean := False;
      --  unspecified
      Reserved_16_28 : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  Backup registers zone 1 privilege protection
      BKPRWPRIV      : Boolean := False;
      --  Backup registers zone 2 privilege protection
      BKPWPRIV       : Boolean := False;
      --  Tamper privilege protection (excluding backup registers)
      TAMPPRIV       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_PRIVCFGR_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      CNT2PRIV       at 0 range 14 .. 14;
      CNT1PRIV       at 0 range 15 .. 15;
      Reserved_16_28 at 0 range 16 .. 28;
      BKPRWPRIV      at 0 range 29 .. 29;
      BKPWPRIV       at 0 range 30 .. 30;
      TAMPPRIV       at 0 range 31 .. 31;
   end record;

   --  TAMP interrupt enable register
   type TAMP_IER_Register is record
      --  Tamper 1 interrupt enable
      TAMP1IE        : Boolean := False;
      --  Tamper 2 interrupt enable
      TAMP2IE        : Boolean := False;
      --  Tamper 3 interrupt enable
      TAMP3IE        : Boolean := False;
      --  Tamper 4 interrupt enable
      TAMP4IE        : Boolean := False;
      --  Tamper 5 interrupt enable
      TAMP5IE        : Boolean := False;
      --  Tamper 6 interrupt enable
      TAMP6IE        : Boolean := False;
      --  Tamper 7interrupt enable
      TAMP7IE        : Boolean := False;
      --  Tamper 8 interrupt enable
      TAMP8IE        : Boolean := False;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Internal tamper 1 interrupt enable
      ITAMP1IE       : Boolean := False;
      --  Internal tamper 2 interrupt enable
      ITAMP2IE       : Boolean := False;
      --  Internal tamper 3 interrupt enable
      ITAMP3IE       : Boolean := False;
      --  Internal tamper 4 interrupt enable
      ITAMP4IE       : Boolean := False;
      --  Internal tamper 5 interrupt enable
      ITAMP5IE       : Boolean := False;
      --  Internal tamper 6 interrupt enable
      ITAMP6IE       : Boolean := False;
      --  Internal tamper 7 interrupt enable
      ITAMP7IE       : Boolean := False;
      --  Internal tamper 8 interrupt enable
      ITAMP8IE       : Boolean := False;
      --  Internal tamper 9 interrupt enable
      ITAMP9IE       : Boolean := False;
      --  Internal tamper 10 interrupt enable
      ITAMP10IE      : Boolean := False;
      --  Internal tamper 11 interrupt enable
      ITAMP11IE      : Boolean := False;
      --  Internal tamper 12 interrupt enable
      ITAMP12IE      : Boolean := False;
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Internal tamper 14 interrupt enable
      ITAMP14IE      : Boolean := False;
      --  Internal tamper 15 interrupt enable
      ITAMP15IE      : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_IER_Register use record
      TAMP1IE        at 0 range 0 .. 0;
      TAMP2IE        at 0 range 1 .. 1;
      TAMP3IE        at 0 range 2 .. 2;
      TAMP4IE        at 0 range 3 .. 3;
      TAMP5IE        at 0 range 4 .. 4;
      TAMP6IE        at 0 range 5 .. 5;
      TAMP7IE        at 0 range 6 .. 6;
      TAMP8IE        at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      ITAMP1IE       at 0 range 16 .. 16;
      ITAMP2IE       at 0 range 17 .. 17;
      ITAMP3IE       at 0 range 18 .. 18;
      ITAMP4IE       at 0 range 19 .. 19;
      ITAMP5IE       at 0 range 20 .. 20;
      ITAMP6IE       at 0 range 21 .. 21;
      ITAMP7IE       at 0 range 22 .. 22;
      ITAMP8IE       at 0 range 23 .. 23;
      ITAMP9IE       at 0 range 24 .. 24;
      ITAMP10IE      at 0 range 25 .. 25;
      ITAMP11IE      at 0 range 26 .. 26;
      ITAMP12IE      at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      ITAMP14IE      at 0 range 29 .. 29;
      ITAMP15IE      at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  TAMP status register
   type TAMP_SR_Register is record
      --  Read-only. TAMP1 detection flag
      TAMP1F         : Boolean := False;
      --  Read-only. TAMP2 detection flag
      TAMP2F         : Boolean := False;
      --  Read-only. TAMP3 detection flag
      TAMP3F         : Boolean := False;
      --  Read-only. TAMP4 detection flag
      TAMP4F         : Boolean := False;
      --  Read-only. TAMP5 detection flag
      TAMP5F         : Boolean := False;
      --  Read-only. TAMP6 detection flag
      TAMP6F         : Boolean := False;
      --  Read-only. TAMP7 detection flag
      TAMP7F         : Boolean := False;
      --  Read-only. TAMP8 detection flag
      TAMP8F         : Boolean := False;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Read-only. Internal tamper 1 flag
      ITAMP1F        : Boolean := False;
      --  Read-only. Internal tamper 2 flag
      ITAMP2F        : Boolean := False;
      --  Read-only. Internal tamper 3 flag
      ITAMP3F        : Boolean := False;
      --  Read-only. Internal tamper 4 flag
      ITAMP4F        : Boolean := False;
      --  Read-only. Internal tamper 5 flag
      ITAMP5F        : Boolean := False;
      --  Read-only. Internal tamper 6 flag
      ITAMP6F        : Boolean := False;
      --  Read-only. Internal tamper 7 flag
      ITAMP7F        : Boolean := False;
      --  Read-only. Internal tamper 8 flag
      ITAMP8F        : Boolean := False;
      --  Read-only. Internal tamper 9 flag
      ITAMP9F        : Boolean := False;
      --  Read-only. Internal tamper 10 flag
      ITAMP10F       : Boolean := False;
      --  Read-only. Internal tamper 11 flag
      ITAMP11F       : Boolean := False;
      --  Read-only. Internal tamper 12 flag
      ITAMP12F       : Boolean := False;
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Read-only. Internal tamper 14 flag
      ITAMP14F       : Boolean := False;
      --  Internal tamper 15 flag
      ITAMP15F       : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_SR_Register use record
      TAMP1F         at 0 range 0 .. 0;
      TAMP2F         at 0 range 1 .. 1;
      TAMP3F         at 0 range 2 .. 2;
      TAMP4F         at 0 range 3 .. 3;
      TAMP5F         at 0 range 4 .. 4;
      TAMP6F         at 0 range 5 .. 5;
      TAMP7F         at 0 range 6 .. 6;
      TAMP8F         at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      ITAMP1F        at 0 range 16 .. 16;
      ITAMP2F        at 0 range 17 .. 17;
      ITAMP3F        at 0 range 18 .. 18;
      ITAMP4F        at 0 range 19 .. 19;
      ITAMP5F        at 0 range 20 .. 20;
      ITAMP6F        at 0 range 21 .. 21;
      ITAMP7F        at 0 range 22 .. 22;
      ITAMP8F        at 0 range 23 .. 23;
      ITAMP9F        at 0 range 24 .. 24;
      ITAMP10F       at 0 range 25 .. 25;
      ITAMP11F       at 0 range 26 .. 26;
      ITAMP12F       at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      ITAMP14F       at 0 range 29 .. 29;
      ITAMP15F       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  TAMP nonsecure masked interrupt status register
   type TAMP_MISR_Register is record
      --  Read-only. TAMP1 nonsecure interrupt masked flag
      TAMP1MF        : Boolean;
      --  Read-only. TAMP2 nonsecure interrupt masked flag
      TAMP2MF        : Boolean;
      --  Read-only. TAMP3 nonsecure interrupt masked flag
      TAMP3MF        : Boolean;
      --  Read-only. TAMP4 nonsecure interrupt masked flag
      TAMP4MF        : Boolean;
      --  Read-only. TAMP5 nonsecure interrupt masked flag
      TAMP5MF        : Boolean;
      --  Read-only. TAMP6 nonsecure interrupt masked flag
      TAMP6MF        : Boolean;
      --  Read-only. TAMP7 nonsecure interrupt masked flag
      TAMP7MF        : Boolean;
      --  Read-only. TAMP8 nonsecure interrupt masked flag
      TAMP8MF        : Boolean;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte;
      --  Read-only. Internal tamper 1 nonsecure interrupt masked flag
      ITAMP1MF       : Boolean;
      --  Read-only. Internal tamper 2 nonsecure interrupt masked flag
      ITAMP2MF       : Boolean;
      --  Read-only. Internal tamper 3 nonsecure interrupt masked flag
      ITAMP3MF       : Boolean;
      --  Read-only. Internal tamper 4 nonsecure interrupt masked flag
      ITAMP4MF       : Boolean;
      --  Read-only. Internal tamper 5 nonsecure interrupt masked flag
      ITAMP5MF       : Boolean;
      --  Read-only. Internal tamper 6 nonsecure interrupt masked flag
      ITAMP6MF       : Boolean;
      --  Read-only. Internal tamper 7 tamper nonsecure interrupt masked flag
      ITAMP7MF       : Boolean;
      --  Read-only. Internal tamper 8 nonsecure interrupt masked flag
      ITAMP8MF       : Boolean;
      --  Read-only. internal tamper 9 nonsecure interrupt masked flag
      ITAMP9MF       : Boolean;
      --  Read-only. internal tamper 10 nonsecure interrupt masked flag
      ITAMP10MF      : Boolean;
      --  Read-only. internal tamper 11 nonsecure interrupt masked flag
      ITAMP11MF      : Boolean;
      --  Read-only. internal tamper 12 nonsecure interrupt masked flag
      ITAMP12MF      : Boolean;
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit;
      --  Read-only. internal tamper 14 nonsecure interrupt masked flag
      ITAMP14MF      : Boolean;
      --  Read-only. internal tamper 15 nonsecure interrupt masked flag
      ITAMP15MF      : Boolean;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_MISR_Register use record
      TAMP1MF        at 0 range 0 .. 0;
      TAMP2MF        at 0 range 1 .. 1;
      TAMP3MF        at 0 range 2 .. 2;
      TAMP4MF        at 0 range 3 .. 3;
      TAMP5MF        at 0 range 4 .. 4;
      TAMP6MF        at 0 range 5 .. 5;
      TAMP7MF        at 0 range 6 .. 6;
      TAMP8MF        at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      ITAMP1MF       at 0 range 16 .. 16;
      ITAMP2MF       at 0 range 17 .. 17;
      ITAMP3MF       at 0 range 18 .. 18;
      ITAMP4MF       at 0 range 19 .. 19;
      ITAMP5MF       at 0 range 20 .. 20;
      ITAMP6MF       at 0 range 21 .. 21;
      ITAMP7MF       at 0 range 22 .. 22;
      ITAMP8MF       at 0 range 23 .. 23;
      ITAMP9MF       at 0 range 24 .. 24;
      ITAMP10MF      at 0 range 25 .. 25;
      ITAMP11MF      at 0 range 26 .. 26;
      ITAMP12MF      at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      ITAMP14MF      at 0 range 29 .. 29;
      ITAMP15MF      at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  TAMP secure masked interrupt status register
   type TAMP_SMISR_Register is record
      --  Read-only. TAMP1 secure interrupt masked flag
      TAMP1MF        : Boolean;
      --  Read-only. TAMP2 secure interrupt masked flag
      TAMP2MF        : Boolean;
      --  Read-only. TAMP3 secure interrupt masked flag
      TAMP3MF        : Boolean;
      --  Read-only. TAMP4 secure interrupt masked flag
      TAMP4MF        : Boolean;
      --  Read-only. TAMP5 secure interrupt masked flag
      TAMP5MF        : Boolean;
      --  Read-only. TAMP6 secure interrupt masked flag
      TAMP6MF        : Boolean;
      --  Read-only. TAMP7 secure interrupt masked flag
      TAMP7MF        : Boolean;
      --  Read-only. TAMP8 secure interrupt masked flag
      TAMP8MF        : Boolean;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte;
      --  Read-only. Internal tamper 1 secure interrupt masked flag
      ITAMP1MF       : Boolean;
      --  Read-only. Internal tamper 2 secure interrupt masked flag
      ITAMP2MF       : Boolean;
      --  Read-only. Internal tamper 3 secure interrupt masked flag
      ITAMP3MF       : Boolean;
      --  Read-only. Internal tamper 4 secure interrupt masked flag
      ITAMP4MF       : Boolean;
      --  Read-only. Internal tamper 5 secure interrupt masked flag
      ITAMP5MF       : Boolean;
      --  Read-only. Internal tamper 6 secure interrupt masked flag
      ITAMP6MF       : Boolean;
      --  Read-only. Internal tamper 7 secure interrupt masked flag
      ITAMP7MF       : Boolean;
      --  Read-only. Internal tamper 8 secure interrupt masked flag
      ITAMP8MF       : Boolean;
      --  Read-only. internal tamper 9 secure interrupt masked flag
      ITAMP9MF       : Boolean;
      --  Read-only. internal tamper 10 secure interrupt masked flag
      ITAMP10MF      : Boolean;
      --  Read-only. internal tamper 11 secure interrupt masked flag
      ITAMP11MF      : Boolean;
      --  Read-only. internal tamper 12 secure interrupt masked flag
      ITAMP12MF      : Boolean;
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit;
      --  Read-only. internal tamper 14 secure interrupt masked flag
      ITAMP14MF      : Boolean;
      --  Read-only. internal tamper 15 secure interrupt masked flag
      ITAMP15MF      : Boolean;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_SMISR_Register use record
      TAMP1MF        at 0 range 0 .. 0;
      TAMP2MF        at 0 range 1 .. 1;
      TAMP3MF        at 0 range 2 .. 2;
      TAMP4MF        at 0 range 3 .. 3;
      TAMP5MF        at 0 range 4 .. 4;
      TAMP6MF        at 0 range 5 .. 5;
      TAMP7MF        at 0 range 6 .. 6;
      TAMP8MF        at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      ITAMP1MF       at 0 range 16 .. 16;
      ITAMP2MF       at 0 range 17 .. 17;
      ITAMP3MF       at 0 range 18 .. 18;
      ITAMP4MF       at 0 range 19 .. 19;
      ITAMP5MF       at 0 range 20 .. 20;
      ITAMP6MF       at 0 range 21 .. 21;
      ITAMP7MF       at 0 range 22 .. 22;
      ITAMP8MF       at 0 range 23 .. 23;
      ITAMP9MF       at 0 range 24 .. 24;
      ITAMP10MF      at 0 range 25 .. 25;
      ITAMP11MF      at 0 range 26 .. 26;
      ITAMP12MF      at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      ITAMP14MF      at 0 range 29 .. 29;
      ITAMP15MF      at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  TAMP status clear register
   type TAMP_SCR_Register is record
      --  Write-only. Clear TAMP1 detection flag
      CTAMP1F        : Boolean := False;
      --  Write-only. Clear TAMP2 detection flag
      CTAMP2F        : Boolean := False;
      --  Write-only. Clear TAMP3 detection flag
      CTAMP3F        : Boolean := False;
      --  Write-only. Clear TAMP4 detection flag
      CTAMP4F        : Boolean := False;
      --  Write-only. Clear TAMP5 detection flag
      CTAMP5F        : Boolean := False;
      --  Write-only. Clear TAMP6 detection flag
      CTAMP6F        : Boolean := False;
      --  Write-only. Clear TAMP7 detection flag
      CTAMP7F        : Boolean := False;
      --  Write-only. Clear TAMP8 detection flag
      CTAMP8F        : Boolean := False;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Write-only. Clear ITAMP1 detection flag
      CITAMP1F       : Boolean := False;
      --  Write-only. Clear ITAMP2 detection flag
      CITAMP2F       : Boolean := False;
      --  Write-only. Clear ITAMP3 detection flag
      CITAMP3F       : Boolean := False;
      --  Write-only. Clear ITAMP4 detection flag
      CITAMP4F       : Boolean := False;
      --  Write-only. Clear ITAMP5 detection flag
      CITAMP5F       : Boolean := False;
      --  Write-only. Clear ITAMP6 detection flag
      CITAMP6F       : Boolean := False;
      --  Write-only. Clear ITAMP7 detection flag
      CITAMP7F       : Boolean := False;
      --  Write-only. Clear ITAMP8 detection flag
      CITAMP8F       : Boolean := False;
      --  Write-only. Clear ITAMP9 detection flag
      CITAMP9F       : Boolean := False;
      --  Write-only. Clear ITAMP10 detection flag
      CITAMP10F      : Boolean := False;
      --  Write-only. Clear ITAMP11 detection flag
      CITAMP11F      : Boolean := False;
      --  Write-only. Clear ITAMP12 detection flag
      CITAMP12F      : Boolean := False;
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Clear ITAMP14 detection flag
      CITAMP14F      : Boolean := False;
      --  Write-only. Clear ITAMP15 detection flag
      CITAMP15F      : Boolean := False;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_SCR_Register use record
      CTAMP1F        at 0 range 0 .. 0;
      CTAMP2F        at 0 range 1 .. 1;
      CTAMP3F        at 0 range 2 .. 2;
      CTAMP4F        at 0 range 3 .. 3;
      CTAMP5F        at 0 range 4 .. 4;
      CTAMP6F        at 0 range 5 .. 5;
      CTAMP7F        at 0 range 6 .. 6;
      CTAMP8F        at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CITAMP1F       at 0 range 16 .. 16;
      CITAMP2F       at 0 range 17 .. 17;
      CITAMP3F       at 0 range 18 .. 18;
      CITAMP4F       at 0 range 19 .. 19;
      CITAMP5F       at 0 range 20 .. 20;
      CITAMP6F       at 0 range 21 .. 21;
      CITAMP7F       at 0 range 22 .. 22;
      CITAMP8F       at 0 range 23 .. 23;
      CITAMP9F       at 0 range 24 .. 24;
      CITAMP10F      at 0 range 25 .. 25;
      CITAMP11F      at 0 range 26 .. 26;
      CITAMP12F      at 0 range 27 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      CITAMP14F      at 0 range 29 .. 29;
      CITAMP15F      at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  TAMP option register
   type TAMP_OR_Register is record
      --  TAMP_IN1 mapping
      IN1_RMP       : Boolean := False;
      --  TAMP_IN3 mapping
      IN3_RMP       : Boolean := False;
      --  TAMP_IN5 mapping
      IN5_RMP       : Boolean := False;
      --  Boundary scan disable
      BSDIS         : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_OR_Register use record
      IN1_RMP       at 0 range 0 .. 0;
      IN3_RMP       at 0 range 1 .. 1;
      IN5_RMP       at 0 range 2 .. 2;
      BSDIS         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  TAMP resources protection configuration register
   type TAMP_RPCFGR_Register is record
      --  Configurable resource 0 protection
      RPCFG0        : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_RPCFGR_Register use record
      RPCFG0        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype TAMP_BKPRIFR1_BKPRWRIF_Field is Interfaces.Bit_Types.Byte;

   --  TAMP Backup registers RIF register 1
   type TAMP_BKPRIFR1_Register is record
      --  Protection zone 1-RIF area offset
      BKPRWRIF      : TAMP_BKPRIFR1_BKPRWRIF_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_BKPRIFR1_Register use record
      BKPRWRIF      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TAMP_BKPRIFR2_BKPWRIF_Field is Interfaces.Bit_Types.Byte;

   --  TAMP Backup registers RIF register 2
   type TAMP_BKPRIFR2_Register is record
      --  Protection zone 2-RIF area offset
      BKPWRIF       : TAMP_BKPRIFR2_BKPWRIF_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_BKPRIFR2_Register use record
      BKPWRIF       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TAMP_BKPRIFR3_BKPWRIF1_Field is Interfaces.Bit_Types.Byte;
   subtype TAMP_BKPRIFR3_BKPWRIF2_Field is Interfaces.Bit_Types.Byte;

   --  TAMP Backup registers RIF register 3
   type TAMP_BKPRIFR3_Register is record
      --  Protection zone 3-RIF area offset 1
      BKPWRIF1       : TAMP_BKPRIFR3_BKPWRIF1_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.Bit_Types.Byte := 16#0#;
      --  Protection zone 3-RIF area offset 2
      BKPWRIF2       : TAMP_BKPRIFR3_BKPWRIF2_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_BKPRIFR3_Register use record
      BKPWRIF1       at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      BKPWRIF2       at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TAMP_R0CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  TAMP Resource 0 CID configuration register
   type TAMP_R0CIDCFGR_Register is record
      --  Compartment ID filter enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Compartment identifier
      CID           : TAMP_R0CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_R0CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype TAMP_R1CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  TAMP Resource 1 CID configuration register
   type TAMP_R1CIDCFGR_Register is record
      --  Compartment ID filter enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Compartment identifier
      CID           : TAMP_R1CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_R1CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype TAMP_R2CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  TAMP Resource 2 CID configuration register
   type TAMP_R2CIDCFGR_Register is record
      --  Compartment ID filter enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Compartment identifier
      CID           : TAMP_R2CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_R2CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype TAMP_HWCFGR2_OPTIONREG_OUT_Field is Interfaces.Bit_Types.Byte;
   subtype TAMP_HWCFGR2_TRUST_ZONE_Field is Interfaces.Bit_Types.UInt4;
   subtype TAMP_HWCFGR2_RIF_Field is Interfaces.Bit_Types.UInt4;
   subtype TAMP_HWCFGR2_CID_WIDTH_Field is Interfaces.Bit_Types.UInt4;
   subtype TAMP_HWCFGR2_NUM_DEV_SECRETS_Field is Interfaces.Bit_Types.Byte;

   --  TAMP hardware configuration register 2
   type TAMP_HWCFGR2_Register is record
      --  Read-only. .
      OPTIONREG_OUT   : TAMP_HWCFGR2_OPTIONREG_OUT_Field;
      --  Read-only. Trust zone
      TRUST_ZONE      : TAMP_HWCFGR2_TRUST_ZONE_Field;
      --  unspecified
      Reserved_12_15  : Interfaces.Bit_Types.UInt4;
      --  Read-only. CID compartment filtering
      RIF             : TAMP_HWCFGR2_RIF_Field;
      --  Read-only. CID length
      CID_WIDTH       : TAMP_HWCFGR2_CID_WIDTH_Field;
      --  Read-only. None
      NUM_DEV_SECRETS : TAMP_HWCFGR2_NUM_DEV_SECRETS_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_HWCFGR2_Register use record
      OPTIONREG_OUT   at 0 range 0 .. 7;
      TRUST_ZONE      at 0 range 8 .. 11;
      Reserved_12_15  at 0 range 12 .. 15;
      RIF             at 0 range 16 .. 19;
      CID_WIDTH       at 0 range 20 .. 23;
      NUM_DEV_SECRETS at 0 range 24 .. 31;
   end record;

   subtype TAMP_HWCFGR1_BACKUP_REGS_Field is Interfaces.Bit_Types.Byte;
   subtype TAMP_HWCFGR1_TAMPER_Field is Interfaces.Bit_Types.UInt4;
   subtype TAMP_HWCFGR1_ACTIVE_TAMPER_Field is Interfaces.Bit_Types.UInt4;
   subtype TAMP_HWCFGR1_INT_TAMPER_Field is Interfaces.Bit_Types.UInt16;

   --  TAMP hardware configuration register 1
   type TAMP_HWCFGR1_Register is record
      --  Read-only. .
      BACKUP_REGS   : TAMP_HWCFGR1_BACKUP_REGS_Field;
      --  Read-only. .
      TAMPER        : TAMP_HWCFGR1_TAMPER_Field;
      --  Read-only. None
      ACTIVE_TAMPER : TAMP_HWCFGR1_ACTIVE_TAMPER_Field;
      --  Read-only. INT_TAMPER[i] = 0: internal tamper i+1 is not implemented
      --  (i from 0 to 15)
      INT_TAMPER    : TAMP_HWCFGR1_INT_TAMPER_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_HWCFGR1_Register use record
      BACKUP_REGS   at 0 range 0 .. 7;
      TAMPER        at 0 range 8 .. 11;
      ACTIVE_TAMPER at 0 range 12 .. 15;
      INT_TAMPER    at 0 range 16 .. 31;
   end record;

   subtype TAMP_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype TAMP_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  TAMP version register
   type TAMP_VERR_Register is record
      --  Read-only. Minor revision
      MINREV        : TAMP_VERR_MINREV_Field;
      --  Read-only. Major revision
      MAJREV        : TAMP_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  TAMP register block
   type TAMP_Peripheral is record
      --  TAMP control register 1
      TAMP_CR1       : aliased TAMP_CR1_Register;
      --  TAMP control register 2
      TAMP_CR2       : aliased TAMP_CR2_Register;
      --  TAMP control register 3
      TAMP_CR3       : aliased TAMP_CR3_Register;
      --  TAMP filter control register
      TAMP_FLTCR     : aliased TAMP_FLTCR_Register;
      --  TAMP active tamper control register 1
      TAMP_ATCR1     : aliased TAMP_ATCR1_Register;
      --  TAMP active tamper seed register
      TAMP_ATSEEDR   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP active tamper output register
      TAMP_ATOR      : aliased TAMP_ATOR_Register;
      --  TAMP active tamper control register 2
      TAMP_ATCR2     : aliased TAMP_ATCR2_Register;
      --  TAMP secure configuration register
      TAMP_SECCFGR   : aliased TAMP_SECCFGR_Register;
      --  TAMP privilege configuration register
      TAMP_PRIVCFGR  : aliased TAMP_PRIVCFGR_Register;
      --  TAMP interrupt enable register
      TAMP_IER       : aliased TAMP_IER_Register;
      --  TAMP status register
      TAMP_SR        : aliased TAMP_SR_Register;
      --  TAMP nonsecure masked interrupt status register
      TAMP_MISR      : aliased TAMP_MISR_Register;
      --  TAMP secure masked interrupt status register
      TAMP_SMISR     : aliased TAMP_SMISR_Register;
      --  TAMP status clear register
      TAMP_SCR       : aliased TAMP_SCR_Register;
      --  TAMP monotonic counter 1 register
      TAMP_COUNT1R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP monotonic counter 2 register
      TAMP_COUNT2R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP option register
      TAMP_OR        : aliased TAMP_OR_Register;
      --  TAMP resources protection configuration register
      TAMP_RPCFGR    : aliased TAMP_RPCFGR_Register;
      --  TAMP Backup registers RIF register 1
      TAMP_BKPRIFR1  : aliased TAMP_BKPRIFR1_Register;
      --  TAMP Backup registers RIF register 2
      TAMP_BKPRIFR2  : aliased TAMP_BKPRIFR2_Register;
      --  TAMP Backup registers RIF register 3
      TAMP_BKPRIFR3  : aliased TAMP_BKPRIFR3_Register;
      --  TAMP Resource 0 CID configuration register
      TAMP_R0CIDCFGR : aliased TAMP_R0CIDCFGR_Register;
      --  TAMP Resource 1 CID configuration register
      TAMP_R1CIDCFGR : aliased TAMP_R1CIDCFGR_Register;
      --  TAMP Resource 2 CID configuration register
      TAMP_R2CIDCFGR : aliased TAMP_R2CIDCFGR_Register;
      --  TAMP backup 0 register
      TAMP_BKP0R     : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 1 register
      TAMP_BKP1R     : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 2 register
      TAMP_BKP2R     : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 3 register
      TAMP_BKP3R     : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 4 register
      TAMP_BKP4R     : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 5 register
      TAMP_BKP5R     : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 6 register
      TAMP_BKP6R     : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 7 register
      TAMP_BKP7R     : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 8 register
      TAMP_BKP8R     : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 9 register
      TAMP_BKP9R     : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 10 register
      TAMP_BKP10R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 11 register
      TAMP_BKP11R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 12 register
      TAMP_BKP12R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 13 register
      TAMP_BKP13R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 14 register
      TAMP_BKP14R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 15 register
      TAMP_BKP15R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 16 register
      TAMP_BKP16R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 17 register
      TAMP_BKP17R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 18 register
      TAMP_BKP18R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 19 register
      TAMP_BKP19R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 20 register
      TAMP_BKP20R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 21 register
      TAMP_BKP21R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 22 register
      TAMP_BKP22R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 23 register
      TAMP_BKP23R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 24 register
      TAMP_BKP24R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 25 register
      TAMP_BKP25R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 26 register
      TAMP_BKP26R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 27 register
      TAMP_BKP27R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 28 register
      TAMP_BKP28R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 29 register
      TAMP_BKP29R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 30 register
      TAMP_BKP30R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 31 register
      TAMP_BKP31R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 32 register
      TAMP_BKP32R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 33 register
      TAMP_BKP33R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 34 register
      TAMP_BKP34R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 35 register
      TAMP_BKP35R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 36 register
      TAMP_BKP36R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 37 register
      TAMP_BKP37R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 38 register
      TAMP_BKP38R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 39 register
      TAMP_BKP39R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 40 register
      TAMP_BKP40R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 41 register
      TAMP_BKP41R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 42 register
      TAMP_BKP42R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 43 register
      TAMP_BKP43R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 44 register
      TAMP_BKP44R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 45 register
      TAMP_BKP45R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 46 register
      TAMP_BKP46R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 47 register
      TAMP_BKP47R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 48 register
      TAMP_BKP48R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 49 register
      TAMP_BKP49R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 50 register
      TAMP_BKP50R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 51 register
      TAMP_BKP51R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 52 register
      TAMP_BKP52R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 53 register
      TAMP_BKP53R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 54 register
      TAMP_BKP54R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 55 register
      TAMP_BKP55R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 56 register
      TAMP_BKP56R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 57 register
      TAMP_BKP57R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 58 register
      TAMP_BKP58R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 59 register
      TAMP_BKP59R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 60 register
      TAMP_BKP60R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 61 register
      TAMP_BKP61R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 62 register
      TAMP_BKP62R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 63 register
      TAMP_BKP63R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 64 register
      TAMP_BKP64R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 65 register
      TAMP_BKP65R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 66 register
      TAMP_BKP66R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 67 register
      TAMP_BKP67R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 68 register
      TAMP_BKP68R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 69 register
      TAMP_BKP69R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 70 register
      TAMP_BKP70R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 71 register
      TAMP_BKP71R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 72 register
      TAMP_BKP72R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 73 register
      TAMP_BKP73R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 74 register
      TAMP_BKP74R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 75 register
      TAMP_BKP75R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 76 register
      TAMP_BKP76R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 77 register
      TAMP_BKP77R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 78 register
      TAMP_BKP78R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 79 register
      TAMP_BKP79R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 80 register
      TAMP_BKP80R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 81 register
      TAMP_BKP81R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 82 register
      TAMP_BKP82R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 83 register
      TAMP_BKP83R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 84 register
      TAMP_BKP84R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 85 register
      TAMP_BKP85R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 86 register
      TAMP_BKP86R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 87 register
      TAMP_BKP87R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 88 register
      TAMP_BKP88R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 89 register
      TAMP_BKP89R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 90 register
      TAMP_BKP90R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 91 register
      TAMP_BKP91R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 92 register
      TAMP_BKP92R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 93 register
      TAMP_BKP93R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 94 register
      TAMP_BKP94R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 95 register
      TAMP_BKP95R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 96 register
      TAMP_BKP96R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 97 register
      TAMP_BKP97R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 98 register
      TAMP_BKP98R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 99 register
      TAMP_BKP99R    : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 100 register
      TAMP_BKP100R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 101 register
      TAMP_BKP101R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 102 register
      TAMP_BKP102R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 103 register
      TAMP_BKP103R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 104 register
      TAMP_BKP104R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 105 register
      TAMP_BKP105R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 106 register
      TAMP_BKP106R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 107 register
      TAMP_BKP107R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 108 register
      TAMP_BKP108R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 109 register
      TAMP_BKP109R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 110 register
      TAMP_BKP110R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 111 register
      TAMP_BKP111R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 112 register
      TAMP_BKP112R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 113 register
      TAMP_BKP113R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 114 register
      TAMP_BKP114R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 115 register
      TAMP_BKP115R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 116 register
      TAMP_BKP116R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 117 register
      TAMP_BKP117R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 118 register
      TAMP_BKP118R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 119 register
      TAMP_BKP119R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 120 register
      TAMP_BKP120R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 121 register
      TAMP_BKP121R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 122 register
      TAMP_BKP122R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 123 register
      TAMP_BKP123R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 124 register
      TAMP_BKP124R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 125 register
      TAMP_BKP125R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 126 register
      TAMP_BKP126R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP backup 127 register
      TAMP_BKP127R   : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP hardware configuration register 2
      TAMP_HWCFGR2   : aliased TAMP_HWCFGR2_Register;
      --  TAMP hardware configuration register 1
      TAMP_HWCFGR1   : aliased TAMP_HWCFGR1_Register;
      --  TAMP version register
      TAMP_VERR      : aliased TAMP_VERR_Register;
      --  TAMP identification register
      TAMP_IPIDR     : aliased Interfaces.Bit_Types.UInt32;
      --  TAMP size identification register
      TAMP_SIDR      : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for TAMP_Peripheral use record
      TAMP_CR1       at 16#0# range 0 .. 31;
      TAMP_CR2       at 16#4# range 0 .. 31;
      TAMP_CR3       at 16#8# range 0 .. 31;
      TAMP_FLTCR     at 16#C# range 0 .. 31;
      TAMP_ATCR1     at 16#10# range 0 .. 31;
      TAMP_ATSEEDR   at 16#14# range 0 .. 31;
      TAMP_ATOR      at 16#18# range 0 .. 31;
      TAMP_ATCR2     at 16#1C# range 0 .. 31;
      TAMP_SECCFGR   at 16#20# range 0 .. 31;
      TAMP_PRIVCFGR  at 16#24# range 0 .. 31;
      TAMP_IER       at 16#2C# range 0 .. 31;
      TAMP_SR        at 16#30# range 0 .. 31;
      TAMP_MISR      at 16#34# range 0 .. 31;
      TAMP_SMISR     at 16#38# range 0 .. 31;
      TAMP_SCR       at 16#3C# range 0 .. 31;
      TAMP_COUNT1R   at 16#40# range 0 .. 31;
      TAMP_COUNT2R   at 16#44# range 0 .. 31;
      TAMP_OR        at 16#50# range 0 .. 31;
      TAMP_RPCFGR    at 16#54# range 0 .. 31;
      TAMP_BKPRIFR1  at 16#70# range 0 .. 31;
      TAMP_BKPRIFR2  at 16#74# range 0 .. 31;
      TAMP_BKPRIFR3  at 16#78# range 0 .. 31;
      TAMP_R0CIDCFGR at 16#80# range 0 .. 31;
      TAMP_R1CIDCFGR at 16#84# range 0 .. 31;
      TAMP_R2CIDCFGR at 16#88# range 0 .. 31;
      TAMP_BKP0R     at 16#100# range 0 .. 31;
      TAMP_BKP1R     at 16#104# range 0 .. 31;
      TAMP_BKP2R     at 16#108# range 0 .. 31;
      TAMP_BKP3R     at 16#10C# range 0 .. 31;
      TAMP_BKP4R     at 16#110# range 0 .. 31;
      TAMP_BKP5R     at 16#114# range 0 .. 31;
      TAMP_BKP6R     at 16#118# range 0 .. 31;
      TAMP_BKP7R     at 16#11C# range 0 .. 31;
      TAMP_BKP8R     at 16#120# range 0 .. 31;
      TAMP_BKP9R     at 16#124# range 0 .. 31;
      TAMP_BKP10R    at 16#128# range 0 .. 31;
      TAMP_BKP11R    at 16#12C# range 0 .. 31;
      TAMP_BKP12R    at 16#130# range 0 .. 31;
      TAMP_BKP13R    at 16#134# range 0 .. 31;
      TAMP_BKP14R    at 16#138# range 0 .. 31;
      TAMP_BKP15R    at 16#13C# range 0 .. 31;
      TAMP_BKP16R    at 16#140# range 0 .. 31;
      TAMP_BKP17R    at 16#144# range 0 .. 31;
      TAMP_BKP18R    at 16#148# range 0 .. 31;
      TAMP_BKP19R    at 16#14C# range 0 .. 31;
      TAMP_BKP20R    at 16#150# range 0 .. 31;
      TAMP_BKP21R    at 16#154# range 0 .. 31;
      TAMP_BKP22R    at 16#158# range 0 .. 31;
      TAMP_BKP23R    at 16#15C# range 0 .. 31;
      TAMP_BKP24R    at 16#160# range 0 .. 31;
      TAMP_BKP25R    at 16#164# range 0 .. 31;
      TAMP_BKP26R    at 16#168# range 0 .. 31;
      TAMP_BKP27R    at 16#16C# range 0 .. 31;
      TAMP_BKP28R    at 16#170# range 0 .. 31;
      TAMP_BKP29R    at 16#174# range 0 .. 31;
      TAMP_BKP30R    at 16#178# range 0 .. 31;
      TAMP_BKP31R    at 16#17C# range 0 .. 31;
      TAMP_BKP32R    at 16#180# range 0 .. 31;
      TAMP_BKP33R    at 16#184# range 0 .. 31;
      TAMP_BKP34R    at 16#188# range 0 .. 31;
      TAMP_BKP35R    at 16#18C# range 0 .. 31;
      TAMP_BKP36R    at 16#190# range 0 .. 31;
      TAMP_BKP37R    at 16#194# range 0 .. 31;
      TAMP_BKP38R    at 16#198# range 0 .. 31;
      TAMP_BKP39R    at 16#19C# range 0 .. 31;
      TAMP_BKP40R    at 16#1A0# range 0 .. 31;
      TAMP_BKP41R    at 16#1A4# range 0 .. 31;
      TAMP_BKP42R    at 16#1A8# range 0 .. 31;
      TAMP_BKP43R    at 16#1AC# range 0 .. 31;
      TAMP_BKP44R    at 16#1B0# range 0 .. 31;
      TAMP_BKP45R    at 16#1B4# range 0 .. 31;
      TAMP_BKP46R    at 16#1B8# range 0 .. 31;
      TAMP_BKP47R    at 16#1BC# range 0 .. 31;
      TAMP_BKP48R    at 16#1C0# range 0 .. 31;
      TAMP_BKP49R    at 16#1C4# range 0 .. 31;
      TAMP_BKP50R    at 16#1C8# range 0 .. 31;
      TAMP_BKP51R    at 16#1CC# range 0 .. 31;
      TAMP_BKP52R    at 16#1D0# range 0 .. 31;
      TAMP_BKP53R    at 16#1D4# range 0 .. 31;
      TAMP_BKP54R    at 16#1D8# range 0 .. 31;
      TAMP_BKP55R    at 16#1DC# range 0 .. 31;
      TAMP_BKP56R    at 16#1E0# range 0 .. 31;
      TAMP_BKP57R    at 16#1E4# range 0 .. 31;
      TAMP_BKP58R    at 16#1E8# range 0 .. 31;
      TAMP_BKP59R    at 16#1EC# range 0 .. 31;
      TAMP_BKP60R    at 16#1F0# range 0 .. 31;
      TAMP_BKP61R    at 16#1F4# range 0 .. 31;
      TAMP_BKP62R    at 16#1F8# range 0 .. 31;
      TAMP_BKP63R    at 16#1FC# range 0 .. 31;
      TAMP_BKP64R    at 16#200# range 0 .. 31;
      TAMP_BKP65R    at 16#204# range 0 .. 31;
      TAMP_BKP66R    at 16#208# range 0 .. 31;
      TAMP_BKP67R    at 16#20C# range 0 .. 31;
      TAMP_BKP68R    at 16#210# range 0 .. 31;
      TAMP_BKP69R    at 16#214# range 0 .. 31;
      TAMP_BKP70R    at 16#218# range 0 .. 31;
      TAMP_BKP71R    at 16#21C# range 0 .. 31;
      TAMP_BKP72R    at 16#220# range 0 .. 31;
      TAMP_BKP73R    at 16#224# range 0 .. 31;
      TAMP_BKP74R    at 16#228# range 0 .. 31;
      TAMP_BKP75R    at 16#22C# range 0 .. 31;
      TAMP_BKP76R    at 16#230# range 0 .. 31;
      TAMP_BKP77R    at 16#234# range 0 .. 31;
      TAMP_BKP78R    at 16#238# range 0 .. 31;
      TAMP_BKP79R    at 16#23C# range 0 .. 31;
      TAMP_BKP80R    at 16#240# range 0 .. 31;
      TAMP_BKP81R    at 16#244# range 0 .. 31;
      TAMP_BKP82R    at 16#248# range 0 .. 31;
      TAMP_BKP83R    at 16#24C# range 0 .. 31;
      TAMP_BKP84R    at 16#250# range 0 .. 31;
      TAMP_BKP85R    at 16#254# range 0 .. 31;
      TAMP_BKP86R    at 16#258# range 0 .. 31;
      TAMP_BKP87R    at 16#25C# range 0 .. 31;
      TAMP_BKP88R    at 16#260# range 0 .. 31;
      TAMP_BKP89R    at 16#264# range 0 .. 31;
      TAMP_BKP90R    at 16#268# range 0 .. 31;
      TAMP_BKP91R    at 16#26C# range 0 .. 31;
      TAMP_BKP92R    at 16#270# range 0 .. 31;
      TAMP_BKP93R    at 16#274# range 0 .. 31;
      TAMP_BKP94R    at 16#278# range 0 .. 31;
      TAMP_BKP95R    at 16#27C# range 0 .. 31;
      TAMP_BKP96R    at 16#280# range 0 .. 31;
      TAMP_BKP97R    at 16#284# range 0 .. 31;
      TAMP_BKP98R    at 16#288# range 0 .. 31;
      TAMP_BKP99R    at 16#28C# range 0 .. 31;
      TAMP_BKP100R   at 16#290# range 0 .. 31;
      TAMP_BKP101R   at 16#294# range 0 .. 31;
      TAMP_BKP102R   at 16#298# range 0 .. 31;
      TAMP_BKP103R   at 16#29C# range 0 .. 31;
      TAMP_BKP104R   at 16#2A0# range 0 .. 31;
      TAMP_BKP105R   at 16#2A4# range 0 .. 31;
      TAMP_BKP106R   at 16#2A8# range 0 .. 31;
      TAMP_BKP107R   at 16#2AC# range 0 .. 31;
      TAMP_BKP108R   at 16#2B0# range 0 .. 31;
      TAMP_BKP109R   at 16#2B4# range 0 .. 31;
      TAMP_BKP110R   at 16#2B8# range 0 .. 31;
      TAMP_BKP111R   at 16#2BC# range 0 .. 31;
      TAMP_BKP112R   at 16#2C0# range 0 .. 31;
      TAMP_BKP113R   at 16#2C4# range 0 .. 31;
      TAMP_BKP114R   at 16#2C8# range 0 .. 31;
      TAMP_BKP115R   at 16#2CC# range 0 .. 31;
      TAMP_BKP116R   at 16#2D0# range 0 .. 31;
      TAMP_BKP117R   at 16#2D4# range 0 .. 31;
      TAMP_BKP118R   at 16#2D8# range 0 .. 31;
      TAMP_BKP119R   at 16#2DC# range 0 .. 31;
      TAMP_BKP120R   at 16#2E0# range 0 .. 31;
      TAMP_BKP121R   at 16#2E4# range 0 .. 31;
      TAMP_BKP122R   at 16#2E8# range 0 .. 31;
      TAMP_BKP123R   at 16#2EC# range 0 .. 31;
      TAMP_BKP124R   at 16#2F0# range 0 .. 31;
      TAMP_BKP125R   at 16#2F4# range 0 .. 31;
      TAMP_BKP126R   at 16#2F8# range 0 .. 31;
      TAMP_BKP127R   at 16#2FC# range 0 .. 31;
      TAMP_HWCFGR2   at 16#3EC# range 0 .. 31;
      TAMP_HWCFGR1   at 16#3F0# range 0 .. 31;
      TAMP_VERR      at 16#3F4# range 0 .. 31;
      TAMP_IPIDR     at 16#3F8# range 0 .. 31;
      TAMP_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  TAMP register block
   TAMP_Periph : aliased TAMP_Peripheral
     with Import, Address => TAMP_Base;

   --  TAMP register block
   TAMP_S_Periph : aliased TAMP_Peripheral
     with Import, Address => TAMP_S_Base;

end Interfaces.STM32.TAMP;
