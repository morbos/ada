--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.TAMP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  TAMP control register 1
   type TAMP_CR1_Register is record
      --  Tamper detection on TAMP_INi enable
      TAMP1E         : Boolean := False;
      --  Tamper detection on TAMP_INi enable
      TAMP2E         : Boolean := False;
      --  Tamper detection on TAMP_INi enable
      TAMP3E         : Boolean := False;
      --  Tamper detection on TAMP_INi enable
      TAMP4E         : Boolean := False;
      --  Tamper detection on TAMP_INi enable
      TAMP5E         : Boolean := False;
      --  unspecified
      Reserved_5_17  : HAL.UInt13 := 16#0#;
      --  Internal tamper 3 enable
      ITAMP3E        : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Internal tamper i enable
      ITAMP5E        : Boolean := False;
      --  Internal tamper i enable
      ITAMP6E        : Boolean := False;
      --  Internal tamper i enable
      ITAMP7E        : Boolean := False;
      --  Internal tamper i enable
      ITAMP8E        : Boolean := False;
      --  Internal tamper i enable
      ITAMP9E        : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  Internal tamper i enable
      ITAMP11E       : Boolean := False;
      --  Internal tamper i enable
      ITAMP12E       : Boolean := False;
      --  Internal tamper i enable
      ITAMP13E       : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_CR1_Register use record
      TAMP1E         at 0 range 0 .. 0;
      TAMP2E         at 0 range 1 .. 1;
      TAMP3E         at 0 range 2 .. 2;
      TAMP4E         at 0 range 3 .. 3;
      TAMP5E         at 0 range 4 .. 4;
      Reserved_5_17  at 0 range 5 .. 17;
      ITAMP3E        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ITAMP5E        at 0 range 20 .. 20;
      ITAMP6E        at 0 range 21 .. 21;
      ITAMP7E        at 0 range 22 .. 22;
      ITAMP8E        at 0 range 23 .. 23;
      ITAMP9E        at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      ITAMP11E       at 0 range 26 .. 26;
      ITAMP12E       at 0 range 27 .. 27;
      ITAMP13E       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  TAMP control register 2
   type TAMP_CR2_Register is record
      --  Tamper i potential mode
      TAMP1POM       : Boolean := False;
      --  Tamper i potential mode
      TAMP2POM       : Boolean := False;
      --  Tamper i potential mode
      TAMP3POM       : Boolean := False;
      --  Tamper i potential mode
      TAMP4POM       : Boolean := False;
      --  Tamper i potential mode
      TAMP5POM       : Boolean := False;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  Tamper i mask
      TAMP1MSK       : Boolean := False;
      --  Tamper i mask
      TAMP2MSK       : Boolean := False;
      --  Tamper i mask
      TAMP3MSK       : Boolean := False;
      --  unspecified
      Reserved_19_21 : HAL.UInt3 := 16#0#;
      --  Software potential tamper
      BKBLOCK        : Boolean := False;
      --  Write-only. Software confirmed tamper
      BKERASE        : Boolean := False;
      --  Active level for tamper 5 input
      TAMP1TRG       : Boolean := False;
      --  Active level for tamper 5 input
      TAMP2TRG       : Boolean := False;
      --  Active level for tamper 5 input
      TAMP3TRG       : Boolean := False;
      --  Active level for tamper 5 input
      TAMP4TRG       : Boolean := False;
      --  Active level for tamper 5 input
      TAMP5TRG       : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_CR2_Register use record
      TAMP1POM       at 0 range 0 .. 0;
      TAMP2POM       at 0 range 1 .. 1;
      TAMP3POM       at 0 range 2 .. 2;
      TAMP4POM       at 0 range 3 .. 3;
      TAMP5POM       at 0 range 4 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
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
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  TAMP control register 3
   type TAMP_CR3_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Internal tamper 3 potential mode
      ITAMP3POM      : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Internal tamper i potential mode
      ITAMP5POM      : Boolean := False;
      --  Internal tamper i potential mode
      ITAMP6POM      : Boolean := False;
      --  Internal tamper i potential mode
      ITAMP7POM      : Boolean := False;
      --  Internal tamper i potential mode
      ITAMP8POM      : Boolean := False;
      --  Internal tamper i potential mode
      ITAMP9POM      : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Internal tamper i potential mode
      ITAMP11POM     : Boolean := False;
      --  Internal tamper i potential mode
      ITAMP12POM     : Boolean := False;
      --  Internal tamper i potential mode
      ITAMP13POM     : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_CR3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      ITAMP3POM      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ITAMP5POM      at 0 range 4 .. 4;
      ITAMP6POM      at 0 range 5 .. 5;
      ITAMP7POM      at 0 range 6 .. 6;
      ITAMP8POM      at 0 range 7 .. 7;
      ITAMP9POM      at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      ITAMP11POM     at 0 range 10 .. 10;
      ITAMP12POM     at 0 range 11 .. 11;
      ITAMP13POM     at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype TAMP_FLTCR_TAMPFREQ_Field is HAL.UInt3;
   subtype TAMP_FLTCR_TAMPFLT_Field is HAL.UInt2;
   subtype TAMP_FLTCR_TAMPPRCH_Field is HAL.UInt2;

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
      Reserved_8_31 : HAL.UInt24 := 16#0#;
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

   subtype TAMP_SECCFGR_BKPRWSEC_Field is HAL.UInt8;
   subtype TAMP_SECCFGR_BKPWSEC_Field is HAL.UInt8;

   --  TAMP secure configuration register
   type TAMP_SECCFGR_Register is record
      --  Backup register read/write protection offset
      BKPRWSEC       : TAMP_SECCFGR_BKPRWSEC_Field := 16#0#;
      --  unspecified
      Reserved_8_14  : HAL.UInt7 := 16#0#;
      --  Monotonic counter 1 secure protection
      CNT1SEC        : Boolean := False;
      --  Backup register write protection offset
      BKPWSEC        : TAMP_SECCFGR_BKPWSEC_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : HAL.UInt6 := 16#0#;
      --  Boot hardware key lock
      BHKLOCK        : Boolean := False;
      --  Tamper protection (excluding monotonic counters and backup registers)
      TAMPSEC        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_SECCFGR_Register use record
      BKPRWSEC       at 0 range 0 .. 7;
      Reserved_8_14  at 0 range 8 .. 14;
      CNT1SEC        at 0 range 15 .. 15;
      BKPWSEC        at 0 range 16 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      BHKLOCK        at 0 range 30 .. 30;
      TAMPSEC        at 0 range 31 .. 31;
   end record;

   --  TAMP privileged configuration register
   type TAMP_PRIVCFGR_Register is record
      --  unspecified
      Reserved_0_14  : HAL.UInt15 := 16#0#;
      --  Monotonic counter 1 privileged protection
      CNT1PRIV       : Boolean := False;
      --  unspecified
      Reserved_16_28 : HAL.UInt13 := 16#0#;
      --  Backup registers zone 1 privileged protection
      BKPRWPRIV      : Boolean := False;
      --  Backup registers zone 2 privileged protection
      BKPWPRIV       : Boolean := False;
      --  Tamper privileged protection (excluding backup registers)
      TAMPPRIV       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_PRIVCFGR_Register use record
      Reserved_0_14  at 0 range 0 .. 14;
      CNT1PRIV       at 0 range 15 .. 15;
      Reserved_16_28 at 0 range 16 .. 28;
      BKPRWPRIV      at 0 range 29 .. 29;
      BKPWPRIV       at 0 range 30 .. 30;
      TAMPPRIV       at 0 range 31 .. 31;
   end record;

   --  TAMP interrupt enable register
   type TAMP_IER_Register is record
      --  Tamper i interrupt enable
      TAMP1IE        : Boolean := False;
      --  Tamper i interrupt enable
      TAMP2IE        : Boolean := False;
      --  Tamper i interrupt enable
      TAMP3IE        : Boolean := False;
      --  Tamper i interrupt enable
      TAMP4IE        : Boolean := False;
      --  Tamper i interrupt enable
      TAMP5IE        : Boolean := False;
      --  unspecified
      Reserved_5_17  : HAL.UInt13 := 16#0#;
      --  Internal tamper 3 interrupt enable
      ITAMP3IE       : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Internal tamper i interrupt enable
      ITAMP5IE       : Boolean := False;
      --  Internal tamper i interrupt enable
      ITAMP6IE       : Boolean := False;
      --  Internal tamper i interrupt enable
      ITAMP7IE       : Boolean := False;
      --  Internal tamper i interrupt enable
      ITAMP8IE       : Boolean := False;
      --  Internal tamper i interrupt enable
      ITAMP9IE       : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  Internal tamper i interrupt enable
      ITAMP11IE      : Boolean := False;
      --  Internal tamper i interrupt enable
      ITAMP12IE      : Boolean := False;
      --  Internal tamper i interrupt enable
      ITAMP13IE      : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_IER_Register use record
      TAMP1IE        at 0 range 0 .. 0;
      TAMP2IE        at 0 range 1 .. 1;
      TAMP3IE        at 0 range 2 .. 2;
      TAMP4IE        at 0 range 3 .. 3;
      TAMP5IE        at 0 range 4 .. 4;
      Reserved_5_17  at 0 range 5 .. 17;
      ITAMP3IE       at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ITAMP5IE       at 0 range 20 .. 20;
      ITAMP6IE       at 0 range 21 .. 21;
      ITAMP7IE       at 0 range 22 .. 22;
      ITAMP8IE       at 0 range 23 .. 23;
      ITAMP9IE       at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      ITAMP11IE      at 0 range 26 .. 26;
      ITAMP12IE      at 0 range 27 .. 27;
      ITAMP13IE      at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  TAMP status register
   type TAMP_SR_Register is record
      --  Tamper i detection flag
      TAMP1F         : Boolean := False;
      --  Tamper i detection flag
      TAMP2F         : Boolean := False;
      --  Tamper i detection flag
      TAMP3F         : Boolean := False;
      --  Tamper i detection flag
      TAMP4F         : Boolean := False;
      --  Tamper i detection flag
      TAMP5F         : Boolean := False;
      --  unspecified
      Reserved_5_17  : HAL.UInt13 := 16#0#;
      --  Internal tamper 3 detection flag
      ITAMP3F        : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Internal tamper i detection flag
      ITAMP5F        : Boolean := False;
      --  Internal tamper i detection flag
      ITAMP6F        : Boolean := False;
      --  Internal tamper i detection flag
      ITAMP7F        : Boolean := False;
      --  Internal tamper i detection flag
      ITAMP8F        : Boolean := False;
      --  Internal tamper i detection flag
      ITAMP9F        : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  Internal tamper i detection flag
      ITAMP11F       : Boolean := False;
      --  Internal tamper i detection flag
      ITAMP12F       : Boolean := False;
      --  Internal tamper i detection flag
      ITAMP13F       : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_SR_Register use record
      TAMP1F         at 0 range 0 .. 0;
      TAMP2F         at 0 range 1 .. 1;
      TAMP3F         at 0 range 2 .. 2;
      TAMP4F         at 0 range 3 .. 3;
      TAMP5F         at 0 range 4 .. 4;
      Reserved_5_17  at 0 range 5 .. 17;
      ITAMP3F        at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ITAMP5F        at 0 range 20 .. 20;
      ITAMP6F        at 0 range 21 .. 21;
      ITAMP7F        at 0 range 22 .. 22;
      ITAMP8F        at 0 range 23 .. 23;
      ITAMP9F        at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      ITAMP11F       at 0 range 26 .. 26;
      ITAMP12F       at 0 range 27 .. 27;
      ITAMP13F       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  TAMP nonsecure masked interrupt status register
   type TAMP_MISR_Register is record
      --  Tamper i nonsecure interrupt masked flag
      TAMP1MF        : Boolean := False;
      --  Tamper i nonsecure interrupt masked flag
      TAMP2MF        : Boolean := False;
      --  Tamper i nonsecure interrupt masked flag
      TAMP3MF        : Boolean := False;
      --  Tamper i nonsecure interrupt masked flag
      TAMP4MF        : Boolean := False;
      --  Tamper i nonsecure interrupt masked flag
      TAMP5MF        : Boolean := False;
      --  unspecified
      Reserved_5_17  : HAL.UInt13 := 16#0#;
      --  Internal tamper 3 nonsecure interrupt masked flag
      ITAMP3MF       : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Internal tamper i nonsecure interrupt masked flag
      ITAMP5MF       : Boolean := False;
      --  Internal tamper i nonsecure interrupt masked flag
      ITAMP6MF       : Boolean := False;
      --  Internal tamper i nonsecure interrupt masked flag
      ITAMP7MF       : Boolean := False;
      --  Internal tamper i nonsecure interrupt masked flag
      ITAMP8MF       : Boolean := False;
      --  Internal tamper i nonsecure interrupt masked flag
      ITAMP9MF       : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  Internal tamper i nonsecure interrupt masked flag
      ITAMP11MF      : Boolean := False;
      --  Internal tamper i nonsecure interrupt masked flag
      ITAMP12MF      : Boolean := False;
      --  Internal tamper i nonsecure interrupt masked flag
      ITAMP13MF      : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_MISR_Register use record
      TAMP1MF        at 0 range 0 .. 0;
      TAMP2MF        at 0 range 1 .. 1;
      TAMP3MF        at 0 range 2 .. 2;
      TAMP4MF        at 0 range 3 .. 3;
      TAMP5MF        at 0 range 4 .. 4;
      Reserved_5_17  at 0 range 5 .. 17;
      ITAMP3MF       at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ITAMP5MF       at 0 range 20 .. 20;
      ITAMP6MF       at 0 range 21 .. 21;
      ITAMP7MF       at 0 range 22 .. 22;
      ITAMP8MF       at 0 range 23 .. 23;
      ITAMP9MF       at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      ITAMP11MF      at 0 range 26 .. 26;
      ITAMP12MF      at 0 range 27 .. 27;
      ITAMP13MF      at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  TAMP secure masked interrupt status register
   type TAMP_SMISR_Register is record
      --  Tamper i secure interrupt masked flag
      TAMP1MF        : Boolean := False;
      --  Tamper i secure interrupt masked flag
      TAMP2MF        : Boolean := False;
      --  Tamper i secure interrupt masked flag
      TAMP3MF        : Boolean := False;
      --  Tamper i secure interrupt masked flag
      TAMP4MF        : Boolean := False;
      --  Tamper i secure interrupt masked flag
      TAMP5MF        : Boolean := False;
      --  unspecified
      Reserved_5_17  : HAL.UInt13 := 16#0#;
      --  Internal tamper 3 secure interrupt masked flag
      ITAMP3MF       : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Internal tamper i secure interrupt masked flag
      ITAMP5MF       : Boolean := False;
      --  Internal tamper i secure interrupt masked flag
      ITAMP6MF       : Boolean := False;
      --  Internal tamper i secure interrupt masked flag
      ITAMP7MF       : Boolean := False;
      --  Internal tamper i secure interrupt masked flag
      ITAMP8MF       : Boolean := False;
      --  Internal tamper i secure interrupt masked flag
      ITAMP9MF       : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  Internal tamper i secure interrupt masked flag
      ITAMP11MF      : Boolean := False;
      --  Internal tamper i secure interrupt masked flag
      ITAMP12MF      : Boolean := False;
      --  Internal tamper i secure interrupt masked flag
      ITAMP13MF      : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_SMISR_Register use record
      TAMP1MF        at 0 range 0 .. 0;
      TAMP2MF        at 0 range 1 .. 1;
      TAMP3MF        at 0 range 2 .. 2;
      TAMP4MF        at 0 range 3 .. 3;
      TAMP5MF        at 0 range 4 .. 4;
      Reserved_5_17  at 0 range 5 .. 17;
      ITAMP3MF       at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ITAMP5MF       at 0 range 20 .. 20;
      ITAMP6MF       at 0 range 21 .. 21;
      ITAMP7MF       at 0 range 22 .. 22;
      ITAMP8MF       at 0 range 23 .. 23;
      ITAMP9MF       at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      ITAMP11MF      at 0 range 26 .. 26;
      ITAMP12MF      at 0 range 27 .. 27;
      ITAMP13MF      at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  TAMP status clear register
   type TAMP_SCR_Register is record
      --  Tamper i detection flag clear
      CTAMP1F        : Boolean := False;
      --  Tamper i detection flag clear
      CTAMP2F        : Boolean := False;
      --  Tamper i detection flag clear
      CTAMP3F        : Boolean := False;
      --  Tamper i detection flag clear
      CTAMP4F        : Boolean := False;
      --  Tamper i detection flag clear
      CTAMP5F        : Boolean := False;
      --  unspecified
      Reserved_5_17  : HAL.UInt13 := 16#0#;
      --  Internal tamper 3 detectionflag clear
      CITAMP3F       : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Internal tamper i detection flag clear
      CITAMP5F       : Boolean := False;
      --  Internal tamper i detection flag clear
      CITAMP6F       : Boolean := False;
      --  Internal tamper i detection flag clear
      CITAMP7F       : Boolean := False;
      --  Internal tamper i detection flag clear
      CITAMP8F       : Boolean := False;
      --  Internal tamper i detection flag clear
      CITAMP9F       : Boolean := False;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#0#;
      --  Internal tamper i detection flag clear
      CITAMP11F      : Boolean := False;
      --  Internal tamper i detection flag clear
      CITAMP12F      : Boolean := False;
      --  Internal tamper i detection flag clear
      CITAMP13F      : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_SCR_Register use record
      CTAMP1F        at 0 range 0 .. 0;
      CTAMP2F        at 0 range 1 .. 1;
      CTAMP3F        at 0 range 2 .. 2;
      CTAMP4F        at 0 range 3 .. 3;
      CTAMP5F        at 0 range 4 .. 4;
      Reserved_5_17  at 0 range 5 .. 17;
      CITAMP3F       at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CITAMP5F       at 0 range 20 .. 20;
      CITAMP6F       at 0 range 21 .. 21;
      CITAMP7F       at 0 range 22 .. 22;
      CITAMP8F       at 0 range 23 .. 23;
      CITAMP9F       at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      CITAMP11F      at 0 range 26 .. 26;
      CITAMP12F      at 0 range 27 .. 27;
      CITAMP13F      at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  TAMP_RPCFGR_RPCFG array
   type TAMP_RPCFGR_RPCFG_Field_Array is array (1 .. 5) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for TAMP_RPCFGR_RPCFG
   type TAMP_RPCFGR_RPCFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPCFG as a value
            Val : HAL.UInt5;
         when True =>
            --  RPCFG as an array
            Arr : TAMP_RPCFGR_RPCFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for TAMP_RPCFGR_RPCFG_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  TAMP resource protection register
   type TAMP_RPCFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Configurable resource i protection
      RPCFG         : TAMP_RPCFGR_RPCFG_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_30 : HAL.UInt25 := 16#0#;
      --  Backup register protection
      RPCFG31       : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAMP_RPCFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RPCFG         at 0 range 1 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      RPCFG31       at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SEC_TAMP_Disc is
     (Misr,
      Smisr);

   --  TAMP register block
   type TAMP_Peripheral
     (Discriminent : SEC_TAMP_Disc := Misr)
   is record
      --  TAMP control register 1
      TAMP_CR1      : aliased TAMP_CR1_Register;
      --  TAMP control register 2
      TAMP_CR2      : aliased TAMP_CR2_Register;
      --  TAMP control register 3
      TAMP_CR3      : aliased TAMP_CR3_Register;
      --  TAMP filter control register
      TAMP_FLTCR    : aliased TAMP_FLTCR_Register;
      --  TAMP secure configuration register
      TAMP_SECCFGR  : aliased TAMP_SECCFGR_Register;
      --  TAMP privileged configuration register
      TAMP_PRIVCFGR : aliased TAMP_PRIVCFGR_Register;
      --  TAMP interrupt enable register
      TAMP_IER      : aliased TAMP_IER_Register;
      --  TAMP status register
      TAMP_SR       : aliased TAMP_SR_Register;
      --  TAMP status clear register
      TAMP_SCR      : aliased TAMP_SCR_Register;
      --  TAMP monotonic counter 1 register
      TAMP_COUNT1R  : aliased HAL.UInt32;
      --  TAMP resource protection register
      TAMP_RPCFGR   : aliased TAMP_RPCFGR_Register;
      --  TAMP backup 0 register
      TAMP_BKP0R    : aliased HAL.UInt32;
      --  TAMP backup 1 register
      TAMP_BKP1R    : aliased HAL.UInt32;
      --  TAMP backup 2 register
      TAMP_BKP2R    : aliased HAL.UInt32;
      --  TAMP backup 3 register
      TAMP_BKP3R    : aliased HAL.UInt32;
      --  TAMP backup 4 register
      TAMP_BKP4R    : aliased HAL.UInt32;
      --  TAMP backup 5 register
      TAMP_BKP5R    : aliased HAL.UInt32;
      --  TAMP backup 6 register
      TAMP_BKP6R    : aliased HAL.UInt32;
      --  TAMP backup 7 register
      TAMP_BKP7R    : aliased HAL.UInt32;
      --  TAMP backup 8 register
      TAMP_BKP8R    : aliased HAL.UInt32;
      --  TAMP backup 9 register
      TAMP_BKP9R    : aliased HAL.UInt32;
      --  TAMP backup 10 register
      TAMP_BKP10R   : aliased HAL.UInt32;
      --  TAMP backup 11 register
      TAMP_BKP11R   : aliased HAL.UInt32;
      --  TAMP backup 12 register
      TAMP_BKP12R   : aliased HAL.UInt32;
      --  TAMP backup 13 register
      TAMP_BKP13R   : aliased HAL.UInt32;
      --  TAMP backup 14 register
      TAMP_BKP14R   : aliased HAL.UInt32;
      --  TAMP backup 15 register
      TAMP_BKP15R   : aliased HAL.UInt32;
      --  TAMP backup 16 register
      TAMP_BKP16R   : aliased HAL.UInt32;
      --  TAMP backup 17 register
      TAMP_BKP17R   : aliased HAL.UInt32;
      --  TAMP backup 18 register
      TAMP_BKP18R   : aliased HAL.UInt32;
      --  TAMP backup 19 register
      TAMP_BKP19R   : aliased HAL.UInt32;
      --  TAMP backup 20 register
      TAMP_BKP20R   : aliased HAL.UInt32;
      --  TAMP backup 21 register
      TAMP_BKP21R   : aliased HAL.UInt32;
      --  TAMP backup 22 register
      TAMP_BKP22R   : aliased HAL.UInt32;
      --  TAMP backup 23 register
      TAMP_BKP23R   : aliased HAL.UInt32;
      --  TAMP backup 24 register
      TAMP_BKP24R   : aliased HAL.UInt32;
      --  TAMP backup 25 register
      TAMP_BKP25R   : aliased HAL.UInt32;
      --  TAMP backup 26 register
      TAMP_BKP26R   : aliased HAL.UInt32;
      --  TAMP backup 27 register
      TAMP_BKP27R   : aliased HAL.UInt32;
      --  TAMP backup 28 register
      TAMP_BKP28R   : aliased HAL.UInt32;
      --  TAMP backup 29 register
      TAMP_BKP29R   : aliased HAL.UInt32;
      --  TAMP backup 30 register
      TAMP_BKP30R   : aliased HAL.UInt32;
      --  TAMP backup 31 register
      TAMP_BKP31R   : aliased HAL.UInt32;
      case Discriminent is
         when Misr =>
            --  TAMP nonsecure masked interrupt status register
            TAMP_MISR : aliased TAMP_MISR_Register;
         when Smisr =>
            --  TAMP secure masked interrupt status register
            TAMP_SMISR : aliased TAMP_SMISR_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TAMP_Peripheral use record
      TAMP_CR1      at 16#0# range 0 .. 31;
      TAMP_CR2      at 16#4# range 0 .. 31;
      TAMP_CR3      at 16#8# range 0 .. 31;
      TAMP_FLTCR    at 16#C# range 0 .. 31;
      TAMP_SECCFGR  at 16#20# range 0 .. 31;
      TAMP_PRIVCFGR at 16#24# range 0 .. 31;
      TAMP_IER      at 16#2C# range 0 .. 31;
      TAMP_SR       at 16#30# range 0 .. 31;
      TAMP_SCR      at 16#3C# range 0 .. 31;
      TAMP_COUNT1R  at 16#40# range 0 .. 31;
      TAMP_RPCFGR   at 16#54# range 0 .. 31;
      TAMP_BKP0R    at 16#100# range 0 .. 31;
      TAMP_BKP1R    at 16#104# range 0 .. 31;
      TAMP_BKP2R    at 16#108# range 0 .. 31;
      TAMP_BKP3R    at 16#10C# range 0 .. 31;
      TAMP_BKP4R    at 16#110# range 0 .. 31;
      TAMP_BKP5R    at 16#114# range 0 .. 31;
      TAMP_BKP6R    at 16#118# range 0 .. 31;
      TAMP_BKP7R    at 16#11C# range 0 .. 31;
      TAMP_BKP8R    at 16#120# range 0 .. 31;
      TAMP_BKP9R    at 16#124# range 0 .. 31;
      TAMP_BKP10R   at 16#128# range 0 .. 31;
      TAMP_BKP11R   at 16#12C# range 0 .. 31;
      TAMP_BKP12R   at 16#130# range 0 .. 31;
      TAMP_BKP13R   at 16#134# range 0 .. 31;
      TAMP_BKP14R   at 16#138# range 0 .. 31;
      TAMP_BKP15R   at 16#13C# range 0 .. 31;
      TAMP_BKP16R   at 16#140# range 0 .. 31;
      TAMP_BKP17R   at 16#144# range 0 .. 31;
      TAMP_BKP18R   at 16#148# range 0 .. 31;
      TAMP_BKP19R   at 16#14C# range 0 .. 31;
      TAMP_BKP20R   at 16#150# range 0 .. 31;
      TAMP_BKP21R   at 16#154# range 0 .. 31;
      TAMP_BKP22R   at 16#158# range 0 .. 31;
      TAMP_BKP23R   at 16#15C# range 0 .. 31;
      TAMP_BKP24R   at 16#160# range 0 .. 31;
      TAMP_BKP25R   at 16#164# range 0 .. 31;
      TAMP_BKP26R   at 16#168# range 0 .. 31;
      TAMP_BKP27R   at 16#16C# range 0 .. 31;
      TAMP_BKP28R   at 16#170# range 0 .. 31;
      TAMP_BKP29R   at 16#174# range 0 .. 31;
      TAMP_BKP30R   at 16#178# range 0 .. 31;
      TAMP_BKP31R   at 16#17C# range 0 .. 31;
      TAMP_MISR     at 16#34# range 0 .. 31;
      TAMP_SMISR    at 16#34# range 0 .. 31;
   end record;

   --  TAMP register block
   SEC_TAMP_Periph : aliased TAMP_Peripheral
     with Import, Address => SEC_TAMP_Base;

   --  TAMP register block
   TAMP_Periph : aliased TAMP_Peripheral
     with Import, Address => TAMP_Base;

end STM32_SVD.TAMP;
