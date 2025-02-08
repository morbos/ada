--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.RCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype RCC_SECCFGR3_SEC_Field is HAL.UInt18;

   --  RCC secure configuration register 3
   type RCC_SECCFGR3_Register is record
      --  Secure attribute reference for the local resource number x
      SEC            : RCC_SECCFGR3_SEC_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SECCFGR3_Register use record
      SEC            at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype RCC_PRIVCFGR3_PRIV_Field is HAL.UInt18;

   --  RCC privileged configuration register 3
   type RCC_PRIVCFGR3_Register is record
      --  Privileged attribute reference for the local resource number x
      PRIV           : RCC_PRIVCFGR3_PRIV_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PRIVCFGR3_Register use record
      PRIV           at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype RCC_RCFGLOCKR3_RLOCK_Field is HAL.UInt18;

   --  RCC resource configuration lock register 3
   type RCC_RCFGLOCKR3_Register is record
      --  RCC local resource number x lock
      RLOCK          : RCC_RCFGLOCKR3_RLOCK_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_RCFGLOCKR3_Register use record
      RLOCK          at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype RCC_R0CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R0CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 0 CID configuration register
   type RCC_R0CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R0CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R0CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R0CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R0SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 0 semaphore control register
   type RCC_R0SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R0SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R0SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R1CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R1CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 1 CID configuration register
   type RCC_R1CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R1CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R1CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R1CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R1SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 1 semaphore control register
   type RCC_R1SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R1SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R1SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R2CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R2CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 2 CID configuration register
   type RCC_R2CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R2CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R2CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R2CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R2SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 2 semaphore control register
   type RCC_R2SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R2SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R2SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R3CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R3CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 3 CID configuration register
   type RCC_R3CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R3CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R3CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R3CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R3SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 3 semaphore control register
   type RCC_R3SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R3SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R3SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R4CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R4CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 4 CID configuration register
   type RCC_R4CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R4CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R4CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R4CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R4SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 4 semaphore control register
   type RCC_R4SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R4SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R4SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R5CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R5CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 5 CID configuration register
   type RCC_R5CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R5CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R5CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R5CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R5SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 5 semaphore control register
   type RCC_R5SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R5SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R5SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R6CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R6CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 6 CID configuration register
   type RCC_R6CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R6CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R6CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R6CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R6SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 6 semaphore control register
   type RCC_R6SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R6SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R6SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R7CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R7CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 7 CID configuration register
   type RCC_R7CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R7CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R7CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R7CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R7SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 7 semaphore control register
   type RCC_R7SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R7SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R7SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R8CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R8CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 8 CID configuration register
   type RCC_R8CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R8CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R8CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R8CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R8SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 8 semaphore control register
   type RCC_R8SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R8SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R8SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R9CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R9CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 9 CID configuration register
   type RCC_R9CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R9CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R9CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R9CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R9SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 9 semaphore control register
   type RCC_R9SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R9SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R9SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R10CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R10CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 10 CID configuration register
   type RCC_R10CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R10CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R10CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R10CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R10SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 10 semaphore control register
   type RCC_R10SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R10SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R10SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R11CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R11CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 11 CID configuration register
   type RCC_R11CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R11CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R11CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R11CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R11SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 11 semaphore control register
   type RCC_R11SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R11SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R11SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R12CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R12CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 12 CID configuration register
   type RCC_R12CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R12CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R12CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R12CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R12SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 12 semaphore control register
   type RCC_R12SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R12SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R12SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R13CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R13CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 13 CID configuration register
   type RCC_R13CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R13CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R13CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R13CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R13SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 13 semaphore control register
   type RCC_R13SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R13SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R13SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R14CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R14CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 14 CID configuration register
   type RCC_R14CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R14CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R14CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R14CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R14SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 14 semaphore control register
   type RCC_R14SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R14SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R14SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R15CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R15CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 15 CID configuration register
   type RCC_R15CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R15CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R15CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R15CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R15SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 15 semaphore control register
   type RCC_R15SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R15SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R15SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R16CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R16CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 16 CID configuration register
   type RCC_R16CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R16CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R16CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R16CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R16SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 16 semaphore control register
   type RCC_R16SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R16SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R16SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R17CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R17CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 17 CID configuration register
   type RCC_R17CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R17CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R17CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R17CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R17SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 17 semaphore control register
   type RCC_R17SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R17SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R17SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R18CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R18CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 18 CID configuration register
   type RCC_R18CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R18CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R18CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R18CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R18SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 18 semaphore control register
   type RCC_R18SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R18SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R18SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R19CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R19CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 19 CID configuration register
   type RCC_R19CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R19CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R19CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R19CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R19SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 19 semaphore control register
   type RCC_R19SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R19SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R19SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R20CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R20CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 20 CID configuration register
   type RCC_R20CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R20CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R20CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R20CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R20SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 20 semaphore control register
   type RCC_R20SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R20SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R20SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R21CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R21CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 21 CID configuration register
   type RCC_R21CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R21CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R21CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R21CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R21SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 21 semaphore control register
   type RCC_R21SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R21SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R21SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R22CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R22CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 22 CID configuration register
   type RCC_R22CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R22CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R22CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R22CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R22SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 22 semaphore control register
   type RCC_R22SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R22SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R22SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R23CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R23CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 23 CID configuration register
   type RCC_R23CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R23CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R23CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R23CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R23SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 23 semaphore control register
   type RCC_R23SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R23SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R23SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R24CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R24CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 24 CID configuration register
   type RCC_R24CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R24CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R24CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R24CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R24SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 24 semaphore control register
   type RCC_R24SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R24SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R24SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R25CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R25CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 25 CID configuration register
   type RCC_R25CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R25CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R25CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R25CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R25SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 25 semaphore control register
   type RCC_R25SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R25SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R25SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R26CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R26CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 26 CID configuration register
   type RCC_R26CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R26CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R26CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R26CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R26SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 26 semaphore control register
   type RCC_R26SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R26SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R26SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R27CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R27CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 27 CID configuration register
   type RCC_R27CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R27CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R27CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R27CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R27SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 27 semaphore control register
   type RCC_R27SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R27SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R27SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R28CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R28CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 28 CID configuration register
   type RCC_R28CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R28CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R28CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R28CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R28SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 28 semaphore control register
   type RCC_R28SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R28SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R28SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R29CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R29CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 29 CID configuration register
   type RCC_R29CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R29CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R29CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R29CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R29SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 29 semaphore control register
   type RCC_R29SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R29SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R29SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R30CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R30CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 30 CID configuration register
   type RCC_R30CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R30CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R30CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R30CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R30SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 30 semaphore control register
   type RCC_R30SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R30SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R30SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R31CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R31CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 31 CID configuration register
   type RCC_R31CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R31CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R31CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R31CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R31SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 31 semaphore control register
   type RCC_R31SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R31SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R31SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R32CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R32CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 32 CID configuration register
   type RCC_R32CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R32CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R32CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R32CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R32SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 32 semaphore control register
   type RCC_R32SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R32SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R32SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R33CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R33CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 33 CID configuration register
   type RCC_R33CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R33CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R33CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R33CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R33SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 33 semaphore control register
   type RCC_R33SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R33SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R33SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R34CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R34CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 34 CID configuration register
   type RCC_R34CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R34CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R34CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R34CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R34SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 34 semaphore control register
   type RCC_R34SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R34SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R34SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R35CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R35CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 35 CID configuration register
   type RCC_R35CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R35CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R35CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R35CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R35SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 35 semaphore control register
   type RCC_R35SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R35SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R35SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R36CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R36CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 36 CID configuration register
   type RCC_R36CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R36CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R36CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R36CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R36SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 36 semaphore control register
   type RCC_R36SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R36SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R36SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R37CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R37CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 37 CID configuration register
   type RCC_R37CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R37CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R37CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R37CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R37SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 37 semaphore control register
   type RCC_R37SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R37SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R37SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R38CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R38CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 38 CID configuration register
   type RCC_R38CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R38CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R38CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R38CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R38SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 38 semaphore control register
   type RCC_R38SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R38SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R38SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R39CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R39CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 39 CID configuration register
   type RCC_R39CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R39CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R39CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R39CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R39SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 39 semaphore control register
   type RCC_R39SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R39SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R39SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R40CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R40CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 40 CID configuration register
   type RCC_R40CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R40CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R40CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R40CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R40SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 40 semaphore control register
   type RCC_R40SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R40SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R40SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R41CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R41CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 41 CID configuration register
   type RCC_R41CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R41CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R41CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R41CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R41SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 41 semaphore control register
   type RCC_R41SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R41SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R41SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R42CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R42CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 42 CID configuration register
   type RCC_R42CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R42CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R42CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R42CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R42SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 42 semaphore control register
   type RCC_R42SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R42SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R42SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R43CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R43CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 43 CID configuration register
   type RCC_R43CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R43CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R43CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R43CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R43SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 43 semaphore control register
   type RCC_R43SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R43SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R43SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R44CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R44CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 44 CID configuration register
   type RCC_R44CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R44CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R44CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R44CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R44SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 44 semaphore control register
   type RCC_R44SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R44SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R44SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R45CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R45CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 45 CID configuration register
   type RCC_R45CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R45CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R45CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R45CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R45SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 45 semaphore control register
   type RCC_R45SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R45SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R45SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R46CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R46CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 46 CID configuration register
   type RCC_R46CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R46CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R46CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R46CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R46SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 46 semaphore control register
   type RCC_R46SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R46SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R46SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R47CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R47CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 47 CID configuration register
   type RCC_R47CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R47CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R47CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R47CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R47SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 47 semaphore control register
   type RCC_R47SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R47SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R47SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R48CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R48CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 48 CID configuration register
   type RCC_R48CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R48CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R48CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R48CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R48SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 48 semaphore control register
   type RCC_R48SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R48SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R48SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R49CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R49CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 49 CID configuration register
   type RCC_R49CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R49CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R49CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R49CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R49SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 49 semaphore control register
   type RCC_R49SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R49SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R49SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R50CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R50CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 50 CID configuration register
   type RCC_R50CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R50CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R50CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R50CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R50SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 50 semaphore control register
   type RCC_R50SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R50SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R50SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R51CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R51CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 51 CID configuration register
   type RCC_R51CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R51CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R51CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R51CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R51SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 51 semaphore control register
   type RCC_R51SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R51SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R51SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R52CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R52CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 52 CID configuration register
   type RCC_R52CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R52CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R52CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R52CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R52SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 52 semaphore control register
   type RCC_R52SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R52SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R52SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R53CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R53CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 53 CID configuration register
   type RCC_R53CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R53CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R53CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R53CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R53SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 53 semaphore control register
   type RCC_R53SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R53SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R53SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R54CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R54CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 54 CID configuration register
   type RCC_R54CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R54CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R54CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R54CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R54SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 54 semaphore control register
   type RCC_R54SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R54SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R54SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R55CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R55CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 55 CID configuration register
   type RCC_R55CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R55CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R55CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R55CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R55SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 55 semaphore control register
   type RCC_R55SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R55SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R55SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R56CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R56CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 56 CID configuration register
   type RCC_R56CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R56CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R56CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R56CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R56SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 56 semaphore control register
   type RCC_R56SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R56SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R56SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R57CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R57CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 57 CID configuration register
   type RCC_R57CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R57CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R57CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R57CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R57SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 57 semaphore control register
   type RCC_R57SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R57SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R57SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R58CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R58CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 58 CID configuration register
   type RCC_R58CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R58CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R58CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R58CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R58SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 58 semaphore control register
   type RCC_R58SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R58SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R58SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R59CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R59CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 59 CID configuration register
   type RCC_R59CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R59CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R59CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R59CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R59SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 59 semaphore control register
   type RCC_R59SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R59SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R59SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R60CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R60CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 60 CID configuration register
   type RCC_R60CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R60CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R60CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R60CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R60SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 60 semaphore control register
   type RCC_R60SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R60SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R60SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R61CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R61CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 61 CID configuration register
   type RCC_R61CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R61CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R61CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R61CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R61SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 61 semaphore control register
   type RCC_R61SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R61SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R61SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R62CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R62CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 62 CID configuration register
   type RCC_R62CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R62CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R62CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R62CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R62SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 62 semaphore control register
   type RCC_R62SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R62SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R62SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R63CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R63CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 63 CID configuration register
   type RCC_R63CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R63CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R63CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R63CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R63SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 63 semaphore control register
   type RCC_R63SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R63SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R63SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R64CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R64CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 64 CID configuration register
   type RCC_R64CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R64CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R64CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R64CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R64SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 64 semaphore control register
   type RCC_R64SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R64SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R64SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R65CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R65CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 65 CID configuration register
   type RCC_R65CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R65CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R65CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R65CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R65SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 65 semaphore control register
   type RCC_R65SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R65SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R65SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R66CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R66CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 66 CID configuration register
   type RCC_R66CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R66CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R66CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R66CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R66SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 66 semaphore control register
   type RCC_R66SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R66SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R66SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R67CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R67CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 67 CID configuration register
   type RCC_R67CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R67CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R67CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R67CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R67SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 67 semaphore control register
   type RCC_R67SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R67SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R67SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R68CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R68CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 68 CID configuration register
   type RCC_R68CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R68CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R68CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R68CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R68SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 68 semaphore control register
   type RCC_R68SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R68SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R68SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R69CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R69CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 69 CID configuration register
   type RCC_R69CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R69CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R69CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R69CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R69SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 69 semaphore control register
   type RCC_R69SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R69SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R69SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R70CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R70CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 70 CID configuration register
   type RCC_R70CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R70CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R70CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R70CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R70SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 70 semaphore control register
   type RCC_R70SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R70SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R70SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R71CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R71CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 71 CID configuration register
   type RCC_R71CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R71CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R71CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R71CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R71SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 71 semaphore control register
   type RCC_R71SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R71SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R71SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R72CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R72CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 72 CID configuration register
   type RCC_R72CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R72CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R72CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R72CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R72SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 72 semaphore control register
   type RCC_R72SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R72SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R72SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R73CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R73CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 73 CID configuration register
   type RCC_R73CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R73CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R73CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R73CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R73SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 73 semaphore control register
   type RCC_R73SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R73SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R73SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R74CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R74CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 74 CID configuration register
   type RCC_R74CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R74CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R74CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R74CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R74SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 74 semaphore control register
   type RCC_R74SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R74SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R74SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R75CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R75CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 75 CID configuration register
   type RCC_R75CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R75CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R75CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R75CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R75SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 75 semaphore control register
   type RCC_R75SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R75SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R75SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R76CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R76CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 76 CID configuration register
   type RCC_R76CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R76CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R76CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R76CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R76SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 76 semaphore control register
   type RCC_R76SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R76SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R76SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R77CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R77CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 77 CID configuration register
   type RCC_R77CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R77CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R77CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R77CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R77SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 77 semaphore control register
   type RCC_R77SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R77SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R77SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R78CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R78CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 78 CID configuration register
   type RCC_R78CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R78CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R78CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R78CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R78SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 78 semaphore control register
   type RCC_R78SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R78SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R78SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R79CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R79CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 79 CID configuration register
   type RCC_R79CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R79CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R79CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R79CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R79SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 79 semaphore control register
   type RCC_R79SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R79SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R79SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R80CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R80CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 80 CID configuration register
   type RCC_R80CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R80CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R80CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R80CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R80SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 80 semaphore control register
   type RCC_R80SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R80SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R80SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R81CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R81CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 81 CID configuration register
   type RCC_R81CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R81CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R81CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R81CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R81SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 81 semaphore control register
   type RCC_R81SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R81SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R81SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R82CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R82CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 82 CID configuration register
   type RCC_R82CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R82CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R82CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R82CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R82SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 82 semaphore control register
   type RCC_R82SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R82SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R82SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R83CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R83CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 83 CID configuration register
   type RCC_R83CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R83CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R83CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R83CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R83SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 83 semaphore control register
   type RCC_R83SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R83SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R83SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R84CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R84CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 84 CID configuration register
   type RCC_R84CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R84CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R84CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R84CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R84SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 84 semaphore control register
   type RCC_R84SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R84SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R84SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R85CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R85CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 85 CID configuration register
   type RCC_R85CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R85CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R85CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R85CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R85SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 85 semaphore control register
   type RCC_R85SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R85SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R85SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R86CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R86CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 86 CID configuration register
   type RCC_R86CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R86CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R86CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R86CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R86SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 86 semaphore control register
   type RCC_R86SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R86SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R86SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R87CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R87CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 87 CID configuration register
   type RCC_R87CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R87CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R87CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R87CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R87SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 87 semaphore control register
   type RCC_R87SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R87SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R87SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R88CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R88CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 88 CID configuration register
   type RCC_R88CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R88CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R88CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R88CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R88SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 88 semaphore control register
   type RCC_R88SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R88SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R88SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R89CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R89CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 89 CID configuration register
   type RCC_R89CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R89CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R89CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R89CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R89SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 89 semaphore control register
   type RCC_R89SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R89SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R89SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R90CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R90CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 90 CID configuration register
   type RCC_R90CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R90CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R90CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R90CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R90SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 90 semaphore control register
   type RCC_R90SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R90SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R90SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R91CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R91CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 91 CID configuration register
   type RCC_R91CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R91CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R91CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R91CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R91SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 91 semaphore control register
   type RCC_R91SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R91SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R91SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R92CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R92CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 92 CID configuration register
   type RCC_R92CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R92CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R92CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R92CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R92SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 92 semaphore control register
   type RCC_R92SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R92SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R92SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R93CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R93CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 93 CID configuration register
   type RCC_R93CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R93CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R93CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R93CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R93SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 93 semaphore control register
   type RCC_R93SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R93SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R93SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R94CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R94CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 94 CID configuration register
   type RCC_R94CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R94CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R94CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R94CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R94SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 94 semaphore control register
   type RCC_R94SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R94SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R94SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R95CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R95CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 95 CID configuration register
   type RCC_R95CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R95CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R95CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R95CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R95SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 95 semaphore control register
   type RCC_R95SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R95SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R95SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R96CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R96CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 96 CID configuration register
   type RCC_R96CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R96CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R96CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R96CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R96SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 96 semaphore control register
   type RCC_R96SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R96SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R96SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R97CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R97CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 97 CID configuration register
   type RCC_R97CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R97CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R97CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R97CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R97SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 97 semaphore control register
   type RCC_R97SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R97SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R97SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R98CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R98CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 98 CID configuration register
   type RCC_R98CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R98CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R98CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R98CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R98SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 98 semaphore control register
   type RCC_R98SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R98SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R98SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R99CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R99CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 99 CID configuration register
   type RCC_R99CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R99CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R99CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R99CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R99SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 99 semaphore control register
   type RCC_R99SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R99SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R99SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R100CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R100CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 100 CID configuration register
   type RCC_R100CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R100CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R100CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R100CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R100SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 100 semaphore control register
   type RCC_R100SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R100SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R100SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R101CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R101CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 101 CID configuration register
   type RCC_R101CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R101CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R101CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R101CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R101SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 101 semaphore control register
   type RCC_R101SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R101SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R101SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R102CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R102CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 102 CID configuration register
   type RCC_R102CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R102CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R102CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R102CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R102SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 102 semaphore control register
   type RCC_R102SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R102SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R102SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R103CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R103CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 103 CID configuration register
   type RCC_R103CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R103CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R103CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R103CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R103SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 103 semaphore control register
   type RCC_R103SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R103SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R103SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R104CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R104CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 104 CID configuration register
   type RCC_R104CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R104CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R104CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R104CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R104SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 104 semaphore control register
   type RCC_R104SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R104SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R104SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R105CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R105CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 105 CID configuration register
   type RCC_R105CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R105CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R105CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R105CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R105SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 105 semaphore control register
   type RCC_R105SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R105SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R105SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R106CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R106CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 106 CID configuration register
   type RCC_R106CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R106CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R106CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R106CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R106SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 106 semaphore control register
   type RCC_R106SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R106SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R106SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R107CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R107CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 107 CID configuration register
   type RCC_R107CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R107CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R107CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R107CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R107SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 107 semaphore control register
   type RCC_R107SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R107SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R107SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R108CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R108CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 108 CID configuration register
   type RCC_R108CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R108CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R108CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R108CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R108SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 108 semaphore control register
   type RCC_R108SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R108SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R108SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R109CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R109CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 109 CID configuration register
   type RCC_R109CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R109CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R109CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R109CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R109SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 109 semaphore control register
   type RCC_R109SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R109SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R109SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R110CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R110CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 110 CID configuration register
   type RCC_R110CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R110CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R110CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R110CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R110SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 110 semaphore control register
   type RCC_R110SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R110SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R110SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R111CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R111CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 111 CID configuration register
   type RCC_R111CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R111CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R111CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R111CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R111SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 111 semaphore control register
   type RCC_R111SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R111SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R111SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R112CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R112CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 112 CID configuration register
   type RCC_R112CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R112CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R112CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R112CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R112SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 112 semaphore control register
   type RCC_R112SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R112SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R112SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_R113CIDCFGR_SCID_Field is HAL.UInt3;
   subtype RCC_R113CIDCFGR_SEMWLC_Field is HAL.UInt8;

   --  RCC resource 113 CID configuration register
   type RCC_R113CIDCFGR_Register is record
      --  Static CID filter enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static compartment ID
      SCID           : RCC_R113CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white-list for compartment y
      SEMWLC         : RCC_R113CIDCFGR_SEMWLC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R113CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_R113SEMCR_SEMCID_Field is HAL.UInt3;

   --  RCC resource 113 semaphore control register
   type RCC_R113SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore compartment ID
      SEMCID        : RCC_R113SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_R113SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RCC global reset control set register
   type RCC_GRSTCSETR_Register is record
      --  System reset
      SYSRST        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_GRSTCSETR_Register use record
      SYSRST        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  RCC CPU1 reset control set register
   type RCC_C1RSTCSETR_Register is record
      --  CPU1 reset
      C1RST         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C1RSTCSETR_Register use record
      C1RST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  RCC CPU1 processor core 1 reset control set register
   type RCC_C1P1RSTCSETR_Register is record
      --  CPU1 processor core 1 power-on reset
      C1P1PORRST    : Boolean := False;
      --  CPU1 processor core 1 reset
      C1P1RST       : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C1P1RSTCSETR_Register use record
      C1P1PORRST    at 0 range 0 .. 0;
      C1P1RST       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RCC CPU2 reset control set register
   type RCC_C2RSTCSETR_Register is record
      --  CPU2 reset
      C2RST         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C2RSTCSETR_Register use record
      C2RST         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  RCC hardware reset status clear register
   type RCC_HWRSTSCLRR_Register is record
      --  POR/PDR reset flag
      PORRSTF            : Boolean := True;
      --  BOR reset flag
      BORRSTF            : Boolean := False;
      --  NRST reset flag
      PADRSTF            : Boolean := True;
      --  HSE CSS reset flag
      HCSSRSTF           : Boolean := False;
      --  Vless thansub>DDCOREless than/sub> reset flag
      VCORERSTF          : Boolean := True;
      --  CPU1 system reset flag
      SYSC1RSTF          : Boolean := False;
      --  CPU2 system reset flag
      SYSC2RSTF          : Boolean := False;
      --  IWDG1 system reset flag
      IWDG1SYSRSTF       : Boolean := False;
      --  IWDG2 system reset flag
      IWDG2SYSRSTF       : Boolean := False;
      --  IWDG3 system reset flag
      IWDG3SYSRSTF       : Boolean := False;
      --  IWDG4 system reset flag
      IWDG4SYSRSTF       : Boolean := False;
      --  IWDG5 system reset flag
      IWDG5SYSRSTF       : Boolean := False;
      --  RETRAM CRC error reset flag
      RETCRCERRRSTF      : Boolean := False;
      --  RETRAM ECC failure reset flag during the CRC computation phase
      RETECCFAILCRCRSTF  : Boolean := False;
      --  RETRAM ECC failure reset flag during system restoration phase
      RETECCFAILRESTRSTF : Boolean := False;
      --  unspecified
      Reserved_15_31     : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HWRSTSCLRR_Register use record
      PORRSTF            at 0 range 0 .. 0;
      BORRSTF            at 0 range 1 .. 1;
      PADRSTF            at 0 range 2 .. 2;
      HCSSRSTF           at 0 range 3 .. 3;
      VCORERSTF          at 0 range 4 .. 4;
      SYSC1RSTF          at 0 range 5 .. 5;
      SYSC2RSTF          at 0 range 6 .. 6;
      IWDG1SYSRSTF       at 0 range 7 .. 7;
      IWDG2SYSRSTF       at 0 range 8 .. 8;
      IWDG3SYSRSTF       at 0 range 9 .. 9;
      IWDG4SYSRSTF       at 0 range 10 .. 10;
      IWDG5SYSRSTF       at 0 range 11 .. 11;
      RETCRCERRRSTF      at 0 range 12 .. 12;
      RETECCFAILCRCRSTF  at 0 range 13 .. 13;
      RETECCFAILRESTRSTF at 0 range 14 .. 14;
      Reserved_15_31     at 0 range 15 .. 31;
   end record;

   --  RCC CPU1 hardware reset status clear register
   type RCC_C1HWRSTSCLRR_Register is record
      --  Vless thansub>DDCPUless than/sub> reset flag
      VCPURSTF      : Boolean := True;
      --  CPU1 reset flag
      C1RSTF        : Boolean := True;
      --  CPU1 processor core 1 reset flag
      C1P1RSTF      : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C1HWRSTSCLRR_Register use record
      VCPURSTF      at 0 range 0 .. 0;
      C1RSTF        at 0 range 1 .. 1;
      C1P1RSTF      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC CPU2 hardware reset status clear register
   type RCC_C2HWRSTSCLRR_Register is record
      --  CPU2 reset flag
      C2RSTF        : Boolean := True;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C2HWRSTSCLRR_Register use record
      C2RSTF        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  RCC CPU1 boot reset status set register
   type RCC_C1BOOTRSTSSETR_Register is record
      --  POR/PDR reset flag
      PORRSTF            : Boolean := False;
      --  BOR reset flag
      BORRSTF            : Boolean := False;
      --  NRST reset flag
      PADRSTF            : Boolean := False;
      --  HSE CSS reset flag
      HCSSRSTF           : Boolean := False;
      --  Vless thansub>DDCOREless than/sub> reset flag
      VCORERSTF          : Boolean := False;
      --  Vless thansub>DDCPUless than/sub> reset flag
      VCPURSTF           : Boolean := False;
      --  CPU1 system reset flag
      SYSC1RSTF          : Boolean := False;
      --  CPU2 system reset flag
      SYSC2RSTF          : Boolean := False;
      --  IWDG1 system reset flag
      IWDG1SYSRSTF       : Boolean := False;
      --  IWDG2 system reset flag
      IWDG2SYSRSTF       : Boolean := False;
      --  IWDG3 system reset flag
      IWDG3SYSRSTF       : Boolean := False;
      --  IWDG4 system reset flag
      IWDG4SYSRSTF       : Boolean := False;
      --  IWDG5 system reset flag
      IWDG5SYSRSTF       : Boolean := False;
      --  CPU1 reset flag
      C1RSTF             : Boolean := False;
      --  unspecified
      Reserved_14_15     : HAL.UInt2 := 16#0#;
      --  CPU1 processor core 1 reset flag
      C1P1RSTF           : Boolean := False;
      --  RETRAM CRC error reset flag
      RETCRCERRRSTF      : Boolean := False;
      --  RETRAM ECC failure reset flag during the CRC computation phase
      RETECCFAILCRCRSTF  : Boolean := False;
      --  RETRAM ECC failure reset flag during system restoration phase
      RETECCFAILRESTRSTF : Boolean := False;
      --  CPU1 system Standby reset flag
      STBYC1RSTF         : Boolean := False;
      --  unspecified
      Reserved_21_21     : HAL.Bit := 16#0#;
      --  D1 DStandby reset flag
      D1STBYRSTF         : Boolean := False;
      --  D2 DStandby reset flag
      D2STBYRSTF         : Boolean := False;
      --  unspecified
      Reserved_24_31     : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C1BOOTRSTSSETR_Register use record
      PORRSTF            at 0 range 0 .. 0;
      BORRSTF            at 0 range 1 .. 1;
      PADRSTF            at 0 range 2 .. 2;
      HCSSRSTF           at 0 range 3 .. 3;
      VCORERSTF          at 0 range 4 .. 4;
      VCPURSTF           at 0 range 5 .. 5;
      SYSC1RSTF          at 0 range 6 .. 6;
      SYSC2RSTF          at 0 range 7 .. 7;
      IWDG1SYSRSTF       at 0 range 8 .. 8;
      IWDG2SYSRSTF       at 0 range 9 .. 9;
      IWDG3SYSRSTF       at 0 range 10 .. 10;
      IWDG4SYSRSTF       at 0 range 11 .. 11;
      IWDG5SYSRSTF       at 0 range 12 .. 12;
      C1RSTF             at 0 range 13 .. 13;
      Reserved_14_15     at 0 range 14 .. 15;
      C1P1RSTF           at 0 range 16 .. 16;
      RETCRCERRRSTF      at 0 range 17 .. 17;
      RETECCFAILCRCRSTF  at 0 range 18 .. 18;
      RETECCFAILRESTRSTF at 0 range 19 .. 19;
      STBYC1RSTF         at 0 range 20 .. 20;
      Reserved_21_21     at 0 range 21 .. 21;
      D1STBYRSTF         at 0 range 22 .. 22;
      D2STBYRSTF         at 0 range 23 .. 23;
      Reserved_24_31     at 0 range 24 .. 31;
   end record;

   --  RCC CPU1 boot reset status clear register
   type RCC_C1BOOTRSTSCLRR_Register is record
      --  POR/PDR reset flag
      PORRSTF            : Boolean := False;
      --  BOR reset flag
      BORRSTF            : Boolean := False;
      --  NRST reset flag
      PADRSTF            : Boolean := False;
      --  HSE CSS reset flag
      HCSSRSTF           : Boolean := False;
      --  Vless thansub>DDCOREless than/sub> reset flag
      VCORERSTF          : Boolean := False;
      --  Vless thansub>DDCPUless than/sub> reset flag
      VCPURSTF           : Boolean := False;
      --  CPU1 system reset flag
      SYSC1RSTF          : Boolean := False;
      --  CPU2 system reset flag
      SYSC2RSTF          : Boolean := False;
      --  IWDG1 system reset flag
      IWDG1SYSRSTF       : Boolean := False;
      --  IWDG2 system reset flag
      IWDG2SYSRSTF       : Boolean := False;
      --  IWDG3 system reset flag
      IWDG3SYSRSTF       : Boolean := False;
      --  IWDG4 system reset flag
      IWDG4SYSRSTF       : Boolean := False;
      --  IWDG5 system reset flag
      IWDG5SYSRSTF       : Boolean := False;
      --  CPU1 reset flag
      C1RSTF             : Boolean := False;
      --  unspecified
      Reserved_14_15     : HAL.UInt2 := 16#0#;
      --  CPU1 processor core 1 reset flag
      C1P1RSTF           : Boolean := False;
      --  RETRAM CRC error reset flag
      RETCRCERRRSTF      : Boolean := False;
      --  RETRAM ECC failure reset flag during the CRC computation phase
      RETECCFAILCRCRSTF  : Boolean := False;
      --  RETRAM ECC failure reset flag during system restoration phase
      RETECCFAILRESTRSTF : Boolean := False;
      --  CPU1 system Standby reset flag
      STBYC1RSTF         : Boolean := False;
      --  unspecified
      Reserved_21_21     : HAL.Bit := 16#0#;
      --  D1 DStandby reset flag
      D1STBYRSTF         : Boolean := False;
      --  D2 DStandby reset flag
      D2STBYRSTF         : Boolean := False;
      --  unspecified
      Reserved_24_31     : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C1BOOTRSTSCLRR_Register use record
      PORRSTF            at 0 range 0 .. 0;
      BORRSTF            at 0 range 1 .. 1;
      PADRSTF            at 0 range 2 .. 2;
      HCSSRSTF           at 0 range 3 .. 3;
      VCORERSTF          at 0 range 4 .. 4;
      VCPURSTF           at 0 range 5 .. 5;
      SYSC1RSTF          at 0 range 6 .. 6;
      SYSC2RSTF          at 0 range 7 .. 7;
      IWDG1SYSRSTF       at 0 range 8 .. 8;
      IWDG2SYSRSTF       at 0 range 9 .. 9;
      IWDG3SYSRSTF       at 0 range 10 .. 10;
      IWDG4SYSRSTF       at 0 range 11 .. 11;
      IWDG5SYSRSTF       at 0 range 12 .. 12;
      C1RSTF             at 0 range 13 .. 13;
      Reserved_14_15     at 0 range 14 .. 15;
      C1P1RSTF           at 0 range 16 .. 16;
      RETCRCERRRSTF      at 0 range 17 .. 17;
      RETECCFAILCRCRSTF  at 0 range 18 .. 18;
      RETECCFAILRESTRSTF at 0 range 19 .. 19;
      STBYC1RSTF         at 0 range 20 .. 20;
      Reserved_21_21     at 0 range 21 .. 21;
      D1STBYRSTF         at 0 range 22 .. 22;
      D2STBYRSTF         at 0 range 23 .. 23;
      Reserved_24_31     at 0 range 24 .. 31;
   end record;

   --  RCC CPU2 boot reset status set register
   type RCC_C2BOOTRSTSSETR_Register is record
      --  POR/PDR reset flag
      PORRSTF            : Boolean := False;
      --  BOR reset flag
      BORRSTF            : Boolean := False;
      --  NRST reset flag
      PADRSTF            : Boolean := False;
      --  HSE CSS reset flag
      HCSSRSTF           : Boolean := False;
      --  Vless thansub>DDCOREless than/sub> reset flag
      VCORERSTF          : Boolean := False;
      --  unspecified
      Reserved_5_5       : HAL.Bit := 16#0#;
      --  CPU1 system reset flag
      SYSC1RSTF          : Boolean := False;
      --  CPU2 system reset flag
      SYSC2RSTF          : Boolean := False;
      --  IWDG1 system reset flag
      IWDG1SYSRSTF       : Boolean := False;
      --  IWDG2 system reset flag
      IWDG2SYSRSTF       : Boolean := False;
      --  IWDG3 system reset flag
      IWDG3SYSRSTF       : Boolean := False;
      --  IWDG4 system reset flag
      IWDG4SYSRSTF       : Boolean := False;
      --  IWDG5 system reset flag
      IWDG5SYSRSTF       : Boolean := False;
      --  unspecified
      Reserved_13_13     : HAL.Bit := 16#0#;
      --  CPU2 reset flag
      C2RSTF             : Boolean := False;
      --  unspecified
      Reserved_15_16     : HAL.UInt2 := 16#0#;
      --  RETRAM CRC error reset flag
      RETCRCERRRSTF      : Boolean := False;
      --  RETRAM ECC failure reset flag during the CRC computation phase
      RETECCFAILCRCRSTF  : Boolean := False;
      --  RETRAM ECC failure reset flag during system restoration phase
      RETECCFAILRESTRSTF : Boolean := False;
      --  unspecified
      Reserved_20_20     : HAL.Bit := 16#0#;
      --  CPU2 system Standby reset flag
      STBYC2RSTF         : Boolean := False;
      --  unspecified
      Reserved_22_22     : HAL.Bit := 16#0#;
      --  D2 DStandby reset flag
      D2STBYRSTF         : Boolean := False;
      --  unspecified
      Reserved_24_31     : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C2BOOTRSTSSETR_Register use record
      PORRSTF            at 0 range 0 .. 0;
      BORRSTF            at 0 range 1 .. 1;
      PADRSTF            at 0 range 2 .. 2;
      HCSSRSTF           at 0 range 3 .. 3;
      VCORERSTF          at 0 range 4 .. 4;
      Reserved_5_5       at 0 range 5 .. 5;
      SYSC1RSTF          at 0 range 6 .. 6;
      SYSC2RSTF          at 0 range 7 .. 7;
      IWDG1SYSRSTF       at 0 range 8 .. 8;
      IWDG2SYSRSTF       at 0 range 9 .. 9;
      IWDG3SYSRSTF       at 0 range 10 .. 10;
      IWDG4SYSRSTF       at 0 range 11 .. 11;
      IWDG5SYSRSTF       at 0 range 12 .. 12;
      Reserved_13_13     at 0 range 13 .. 13;
      C2RSTF             at 0 range 14 .. 14;
      Reserved_15_16     at 0 range 15 .. 16;
      RETCRCERRRSTF      at 0 range 17 .. 17;
      RETECCFAILCRCRSTF  at 0 range 18 .. 18;
      RETECCFAILRESTRSTF at 0 range 19 .. 19;
      Reserved_20_20     at 0 range 20 .. 20;
      STBYC2RSTF         at 0 range 21 .. 21;
      Reserved_22_22     at 0 range 22 .. 22;
      D2STBYRSTF         at 0 range 23 .. 23;
      Reserved_24_31     at 0 range 24 .. 31;
   end record;

   --  RCC CPU2 boot reset status clear register
   type RCC_C2BOOTRSTSCLRR_Register is record
      --  POR/PDR reset flag
      PORRSTF            : Boolean := False;
      --  BOR reset flag
      BORRSTF            : Boolean := False;
      --  NRST reset flag
      PADRSTF            : Boolean := False;
      --  HSE CSS reset flag
      HCSSRSTF           : Boolean := False;
      --  Vless thansub>DDCOREless than/sub> reset flag
      VCORERSTF          : Boolean := False;
      --  unspecified
      Reserved_5_5       : HAL.Bit := 16#0#;
      --  CPU1 system reset flag
      SYSC1RSTF          : Boolean := False;
      --  CPU2 system reset flag
      SYSC2RSTF          : Boolean := False;
      --  IWDG1 system reset flag
      IWDG1SYSRSTF       : Boolean := False;
      --  IWDG2 reset flag
      IWDG2SYSRSTF       : Boolean := False;
      --  IWDG3 reset flag
      IWDG3SYSRSTF       : Boolean := False;
      --  IWDG4 reset flag
      IWDG4SYSRSTF       : Boolean := False;
      --  IWDG5 reset flag
      IWDG5SYSRSTF       : Boolean := False;
      --  unspecified
      Reserved_13_13     : HAL.Bit := 16#0#;
      --  CPU2 reset flag
      C2RSTF             : Boolean := False;
      --  unspecified
      Reserved_15_16     : HAL.UInt2 := 16#0#;
      --  RETRAM CRC error reset flag
      RETCRCERRRSTF      : Boolean := False;
      --  RETRAM ECC failure reset flag during the CRC computation phase
      RETECCFAILCRCRSTF  : Boolean := False;
      --  RETRAM ECC failure reset flag during system restoration phase
      RETECCFAILRESTRSTF : Boolean := False;
      --  unspecified
      Reserved_20_20     : HAL.Bit := 16#0#;
      --  CPU2 system Standby reset flag
      STBYC2RSTF         : Boolean := False;
      --  unspecified
      Reserved_22_22     : HAL.Bit := 16#0#;
      --  D2 DStandby reset flag
      D2STBYRSTF         : Boolean := False;
      --  unspecified
      Reserved_24_31     : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C2BOOTRSTSCLRR_Register use record
      PORRSTF            at 0 range 0 .. 0;
      BORRSTF            at 0 range 1 .. 1;
      PADRSTF            at 0 range 2 .. 2;
      HCSSRSTF           at 0 range 3 .. 3;
      VCORERSTF          at 0 range 4 .. 4;
      Reserved_5_5       at 0 range 5 .. 5;
      SYSC1RSTF          at 0 range 6 .. 6;
      SYSC2RSTF          at 0 range 7 .. 7;
      IWDG1SYSRSTF       at 0 range 8 .. 8;
      IWDG2SYSRSTF       at 0 range 9 .. 9;
      IWDG3SYSRSTF       at 0 range 10 .. 10;
      IWDG4SYSRSTF       at 0 range 11 .. 11;
      IWDG5SYSRSTF       at 0 range 12 .. 12;
      Reserved_13_13     at 0 range 13 .. 13;
      C2RSTF             at 0 range 14 .. 14;
      Reserved_15_16     at 0 range 15 .. 16;
      RETCRCERRRSTF      at 0 range 17 .. 17;
      RETECCFAILCRCRSTF  at 0 range 18 .. 18;
      RETECCFAILRESTRSTF at 0 range 19 .. 19;
      Reserved_20_20     at 0 range 20 .. 20;
      STBYC2RSTF         at 0 range 21 .. 21;
      Reserved_22_22     at 0 range 22 .. 22;
      D2STBYRSTF         at 0 range 23 .. 23;
      Reserved_24_31     at 0 range 24 .. 31;
   end record;

   --  RCC_C1SREQSETR_STPREQ_P array
   type RCC_C1SREQSETR_STPREQ_P_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RCC_C1SREQSETR_STPREQ_P
   type RCC_C1SREQSETR_STPREQ_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STPREQ_P as a value
            Val : HAL.UInt2;
         when True =>
            --  STPREQ_P as an array
            Arr : RCC_C1SREQSETR_STPREQ_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RCC_C1SREQSETR_STPREQ_P_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RCC CPU1 stop request set register
   type RCC_C1SREQSETR_Register is record
      --  Stop request for CPU1 processor core 0
      STPREQ_P       : RCC_C1SREQSETR_STPREQ_P_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Enhanced CSleep request for CPU1 subsystem
      ESLPREQ        : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C1SREQSETR_Register use record
      STPREQ_P       at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      ESLPREQ        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  RCC_C1SREQCLRR_STPREQ_P array
   type RCC_C1SREQCLRR_STPREQ_P_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RCC_C1SREQCLRR_STPREQ_P
   type RCC_C1SREQCLRR_STPREQ_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STPREQ_P as a value
            Val : HAL.UInt2;
         when True =>
            --  STPREQ_P as an array
            Arr : RCC_C1SREQCLRR_STPREQ_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RCC_C1SREQCLRR_STPREQ_P_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RCC CPU1 stop request clear register
   type RCC_C1SREQCLRR_Register is record
      --  Stop request for CPU1 processor core 0
      STPREQ_P       : RCC_C1SREQCLRR_STPREQ_P_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Enhanced CSleep request for CPU1 subsystem
      ESLPREQ        : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C1SREQCLRR_Register use record
      STPREQ_P       at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      ESLPREQ        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  RCC CPU boot control register
   type RCC_CPUBOOTCR_Register is record
      --  CPU2 to boot
      BOOT_CPU2     : Boolean := False;
      --  CPU1 boot
      BOOT_CPU1     : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CPUBOOTCR_Register use record
      BOOT_CPU2     at 0 range 0 .. 0;
      BOOT_CPU1     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RCC standby boot control register
   type RCC_STBYBOOTCR_Register is record
      --  unspecified
      Reserved_0_0     : HAL.Bit := 16#0#;
      --  CPU boot select
      CPU_BEN_SEL      : Boolean := False;
      --  Read-Write-once. CPU2 cold boot
      COLD_CPU2        : Boolean := False;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Read-only. CPU2 hardware boot enable
      CPU2_HW_BEN      : Boolean := False;
      --  Read-only. CPU1 hardware boot enable
      CPU1_HW_BEN      : Boolean := False;
      --  unspecified
      Reserved_6_7     : HAL.UInt2 := 16#0#;
      --  RETRAM CRC error system reset enable
      RET_CRCERR_RSTEN : Boolean := False;
      --  unspecified
      Reserved_9_31    : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_STBYBOOTCR_Register use record
      Reserved_0_0     at 0 range 0 .. 0;
      CPU_BEN_SEL      at 0 range 1 .. 1;
      COLD_CPU2        at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      CPU2_HW_BEN      at 0 range 4 .. 4;
      CPU1_HW_BEN      at 0 range 5 .. 5;
      Reserved_6_7     at 0 range 6 .. 7;
      RET_CRCERR_RSTEN at 0 range 8 .. 8;
      Reserved_9_31    at 0 range 9 .. 31;
   end record;

   --  RCC legacy boot control register
   type RCC_LEGBOOTCR_Register is record
      --  Read-Write-once. Enable of the legacy selection mode to choose the
      --  first CPU to boot
      LEGACY_BEN    : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LEGBOOTCR_Register use record
      LEGACY_BEN    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype RCC_BDCR_LSEDRV_Field is HAL.UInt2;
   subtype RCC_BDCR_RTCSRC_Field is HAL.UInt2;

   --  RCC backup domain control register
   type RCC_BDCR_Register is record
      --  LSE oscillator enable
      LSEON          : Boolean := False;
      --  LSE oscillator bypass
      LSEBYP         : Boolean := False;
      --  Read-only. LSE oscillator ready
      LSERDY         : Boolean := False;
      --  LSE digital bypass
      LSEDIGBYP      : Boolean := False;
      --  LSE oscillator driving capability
      LSEDRV         : RCC_BDCR_LSEDRV_Field := 16#2#;
      --  LSE CSS enable
      LSECSSON       : Boolean := False;
      --  LSE clock glitch filter enable
      LSEGFON        : Boolean := False;
      --  Read-only. LSE CSS failure detection
      LSECSSD        : Boolean := False;
      --  LSI oscillator enabled
      LSION          : Boolean := False;
      --  Read-only. LSI oscillator ready
      LSIRDY         : Boolean := False;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Read-Write-once. RTC clock source selection
      RTCSRC         : RCC_BDCR_RTCSRC_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  RTC clock enable
      RTCCKEN        : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  MSI frequency selection
      MSIFREQSEL     : Boolean := False;
      --  CPU3 SysTick clock select
      C3SYSTICKSEL   : Boolean := False;
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#0#;
      --  Vless thansub>SWless than/sub> domain software reset
      VSWRST         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BDCR_Register use record
      LSEON          at 0 range 0 .. 0;
      LSEBYP         at 0 range 1 .. 1;
      LSERDY         at 0 range 2 .. 2;
      LSEDIGBYP      at 0 range 3 .. 3;
      LSEDRV         at 0 range 4 .. 5;
      LSECSSON       at 0 range 6 .. 6;
      LSEGFON        at 0 range 7 .. 7;
      LSECSSD        at 0 range 8 .. 8;
      LSION          at 0 range 9 .. 9;
      LSIRDY         at 0 range 10 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RTCSRC         at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      RTCCKEN        at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      MSIFREQSEL     at 0 range 24 .. 24;
      C3SYSTICKSEL   at 0 range 25 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      VSWRST         at 0 range 31 .. 31;
   end record;

   subtype RCC_D3DCR_D3PERCKSEL_Field is HAL.UInt2;

   --  RCC D3 domain control register
   type RCC_D3DCR_Register is record
      --  MSI oscillator enable
      MSION          : Boolean := False;
      --  Set by software to force the MSI on, even in Stop mode, in order to
      --  be quickly available as kernel clock for some peripherals.
      MSIKERON       : Boolean := False;
      --  Read-only. MSI clock ready flag
      MSIRDY         : Boolean := False;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  D3 peripheral local bus clock select
      D3PERCKSEL     : RCC_D3DCR_D3PERCKSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_D3DCR_Register use record
      MSION          at 0 range 0 .. 0;
      MSIKERON       at 0 range 1 .. 1;
      MSIRDY         at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      D3PERCKSEL     at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype RCC_D3DSR_D3STATE_Field is HAL.UInt2;

   --  RCC D3 domain status register
   type RCC_D3DSR_Register is record
      --  Read-only. D3 domain state
      D3STATE       : RCC_D3DSR_D3STATE_Field;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_D3DSR_Register use record
      D3STATE       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype RCC_RDCR_MRD_Field is HAL.UInt5;
   subtype RCC_RDCR_EADLY_Field is HAL.UInt4;

   --  RCC reset duration control register
   type RCC_RDCR_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Minimum reset duration
      MRD            : RCC_RDCR_MRD_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  External access delays
      EADLY          : RCC_RDCR_EADLY_Field := 16#6#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_RDCR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      MRD            at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      EADLY          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype RCC_C1MSRDCR_C1MSRD_Field is HAL.UInt5;

   --  RCC C1MS reset delay control register
   type RCC_C1MSRDCR_Register is record
      --  Minimum Standby reset duration
      C1MSRD        : RCC_C1MSRDCR_C1MSRD_Field := 16#0#;
      --  unspecified
      Reserved_5_7  : HAL.UInt3 := 16#0#;
      --  Trigger low-level pulse on NRSTC1MS pin
      C1MSRST       : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C1MSRDCR_Register use record
      C1MSRD        at 0 range 0 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      C1MSRST       at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RCC_PWRLPDLYCR_PWRLP_DLY_Field is HAL.UInt22;

   --  RCC PWR_LP delay control register
   type RCC_PWRLPDLYCR_Register is record
      --  PWR_LP delay value
      PWRLP_DLY      : RCC_PWRLPDLYCR_PWRLP_DLY_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Skip of PWR_LP delay for CPU2
      CPU2TMPSKP     : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PWRLPDLYCR_Register use record
      PWRLP_DLY      at 0 range 0 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CPU2TMPSKP     at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  RCC CPU1 clock source interrupt enable set register
   type RCC_C1CIESETR_Register is record
      --  LSI ready interrupt enable
      LSIRDYIE       : Boolean := False;
      --  LSE ready interrupt enable
      LSERDYIE       : Boolean := False;
      --  HSI ready interrupt enable
      HSIRDYIE       : Boolean := False;
      --  HSE ready interrupt enable
      HSERDYIE       : Boolean := False;
      --  MSI ready interrupt enable
      MSIRDYIE       : Boolean := False;
      --  PLL1 ready interrupt enable
      PLL1RDYIE      : Boolean := False;
      --  PLL2 ready interrupt enable
      PLL2RDYIE      : Boolean := False;
      --  PLL3 ready interrupt enable
      PLL3RDYIE      : Boolean := False;
      --  PLL4 ready interrupt enable
      PLL4RDYIE      : Boolean := False;
      --  PLL5 ready interrupt enable
      PLL5RDYIE      : Boolean := False;
      --  PLL6 ready interrupt enable
      PLL6RDYIE      : Boolean := False;
      --  PLL7 ready interrupt enable
      PLL7RDYIE      : Boolean := False;
      --  PLL8 ready interrupt enable
      PLL8RDYIE      : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  LSE clock security system interrupt enable
      LSECSSIE       : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  CPU1 wake-up from CStop interrupt enable
      WKUPIE         : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C1CIESETR_Register use record
      LSIRDYIE       at 0 range 0 .. 0;
      LSERDYIE       at 0 range 1 .. 1;
      HSIRDYIE       at 0 range 2 .. 2;
      HSERDYIE       at 0 range 3 .. 3;
      MSIRDYIE       at 0 range 4 .. 4;
      PLL1RDYIE      at 0 range 5 .. 5;
      PLL2RDYIE      at 0 range 6 .. 6;
      PLL3RDYIE      at 0 range 7 .. 7;
      PLL4RDYIE      at 0 range 8 .. 8;
      PLL5RDYIE      at 0 range 9 .. 9;
      PLL6RDYIE      at 0 range 10 .. 10;
      PLL7RDYIE      at 0 range 11 .. 11;
      PLL8RDYIE      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      LSECSSIE       at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      WKUPIE         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RCC CPU1 clock source interrupt flag clear register
   type RCC_C1CIFCLRR_Register is record
      --  LSI ready interrupt flag
      LSIRDYF        : Boolean := False;
      --  LSE ready interrupt flag
      LSERDYF        : Boolean := False;
      --  HSI ready interrupt flag
      HSIRDYF        : Boolean := True;
      --  HSE ready interrupt flag
      HSERDYF        : Boolean := False;
      --  MSI ready interrupt flag
      MSIRDYF        : Boolean := False;
      --  PLL1 ready interrupt flag
      PLL1RDYF       : Boolean := False;
      --  PLL2 ready interrupt flag
      PLL2RDYF       : Boolean := False;
      --  PLL3 ready interrupt flag
      PLL3RDYF       : Boolean := False;
      --  PLL4 ready interrupt flag
      PLL4RDYF       : Boolean := False;
      --  PLL5 ready interrupt flag
      PLL5RDYF       : Boolean := False;
      --  PLL6 ready interrupt flag
      PLL6RDYF       : Boolean := False;
      --  PLL7 ready interrupt flag
      PLL7RDYF       : Boolean := False;
      --  PLL8 ready interrupt flag
      PLL8RDYF       : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  LSE CSS interrupt flag
      LSECSSF        : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  CPU1 wake-up from CStop interrupt flag
      WKUPF          : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C1CIFCLRR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      HSIRDYF        at 0 range 2 .. 2;
      HSERDYF        at 0 range 3 .. 3;
      MSIRDYF        at 0 range 4 .. 4;
      PLL1RDYF       at 0 range 5 .. 5;
      PLL2RDYF       at 0 range 6 .. 6;
      PLL3RDYF       at 0 range 7 .. 7;
      PLL4RDYF       at 0 range 8 .. 8;
      PLL5RDYF       at 0 range 9 .. 9;
      PLL6RDYF       at 0 range 10 .. 10;
      PLL7RDYF       at 0 range 11 .. 11;
      PLL8RDYF       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      LSECSSF        at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      WKUPF          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RCC CPU2 clock source interrupt enable set register
   type RCC_C2CIESETR_Register is record
      --  LSI ready interrupt enable
      LSIRDYIE       : Boolean := False;
      --  LSE ready interrupt enable
      LSERDYIE       : Boolean := False;
      --  HSI ready interrupt enable
      HSIRDYIE       : Boolean := False;
      --  HSE ready interrupt enable
      HSERDYIE       : Boolean := False;
      --  MSI ready interrupt enable
      MSIRDYIE       : Boolean := False;
      --  PLL1 ready interrupt enable
      PLL1RDYIE      : Boolean := False;
      --  PLL2 ready interrupt enable
      PLL2RDYIE      : Boolean := False;
      --  PLL3 ready interrupt enable
      PLL3RDYIE      : Boolean := False;
      --  PLL4 ready interrupt enable
      PLL4RDYIE      : Boolean := False;
      --  PLL5 ready interrupt enable
      PLL5RDYIE      : Boolean := False;
      --  PLL6 ready interrupt enable
      PLL6RDYIE      : Boolean := False;
      --  PLL7 ready interrupt enable
      PLL7RDYIE      : Boolean := False;
      --  PLL8 ready interrupt enable
      PLL8RDYIE      : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  LSE CSS interrupt enable
      LSECSSIE       : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  CPU2 wake-up from CStop Interrupt Enable
      WKUPIE         : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C2CIESETR_Register use record
      LSIRDYIE       at 0 range 0 .. 0;
      LSERDYIE       at 0 range 1 .. 1;
      HSIRDYIE       at 0 range 2 .. 2;
      HSERDYIE       at 0 range 3 .. 3;
      MSIRDYIE       at 0 range 4 .. 4;
      PLL1RDYIE      at 0 range 5 .. 5;
      PLL2RDYIE      at 0 range 6 .. 6;
      PLL3RDYIE      at 0 range 7 .. 7;
      PLL4RDYIE      at 0 range 8 .. 8;
      PLL5RDYIE      at 0 range 9 .. 9;
      PLL6RDYIE      at 0 range 10 .. 10;
      PLL7RDYIE      at 0 range 11 .. 11;
      PLL8RDYIE      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      LSECSSIE       at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      WKUPIE         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RCC CPU2 clock source interrupt flag clear register
   type RCC_C2CIFCLRR_Register is record
      --  LSI ready interrupt flag
      LSIRDYF        : Boolean := False;
      --  LSE ready interrupt flag
      LSERDYF        : Boolean := False;
      --  HSI ready interrupt flag
      HSIRDYF        : Boolean := True;
      --  HSE ready interrupt flag
      HSERDYF        : Boolean := False;
      --  MSI ready interrupt flag
      MSIRDYF        : Boolean := False;
      --  PLL1 ready interrupt flag
      PLL1RDYF       : Boolean := False;
      --  PLL2 ready interrupt flag
      PLL2RDYF       : Boolean := False;
      --  PLL3 ready interrupt flag
      PLL3RDYF       : Boolean := False;
      --  PLL4 ready interrupt flag
      PLL4RDYF       : Boolean := False;
      --  PLL5 ready interrupt flag
      PLL5RDYF       : Boolean := False;
      --  PLL6 ready interrupt flag
      PLL6RDYF       : Boolean := False;
      --  PLL7 ready interrupt flag
      PLL7RDYF       : Boolean := False;
      --  PLL8 ready interrupt flag
      PLL8RDYF       : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  LSE clock security system interrupt flag
      LSECSSF        : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  CPU2 wake-up from CStop interrupt flag
      WKUPF          : Boolean := False;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C2CIFCLRR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      HSIRDYF        at 0 range 2 .. 2;
      HSERDYF        at 0 range 3 .. 3;
      MSIRDYF        at 0 range 4 .. 4;
      PLL1RDYF       at 0 range 5 .. 5;
      PLL2RDYF       at 0 range 6 .. 6;
      PLL3RDYF       at 0 range 7 .. 7;
      PLL4RDYF       at 0 range 8 .. 8;
      PLL5RDYF       at 0 range 9 .. 9;
      PLL6RDYF       at 0 range 10 .. 10;
      PLL7RDYF       at 0 range 11 .. 11;
      PLL8RDYF       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      LSECSSF        at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      WKUPF          at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RCC_IWDGC1FZSETR_FZ_IWDG array
   type RCC_IWDGC1FZSETR_FZ_IWDG_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RCC_IWDGC1FZSETR_FZ_IWDG
   type RCC_IWDGC1FZSETR_FZ_IWDG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FZ_IWDG as a value
            Val : HAL.UInt2;
         when True =>
            --  FZ_IWDG as an array
            Arr : RCC_IWDGC1FZSETR_FZ_IWDG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RCC_IWDGC1FZSETR_FZ_IWDG_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RCC IWDG CPU1 clock freeze set register
   type RCC_IWDGC1FZSETR_Register is record
      --  Freeze of IWDG1 clock
      FZ_IWDG       : RCC_IWDGC1FZSETR_FZ_IWDG_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDGC1FZSETR_Register use record
      FZ_IWDG       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RCC_IWDGC1FZCLRR_FZ_IWDG array
   type RCC_IWDGC1FZCLRR_FZ_IWDG_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RCC_IWDGC1FZCLRR_FZ_IWDG
   type RCC_IWDGC1FZCLRR_FZ_IWDG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FZ_IWDG as a value
            Val : HAL.UInt2;
         when True =>
            --  FZ_IWDG as an array
            Arr : RCC_IWDGC1FZCLRR_FZ_IWDG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RCC_IWDGC1FZCLRR_FZ_IWDG_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RCC IWDG CPU1 clock freeze clear register
   type RCC_IWDGC1FZCLRR_Register is record
      --  Unfreeze IWDG1 clock
      FZ_IWDG       : RCC_IWDGC1FZCLRR_FZ_IWDG_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDGC1FZCLRR_Register use record
      FZ_IWDG       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RCC IWDG CPU1 configuration set register
   type RCC_IWDGC1CFGSETR_Register is record
      --  Enable of IWDG1 timeout event to reset the application
      IWDG1_SYSRSTEN : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Enable of IWDG2 timeout event to reset the application
      IWDG2_SYSRSTEN : Boolean := False;
      --  unspecified
      Reserved_3_17  : HAL.UInt15 := 16#0#;
      --  IWDG2 kernel reset
      IWDG2_KERRST   : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDGC1CFGSETR_Register use record
      IWDG1_SYSRSTEN at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      IWDG2_SYSRSTEN at 0 range 2 .. 2;
      Reserved_3_17  at 0 range 3 .. 17;
      IWDG2_KERRST   at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC IWDG CPU1 configuration clear register
   type RCC_IWDGC1CFGCLRR_Register is record
      --  Clear of IWDG1 timeout event to reset the application
      IWDG1_SYSRSTEN : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Clear of IWDG2 timeout event to reset the application
      IWDG2_SYSRSTEN : Boolean := False;
      --  unspecified
      Reserved_3_17  : HAL.UInt15 := 16#0#;
      --  IWDG2 kernel reset
      IWDG2_KERRST   : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDGC1CFGCLRR_Register use record
      IWDG1_SYSRSTEN at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      IWDG2_SYSRSTEN at 0 range 2 .. 2;
      Reserved_3_17  at 0 range 3 .. 17;
      IWDG2_KERRST   at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC_IWDGC2FZSETR_FZ_IWDG array
   type RCC_IWDGC2FZSETR_FZ_IWDG_Field_Array is array (3 .. 4) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RCC_IWDGC2FZSETR_FZ_IWDG
   type RCC_IWDGC2FZSETR_FZ_IWDG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FZ_IWDG as a value
            Val : HAL.UInt2;
         when True =>
            --  FZ_IWDG as an array
            Arr : RCC_IWDGC2FZSETR_FZ_IWDG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RCC_IWDGC2FZSETR_FZ_IWDG_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RCC IWDG CPU2 clock freeze set register
   type RCC_IWDGC2FZSETR_Register is record
      --  Freeze of IWDG3 clock
      FZ_IWDG       : RCC_IWDGC2FZSETR_FZ_IWDG_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDGC2FZSETR_Register use record
      FZ_IWDG       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RCC_IWDGC2FZCLRR_FZ_IWDG array
   type RCC_IWDGC2FZCLRR_FZ_IWDG_Field_Array is array (3 .. 4) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RCC_IWDGC2FZCLRR_FZ_IWDG
   type RCC_IWDGC2FZCLRR_FZ_IWDG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FZ_IWDG as a value
            Val : HAL.UInt2;
         when True =>
            --  FZ_IWDG as an array
            Arr : RCC_IWDGC2FZCLRR_FZ_IWDG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RCC_IWDGC2FZCLRR_FZ_IWDG_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  RCC IWDG CPU2 clock freeze clear register
   type RCC_IWDGC2FZCLRR_Register is record
      --  Unfreeze of IWDG3 clock
      FZ_IWDG       : RCC_IWDGC2FZCLRR_FZ_IWDG_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDGC2FZCLRR_Register use record
      FZ_IWDG       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RCC IWDG CPU2 configuration set register
   type RCC_IWDGC2CFGSETR_Register is record
      --  Enable of IWDG3 timeout event to reset the application
      IWDG3_SYSRSTEN : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Enable of IWDG4 timeout event to reset the application
      IWDG4_SYSRSTEN : Boolean := False;
      --  unspecified
      Reserved_3_17  : HAL.UInt15 := 16#0#;
      --  IWDG4 kernel reset
      IWDG4_KERRST   : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDGC2CFGSETR_Register use record
      IWDG3_SYSRSTEN at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      IWDG4_SYSRSTEN at 0 range 2 .. 2;
      Reserved_3_17  at 0 range 3 .. 17;
      IWDG4_KERRST   at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC IWDG CPU2 configuration clear register
   type RCC_IWDGC2CFGCLRR_Register is record
      --  Clear of IWDG3 timeout event to reset the application
      IWDG3_SYSRSTEN : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Clear of IWDG4 timeout event to reset the application
      IWDG4_SYSRSTEN : Boolean := False;
      --  unspecified
      Reserved_3_17  : HAL.UInt15 := 16#0#;
      --  IWDG4 kernel reset
      IWDG4_KERRST   : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDGC2CFGCLRR_Register use record
      IWDG3_SYSRSTEN at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      IWDG4_SYSRSTEN at 0 range 2 .. 2;
      Reserved_3_17  at 0 range 3 .. 17;
      IWDG4_KERRST   at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  RCC IWDG CPU3 configuration set register
   type RCC_IWDGC3CFGSETR_Register is record
      --  Enable of IWDG5 timeout event to reset the application
      IWDG5_SYSRSTEN : Boolean := False;
      --  unspecified
      Reserved_1_31  : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDGC3CFGSETR_Register use record
      IWDG5_SYSRSTEN at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  RCC IWDG CPU3 configuration clear register
   type RCC_IWDGC3CFGCLRR_Register is record
      --  Clear of IWDG5 timeout event to reset the application
      IWDG5_SYSRSTEN : Boolean := False;
      --  unspecified
      Reserved_1_31  : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDGC3CFGCLRR_Register use record
      IWDG5_SYSRSTEN at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  RCC CPU3 configuration register
   type RCC_C3CFGR_Register is record
      --  CPU3 reset
      C3RST          : Boolean := True;
      --  CPU3 peripheral clocks enable
      C3EN           : Boolean := False;
      --  CPU3 peripheral clock enable during CSleep
      C3LPEN         : Boolean := True;
      --  CPU3 autonomous clock mode enable
      C3AMEN         : Boolean := False;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  LPTIM3 allocation to CPU3 enable
      LPTIM3C3EN     : Boolean := False;
      --  LPTIM4 allocation to CPU3 enable
      LPTIM4C3EN     : Boolean := False;
      --  LPTIM5 allocation to CPU3 enable
      LPTIM5C3EN     : Boolean := False;
      --  SPI8 allocation to CPU3 enable
      SPI8C3EN       : Boolean := False;
      --  LPUART1 allocation to CPU3 enable
      LPUART1C3EN    : Boolean := False;
      --  I2C8 allocation to CPU3 enable
      I2C8C3EN       : Boolean := False;
      --  unspecified
      Reserved_22_22 : HAL.Bit := 16#0#;
      --  ADF1 allocation to CPU3 enable
      ADF1C3EN       : Boolean := False;
      --  GPIOZ allocation to CPU3 enable
      GPIOZC3EN      : Boolean := False;
      --  LPDMA1 allocation to CPU3 enable
      LPDMAC3EN      : Boolean := False;
      --  RTC allocation to CPU3 enable
      RTCC3EN        : Boolean := False;
      --  I3C4 allocation to CPU3 enable
      I3C4C3EN       : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_C3CFGR_Register use record
      C3RST          at 0 range 0 .. 0;
      C3EN           at 0 range 1 .. 1;
      C3LPEN         at 0 range 2 .. 2;
      C3AMEN         at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      LPTIM3C3EN     at 0 range 16 .. 16;
      LPTIM4C3EN     at 0 range 17 .. 17;
      LPTIM5C3EN     at 0 range 18 .. 18;
      SPI8C3EN       at 0 range 19 .. 19;
      LPUART1C3EN    at 0 range 20 .. 20;
      I2C8C3EN       at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      ADF1C3EN       at 0 range 23 .. 23;
      GPIOZC3EN      at 0 range 24 .. 24;
      LPDMAC3EN      at 0 range 25 .. 25;
      RTCC3EN        at 0 range 26 .. 26;
      I3C4C3EN       at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  RCC MCO1 configuration register
   type RCC_MCO1CFGR_Register is record
      --  MCO1 clock output selection
      MCO1SEL       : Boolean := False;
      --  unspecified
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  Control of MCO1 output
      MCO1ON        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MCO1CFGR_Register use record
      MCO1SEL       at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      MCO1ON        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RCC MCO2 configuration register
   type RCC_MCO2CFGR_Register is record
      --  MCO2 clock output selection
      MCO2SEL       : Boolean := False;
      --  unspecified
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  Control of the MCO2 output
      MCO2ON        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MCO2CFGR_Register use record
      MCO2SEL       at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      MCO2ON        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RCC oscillator clock enable set register
   type RCC_OCENSETR_Register is record
      --  HSION bit set
      HSION          : Boolean := True;
      --  HSIKERON bit set
      HSIKERON       : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  HSEDIV2ON bit set
      HSEDIV2ON      : Boolean := False;
      --  HSEDIV2BYP bit set
      HSEDIV2BYP     : Boolean := False;
      --  HSEDIGBYP bit set
      HSEDIGBYP      : Boolean := False;
      --  HSEON bit set
      HSEON          : Boolean := False;
      --  HSEKERON bit set
      HSEKERON       : Boolean := False;
      --  HSEBYP bit set
      HSEBYP         : Boolean := False;
      --  HSECSSON bit set
      HSECSSON       : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_OCENSETR_Register use record
      HSION          at 0 range 0 .. 0;
      HSIKERON       at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      HSEDIV2ON      at 0 range 5 .. 5;
      HSEDIV2BYP     at 0 range 6 .. 6;
      HSEDIGBYP      at 0 range 7 .. 7;
      HSEON          at 0 range 8 .. 8;
      HSEKERON       at 0 range 9 .. 9;
      HSEBYP         at 0 range 10 .. 10;
      HSECSSON       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  RCC oscillator clock enable clear register
   type RCC_OCENCLRR_Register is record
      --  HSION bit clear
      HSION          : Boolean := True;
      --  HSIKERON bit clear
      HSIKERON       : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  HSEDIV2ON bit clear
      HSEDIV2ON      : Boolean := False;
      --  HSEDIV2BYP bit clear
      HSEDIV2BYP     : Boolean := False;
      --  HSEDIGBYP bit clear
      HSEDIGBYP      : Boolean := False;
      --  HSEON bit clear
      HSEON          : Boolean := False;
      --  HSEKERON bit clear
      HSEKERON       : Boolean := False;
      --  HSEBYP bit clear
      HSEBYP         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_OCENCLRR_Register use record
      HSION          at 0 range 0 .. 0;
      HSIKERON       at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      HSEDIV2ON      at 0 range 5 .. 5;
      HSEDIV2BYP     at 0 range 6 .. 6;
      HSEDIGBYP      at 0 range 7 .. 7;
      HSEON          at 0 range 8 .. 8;
      HSEKERON       at 0 range 9 .. 9;
      HSEBYP         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  RCC oscillator clock ready register
   type RCC_OCRDYR_Register is record
      --  Read-only. HSI clock ready flag
      HSIRDY         : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. HSE clock ready flag
      HSERDY         : Boolean;
      --  unspecified
      Reserved_9_24  : HAL.UInt16;
      --  Read-only. Clock restore state machine status
      CKREST         : Boolean;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_OCRDYR_Register use record
      HSIRDY         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      HSERDY         at 0 range 8 .. 8;
      Reserved_9_24  at 0 range 9 .. 24;
      CKREST         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype RCC_HSICFGR_HSITRIM_Field is HAL.UInt7;
   subtype RCC_HSICFGR_HSICAL_Field is HAL.UInt9;

   --  RCC HSI configuration register
   type RCC_HSICFGR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  HSI clock trimming
      HSITRIM        : RCC_HSICFGR_HSITRIM_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Read-only. HSI clock calibration
      HSICAL         : RCC_HSICFGR_HSICAL_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HSICFGR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      HSITRIM        at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HSICAL         at 0 range 16 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype RCC_MSICFGR_MSITRIM_Field is HAL.UInt5;
   subtype RCC_MSICFGR_MSICAL_Field is HAL.UInt8;

   --  RCC MSI configuration register
   type RCC_MSICFGR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  MSI clock trimming
      MSITRIM        : RCC_MSICFGR_MSITRIM_Field := 16#10#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Read-only. MSI clock calibration
      MSICAL         : RCC_MSICFGR_MSICAL_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MSICFGR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      MSITRIM        at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      MSICAL         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RCC_RTCDIVR_RTCDIV_Field is HAL.UInt6;

   --  RCC RTC clock divider register
   type RCC_RTCDIVR_Register is record
      --  HSE division factor for RTC clock
      RTCDIV        : RCC_RTCDIVR_RTCDIV_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_RTCDIVR_Register use record
      RTCDIV        at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype RCC_APB1DIVR_APB1DIV_Field is HAL.UInt3;

   --  RCC APB1 clock divider register
   type RCC_APB1DIVR_Register is record
      --  APB1 clock divider
      APB1DIV       : RCC_APB1DIVR_APB1DIV_Field := 16#0#;
      --  unspecified
      Reserved_3_30 : HAL.UInt28 := 16#0#;
      --  Read-only. APB1 clock prescaler status
      APB1DIVRDY    : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB1DIVR_Register use record
      APB1DIV       at 0 range 0 .. 2;
      Reserved_3_30 at 0 range 3 .. 30;
      APB1DIVRDY    at 0 range 31 .. 31;
   end record;

   subtype RCC_APB2DIVR_APB2DIV_Field is HAL.UInt3;

   --  RCC APB2 clock divider register
   type RCC_APB2DIVR_Register is record
      --  APB2 clock divider
      APB2DIV       : RCC_APB2DIVR_APB2DIV_Field := 16#0#;
      --  unspecified
      Reserved_3_30 : HAL.UInt28 := 16#0#;
      --  Read-only. APB2 clock prescaler status
      APB2DIVRDY    : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB2DIVR_Register use record
      APB2DIV       at 0 range 0 .. 2;
      Reserved_3_30 at 0 range 3 .. 30;
      APB2DIVRDY    at 0 range 31 .. 31;
   end record;

   subtype RCC_APB3DIVR_APB3DIV_Field is HAL.UInt3;

   --  RCC APB3 clock divider register
   type RCC_APB3DIVR_Register is record
      --  APB3 clock divider
      APB3DIV       : RCC_APB3DIVR_APB3DIV_Field := 16#0#;
      --  unspecified
      Reserved_3_30 : HAL.UInt28 := 16#0#;
      --  Read-only. APB3 clock prescaler status
      APB3DIVRDY    : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB3DIVR_Register use record
      APB3DIV       at 0 range 0 .. 2;
      Reserved_3_30 at 0 range 3 .. 30;
      APB3DIVRDY    at 0 range 31 .. 31;
   end record;

   subtype RCC_APB4DIVR_APB4DIV_Field is HAL.UInt3;

   --  RCC APB4 clock divider register
   type RCC_APB4DIVR_Register is record
      --  APB4 clock divider
      APB4DIV       : RCC_APB4DIVR_APB4DIV_Field := 16#0#;
      --  unspecified
      Reserved_3_30 : HAL.UInt28 := 16#0#;
      --  Read-only. APB4 clock divider status
      APB4DIVRDY    : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APB4DIVR_Register use record
      APB4DIV       at 0 range 0 .. 2;
      Reserved_3_30 at 0 range 3 .. 30;
      APB4DIVRDY    at 0 range 31 .. 31;
   end record;

   subtype RCC_APBDBGDIVR_APBDBGDIV_Field is HAL.UInt3;

   --  RCC APBDBG clock divider register
   type RCC_APBDBGDIVR_Register is record
      --  APBDBG clock divider
      APBDBGDIV     : RCC_APBDBGDIVR_APBDBGDIV_Field := 16#0#;
      --  unspecified
      Reserved_3_30 : HAL.UInt28 := 16#0#;
      --  Read-only. APBDBG clock divider status
      APBDBGDIVRDY  : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_APBDBGDIVR_Register use record
      APBDBGDIV     at 0 range 0 .. 2;
      Reserved_3_30 at 0 range 3 .. 30;
      APBDBGDIVRDY  at 0 range 31 .. 31;
   end record;

   --  RCC TIM group 1 prescaler register
   type RCC_TIMG1PRER_Register is record
      --  Clock prescaler selection for timers of group 1
      TIMG1PRE      : Boolean := False;
      --  unspecified
      Reserved_1_30 : HAL.UInt30 := 16#0#;
      --  Read-only. Clock prescaler status for timers of group 1
      TIMG1PRERDY   : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIMG1PRER_Register use record
      TIMG1PRE      at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      TIMG1PRERDY   at 0 range 31 .. 31;
   end record;

   --  RCC TIM group 2 prescaler register
   type RCC_TIMG2PRER_Register is record
      --  Clock prescaler selection for timers of group 2
      TIMG2PRE      : Boolean := False;
      --  unspecified
      Reserved_1_30 : HAL.UInt30 := 16#0#;
      --  Read-only. Clock prescaler status for timers of group 2
      TIMG2PRERDY   : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIMG2PRER_Register use record
      TIMG2PRE      at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      TIMG2PRERDY   at 0 range 31 .. 31;
   end record;

   --  RCC LSMCU clock divider register
   type RCC_LSMCUDIVR_Register is record
      --  LSMCU clock divider
      LSMCUDIV      : Boolean := False;
      --  unspecified
      Reserved_1_30 : HAL.UInt30 := 16#0#;
      --  Read-only. LSMCU clock divider status
      LSMCUDIVRDY   : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LSMCUDIVR_Register use record
      LSMCUDIV      at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      LSMCUDIVRDY   at 0 range 31 .. 31;
   end record;

   --  RCC DDRC AXI port configuration register
   type RCC_DDRCPCFGR_Register is record
      --  DDRC AXI port reset
      DDRCPRST      : Boolean := True;
      --  DDRC AXI port clock enable
      DDRCPEN       : Boolean := False;
      --  DDRC AXI port clock enable during CSleep
      DDRCPLPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DDRCPCFGR_Register use record
      DDRCPRST      at 0 range 0 .. 0;
      DDRCPEN       at 0 range 1 .. 1;
      DDRCPLPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC DDRC APB configuration register
   type RCC_DDRCAPBCFGR_Register is record
      --  DDRC APB reset
      DDRCAPBRST    : Boolean := True;
      --  DDRC APB clock enable
      DDRCAPBEN     : Boolean := False;
      --  DDRC APB clock enable during CSleep
      DDRCAPBLPEN   : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DDRCAPBCFGR_Register use record
      DDRCAPBRST    at 0 range 0 .. 0;
      DDRCAPBEN     at 0 range 1 .. 1;
      DDRCAPBLPEN   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC DDRPHYC APB configuration register
   type RCC_DDRPHYCAPBCFGR_Register is record
      --  DDRPHYC APB reset
      DDRPHYCAPBRST  : Boolean := True;
      --  DDRPHYC APB clock enable
      DDRPHYCAPBEN   : Boolean := False;
      --  DDRPHYC APB clock enable during CSleep
      DDRPHYCAPBLPEN : Boolean := True;
      --  unspecified
      Reserved_3_31  : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DDRPHYCAPBCFGR_Register use record
      DDRPHYCAPBRST  at 0 range 0 .. 0;
      DDRPHYCAPBEN   at 0 range 1 .. 1;
      DDRPHYCAPBLPEN at 0 range 2 .. 2;
      Reserved_3_31  at 0 range 3 .. 31;
   end record;

   --  RCC DDRPHYC configuration register
   type RCC_DDRPHYCCFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  DDRPHYC kernel clock enable
      DDRPHYCEN     : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DDRPHYCCFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      DDRPHYCEN     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RCC DDR configuration register
   type RCC_DDRCFGR_Register is record
      --  DDR APB configuration reset
      DDRCFGRST     : Boolean := True;
      --  DDR APB configuration clock enable
      DDRCFGEN      : Boolean := False;
      --  DDR APB configuration clock enable during CSleep
      DDRCFGLPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DDRCFGR_Register use record
      DDRCFGRST     at 0 range 0 .. 0;
      DDRCFGEN      at 0 range 1 .. 1;
      DDRCFGLPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RCC_DDRITFCFGR_DDRCKMOD_Field is HAL.UInt2;

   --  RCC DDR interface configuration register
   type RCC_DDRITFCFGR_Register is record
      --  DDR core and PHY reset
      DDRRST         : Boolean := True;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  RCC mode for DDR clock control
      DDRCKMOD       : RCC_DDRITFCFGR_DDRCKMOD_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  DDR peripheral mode
      DDRSHR         : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  DDRPHY deep low-power mode (LP2 or LP3)
      DDRPHYDLP      : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DDRITFCFGR_Register use record
      DDRRST         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DDRCKMOD       at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DDRSHR         at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DDRPHYDLP      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  RCC SYSRAM configuration register
   type RCC_SYSRAMCFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  SYSRAM clock enable
      SYSRAMEN      : Boolean := False;
      --  SYSRAM clock enable during CSleep
      SYSRAMLPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SYSRAMCFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SYSRAMEN      at 0 range 1 .. 1;
      SYSRAMLPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC VDERAM configuration register
   type RCC_VDERAMCFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  VDERAM clock enable
      VDERAMEN      : Boolean := False;
      --  VDERAM clock enable during CSleep
      VDERAMLPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_VDERAMCFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      VDERAMEN      at 0 range 1 .. 1;
      VDERAMLPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SRAM1 configuration register
   type RCC_SRAM1CFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  SRAM1 clock enable
      SRAM1EN       : Boolean := False;
      --  SRAM1 clock enable during CSleep
      SRAM1LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SRAM1CFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SRAM1EN       at 0 range 1 .. 1;
      SRAM1LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SRAM2 configuration register
   type RCC_SRAM2CFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  SRAM2 clock enable
      SRAM2EN       : Boolean := False;
      --  SRAM2 clock enable during CSleep
      SRAM2LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SRAM2CFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SRAM2EN       at 0 range 1 .. 1;
      SRAM2LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC RETRAM configuration register
   type RCC_RETRAMCFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  RETRAM clock enable
      RETRAMEN      : Boolean := True;
      --  RETRAM clock enable during CSleep
      RETRAMLPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_RETRAMCFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RETRAMEN      at 0 range 1 .. 1;
      RETRAMLPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC BKPSRAM configuration register
   type RCC_BKPSRAMCFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  BKPSRAM clock enable
      BKPSRAMEN     : Boolean := False;
      --  BKPSRAM clock enable during CSleep
      BKPSRAMLPEN   : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BKPSRAMCFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      BKPSRAMEN     at 0 range 1 .. 1;
      BKPSRAMLPEN   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC LPSRAM1 configuration register
   type RCC_LPSRAM1CFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  LPSRAM1 clock enable
      LPSRAM1EN     : Boolean := False;
      --  LPSRAM1 clock enable during CSleep
      LPSRAM1LPEN   : Boolean := True;
      --  LPSRAM1 autonomous clock mode enable
      LPSRAM1AMEN   : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LPSRAM1CFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LPSRAM1EN     at 0 range 1 .. 1;
      LPSRAM1LPEN   at 0 range 2 .. 2;
      LPSRAM1AMEN   at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC LPSRAM2 configuration register
   type RCC_LPSRAM2CFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  LPSRAM2 clock enable
      LPSRAM2EN     : Boolean := False;
      --  LPSRAM2 clock enable during CSleep
      LPSRAM2LPEN   : Boolean := True;
      --  LPSRAM2 autonomous clock mode enable
      LPSRAM2AMEN   : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LPSRAM2CFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LPSRAM2EN     at 0 range 1 .. 1;
      LPSRAM2LPEN   at 0 range 2 .. 2;
      LPSRAM2AMEN   at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC LPSRAM3 configuration register
   type RCC_LPSRAM3CFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  LPSRAM3 clock enable
      LPSRAM3EN     : Boolean := False;
      --  LPSRAM3 clock enable during CSleep
      LPSRAM3LPEN   : Boolean := True;
      --  LPSRAM3 autonomous clock mode enable
      LPSRAM3AMEN   : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LPSRAM3CFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      LPSRAM3EN     at 0 range 1 .. 1;
      LPSRAM3LPEN   at 0 range 2 .. 2;
      LPSRAM3AMEN   at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC OCTOSPI1 configuration register
   type RCC_OSPI1CFGR_Register is record
      --  OCTOSPI1 reset
      OSPI1RST       : Boolean := False;
      --  OCTOSPI1 and OTFDEC1 clock enable
      OSPI1EN        : Boolean := False;
      --  OCTOSPI1, OTFDEC1 and OCTOSPI1 delay (DLYBOSPI1) clock enable
      --  duringCSleep
      OSPI1LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  OTFDEC1 reset
      OTFDEC1RST     : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  OCTOSPI1 DLL reset
      OSPI1DLLRST    : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_OSPI1CFGR_Register use record
      OSPI1RST       at 0 range 0 .. 0;
      OSPI1EN        at 0 range 1 .. 1;
      OSPI1LPEN      at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      OTFDEC1RST     at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      OSPI1DLLRST    at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  RCC OCTOSPI2 configuration register
   type RCC_OSPI2CFGR_Register is record
      --  OCTOSPI2 reset
      OSPI2RST       : Boolean := False;
      --  OCTOSPI2 and OTFDEC2 clock enable
      OSPI2EN        : Boolean := False;
      --  OCTOSPI2 and OTFDEC2 clock enable during CSleep
      OSPI2LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  OTFDEC2 reset
      OTFDEC2RST     : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  OCTOSPI2 DLL reset
      OSPI2DLLRST    : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_OSPI2CFGR_Register use record
      OSPI2RST       at 0 range 0 .. 0;
      OSPI2EN        at 0 range 1 .. 1;
      OSPI2LPEN      at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      OTFDEC2RST     at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      OSPI2DLLRST    at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  RCC FMC configuration register
   type RCC_FMCCFGR_Register is record
      --  FMC reset
      FMCRST        : Boolean := False;
      --  FMC clock enable
      FMCEN         : Boolean := False;
      --  FMC clock enable during CSleep
      FMCLPEN       : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FMCCFGR_Register use record
      FMCRST        at 0 range 0 .. 0;
      FMCEN         at 0 range 1 .. 1;
      FMCLPEN       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC debug configuration register
   type RCC_DBGCFGR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Debug function clock enable
      DBGEN          : Boolean := False;
      --  Clock enable for trace port interface
      TRACEEN        : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Debug function reset
      DBGRST         : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DBGCFGR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DBGEN          at 0 range 8 .. 8;
      TRACEEN        at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      DBGRST         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  RCC STM configuration register
   type RCC_STMCFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  STM clock enable
      STMEN         : Boolean := False;
      --  STM clock enable during CSleep
      STMLPEN       : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_STMCFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      STMEN         at 0 range 1 .. 1;
      STMLPEN       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC ETR configuration register
   type RCC_ETRCFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  ETR clocks enable
      ETREN         : Boolean := False;
      --  ETR clock enable during CSleep
      ETRLPEN       : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ETRCFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      ETREN         at 0 range 1 .. 1;
      ETRLPEN       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC GPIOZ configuration register
   type RCC_GPIOZCFGR_Register is record
      --  GPIOZ reset
      GPIOZRST      : Boolean := False;
      --  GPIOZ clock enable
      GPIOZEN       : Boolean := False;
      --  GPIOZ clock enable during CSleep
      GPIOZLPEN     : Boolean := True;
      --  GPIOZ autonomous clock mode enable
      GPIOZAMEN     : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_GPIOZCFGR_Register use record
      GPIOZRST      at 0 range 0 .. 0;
      GPIOZEN       at 0 range 1 .. 1;
      GPIOZLPEN     at 0 range 2 .. 2;
      GPIOZAMEN     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC HPDMA1 configuration register
   type RCC_HPDMA1CFGR_Register is record
      --  HPDMA1 reset
      HPDMA1RST     : Boolean := False;
      --  HPDMA1 clock enable
      HPDMA1EN      : Boolean := False;
      --  HPDMA1 clock enable during CSleep
      HPDMA1LPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HPDMA1CFGR_Register use record
      HPDMA1RST     at 0 range 0 .. 0;
      HPDMA1EN      at 0 range 1 .. 1;
      HPDMA1LPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC HPDMA2 configuration register
   type RCC_HPDMA2CFGR_Register is record
      --  HPDMA2 reset
      HPDMA2RST     : Boolean := False;
      --  HPDMA2 clock enable
      HPDMA2EN      : Boolean := False;
      --  HPDMA2 clock enable during CSleep
      HPDMA2LPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HPDMA2CFGR_Register use record
      HPDMA2RST     at 0 range 0 .. 0;
      HPDMA2EN      at 0 range 1 .. 1;
      HPDMA2LPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC HPDMA3 configuration register
   type RCC_HPDMA3CFGR_Register is record
      --  HPDMA3 reset
      HPDMA3RST     : Boolean := False;
      --  HPDMA3 clock enable
      HPDMA3EN      : Boolean := False;
      --  HPDMA3 clock enable during CSleep
      HPDMA3LPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HPDMA3CFGR_Register use record
      HPDMA3RST     at 0 range 0 .. 0;
      HPDMA3EN      at 0 range 1 .. 1;
      HPDMA3LPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC LPDMA1 configuration register
   type RCC_LPDMACFGR_Register is record
      --  LPDMA1 reset
      LPDMARST      : Boolean := False;
      --  LPDMA1 clock enable
      LPDMAEN       : Boolean := False;
      --  LPDMA1 clock enable during CSleep
      LPDMALPEN     : Boolean := True;
      --  LPDMA1 autonomous clock mode enable
      LPDMAAMEN     : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LPDMACFGR_Register use record
      LPDMARST      at 0 range 0 .. 0;
      LPDMAEN       at 0 range 1 .. 1;
      LPDMALPEN     at 0 range 2 .. 2;
      LPDMAAMEN     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC HSEM configuration register
   type RCC_HSEMCFGR_Register is record
      --  HSEM reset
      HSEMRST       : Boolean := False;
      --  HSEM clock enable
      HSEMEN        : Boolean := False;
      --  HSEM clock enable during CSleep
      HSEMLPEN      : Boolean := True;
      --  HSEM autonomous clock mode enable
      HSEMAMEN      : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HSEMCFGR_Register use record
      HSEMRST       at 0 range 0 .. 0;
      HSEMEN        at 0 range 1 .. 1;
      HSEMLPEN      at 0 range 2 .. 2;
      HSEMAMEN      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC IPCC1 configuration register
   type RCC_IPCC1CFGR_Register is record
      --  IPCC1 reset
      IPCC1RST      : Boolean := False;
      --  IPCC1 clock enable
      IPCC1EN       : Boolean := False;
      --  IPCC1 clock enable during CSleep
      IPCC1LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IPCC1CFGR_Register use record
      IPCC1RST      at 0 range 0 .. 0;
      IPCC1EN       at 0 range 1 .. 1;
      IPCC1LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC IPCC2 configuration register
   type RCC_IPCC2CFGR_Register is record
      --  IPCC2 reset
      IPCC2RST      : Boolean := False;
      --  IPCC2 clock enable
      IPCC2EN       : Boolean := False;
      --  IPCC2 clock enable during CSleep
      IPCC2LPEN     : Boolean := True;
      --  IPCC2 autonomous clock mode enable
      IPCC2AMEN     : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IPCC2CFGR_Register use record
      IPCC2RST      at 0 range 0 .. 0;
      IPCC2EN       at 0 range 1 .. 1;
      IPCC2LPEN     at 0 range 2 .. 2;
      IPCC2AMEN     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC RTC configuration register
   type RCC_RTCCFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  RTC bus clock enable
      RTCEN         : Boolean := False;
      --  RTC bus clock enable during CSleep
      RTCLPEN       : Boolean := True;
      --  RTC autonomous clock mode enable
      RTCAMEN       : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_RTCCFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      RTCEN         at 0 range 1 .. 1;
      RTCLPEN       at 0 range 2 .. 2;
      RTCAMEN       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC SYSCPU1 configuration register
   type RCC_SYSCPU1CFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  CPU1 system configuration clock enable
      SYSCPU1EN     : Boolean := False;
      --  CPU1 system configuration clock enable during CSleep
      SYSCPU1LPEN   : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SYSCPU1CFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SYSCPU1EN     at 0 range 1 .. 1;
      SYSCPU1LPEN   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC BSEC configuration register
   type RCC_BSECCFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  BSEC clock enable
      BSECEN        : Boolean := False;
      --  BSEC clock enable during CSleep
      BSECLPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_BSECCFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      BSECEN        at 0 range 1 .. 1;
      BSECLPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC PLL2 configuration register 1
   type RCC_PLL2CFGR1_Register is record
      --  PLLx spread-spectrum modulator reset
      SSMODRST       : Boolean := True;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  PLLx enable
      PLLEN          : Boolean := False;
      --  unspecified
      Reserved_9_23  : HAL.UInt15 := 16#0#;
      --  Read-only. PLLx clock ready flag
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  PLLx reference clock state
      CKREFST        : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL2CFGR1_Register use record
      SSMODRST       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      PLLEN          at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      PLLRDY         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      CKREFST        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RCC_PLL2CFGR2_FREFDIV_Field is HAL.UInt6;
   subtype RCC_PLL2CFGR2_FBDIV_Field is HAL.UInt12;

   --  RCC PLL2 configuration register 2
   type RCC_PLL2CFGR2_Register is record
      --  PLLx reference input clock divide frequency ratio
      FREFDIV        : RCC_PLL2CFGR2_FREFDIV_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  PLLx VCO multiplication factor
      FBDIV          : RCC_PLL2CFGR2_FBDIV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL2CFGR2_Register use record
      FREFDIV        at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      FBDIV          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype RCC_PLL2CFGR3_FRACIN_Field is HAL.UInt24;

   --  RCC PLL2 configuration register 3
   type RCC_PLL2CFGR3_Register is record
      --  Fractional part of PLLx VCO multiplication factor
      FRACIN         : RCC_PLL2CFGR3_FRACIN_Field := 16#0#;
      --  PLLx VCO frequency modulation mode
      DOWNSPREAD     : Boolean := False;
      --  PLLx noise canceling DAC enable in fractional mode
      DACEN          : Boolean := False;
      --  PLLx spread-spectrum modulator enable
      SSCGDIS        : Boolean := True;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL2CFGR3_Register use record
      FRACIN         at 0 range 0 .. 23;
      DOWNSPREAD     at 0 range 24 .. 24;
      DACEN          at 0 range 25 .. 25;
      SSCGDIS        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  RCC PLL2 configuration register 4
   type RCC_PLL2CFGR4_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  PLLx delta-sigma modulator enable
      DSMEN          : Boolean := False;
      --  PLLx output and post divider enable
      FOUTPOSTDIVEN  : Boolean := False;
      --  PLLx FOUTPOSTDIV bypass
      BYPASS         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL2CFGR4_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DSMEN          at 0 range 8 .. 8;
      FOUTPOSTDIVEN  at 0 range 9 .. 9;
      BYPASS         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype RCC_PLL2CFGR5_DIVVAL_Field is HAL.UInt4;
   subtype RCC_PLL2CFGR5_SPREAD_Field is HAL.UInt5;

   --  RCC PLL2 configuration register 5
   type RCC_PLL2CFGR5_Register is record
      --  Modulation frequency adjustment for PLLx
      DIVVAL         : RCC_PLL2CFGR5_DIVVAL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Modulation depth adjustment for PLLx
      SPREAD         : RCC_PLL2CFGR5_SPREAD_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL2CFGR5_Register use record
      DIVVAL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SPREAD         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RCC_PLL2CFGR6_POSTDIV1_Field is HAL.UInt3;

   --  RCC PLL2 configuration register 6
   type RCC_PLL2CFGR6_Register is record
      --  PLLx VCO frequency divide level 1
      POSTDIV1      : RCC_PLL2CFGR6_POSTDIV1_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL2CFGR6_Register use record
      POSTDIV1      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RCC_PLL2CFGR7_POSTDIV2_Field is HAL.UInt3;

   --  RCC PLL2 configuration register 7
   type RCC_PLL2CFGR7_Register is record
      --  PLLx VCO frequency divide level 2
      POSTDIV2      : RCC_PLL2CFGR7_POSTDIV2_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL2CFGR7_Register use record
      POSTDIV2      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC PLL3 configuration register 1
   type RCC_PLL3CFGR1_Register is record
      --  PLLx spread-spectrum modulator reset
      SSMODRST       : Boolean := True;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  PLLx enable
      PLLEN          : Boolean := False;
      --  unspecified
      Reserved_9_23  : HAL.UInt15 := 16#0#;
      --  Read-only. PLLx clock ready flag
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  PLLx reference clock state
      CKREFST        : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL3CFGR1_Register use record
      SSMODRST       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      PLLEN          at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      PLLRDY         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      CKREFST        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RCC_PLL3CFGR2_FREFDIV_Field is HAL.UInt6;
   subtype RCC_PLL3CFGR2_FBDIV_Field is HAL.UInt12;

   --  RCC PLL3 configuration register 2
   type RCC_PLL3CFGR2_Register is record
      --  PLLx reference input clock divide frequency ratio
      FREFDIV        : RCC_PLL3CFGR2_FREFDIV_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  PLLx VCO multiplication factor
      FBDIV          : RCC_PLL3CFGR2_FBDIV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL3CFGR2_Register use record
      FREFDIV        at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      FBDIV          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype RCC_PLL3CFGR3_FRACIN_Field is HAL.UInt24;

   --  RCC PLL3 configuration register 3
   type RCC_PLL3CFGR3_Register is record
      --  Fractional part of PLLx VCO multiplication factor
      FRACIN         : RCC_PLL3CFGR3_FRACIN_Field := 16#0#;
      --  PLLx VCO frequency modulation mode
      DOWNSPREAD     : Boolean := False;
      --  PLLx noise canceling DAC enable in fractional mode
      DACEN          : Boolean := False;
      --  PLLx spread-spectrum modulator enable
      SSCGDIS        : Boolean := True;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL3CFGR3_Register use record
      FRACIN         at 0 range 0 .. 23;
      DOWNSPREAD     at 0 range 24 .. 24;
      DACEN          at 0 range 25 .. 25;
      SSCGDIS        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  RCC PLL3 configuration register 4
   type RCC_PLL3CFGR4_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  PLLx delta-sigma modulator enable
      DSMEN          : Boolean := False;
      --  PLLx output and post divider enable
      FOUTPOSTDIVEN  : Boolean := True;
      --  PLLx FOUTPOSTDIV bypass
      BYPASS         : Boolean := True;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL3CFGR4_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DSMEN          at 0 range 8 .. 8;
      FOUTPOSTDIVEN  at 0 range 9 .. 9;
      BYPASS         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype RCC_PLL3CFGR5_DIVVAL_Field is HAL.UInt4;
   subtype RCC_PLL3CFGR5_SPREAD_Field is HAL.UInt5;

   --  RCC PLL3 configuration register 5
   type RCC_PLL3CFGR5_Register is record
      --  Modulation frequency adjustment for PLLx
      DIVVAL         : RCC_PLL3CFGR5_DIVVAL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Modulation depth adjustment for PLLx
      SPREAD         : RCC_PLL3CFGR5_SPREAD_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL3CFGR5_Register use record
      DIVVAL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SPREAD         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RCC_PLL3CFGR6_POSTDIV1_Field is HAL.UInt3;

   --  RCC PLL3 configuration register 6
   type RCC_PLL3CFGR6_Register is record
      --  PLLx VCO frequency divide level 1
      POSTDIV1      : RCC_PLL3CFGR6_POSTDIV1_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL3CFGR6_Register use record
      POSTDIV1      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RCC_PLL3CFGR7_POSTDIV2_Field is HAL.UInt3;

   --  RCC PLL3 configuration register 7
   type RCC_PLL3CFGR7_Register is record
      --  PLLx VCO frequency divide level 2
      POSTDIV2      : RCC_PLL3CFGR7_POSTDIV2_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL3CFGR7_Register use record
      POSTDIV2      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RCC_HSIFMONCR_HSIREF_Field is HAL.UInt11;
   subtype RCC_HSIFMONCR_HSIDEV_Field is HAL.UInt6;

   --  RCC HSI frequency monitoring control register
   type RCC_HSIFMONCR_Register is record
      --  HSI clock count reference value
      HSIREF         : RCC_HSIFMONCR_HSIREF_Field := 16#7A1#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  HSI clock period monitor enable
      HSIMONEN       : Boolean := False;
      --  HSI clock count deviation value
      HSIDEV         : RCC_HSIFMONCR_HSIDEV_Field := 16#1F#;
      --  unspecified
      Reserved_22_29 : HAL.UInt8 := 16#0#;
      --  HSI clock period monitor interrupt enable
      HSIMONIE       : Boolean := False;
      --  HSI clock period monitor interrupt flag
      HSIMONF        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HSIFMONCR_Register use record
      HSIREF         at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      HSIMONEN       at 0 range 15 .. 15;
      HSIDEV         at 0 range 16 .. 21;
      Reserved_22_29 at 0 range 22 .. 29;
      HSIMONIE       at 0 range 30 .. 30;
      HSIMONF        at 0 range 31 .. 31;
   end record;

   subtype RCC_HSIFVALR_HSIVAL_Field is HAL.UInt11;

   --  RCC HSI frequency value register
   type RCC_HSIFVALR_Register is record
      --  Read-only. HSI clock-cycle counter value
      HSIVAL         : RCC_HSIFVALR_HSIVAL_Field;
      --  unspecified
      Reserved_11_31 : HAL.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HSIFVALR_Register use record
      HSIVAL         at 0 range 0 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  RCC TIM1 configuration register
   type RCC_TIM1CFGR_Register is record
      --  TIM1 reset
      TIM1RST       : Boolean := False;
      --  TIM1 clock enable
      TIM1EN        : Boolean := False;
      --  TIM1 clock enable during CSleep
      TIM1LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM1CFGR_Register use record
      TIM1RST       at 0 range 0 .. 0;
      TIM1EN        at 0 range 1 .. 1;
      TIM1LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM2 configuration register
   type RCC_TIM2CFGR_Register is record
      --  TIM2 reset
      TIM2RST       : Boolean := False;
      --  TIM2 clock enable
      TIM2EN        : Boolean := False;
      --  TIM2 clock enable during CSleep
      TIM2LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM2CFGR_Register use record
      TIM2RST       at 0 range 0 .. 0;
      TIM2EN        at 0 range 1 .. 1;
      TIM2LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM3 configuration register
   type RCC_TIM3CFGR_Register is record
      --  TIM3 reset
      TIM3RST       : Boolean := False;
      --  TIM3 clock enable
      TIM3EN        : Boolean := False;
      --  TIM3 clock enable during CSleep
      TIM3LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM3CFGR_Register use record
      TIM3RST       at 0 range 0 .. 0;
      TIM3EN        at 0 range 1 .. 1;
      TIM3LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM4 configuration register
   type RCC_TIM4CFGR_Register is record
      --  TIM4 reset
      TIM4RST       : Boolean := False;
      --  TIM4 clock enable
      TIM4EN        : Boolean := False;
      --  TIM4 clock enable during CSleep
      TIM4LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM4CFGR_Register use record
      TIM4RST       at 0 range 0 .. 0;
      TIM4EN        at 0 range 1 .. 1;
      TIM4LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM5 configuration register
   type RCC_TIM5CFGR_Register is record
      --  TIM5 reset
      TIM5RST       : Boolean := False;
      --  TIM5 clock enable
      TIM5EN        : Boolean := False;
      --  TIM5 clock enable during CSleep
      TIM5LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM5CFGR_Register use record
      TIM5RST       at 0 range 0 .. 0;
      TIM5EN        at 0 range 1 .. 1;
      TIM5LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM6 configuration register
   type RCC_TIM6CFGR_Register is record
      --  TIM6 reset
      TIM6RST       : Boolean := False;
      --  TIM6 clock enable
      TIM6EN        : Boolean := False;
      --  TIM6 clock enable during CSleep
      TIM6LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM6CFGR_Register use record
      TIM6RST       at 0 range 0 .. 0;
      TIM6EN        at 0 range 1 .. 1;
      TIM6LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM7 configuration register
   type RCC_TIM7CFGR_Register is record
      --  TIM7 reset
      TIM7RST       : Boolean := False;
      --  TIM7 clock enable
      TIM7EN        : Boolean := False;
      --  TIM7 clock enable during CSleep
      TIM7LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM7CFGR_Register use record
      TIM7RST       at 0 range 0 .. 0;
      TIM7EN        at 0 range 1 .. 1;
      TIM7LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM8 configuration register
   type RCC_TIM8CFGR_Register is record
      --  TIM8 reset
      TIM8RST       : Boolean := False;
      --  TIM8 clock enable
      TIM8EN        : Boolean := False;
      --  TIM8 clock enable during CSleep
      TIM8LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM8CFGR_Register use record
      TIM8RST       at 0 range 0 .. 0;
      TIM8EN        at 0 range 1 .. 1;
      TIM8LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM10 configuration register
   type RCC_TIM10CFGR_Register is record
      --  TIM10 reset
      TIM10RST      : Boolean := False;
      --  TIM10 clock enable
      TIM10EN       : Boolean := False;
      --  TIM10 clock enable during CSleep
      TIM10LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM10CFGR_Register use record
      TIM10RST      at 0 range 0 .. 0;
      TIM10EN       at 0 range 1 .. 1;
      TIM10LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM11 configuration register
   type RCC_TIM11CFGR_Register is record
      --  TIM11 reset
      TIM11RST      : Boolean := False;
      --  TIM11 clock enable
      TIM11EN       : Boolean := False;
      --  TIM11 clock enable during CSleep
      TIM11LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM11CFGR_Register use record
      TIM11RST      at 0 range 0 .. 0;
      TIM11EN       at 0 range 1 .. 1;
      TIM11LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM12 configuration register
   type RCC_TIM12CFGR_Register is record
      --  TIM12 reset
      TIM12RST      : Boolean := False;
      --  TIM12 clock enable
      TIM12EN       : Boolean := False;
      --  TIM12 clock enable during CSleep
      TIM12LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM12CFGR_Register use record
      TIM12RST      at 0 range 0 .. 0;
      TIM12EN       at 0 range 1 .. 1;
      TIM12LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM13 configuration register
   type RCC_TIM13CFGR_Register is record
      --  TIM13 reset
      TIM13RST      : Boolean := False;
      --  TIM13 clock enable
      TIM13EN       : Boolean := False;
      --  TIM13 clock enable during CSleep
      TIM13LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM13CFGR_Register use record
      TIM13RST      at 0 range 0 .. 0;
      TIM13EN       at 0 range 1 .. 1;
      TIM13LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM14 configuration register
   type RCC_TIM14CFGR_Register is record
      --  TIM14 reset
      TIM14RST      : Boolean := False;
      --  TIM14 clock enable
      TIM14EN       : Boolean := False;
      --  TIM14 clock enable during CSleep
      TIM14LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM14CFGR_Register use record
      TIM14RST      at 0 range 0 .. 0;
      TIM14EN       at 0 range 1 .. 1;
      TIM14LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM15 configuration register
   type RCC_TIM15CFGR_Register is record
      --  TIM15 reset
      TIM15RST      : Boolean := False;
      --  TIM15 clock enable
      TIM15EN       : Boolean := False;
      --  TIM15 clock enable during CSleep
      TIM15LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM15CFGR_Register use record
      TIM15RST      at 0 range 0 .. 0;
      TIM15EN       at 0 range 1 .. 1;
      TIM15LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM16 configuration register
   type RCC_TIM16CFGR_Register is record
      --  TIM16 reset
      TIM16RST      : Boolean := False;
      --  TIM16 clock enable
      TIM16EN       : Boolean := False;
      --  TIM16 clock enable during CSleep
      TIM16LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM16CFGR_Register use record
      TIM16RST      at 0 range 0 .. 0;
      TIM16EN       at 0 range 1 .. 1;
      TIM16LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM17 configuration register
   type RCC_TIM17CFGR_Register is record
      --  TIM17 reset
      TIM17RST      : Boolean := False;
      --  TIM17 clock enable
      TIM17EN       : Boolean := False;
      --  TIM17 clock enable during CSleep
      TIM17LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM17CFGR_Register use record
      TIM17RST      at 0 range 0 .. 0;
      TIM17EN       at 0 range 1 .. 1;
      TIM17LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC TIM20 configuration register
   type RCC_TIM20CFGR_Register is record
      --  TIM20 reset
      TIM20RST      : Boolean := False;
      --  TIM20 clock enable
      TIM20EN       : Boolean := False;
      --  TIM20 clock enable during CSleep
      TIM20LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_TIM20CFGR_Register use record
      TIM20RST      at 0 range 0 .. 0;
      TIM20EN       at 0 range 1 .. 1;
      TIM20LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC LPTIM1 configuration register
   type RCC_LPTIM1CFGR_Register is record
      --  LPTIM1 reset
      LPTIM1RST     : Boolean := False;
      --  LPTIM1 clock enable
      LPTIM1EN      : Boolean := False;
      --  LPTIM1 clock enable during CSleep
      LPTIM1LPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LPTIM1CFGR_Register use record
      LPTIM1RST     at 0 range 0 .. 0;
      LPTIM1EN      at 0 range 1 .. 1;
      LPTIM1LPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC LPTIM2 configuration register
   type RCC_LPTIM2CFGR_Register is record
      --  LPTIM2 reset
      LPTIM2RST     : Boolean := False;
      --  LPTIM2 clock enable
      LPTIM2EN      : Boolean := False;
      --  LPTIM2 clock enable during CSleep
      LPTIM2LPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LPTIM2CFGR_Register use record
      LPTIM2RST     at 0 range 0 .. 0;
      LPTIM2EN      at 0 range 1 .. 1;
      LPTIM2LPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC LPTIM3 configuration register
   type RCC_LPTIM3CFGR_Register is record
      --  LPTIM3 reset
      LPTIM3RST     : Boolean := False;
      --  LPTIM3 clock enable
      LPTIM3EN      : Boolean := False;
      --  LPTIM3 clock enable during CSleep
      LPTIM3LPEN    : Boolean := True;
      --  LPTIM3 autonomous clock mode enable
      LPTIM3AMEN    : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LPTIM3CFGR_Register use record
      LPTIM3RST     at 0 range 0 .. 0;
      LPTIM3EN      at 0 range 1 .. 1;
      LPTIM3LPEN    at 0 range 2 .. 2;
      LPTIM3AMEN    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC LPTIM4 configuration register
   type RCC_LPTIM4CFGR_Register is record
      --  LPTIM4 reset
      LPTIM4RST     : Boolean := False;
      --  LPTIM4 clock enable
      LPTIM4EN      : Boolean := False;
      --  LPTIM4 clock enable during CSleep
      LPTIM4LPEN    : Boolean := True;
      --  LPTIM4 autonomous clock mode enable
      LPTIM4AMEN    : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LPTIM4CFGR_Register use record
      LPTIM4RST     at 0 range 0 .. 0;
      LPTIM4EN      at 0 range 1 .. 1;
      LPTIM4LPEN    at 0 range 2 .. 2;
      LPTIM4AMEN    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC LPTIM5 configuration register
   type RCC_LPTIM5CFGR_Register is record
      --  LPTIM5 reset
      LPTIM5RST     : Boolean := False;
      --  LPTIM5 clock enable
      LPTIM5EN      : Boolean := False;
      --  LPTIM5 clock enable during CSleep
      LPTIM5LPEN    : Boolean := True;
      --  LPTIM5 autonomous clock mode enable
      LPTIM5AMEN    : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LPTIM5CFGR_Register use record
      LPTIM5RST     at 0 range 0 .. 0;
      LPTIM5EN      at 0 range 1 .. 1;
      LPTIM5LPEN    at 0 range 2 .. 2;
      LPTIM5AMEN    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC SPI1 configuration register
   type RCC_SPI1CFGR_Register is record
      --  SPI1 reset
      SPI1RST       : Boolean := False;
      --  SPI1 clock enable
      SPI1EN        : Boolean := False;
      --  SPI1 clock enable during CSleep
      SPI1LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SPI1CFGR_Register use record
      SPI1RST       at 0 range 0 .. 0;
      SPI1EN        at 0 range 1 .. 1;
      SPI1LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SPI2 configuration register
   type RCC_SPI2CFGR_Register is record
      --  SPI2 reset
      SPI2RST       : Boolean := False;
      --  SPI2 clock enable
      SPI2EN        : Boolean := False;
      --  SPI2 clock enable during CSleep
      SPI2LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SPI2CFGR_Register use record
      SPI2RST       at 0 range 0 .. 0;
      SPI2EN        at 0 range 1 .. 1;
      SPI2LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SPI3 configuration register
   type RCC_SPI3CFGR_Register is record
      --  SPI3 reset
      SPI3RST       : Boolean := False;
      --  SPI3 clock enable
      SPI3EN        : Boolean := False;
      --  SPI3 clock enable during CSleep
      SPI3LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SPI3CFGR_Register use record
      SPI3RST       at 0 range 0 .. 0;
      SPI3EN        at 0 range 1 .. 1;
      SPI3LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SPI4 configuration register
   type RCC_SPI4CFGR_Register is record
      --  SPI4 reset
      SPI4RST       : Boolean := False;
      --  SPI4 clock enable
      SPI4EN        : Boolean := False;
      --  SPI4 clock enable during CSleep
      SPI4LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SPI4CFGR_Register use record
      SPI4RST       at 0 range 0 .. 0;
      SPI4EN        at 0 range 1 .. 1;
      SPI4LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SPI5 configuration register
   type RCC_SPI5CFGR_Register is record
      --  SPI5 reset
      SPI5RST       : Boolean := False;
      --  SPI5 clock enable
      SPI5EN        : Boolean := False;
      --  SPI5 clock enable during CSleep
      SPI5LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SPI5CFGR_Register use record
      SPI5RST       at 0 range 0 .. 0;
      SPI5EN        at 0 range 1 .. 1;
      SPI5LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SPI6 configuration register
   type RCC_SPI6CFGR_Register is record
      --  SPI6 reset
      SPI6RST       : Boolean := False;
      --  SPI6 clock enable
      SPI6EN        : Boolean := False;
      --  SPI6 clock enable during CSleep
      SPI6LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SPI6CFGR_Register use record
      SPI6RST       at 0 range 0 .. 0;
      SPI6EN        at 0 range 1 .. 1;
      SPI6LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SPI7 configuration register
   type RCC_SPI7CFGR_Register is record
      --  SPI7 reset
      SPI7RST       : Boolean := False;
      --  SPI7 clock enable
      SPI7EN        : Boolean := False;
      --  SPI7 clock enable during CSleep
      SPI7LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SPI7CFGR_Register use record
      SPI7RST       at 0 range 0 .. 0;
      SPI7EN        at 0 range 1 .. 1;
      SPI7LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SPI8 configuration register
   type RCC_SPI8CFGR_Register is record
      --  SPI8 reset
      SPI8RST       : Boolean := False;
      --  SPI8 clock enable
      SPI8EN        : Boolean := False;
      --  SPI8 clock enable during CSleep
      SPI8LPEN      : Boolean := True;
      --  SPI8 autonomous clock mode enable
      SPI8AMEN      : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SPI8CFGR_Register use record
      SPI8RST       at 0 range 0 .. 0;
      SPI8EN        at 0 range 1 .. 1;
      SPI8LPEN      at 0 range 2 .. 2;
      SPI8AMEN      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC SPDIFRX configuration register
   type RCC_SPDIFRXCFGR_Register is record
      --  SPDIFRX reset
      SPDIFRXRST    : Boolean := False;
      --  SPDIFRX clock enable
      SPDIFRXEN     : Boolean := False;
      --  SPDIFRX clock enable during CSleep
      SPDIFRXLPEN   : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SPDIFRXCFGR_Register use record
      SPDIFRXRST    at 0 range 0 .. 0;
      SPDIFRXEN     at 0 range 1 .. 1;
      SPDIFRXLPEN   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC USART1 configuration register
   type RCC_USART1CFGR_Register is record
      --  USART1 reset
      USART1RST     : Boolean := False;
      --  USART1 clock enable
      USART1EN      : Boolean := False;
      --  USART1 clock enable during CSleep
      USART1LPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_USART1CFGR_Register use record
      USART1RST     at 0 range 0 .. 0;
      USART1EN      at 0 range 1 .. 1;
      USART1LPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC USART2 configuration register
   type RCC_USART2CFGR_Register is record
      --  USART2 reset
      USART2RST     : Boolean := False;
      --  USART2 clock enable
      USART2EN      : Boolean := False;
      --  USART2 clock enable during CSleep
      USART2LPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_USART2CFGR_Register use record
      USART2RST     at 0 range 0 .. 0;
      USART2EN      at 0 range 1 .. 1;
      USART2LPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC USART3 configuration register
   type RCC_USART3CFGR_Register is record
      --  USART3 reset
      USART3RST     : Boolean := False;
      --  USART3 clock enable
      USART3EN      : Boolean := False;
      --  USART3 clock enable during CSleep
      USART3LPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_USART3CFGR_Register use record
      USART3RST     at 0 range 0 .. 0;
      USART3EN      at 0 range 1 .. 1;
      USART3LPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC UART4 configuration register
   type RCC_UART4CFGR_Register is record
      --  UART4 reset
      UART4RST      : Boolean := False;
      --  UART4 clock enable
      UART4EN       : Boolean := False;
      --  UART4 clock enable during CSleep
      UART4LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_UART4CFGR_Register use record
      UART4RST      at 0 range 0 .. 0;
      UART4EN       at 0 range 1 .. 1;
      UART4LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC UART5 configuration register
   type RCC_UART5CFGR_Register is record
      --  UART5 reset
      UART5RST      : Boolean := False;
      --  UART5 clock enable
      UART5EN       : Boolean := False;
      --  UART5 clock enable during CSleep
      UART5LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_UART5CFGR_Register use record
      UART5RST      at 0 range 0 .. 0;
      UART5EN       at 0 range 1 .. 1;
      UART5LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC USART6 configuration register
   type RCC_USART6CFGR_Register is record
      --  USART6 reset
      USART6RST     : Boolean := False;
      --  USART6 clock enable
      USART6EN      : Boolean := False;
      --  USART6 clock enable during CSleep
      USART6LPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_USART6CFGR_Register use record
      USART6RST     at 0 range 0 .. 0;
      USART6EN      at 0 range 1 .. 1;
      USART6LPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC UART7 configuration register
   type RCC_UART7CFGR_Register is record
      --  UART7 reset
      UART7RST      : Boolean := False;
      --  UART7 clock enable
      UART7EN       : Boolean := False;
      --  UART7 clock enable during CSleep
      UART7LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_UART7CFGR_Register use record
      UART7RST      at 0 range 0 .. 0;
      UART7EN       at 0 range 1 .. 1;
      UART7LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC UART8 configuration register
   type RCC_UART8CFGR_Register is record
      --  UART8 reset
      UART8RST      : Boolean := False;
      --  UART8 clock enable
      UART8EN       : Boolean := False;
      --  UART8 clock enable during CSleep
      UART8LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_UART8CFGR_Register use record
      UART8RST      at 0 range 0 .. 0;
      UART8EN       at 0 range 1 .. 1;
      UART8LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC UART9 configuration register
   type RCC_UART9CFGR_Register is record
      --  UART9 reset
      UART9RST      : Boolean := False;
      --  UART9 clock enable
      UART9EN       : Boolean := False;
      --  UART9 clock enable during CSleep
      UART9LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_UART9CFGR_Register use record
      UART9RST      at 0 range 0 .. 0;
      UART9EN       at 0 range 1 .. 1;
      UART9LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC LPUART1 configuration register
   type RCC_LPUART1CFGR_Register is record
      --  LPUART1 reset
      LPUART1RST    : Boolean := False;
      --  LPUART1 clock enable
      LPUART1EN     : Boolean := False;
      --  LPUART1 clock enable during CSleep
      LPUART1LPEN   : Boolean := True;
      --  LPUART1 autonomous clock mode enable
      LPUART1AMEN   : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LPUART1CFGR_Register use record
      LPUART1RST    at 0 range 0 .. 0;
      LPUART1EN     at 0 range 1 .. 1;
      LPUART1LPEN   at 0 range 2 .. 2;
      LPUART1AMEN   at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC I2C1 configuration register
   type RCC_I2C1CFGR_Register is record
      --  I2C1 reset
      I2C1RST       : Boolean := False;
      --  I2C1 clock enable
      I2C1EN        : Boolean := False;
      --  I2C1 clock enable during CSleep
      I2C1LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_I2C1CFGR_Register use record
      I2C1RST       at 0 range 0 .. 0;
      I2C1EN        at 0 range 1 .. 1;
      I2C1LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC I2C2 configuration register
   type RCC_I2C2CFGR_Register is record
      --  I2C2 reset
      I2C2RST       : Boolean := False;
      --  I2C2 clock enable
      I2C2EN        : Boolean := False;
      --  I2C2 clock enable during CSleep
      I2C2LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_I2C2CFGR_Register use record
      I2C2RST       at 0 range 0 .. 0;
      I2C2EN        at 0 range 1 .. 1;
      I2C2LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC I2C3 configuration register
   type RCC_I2C3CFGR_Register is record
      --  I2C3 reset
      I2C3RST       : Boolean := False;
      --  I2C3 clock enable
      I2C3EN        : Boolean := False;
      --  I2C3 clock enable during CSleep
      I2C3LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_I2C3CFGR_Register use record
      I2C3RST       at 0 range 0 .. 0;
      I2C3EN        at 0 range 1 .. 1;
      I2C3LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC I2C4 configuration register
   type RCC_I2C4CFGR_Register is record
      --  I2C4 reset
      I2C4RST       : Boolean := False;
      --  I2C4 clock enable
      I2C4EN        : Boolean := False;
      --  I2C4 clock enable during CSleep
      I2C4LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_I2C4CFGR_Register use record
      I2C4RST       at 0 range 0 .. 0;
      I2C4EN        at 0 range 1 .. 1;
      I2C4LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC I2C5 configuration register
   type RCC_I2C5CFGR_Register is record
      --  I2C5 reset
      I2C5RST       : Boolean := False;
      --  I2C5 clock enable
      I2C5EN        : Boolean := False;
      --  I2C5 clock enable during CSleep
      I2C5LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_I2C5CFGR_Register use record
      I2C5RST       at 0 range 0 .. 0;
      I2C5EN        at 0 range 1 .. 1;
      I2C5LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC I2C6 configuration register
   type RCC_I2C6CFGR_Register is record
      --  I2C6 reset
      I2C6RST       : Boolean := False;
      --  I2C6 clock enable
      I2C6EN        : Boolean := False;
      --  I2C6 clock enable during CSleep
      I2C6LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_I2C6CFGR_Register use record
      I2C6RST       at 0 range 0 .. 0;
      I2C6EN        at 0 range 1 .. 1;
      I2C6LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC I2C7 configuration register
   type RCC_I2C7CFGR_Register is record
      --  I2C7 reset
      I2C7RST       : Boolean := False;
      --  I2C7 clock enable
      I2C7EN        : Boolean := False;
      --  I2C7 clock enable during CSleep
      I2C7LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_I2C7CFGR_Register use record
      I2C7RST       at 0 range 0 .. 0;
      I2C7EN        at 0 range 1 .. 1;
      I2C7LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC I2C8 configuration register
   type RCC_I2C8CFGR_Register is record
      --  I2C8 reset
      I2C8RST       : Boolean := False;
      --  I2C8 peripheral clocks enable
      I2C8EN        : Boolean := False;
      --  I2C8 peripheral clocks enable during CSleep mode
      I2C8LPEN      : Boolean := True;
      --  I2C8 autonomous clock mode enable
      I2C8AMEN      : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_I2C8CFGR_Register use record
      I2C8RST       at 0 range 0 .. 0;
      I2C8EN        at 0 range 1 .. 1;
      I2C8LPEN      at 0 range 2 .. 2;
      I2C8AMEN      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC SAI1 configuration register
   type RCC_SAI1CFGR_Register is record
      --  SAI1 reset
      SAI1RST       : Boolean := False;
      --  SAI1 clock enable
      SAI1EN        : Boolean := False;
      --  SAI1 clock enable during CSleep
      SAI1LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SAI1CFGR_Register use record
      SAI1RST       at 0 range 0 .. 0;
      SAI1EN        at 0 range 1 .. 1;
      SAI1LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SAI2 configuration register
   type RCC_SAI2CFGR_Register is record
      --  SAI2 reset
      SAI2RST       : Boolean := False;
      --  SAI2 clock enable
      SAI2EN        : Boolean := False;
      --  SAI2 clock enable during CSleep
      SAI2LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SAI2CFGR_Register use record
      SAI2RST       at 0 range 0 .. 0;
      SAI2EN        at 0 range 1 .. 1;
      SAI2LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SAI3 configuration register
   type RCC_SAI3CFGR_Register is record
      --  SAI3 reset
      SAI3RST       : Boolean := False;
      --  SAI3 clock enable
      SAI3EN        : Boolean := False;
      --  SAI3 clock enable during CSleep
      SAI3LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SAI3CFGR_Register use record
      SAI3RST       at 0 range 0 .. 0;
      SAI3EN        at 0 range 1 .. 1;
      SAI3LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SAI4 configuration register
   type RCC_SAI4CFGR_Register is record
      --  SAI4 reset
      SAI4RST       : Boolean := False;
      --  SAI4 clock enable
      SAI4EN        : Boolean := False;
      --  SAI4 clock enable during CSleep
      SAI4LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SAI4CFGR_Register use record
      SAI4RST       at 0 range 0 .. 0;
      SAI4EN        at 0 range 1 .. 1;
      SAI4LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC MDF1 configuration register
   type RCC_MDF1CFGR_Register is record
      --  MDF1 reset
      MDF1RST       : Boolean := False;
      --  MDF1 clock enable
      MDF1EN        : Boolean := False;
      --  MDF1 clock enable during CSleep
      MDF1LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MDF1CFGR_Register use record
      MDF1RST       at 0 range 0 .. 0;
      MDF1EN        at 0 range 1 .. 1;
      MDF1LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC ADF1 configuration register
   type RCC_ADF1CFGR_Register is record
      --  ADF1 reset
      ADF1RST       : Boolean := False;
      --  ADF1 clock enable
      ADF1EN        : Boolean := False;
      --  ADF1 clock enable during CSleep
      ADF1LPEN      : Boolean := True;
      --  ADF1 autonomous clock mode enable
      ADF1AMEN      : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ADF1CFGR_Register use record
      ADF1RST       at 0 range 0 .. 0;
      ADF1EN        at 0 range 1 .. 1;
      ADF1LPEN      at 0 range 2 .. 2;
      ADF1AMEN      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC FDCAN configuration register
   type RCC_FDCANCFGR_Register is record
      --  FDCAN reset
      FDCANRST      : Boolean := False;
      --  FDCAN clock enable
      FDCANEN       : Boolean := False;
      --  FDCAN clock enable during CSleep
      FDCANLPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FDCANCFGR_Register use record
      FDCANRST      at 0 range 0 .. 0;
      FDCANEN       at 0 range 1 .. 1;
      FDCANLPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC HDP configuration register
   type RCC_HDPCFGR_Register is record
      --  HDP reset
      HDPRST        : Boolean := False;
      --  HDP clock enable
      HDPEN         : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HDPCFGR_Register use record
      HDPRST        at 0 range 0 .. 0;
      HDPEN         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RCC ADC12 configuration register
   type RCC_ADC12CFGR_Register is record
      --  ADC12 reset
      ADC12RST       : Boolean := False;
      --  ADC12 clock enable
      ADC12EN        : Boolean := False;
      --  ADC12 clock enable during CSleep
      ADC12LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_11  : HAL.UInt9 := 16#0#;
      --  ADC12 kernel clock source selection
      ADC12KERSEL    : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ADC12CFGR_Register use record
      ADC12RST       at 0 range 0 .. 0;
      ADC12EN        at 0 range 1 .. 1;
      ADC12LPEN      at 0 range 2 .. 2;
      Reserved_3_11  at 0 range 3 .. 11;
      ADC12KERSEL    at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype RCC_ADC3CFGR_ADC3KERSEL_Field is HAL.UInt2;

   --  RCC ADC3 configuration register
   type RCC_ADC3CFGR_Register is record
      --  ADC3 reset
      ADC3RST        : Boolean := False;
      --  ADC3 clock enable
      ADC3EN         : Boolean := False;
      --  ADC3 clock enable during CSleep
      ADC3LPEN       : Boolean := True;
      --  unspecified
      Reserved_3_11  : HAL.UInt9 := 16#0#;
      --  ADC3 kernel clock source select
      ADC3KERSEL     : RCC_ADC3CFGR_ADC3KERSEL_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ADC3CFGR_Register use record
      ADC3RST        at 0 range 0 .. 0;
      ADC3EN         at 0 range 1 .. 1;
      ADC3LPEN       at 0 range 2 .. 2;
      Reserved_3_11  at 0 range 3 .. 11;
      ADC3KERSEL     at 0 range 12 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RCC Ethernet 1 configuration register
   type RCC_ETH1CFGR_Register is record
      --  Ethernet 1 reset
      ETH1RST        : Boolean := False;
      --  Ethernet 1 bus clock enable
      ETH1MACEN      : Boolean := False;
      --  Ethernet 1 bus clock enable during CSleep
      ETH1MACLPEN    : Boolean := True;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Ethernet 1 kernel clocks enable during CStop
      ETH1STPEN      : Boolean := False;
      --  Ethernet 1 kernel clock enable
      ETH1EN         : Boolean := False;
      --  Ethernet 1 kernel clock enable during CSleep
      ETH1LPEN       : Boolean := True;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Ethernet 1 transmission clock enable
      ETH1TXEN       : Boolean := False;
      --  Ethernet 1 transmission clock enable during CSleep
      ETH1TXLPEN     : Boolean := True;
      --  Ethernet 1 reception clock enable
      ETH1RXEN       : Boolean := False;
      --  Ethernet 1 reception clock enable during CSleep
      ETH1RXLPEN     : Boolean := True;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ETH1CFGR_Register use record
      ETH1RST        at 0 range 0 .. 0;
      ETH1MACEN      at 0 range 1 .. 1;
      ETH1MACLPEN    at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ETH1STPEN      at 0 range 4 .. 4;
      ETH1EN         at 0 range 5 .. 5;
      ETH1LPEN       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ETH1TXEN       at 0 range 8 .. 8;
      ETH1TXLPEN     at 0 range 9 .. 9;
      ETH1RXEN       at 0 range 10 .. 10;
      ETH1RXLPEN     at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  RCC Ethernet 2 configuration register
   type RCC_ETH2CFGR_Register is record
      --  Ethernet 2 reset
      ETH2RST        : Boolean := False;
      --  Ethernet 2 bus clock enable
      ETH2MACEN      : Boolean := False;
      --  Ethernet 2 bus clock enable during CSleep
      ETH2MACLPEN    : Boolean := True;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Ethernet 2 kernel clocks enable during CStop
      ETH2STPEN      : Boolean := False;
      --  Ethernet 2 kernel clocks enable
      ETH2EN         : Boolean := False;
      --  Ethernet 2 kernel clocks enable during CSleep
      ETH2LPEN       : Boolean := True;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Ethernet 2 transmission clock enable
      ETH2TXEN       : Boolean := False;
      --  Ethernet 2 transmission clock enable during CSleep mode
      ETH2TXLPEN     : Boolean := True;
      --  Ethernet 2 reception clock enable
      ETH2RXEN       : Boolean := False;
      --  Ethernet 2 reception clock enable during CSleep
      ETH2RXLPEN     : Boolean := True;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ETH2CFGR_Register use record
      ETH2RST        at 0 range 0 .. 0;
      ETH2MACEN      at 0 range 1 .. 1;
      ETH2MACLPEN    at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ETH2STPEN      at 0 range 4 .. 4;
      ETH2EN         at 0 range 5 .. 5;
      ETH2LPEN       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ETH2TXEN       at 0 range 8 .. 8;
      ETH2TXLPEN     at 0 range 9 .. 9;
      ETH2RXEN       at 0 range 10 .. 10;
      ETH2RXLPEN     at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  RCC USBH configuration register
   type RCC_USBHCFGR_Register is record
      --  USBH reset
      USBHRST       : Boolean := False;
      --  USBH peripheral clock enable
      USBHEN        : Boolean := False;
      --  USBH clock enable during CSleep
      USBHLPEN      : Boolean := True;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  USBH clock enable during CStop
      USBHSTPEN     : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_USBHCFGR_Register use record
      USBHRST       at 0 range 0 .. 0;
      USBHEN        at 0 range 1 .. 1;
      USBHLPEN      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      USBHSTPEN     at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC USB2PHY1 configuration register
   type RCC_USB2PHY1CFGR_Register is record
      --  USB2PHY1 reset
      USB2PHY1RST      : Boolean := False;
      --  USB2PHY1 clock enable
      USB2PHY1EN       : Boolean := False;
      --  USB2PHY1 clock enable during CSleep
      USB2PHY1LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  USB2PHY1 reference clock enable during CStop
      USB2PHY1STPEN    : Boolean := False;
      --  unspecified
      Reserved_5_14    : HAL.UInt10 := 16#0#;
      --  USB2PHY1 reference clock selection
      USB2PHY1CKREFSEL : Boolean := False;
      --  unspecified
      Reserved_16_31   : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_USB2PHY1CFGR_Register use record
      USB2PHY1RST      at 0 range 0 .. 0;
      USB2PHY1EN       at 0 range 1 .. 1;
      USB2PHY1LPEN     at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      USB2PHY1STPEN    at 0 range 4 .. 4;
      Reserved_5_14    at 0 range 5 .. 14;
      USB2PHY1CKREFSEL at 0 range 15 .. 15;
      Reserved_16_31   at 0 range 16 .. 31;
   end record;

   --  RCC USB2PHY2 configuration register
   type RCC_USB2PHY2CFGR_Register is record
      --  USB2PHY2 reset
      USB2PHY2RST      : Boolean := False;
      --  USB2PHY2 clock enable
      USB2PHY2EN       : Boolean := False;
      --  USB2PHY2 clock enable during CSleep
      USB2PHY2LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  USB2PHY2 reference clock enable during CStop
      USB2PHY2STPEN    : Boolean := False;
      --  unspecified
      Reserved_5_14    : HAL.UInt10 := 16#0#;
      --  USB2PHY2 reference clock select
      USB2PHY2CKREFSEL : Boolean := False;
      --  unspecified
      Reserved_16_31   : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_USB2PHY2CFGR_Register use record
      USB2PHY2RST      at 0 range 0 .. 0;
      USB2PHY2EN       at 0 range 1 .. 1;
      USB2PHY2LPEN     at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      USB2PHY2STPEN    at 0 range 4 .. 4;
      Reserved_5_14    at 0 range 5 .. 14;
      USB2PHY2CKREFSEL at 0 range 15 .. 15;
      Reserved_16_31   at 0 range 16 .. 31;
   end record;

   --  RCC USB3DR configuration register
   type RCC_USB3DRCFGR_Register is record
      --  USB3DR reset
      USB3DRRST     : Boolean := False;
      --  USB3DR peripheral clocks enable
      USB3DREN      : Boolean := False;
      --  USB3DR clock enable during CSleep
      USB3DRLPEN    : Boolean := True;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  USB3DR clock enable during CStop
      USB3DRSTPEN   : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_USB3DRCFGR_Register use record
      USB3DRRST     at 0 range 0 .. 0;
      USB3DREN      at 0 range 1 .. 1;
      USB3DRLPEN    at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      USB3DRSTPEN   at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC USB3PCIEPHY configuration register
   type RCC_USB3PCIEPHYCFGR_Register is record
      --  USB3PCIEPHY reset
      USB3PCIEPHYRST      : Boolean := False;
      --  USB3PCIEPHY clock enable
      USB3PCIEPHYEN       : Boolean := False;
      --  USB3PCIEPHY clock enable during CSleep
      USB3PCIEPHYLPEN     : Boolean := True;
      --  unspecified
      Reserved_3_3        : HAL.Bit := 16#0#;
      --  USB3PCIEPHY reference clock enable during CStop
      USB3PCIEPHYSTPEN    : Boolean := False;
      --  unspecified
      Reserved_5_14       : HAL.UInt10 := 16#0#;
      --  USB3PCIEPHY reference clock selection
      USB3PCIEPHYCKREFSEL : Boolean := False;
      --  unspecified
      Reserved_16_31      : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_USB3PCIEPHYCFGR_Register use record
      USB3PCIEPHYRST      at 0 range 0 .. 0;
      USB3PCIEPHYEN       at 0 range 1 .. 1;
      USB3PCIEPHYLPEN     at 0 range 2 .. 2;
      Reserved_3_3        at 0 range 3 .. 3;
      USB3PCIEPHYSTPEN    at 0 range 4 .. 4;
      Reserved_5_14       at 0 range 5 .. 14;
      USB3PCIEPHYCKREFSEL at 0 range 15 .. 15;
      Reserved_16_31      at 0 range 16 .. 31;
   end record;

   --  RCC PCIE configuration register
   type RCC_PCIECFGR_Register is record
      --  PCIE reset
      PCIERST       : Boolean := False;
      --  PCIE clock enable
      PCIEEN        : Boolean := False;
      --  PCIE clock enable during CSleep
      PCIELPEN      : Boolean := True;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  PCIE clock enable during CStop
      PCIESTPEN     : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PCIECFGR_Register use record
      PCIERST       at 0 range 0 .. 0;
      PCIEEN        at 0 range 1 .. 1;
      PCIELPEN      at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      PCIESTPEN     at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC UCPD configuration register
   type RCC_UCPDCFGR_Register is record
      --  UCPD reset
      UCPDRST       : Boolean := False;
      --  UCPD clock enable
      UCPDEN        : Boolean := False;
      --  UCPD clock enable during CSleep
      UCPDLPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_UCPDCFGR_Register use record
      UCPDRST       at 0 range 0 .. 0;
      UCPDEN        at 0 range 1 .. 1;
      UCPDLPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC Ethernet switch configuration register
   type RCC_ETHSWCFGR_Register is record
      --  ETHSW reset
      ETHSWRST       : Boolean := False;
      --  ETHSW clock enable
      ETHSWMACEN     : Boolean := False;
      --  ETHSW clock enable during CSleep
      ETHSWMACLPEN   : Boolean := True;
      --  unspecified
      Reserved_3_4   : HAL.UInt2 := 16#0#;
      --  ETHSW ck_ker_ethsw kernel clock enable
      ETHSWEN        : Boolean := False;
      --  ETHSW ck_ker_ethsw kernel clock enable during CSleep
      ETHSWLPEN      : Boolean := True;
      --  unspecified
      Reserved_7_20  : HAL.UInt14 := 16#0#;
      --  ETHSW ck_ker_ethswref kernel clock enable
      ETHSWREFEN     : Boolean := False;
      --  ETHSW ck_ker_ethswref kernel clock enable during CSleep
      ETHSWREFLPEN   : Boolean := True;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ETHSWCFGR_Register use record
      ETHSWRST       at 0 range 0 .. 0;
      ETHSWMACEN     at 0 range 1 .. 1;
      ETHSWMACLPEN   at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      ETHSWEN        at 0 range 5 .. 5;
      ETHSWLPEN      at 0 range 6 .. 6;
      Reserved_7_20  at 0 range 7 .. 20;
      ETHSWREFEN     at 0 range 21 .. 21;
      ETHSWREFLPEN   at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  RCC Ethernet switch ACM configuration register
   type RCC_ETHSWACMCFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  ETHSW_ACM clock enable
      ETHSWACMEN    : Boolean := False;
      --  ETHSW_ACM clock enable during CSleep
      ETHSWACMLPEN  : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ETHSWACMCFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      ETHSWACMEN    at 0 range 1 .. 1;
      ETHSWACMLPEN  at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC Ethernet switch ACM message configuration register
   type RCC_ETHSWACMMSGCFGR_Register is record
      --  unspecified
      Reserved_0_0    : HAL.Bit := 16#0#;
      --  ETHSW_ACM message buffer clock enable
      ETHSWACMMSGEN   : Boolean := False;
      --  ETHSW_ACM message buffer clock enable during CSleep
      ETHSWACMMSGLPEN : Boolean := True;
      --  unspecified
      Reserved_3_31   : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_ETHSWACMMSGCFGR_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      ETHSWACMMSGEN   at 0 range 1 .. 1;
      ETHSWACMMSGLPEN at 0 range 2 .. 2;
      Reserved_3_31   at 0 range 3 .. 31;
   end record;

   --  RCC STGEN configuration register
   type RCC_STGENCFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  STGENRW and STGENRO clock enable
      STGENEN       : Boolean := False;
      --  STGENRW and STGENRO clock enable during CSleep
      STGENLPEN     : Boolean := True;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  STGENRW and STGENRO kernel clock enable during CStop
      STGENSTPEN    : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_STGENCFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      STGENEN       at 0 range 1 .. 1;
      STGENLPEN     at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      STGENSTPEN    at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  RCC SDMMC1 configuration register
   type RCC_SDMMC1CFGR_Register is record
      --  SDMMC1 reset
      SDMMC1RST      : Boolean := False;
      --  SDMMC1 clock enable
      SDMMC1EN       : Boolean := False;
      --  SDMMC1 clock enable during CSleep
      SDMMC1LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  SDMMC1 DLL reset
      SDMMC1DLLRST   : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SDMMC1CFGR_Register use record
      SDMMC1RST      at 0 range 0 .. 0;
      SDMMC1EN       at 0 range 1 .. 1;
      SDMMC1LPEN     at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      SDMMC1DLLRST   at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  RCC SDMMC2 configuration register
   type RCC_SDMMC2CFGR_Register is record
      --  SDMMC2 reset
      SDMMC2RST      : Boolean := False;
      --  SDMMC2 clock enable
      SDMMC2EN       : Boolean := False;
      --  SDMMC2 clock enable during CSleep
      SDMMC2LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  SDMMC2 DLL reset
      SDMMC2DLLRST   : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SDMMC2CFGR_Register use record
      SDMMC2RST      at 0 range 0 .. 0;
      SDMMC2EN       at 0 range 1 .. 1;
      SDMMC2LPEN     at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      SDMMC2DLLRST   at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  RCC SDMMC3 configuration register
   type RCC_SDMMC3CFGR_Register is record
      --  SDMMC3 block reset
      SDMMC3RST      : Boolean := False;
      --  SDMMC3 clock enable
      SDMMC3EN       : Boolean := False;
      --  SDMMC3 clock enable during CSleep
      SDMMC3LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
      --  SDMMC3 DLL reset
      SDMMC3DLLRST   : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SDMMC3CFGR_Register use record
      SDMMC3RST      at 0 range 0 .. 0;
      SDMMC3EN       at 0 range 1 .. 1;
      SDMMC3LPEN     at 0 range 2 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      SDMMC3DLLRST   at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  RCC GPU configuration register
   type RCC_GPUCFGR_Register is record
      --  GPU reset
      GPURST        : Boolean := False;
      --  GPU clock enable
      GPUEN         : Boolean := False;
      --  GPU clock enable during CSleep
      GPULPEN       : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_GPUCFGR_Register use record
      GPURST        at 0 range 0 .. 0;
      GPUEN         at 0 range 1 .. 1;
      GPULPEN       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC LTDC configuration register
   type RCC_LTDCCFGR_Register is record
      --  LTDC reset
      LTDCRST       : Boolean := False;
      --  LTDC peripheral clock enable
      LTDCEN        : Boolean := False;
      --  LTDC clock enable during CSleep
      LTDCLPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LTDCCFGR_Register use record
      LTDCRST       at 0 range 0 .. 0;
      LTDCEN        at 0 range 1 .. 1;
      LTDCLPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC DSI configuration register
   type RCC_DSICFGR_Register is record
      --  DSI reset
      DSIRST         : Boolean := False;
      --  DSI clock enable
      DSIEN          : Boolean := False;
      --  DSI clock enable during CSleep
      DSILPEN        : Boolean := True;
      --  unspecified
      Reserved_3_11  : HAL.UInt9 := 16#0#;
      --  DSI byte lane clock source selection
      DSIBLSEL       : Boolean := False;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  DSIPHY reference clock selection
      DSIPHYCKREFSEL : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DSICFGR_Register use record
      DSIRST         at 0 range 0 .. 0;
      DSIEN          at 0 range 1 .. 1;
      DSILPEN        at 0 range 2 .. 2;
      Reserved_3_11  at 0 range 3 .. 11;
      DSIBLSEL       at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      DSIPHYCKREFSEL at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RCC LVDS configuration register
   type RCC_LVDSCFGR_Register is record
      --  LVDS reset
      LVDSRST         : Boolean := False;
      --  LVDSPHY clock enable
      LVDSEN          : Boolean := False;
      --  LVDSPHY clock enable during CSleep
      LVDSLPEN        : Boolean := True;
      --  unspecified
      Reserved_3_14   : HAL.UInt12 := 16#0#;
      --  LVDSPHY reference clock select
      LVDSPHYCKREFSEL : Boolean := False;
      --  unspecified
      Reserved_16_31  : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_LVDSCFGR_Register use record
      LVDSRST         at 0 range 0 .. 0;
      LVDSEN          at 0 range 1 .. 1;
      LVDSLPEN        at 0 range 2 .. 2;
      Reserved_3_14   at 0 range 3 .. 14;
      LVDSPHYCKREFSEL at 0 range 15 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   --  RCC CSI configuration register
   type RCC_CSICFGR_Register is record
      --  CSI reset
      CSIRST        : Boolean := False;
      --  CSI clock enable
      CSIEN         : Boolean := False;
      --  CSI clock enable during CSleep
      CSILPEN       : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CSICFGR_Register use record
      CSIRST        at 0 range 0 .. 0;
      CSIEN         at 0 range 1 .. 1;
      CSILPEN       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC DCMIPP configuration register
   type RCC_DCMIPPCFGR_Register is record
      --  DCMIPP reset
      DCMIPPRST     : Boolean := False;
      --  DCMIPP clock enable
      DCMIPPEN      : Boolean := False;
      --  DCMIPP clock enable during CSleep
      DCMIPPLPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DCMIPPCFGR_Register use record
      DCMIPPRST     at 0 range 0 .. 0;
      DCMIPPEN      at 0 range 1 .. 1;
      DCMIPPLPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC CCI configuration register
   type RCC_CCICFGR_Register is record
      --  CCI reset
      CCIRST        : Boolean := False;
      --  CCI clock enable
      CCIEN         : Boolean := False;
      --  CCI clock enable during CSleep
      CCILPEN       : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CCICFGR_Register use record
      CCIRST        at 0 range 0 .. 0;
      CCIEN         at 0 range 1 .. 1;
      CCILPEN       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC VDEC configuration register
   type RCC_VDECCFGR_Register is record
      --  VDEC reset
      VDECRST       : Boolean := False;
      --  VDEC clock enable
      VDECEN        : Boolean := False;
      --  VDEC clock enable during CSleep
      VDECLPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_VDECCFGR_Register use record
      VDECRST       at 0 range 0 .. 0;
      VDECEN        at 0 range 1 .. 1;
      VDECLPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC VENC configuration register
   type RCC_VENCCFGR_Register is record
      --  VENC reset
      VENCRST       : Boolean := False;
      --  VENC clock enable
      VENCEN        : Boolean := False;
      --  VENC clock enable during CSleep
      VENCLPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_VENCCFGR_Register use record
      VENCRST       at 0 range 0 .. 0;
      VENCEN        at 0 range 1 .. 1;
      VENCLPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC RNG configuration register
   type RCC_RNGCFGR_Register is record
      --  RNG reset
      RNGRST        : Boolean := False;
      --  RNG clock enable
      RNGEN         : Boolean := False;
      --  RNG clock enable during CSleep
      RNGLPEN       : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_RNGCFGR_Register use record
      RNGRST        at 0 range 0 .. 0;
      RNGEN         at 0 range 1 .. 1;
      RNGLPEN       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC PKA configuration register
   type RCC_PKACFGR_Register is record
      --  PKA reset
      PKARST        : Boolean := False;
      --  PKA clock enable
      PKAEN         : Boolean := False;
      --  PKA clock enable during CSleep
      PKALPEN       : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PKACFGR_Register use record
      PKARST        at 0 range 0 .. 0;
      PKAEN         at 0 range 1 .. 1;
      PKALPEN       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SAES configuration register
   type RCC_SAESCFGR_Register is record
      --  SAES reset
      SAESRST       : Boolean := False;
      --  SAES clock enable
      SAESEN        : Boolean := False;
      --  SAES clock enable during CSleep
      SAESLPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SAESCFGR_Register use record
      SAESRST       at 0 range 0 .. 0;
      SAESEN        at 0 range 1 .. 1;
      SAESLPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC HASH configuration register
   type RCC_HASHCFGR_Register is record
      --  HASH reset
      HASHRST       : Boolean := False;
      --  HASH clock enable
      HASHEN        : Boolean := False;
      --  HASH clock enable during CSleep
      HASHLPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_HASHCFGR_Register use record
      HASHRST       at 0 range 0 .. 0;
      HASHEN        at 0 range 1 .. 1;
      HASHLPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC CRYP1 configuration register
   type RCC_CRYP1CFGR_Register is record
      --  CRYP1 reset
      CRYP1RST      : Boolean := False;
      --  CRYP1 clock enable
      CRYP1EN       : Boolean := False;
      --  CRYP1 clock enable during CSleep
      CRYP1LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CRYP1CFGR_Register use record
      CRYP1RST      at 0 range 0 .. 0;
      CRYP1EN       at 0 range 1 .. 1;
      CRYP1LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC CRYP2 configuration register
   type RCC_CRYP2CFGR_Register is record
      --  CRYP2 reset
      CRYP2RST      : Boolean := False;
      --  CRYP2 clock enable
      CRYP2EN       : Boolean := False;
      --  CRYP2 clock enable during CSleep
      CRYP2LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CRYP2CFGR_Register use record
      CRYP2RST      at 0 range 0 .. 0;
      CRYP2EN       at 0 range 1 .. 1;
      CRYP2LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC IWDG1 configuration register
   type RCC_IWDG1CFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  IWDG1 bus clock enable
      IWDG1EN       : Boolean := False;
      --  IWDG1 bus clock enable during CSleep
      IWDG1LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDG1CFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      IWDG1EN       at 0 range 1 .. 1;
      IWDG1LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC IWDG2 configuration register
   type RCC_IWDG2CFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  IWDG2 bus clock enable
      IWDG2EN       : Boolean := False;
      --  IWDG2 bus clock enable during CSleep
      IWDG2LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDG2CFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      IWDG2EN       at 0 range 1 .. 1;
      IWDG2LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC IWDG3 configuration register
   type RCC_IWDG3CFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  IWDG3 bus clock enable
      IWDG3EN       : Boolean := False;
      --  IWDG3 bus clock enable during CSleep
      IWDG3LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDG3CFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      IWDG3EN       at 0 range 1 .. 1;
      IWDG3LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC IWDG4 configuration register
   type RCC_IWDG4CFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  IWDG4 bus clock enable
      IWDG4EN       : Boolean := False;
      --  IWDG4 bus clock enable during CSleep
      IWDG4LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDG4CFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      IWDG4EN       at 0 range 1 .. 1;
      IWDG4LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC IWDG5 configuration register
   type RCC_IWDG5CFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  IWDG5 bus clock enable
      IWDG5EN       : Boolean := False;
      --  IWDG5 bus clock enable during CSleep
      IWDG5LPEN     : Boolean := True;
      --  IWDG5 autonomous clock mode enable
      IWDG5AMEN     : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_IWDG5CFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      IWDG5EN       at 0 range 1 .. 1;
      IWDG5LPEN     at 0 range 2 .. 2;
      IWDG5AMEN     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC WWDG1 configuration register
   type RCC_WWDG1CFGR_Register is record
      --  WWDG1 reset
      WWDG1RST      : Boolean := False;
      --  WWDG1 bus clock enable
      WWDG1EN       : Boolean := False;
      --  WWDG1 bus clock enable during CSleep
      WWDG1LPEN     : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_WWDG1CFGR_Register use record
      WWDG1RST      at 0 range 0 .. 0;
      WWDG1EN       at 0 range 1 .. 1;
      WWDG1LPEN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC WWDG2 configuration register
   type RCC_WWDG2CFGR_Register is record
      --  WWDG2 block reset
      WWDG2RST      : Boolean := False;
      --  WWDG2 bus clock enable
      WWDG2EN       : Boolean := False;
      --  WWDG2 bus clock enable during CSleep
      WWDG2LPEN     : Boolean := True;
      --  WWDG2 autonomous clock mode enable
      WWDG2AMEN     : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_WWDG2CFGR_Register use record
      WWDG2RST      at 0 range 0 .. 0;
      WWDG2EN       at 0 range 1 .. 1;
      WWDG2LPEN     at 0 range 2 .. 2;
      WWDG2AMEN     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RCC VREF configuration register
   type RCC_VREFCFGR_Register is record
      --  VREF reset
      VREFRST       : Boolean := False;
      --  VREF clock enable
      VREFEN        : Boolean := False;
      --  VREF clock enable during CSleep
      VREFLPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_VREFCFGR_Register use record
      VREFRST       at 0 range 0 .. 0;
      VREFEN        at 0 range 1 .. 1;
      VREFLPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RCC_DTSCFGR_DTSKERSEL_Field is HAL.UInt2;

   --  RCC DTS configuration register
   type RCC_DTSCFGR_Register is record
      --  DTS reset
      DTSRST         : Boolean := False;
      --  DTS clock enable
      DTSEN          : Boolean := False;
      --  DTS clock enable during CSleep
      DTSLPEN        : Boolean := True;
      --  unspecified
      Reserved_3_11  : HAL.UInt9 := 16#0#;
      --  DTS kernel clock selection
      DTSKERSEL      : RCC_DTSCFGR_DTSKERSEL_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_DTSCFGR_Register use record
      DTSRST         at 0 range 0 .. 0;
      DTSEN          at 0 range 1 .. 1;
      DTSLPEN        at 0 range 2 .. 2;
      Reserved_3_11  at 0 range 3 .. 11;
      DTSKERSEL      at 0 range 12 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RCC CRC configuration register
   type RCC_CRCCFGR_Register is record
      --  CRC reset
      CRCRST        : Boolean := False;
      --  CRC clock enable
      CRCEN         : Boolean := False;
      --  CRC clock enable during CSleep
      CRCLPEN       : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_CRCCFGR_Register use record
      CRCRST        at 0 range 0 .. 0;
      CRCEN         at 0 range 1 .. 1;
      CRCLPEN       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC SERC configuration register
   type RCC_SERCCFGR_Register is record
      --  SERC reset
      SERCRST       : Boolean := False;
      --  SERC clocks enable
      SERCEN        : Boolean := False;
      --  SERC clock enable during CSleep
      SERCLPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_SERCCFGR_Register use record
      SERCRST       at 0 range 0 .. 0;
      SERCEN        at 0 range 1 .. 1;
      SERCLPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC OCTOSPI I/O manager configuration register
   type RCC_OSPIIOMCFGR_Register is record
      --  OCTOSPIM reset
      OSPIIOMRST    : Boolean := False;
      --  OCTOSPIM clock enable
      OSPIIOMEN     : Boolean := False;
      --  OCTOSPIM clock enable during CSleep
      OSPIIOMLPEN   : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_OSPIIOMCFGR_Register use record
      OSPIIOMRST    at 0 range 0 .. 0;
      OSPIIOMEN     at 0 range 1 .. 1;
      OSPIIOMLPEN   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC GICV2M configuration register
   type RCC_GICV2MCFGR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  GICV2M clock enable
      GICV2MEN      : Boolean := False;
      --  GICV2M clock enable during CSleep
      GICV2MLPEN    : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_GICV2MCFGR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      GICV2MEN      at 0 range 1 .. 1;
      GICV2MLPEN    at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC I3C1 configuration register
   type RCC_I3C1CFGR_Register is record
      --  I3C1 reset
      I3C1RST       : Boolean := False;
      --  I3C1 clock enable
      I3C1EN        : Boolean := False;
      --  I3C1 clock enable during CSleep
      I3C1LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_I3C1CFGR_Register use record
      I3C1RST       at 0 range 0 .. 0;
      I3C1EN        at 0 range 1 .. 1;
      I3C1LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC I3C2 configuration register
   type RCC_I3C2CFGR_Register is record
      --  I3C2 reset
      I3C2RST       : Boolean := False;
      --  I3C2 clock enable
      I3C2EN        : Boolean := False;
      --  I3C2 clock enable during CSleep
      I3C2LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_I3C2CFGR_Register use record
      I3C2RST       at 0 range 0 .. 0;
      I3C2EN        at 0 range 1 .. 1;
      I3C2LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC I3C3 configuration register
   type RCC_I3C3CFGR_Register is record
      --  I3C3 reset
      I3C3RST       : Boolean := False;
      --  I3C3 clock enable
      I3C3EN        : Boolean := False;
      --  I3C3 clock enable during CSleep
      I3C3LPEN      : Boolean := True;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_I3C3CFGR_Register use record
      I3C3RST       at 0 range 0 .. 0;
      I3C3EN        at 0 range 1 .. 1;
      I3C3LPEN      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC I3C4 configuration register
   type RCC_I3C4CFGR_Register is record
      --  I3C4 reset
      I3C4RST       : Boolean := False;
      --  I3C4 clock enable
      I3C4EN        : Boolean := False;
      --  I3C4 clock enable during CSleep
      I3C4LPEN      : Boolean := True;
      --  I3C4 autonomous clock mode enable
      I3C4AMEN      : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_I3C4CFGR_Register use record
      I3C4RST       at 0 range 0 .. 0;
      I3C4EN        at 0 range 1 .. 1;
      I3C4LPEN      at 0 range 2 .. 2;
      I3C4AMEN      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype RCC_MUXSELCFGR_MUXSEL0_Field is HAL.UInt2;
   subtype RCC_MUXSELCFGR_MUXSEL1_Field is HAL.UInt2;
   subtype RCC_MUXSELCFGR_MUXSEL2_Field is HAL.UInt2;
   subtype RCC_MUXSELCFGR_MUXSEL3_Field is HAL.UInt2;
   subtype RCC_MUXSELCFGR_MUXSEL4_Field is HAL.UInt2;
   subtype RCC_MUXSELCFGR_MUXSEL5_Field is HAL.UInt2;
   subtype RCC_MUXSELCFGR_MUXSEL6_Field is HAL.UInt2;
   subtype RCC_MUXSELCFGR_MUXSEL7_Field is HAL.UInt2;

   --  RCC MUXSEL configuration register
   type RCC_MUXSELCFGR_Register is record
      --  PLL4 reference clock selection
      MUXSEL0        : RCC_MUXSELCFGR_MUXSEL0_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  PLL5 reference clock selection
      MUXSEL1        : RCC_MUXSELCFGR_MUXSEL1_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  PLL6 reference clock selection
      MUXSEL2        : RCC_MUXSELCFGR_MUXSEL2_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  PLL7 reference clock selection
      MUXSEL3        : RCC_MUXSELCFGR_MUXSEL3_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  PLL8 reference clock selection
      MUXSEL4        : RCC_MUXSELCFGR_MUXSEL4_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  PLL1 reference clock selection (ck_pll1_ref)
      MUXSEL5        : RCC_MUXSELCFGR_MUXSEL5_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  PLL2 reference clock selection (ck_pll2_ref)
      MUXSEL6        : RCC_MUXSELCFGR_MUXSEL6_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  PLL3 reference clock selection (ck_pll3_ref)
      MUXSEL7        : RCC_MUXSELCFGR_MUXSEL7_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_MUXSELCFGR_Register use record
      MUXSEL0        at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      MUXSEL1        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MUXSEL2        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      MUXSEL3        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      MUXSEL4        at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      MUXSEL5        at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      MUXSEL6        at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      MUXSEL7        at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype RCC_XBAR0CFGR_XBAR0SEL_Field is HAL.UInt4;

   --  RCC cross bar 0 configuration register
   type RCC_XBAR0CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR0SEL      : RCC_XBAR0CFGR_XBAR0SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR0EN       : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR0STS      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR0CFGR_Register use record
      XBAR0SEL      at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR0EN       at 0 range 6 .. 6;
      XBAR0STS      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR1CFGR_XBAR1SEL_Field is HAL.UInt4;

   --  RCC cross bar 1 configuration register
   type RCC_XBAR1CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR1SEL      : RCC_XBAR1CFGR_XBAR1SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR1EN       : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR1STS      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR1CFGR_Register use record
      XBAR1SEL      at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR1EN       at 0 range 6 .. 6;
      XBAR1STS      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR2CFGR_XBAR2SEL_Field is HAL.UInt4;

   --  RCC cross bar 2 configuration register
   type RCC_XBAR2CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR2SEL      : RCC_XBAR2CFGR_XBAR2SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR2EN       : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR2STS      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR2CFGR_Register use record
      XBAR2SEL      at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR2EN       at 0 range 6 .. 6;
      XBAR2STS      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR3CFGR_XBAR3SEL_Field is HAL.UInt4;

   --  RCC cross bar 3 configuration register
   type RCC_XBAR3CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR3SEL      : RCC_XBAR3CFGR_XBAR3SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR3EN       : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR3STS      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR3CFGR_Register use record
      XBAR3SEL      at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR3EN       at 0 range 6 .. 6;
      XBAR3STS      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR4CFGR_XBAR4SEL_Field is HAL.UInt4;

   --  RCC cross bar 4 configuration register
   type RCC_XBAR4CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR4SEL      : RCC_XBAR4CFGR_XBAR4SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR4EN       : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR4STS      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR4CFGR_Register use record
      XBAR4SEL      at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR4EN       at 0 range 6 .. 6;
      XBAR4STS      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR5CFGR_XBAR5SEL_Field is HAL.UInt4;

   --  RCC cross bar 5 configuration register
   type RCC_XBAR5CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR5SEL      : RCC_XBAR5CFGR_XBAR5SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR5EN       : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR5STS      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR5CFGR_Register use record
      XBAR5SEL      at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR5EN       at 0 range 6 .. 6;
      XBAR5STS      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR6CFGR_XBAR6SEL_Field is HAL.UInt4;

   --  RCC cross bar 6 configuration register
   type RCC_XBAR6CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR6SEL      : RCC_XBAR6CFGR_XBAR6SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR6EN       : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR6STS      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR6CFGR_Register use record
      XBAR6SEL      at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR6EN       at 0 range 6 .. 6;
      XBAR6STS      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR7CFGR_XBAR7SEL_Field is HAL.UInt4;

   --  RCC cross bar 7 configuration register
   type RCC_XBAR7CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR7SEL      : RCC_XBAR7CFGR_XBAR7SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR7EN       : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR7STS      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR7CFGR_Register use record
      XBAR7SEL      at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR7EN       at 0 range 6 .. 6;
      XBAR7STS      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR8CFGR_XBAR8SEL_Field is HAL.UInt4;

   --  RCC cross bar 8 configuration register
   type RCC_XBAR8CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR8SEL      : RCC_XBAR8CFGR_XBAR8SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR8EN       : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR8STS      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR8CFGR_Register use record
      XBAR8SEL      at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR8EN       at 0 range 6 .. 6;
      XBAR8STS      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR9CFGR_XBAR9SEL_Field is HAL.UInt4;

   --  RCC cross bar 9 configuration register
   type RCC_XBAR9CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR9SEL      : RCC_XBAR9CFGR_XBAR9SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR9EN       : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR9STS      : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR9CFGR_Register use record
      XBAR9SEL      at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR9EN       at 0 range 6 .. 6;
      XBAR9STS      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR10CFGR_XBAR10SEL_Field is HAL.UInt4;

   --  RCC cross bar 10 configuration register
   type RCC_XBAR10CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR10SEL     : RCC_XBAR10CFGR_XBAR10SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR10EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR10STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR10CFGR_Register use record
      XBAR10SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR10EN      at 0 range 6 .. 6;
      XBAR10STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR11CFGR_XBAR11SEL_Field is HAL.UInt4;

   --  RCC cross bar 11 configuration register
   type RCC_XBAR11CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR11SEL     : RCC_XBAR11CFGR_XBAR11SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR11EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR11STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR11CFGR_Register use record
      XBAR11SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR11EN      at 0 range 6 .. 6;
      XBAR11STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR12CFGR_XBAR12SEL_Field is HAL.UInt4;

   --  RCC cross bar 12 configuration register
   type RCC_XBAR12CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR12SEL     : RCC_XBAR12CFGR_XBAR12SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR12EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR12STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR12CFGR_Register use record
      XBAR12SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR12EN      at 0 range 6 .. 6;
      XBAR12STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR13CFGR_XBAR13SEL_Field is HAL.UInt4;

   --  RCC cross bar 13 configuration register
   type RCC_XBAR13CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR13SEL     : RCC_XBAR13CFGR_XBAR13SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR13EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR13STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR13CFGR_Register use record
      XBAR13SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR13EN      at 0 range 6 .. 6;
      XBAR13STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR14CFGR_XBAR14SEL_Field is HAL.UInt4;

   --  RCC cross bar 14 configuration register
   type RCC_XBAR14CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR14SEL     : RCC_XBAR14CFGR_XBAR14SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR14EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR14STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR14CFGR_Register use record
      XBAR14SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR14EN      at 0 range 6 .. 6;
      XBAR14STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR15CFGR_XBAR15SEL_Field is HAL.UInt4;

   --  RCC cross bar 15 configuration register
   type RCC_XBAR15CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR15SEL     : RCC_XBAR15CFGR_XBAR15SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR15EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR15STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR15CFGR_Register use record
      XBAR15SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR15EN      at 0 range 6 .. 6;
      XBAR15STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR16CFGR_XBAR16SEL_Field is HAL.UInt4;

   --  RCC cross bar 16 configuration register
   type RCC_XBAR16CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR16SEL     : RCC_XBAR16CFGR_XBAR16SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR16EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR16STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR16CFGR_Register use record
      XBAR16SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR16EN      at 0 range 6 .. 6;
      XBAR16STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR17CFGR_XBAR17SEL_Field is HAL.UInt4;

   --  RCC cross bar 17 configuration register
   type RCC_XBAR17CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR17SEL     : RCC_XBAR17CFGR_XBAR17SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR17EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR17STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR17CFGR_Register use record
      XBAR17SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR17EN      at 0 range 6 .. 6;
      XBAR17STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR18CFGR_XBAR18SEL_Field is HAL.UInt4;

   --  RCC cross bar 18 configuration register
   type RCC_XBAR18CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR18SEL     : RCC_XBAR18CFGR_XBAR18SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR18EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR18STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR18CFGR_Register use record
      XBAR18SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR18EN      at 0 range 6 .. 6;
      XBAR18STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR19CFGR_XBAR19SEL_Field is HAL.UInt4;

   --  RCC cross bar 19 configuration register
   type RCC_XBAR19CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR19SEL     : RCC_XBAR19CFGR_XBAR19SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR19EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR19STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR19CFGR_Register use record
      XBAR19SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR19EN      at 0 range 6 .. 6;
      XBAR19STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR20CFGR_XBAR20SEL_Field is HAL.UInt4;

   --  RCC cross bar 20 configuration register
   type RCC_XBAR20CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR20SEL     : RCC_XBAR20CFGR_XBAR20SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR20EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR20STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR20CFGR_Register use record
      XBAR20SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR20EN      at 0 range 6 .. 6;
      XBAR20STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR21CFGR_XBAR21SEL_Field is HAL.UInt4;

   --  RCC cross bar 21 configuration register
   type RCC_XBAR21CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR21SEL     : RCC_XBAR21CFGR_XBAR21SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR21EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR21STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR21CFGR_Register use record
      XBAR21SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR21EN      at 0 range 6 .. 6;
      XBAR21STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR22CFGR_XBAR22SEL_Field is HAL.UInt4;

   --  RCC cross bar 22 configuration register
   type RCC_XBAR22CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR22SEL     : RCC_XBAR22CFGR_XBAR22SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR22EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR22STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR22CFGR_Register use record
      XBAR22SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR22EN      at 0 range 6 .. 6;
      XBAR22STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR23CFGR_XBAR23SEL_Field is HAL.UInt4;

   --  RCC cross bar 23 configuration register
   type RCC_XBAR23CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR23SEL     : RCC_XBAR23CFGR_XBAR23SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR23EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR23STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR23CFGR_Register use record
      XBAR23SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR23EN      at 0 range 6 .. 6;
      XBAR23STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR24CFGR_XBAR24SEL_Field is HAL.UInt4;

   --  RCC cross bar 24 configuration register
   type RCC_XBAR24CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR24SEL     : RCC_XBAR24CFGR_XBAR24SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR24EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR24STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR24CFGR_Register use record
      XBAR24SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR24EN      at 0 range 6 .. 6;
      XBAR24STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR25CFGR_XBAR25SEL_Field is HAL.UInt4;

   --  RCC cross bar 25 configuration register
   type RCC_XBAR25CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR25SEL     : RCC_XBAR25CFGR_XBAR25SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR25EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR25STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR25CFGR_Register use record
      XBAR25SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR25EN      at 0 range 6 .. 6;
      XBAR25STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR26CFGR_XBAR26SEL_Field is HAL.UInt4;

   --  RCC cross bar 26 configuration register
   type RCC_XBAR26CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR26SEL     : RCC_XBAR26CFGR_XBAR26SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR26EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR26STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR26CFGR_Register use record
      XBAR26SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR26EN      at 0 range 6 .. 6;
      XBAR26STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR27CFGR_XBAR27SEL_Field is HAL.UInt4;

   --  RCC cross bar 27 configuration register
   type RCC_XBAR27CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR27SEL     : RCC_XBAR27CFGR_XBAR27SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR27EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR27STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR27CFGR_Register use record
      XBAR27SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR27EN      at 0 range 6 .. 6;
      XBAR27STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR28CFGR_XBAR28SEL_Field is HAL.UInt4;

   --  RCC cross bar 28 configuration register
   type RCC_XBAR28CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR28SEL     : RCC_XBAR28CFGR_XBAR28SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR28EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR28STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR28CFGR_Register use record
      XBAR28SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR28EN      at 0 range 6 .. 6;
      XBAR28STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR29CFGR_XBAR29SEL_Field is HAL.UInt4;

   --  RCC cross bar 29 configuration register
   type RCC_XBAR29CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR29SEL     : RCC_XBAR29CFGR_XBAR29SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR29EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR29STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR29CFGR_Register use record
      XBAR29SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR29EN      at 0 range 6 .. 6;
      XBAR29STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR30CFGR_XBAR30SEL_Field is HAL.UInt4;

   --  RCC cross bar 30 configuration register
   type RCC_XBAR30CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR30SEL     : RCC_XBAR30CFGR_XBAR30SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR30EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR30STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR30CFGR_Register use record
      XBAR30SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR30EN      at 0 range 6 .. 6;
      XBAR30STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR31CFGR_XBAR31SEL_Field is HAL.UInt4;

   --  RCC cross bar 31 configuration register
   type RCC_XBAR31CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR31SEL     : RCC_XBAR31CFGR_XBAR31SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR31EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR31STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR31CFGR_Register use record
      XBAR31SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR31EN      at 0 range 6 .. 6;
      XBAR31STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR32CFGR_XBAR32SEL_Field is HAL.UInt4;

   --  RCC cross bar 32 configuration register
   type RCC_XBAR32CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR32SEL     : RCC_XBAR32CFGR_XBAR32SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR32EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR32STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR32CFGR_Register use record
      XBAR32SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR32EN      at 0 range 6 .. 6;
      XBAR32STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR33CFGR_XBAR33SEL_Field is HAL.UInt4;

   --  RCC cross bar 33 configuration register
   type RCC_XBAR33CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR33SEL     : RCC_XBAR33CFGR_XBAR33SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR33EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR33STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR33CFGR_Register use record
      XBAR33SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR33EN      at 0 range 6 .. 6;
      XBAR33STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR34CFGR_XBAR34SEL_Field is HAL.UInt4;

   --  RCC cross bar 34 configuration register
   type RCC_XBAR34CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR34SEL     : RCC_XBAR34CFGR_XBAR34SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR34EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR34STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR34CFGR_Register use record
      XBAR34SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR34EN      at 0 range 6 .. 6;
      XBAR34STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR35CFGR_XBAR35SEL_Field is HAL.UInt4;

   --  RCC cross bar 35 configuration register
   type RCC_XBAR35CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR35SEL     : RCC_XBAR35CFGR_XBAR35SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR35EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR35STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR35CFGR_Register use record
      XBAR35SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR35EN      at 0 range 6 .. 6;
      XBAR35STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR36CFGR_XBAR36SEL_Field is HAL.UInt4;

   --  RCC cross bar 36 configuration register
   type RCC_XBAR36CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR36SEL     : RCC_XBAR36CFGR_XBAR36SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR36EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR36STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR36CFGR_Register use record
      XBAR36SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR36EN      at 0 range 6 .. 6;
      XBAR36STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR37CFGR_XBAR37SEL_Field is HAL.UInt4;

   --  RCC cross bar 37 configuration register
   type RCC_XBAR37CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR37SEL     : RCC_XBAR37CFGR_XBAR37SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR37EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR37STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR37CFGR_Register use record
      XBAR37SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR37EN      at 0 range 6 .. 6;
      XBAR37STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR38CFGR_XBAR38SEL_Field is HAL.UInt4;

   --  RCC cross bar 38 configuration register
   type RCC_XBAR38CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR38SEL     : RCC_XBAR38CFGR_XBAR38SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR38EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR38STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR38CFGR_Register use record
      XBAR38SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR38EN      at 0 range 6 .. 6;
      XBAR38STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR39CFGR_XBAR39SEL_Field is HAL.UInt4;

   --  RCC cross bar 39 configuration register
   type RCC_XBAR39CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR39SEL     : RCC_XBAR39CFGR_XBAR39SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR39EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR39STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR39CFGR_Register use record
      XBAR39SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR39EN      at 0 range 6 .. 6;
      XBAR39STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR40CFGR_XBAR40SEL_Field is HAL.UInt4;

   --  RCC cross bar 40 configuration register
   type RCC_XBAR40CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR40SEL     : RCC_XBAR40CFGR_XBAR40SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR40EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR40STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR40CFGR_Register use record
      XBAR40SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR40EN      at 0 range 6 .. 6;
      XBAR40STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR41CFGR_XBAR41SEL_Field is HAL.UInt4;

   --  RCC cross bar 41 configuration register
   type RCC_XBAR41CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR41SEL     : RCC_XBAR41CFGR_XBAR41SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR41EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR41STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR41CFGR_Register use record
      XBAR41SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR41EN      at 0 range 6 .. 6;
      XBAR41STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR42CFGR_XBAR42SEL_Field is HAL.UInt4;

   --  RCC cross bar 42 configuration register
   type RCC_XBAR42CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR42SEL     : RCC_XBAR42CFGR_XBAR42SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR42EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR42STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR42CFGR_Register use record
      XBAR42SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR42EN      at 0 range 6 .. 6;
      XBAR42STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR43CFGR_XBAR43SEL_Field is HAL.UInt4;

   --  RCC cross bar 43 configuration register
   type RCC_XBAR43CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR43SEL     : RCC_XBAR43CFGR_XBAR43SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR43EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR43STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR43CFGR_Register use record
      XBAR43SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR43EN      at 0 range 6 .. 6;
      XBAR43STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR44CFGR_XBAR44SEL_Field is HAL.UInt4;

   --  RCC cross bar 44 configuration register
   type RCC_XBAR44CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR44SEL     : RCC_XBAR44CFGR_XBAR44SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR44EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR44STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR44CFGR_Register use record
      XBAR44SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR44EN      at 0 range 6 .. 6;
      XBAR44STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR45CFGR_XBAR45SEL_Field is HAL.UInt4;

   --  RCC cross bar 45 configuration register
   type RCC_XBAR45CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR45SEL     : RCC_XBAR45CFGR_XBAR45SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR45EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR45STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR45CFGR_Register use record
      XBAR45SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR45EN      at 0 range 6 .. 6;
      XBAR45STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR46CFGR_XBAR46SEL_Field is HAL.UInt4;

   --  RCC cross bar 46 configuration register
   type RCC_XBAR46CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR46SEL     : RCC_XBAR46CFGR_XBAR46SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR46EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR46STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR46CFGR_Register use record
      XBAR46SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR46EN      at 0 range 6 .. 6;
      XBAR46STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR47CFGR_XBAR47SEL_Field is HAL.UInt4;

   --  RCC cross bar 47 configuration register
   type RCC_XBAR47CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR47SEL     : RCC_XBAR47CFGR_XBAR47SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR47EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR47STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR47CFGR_Register use record
      XBAR47SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR47EN      at 0 range 6 .. 6;
      XBAR47STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR48CFGR_XBAR48SEL_Field is HAL.UInt4;

   --  RCC cross bar 48 configuration register
   type RCC_XBAR48CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR48SEL     : RCC_XBAR48CFGR_XBAR48SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR48EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR48STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR48CFGR_Register use record
      XBAR48SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR48EN      at 0 range 6 .. 6;
      XBAR48STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR49CFGR_XBAR49SEL_Field is HAL.UInt4;

   --  RCC cross bar 49 configuration register
   type RCC_XBAR49CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR49SEL     : RCC_XBAR49CFGR_XBAR49SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR49EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR49STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR49CFGR_Register use record
      XBAR49SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR49EN      at 0 range 6 .. 6;
      XBAR49STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR50CFGR_XBAR50SEL_Field is HAL.UInt4;

   --  RCC cross bar 50 configuration register
   type RCC_XBAR50CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR50SEL     : RCC_XBAR50CFGR_XBAR50SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR50EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR50STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR50CFGR_Register use record
      XBAR50SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR50EN      at 0 range 6 .. 6;
      XBAR50STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR51CFGR_XBAR51SEL_Field is HAL.UInt4;

   --  RCC cross bar 51 configuration register
   type RCC_XBAR51CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR51SEL     : RCC_XBAR51CFGR_XBAR51SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR51EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR51STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR51CFGR_Register use record
      XBAR51SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR51EN      at 0 range 6 .. 6;
      XBAR51STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR52CFGR_XBAR52SEL_Field is HAL.UInt4;

   --  RCC cross bar 52 configuration register
   type RCC_XBAR52CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR52SEL     : RCC_XBAR52CFGR_XBAR52SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR52EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR52STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR52CFGR_Register use record
      XBAR52SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR52EN      at 0 range 6 .. 6;
      XBAR52STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR53CFGR_XBAR53SEL_Field is HAL.UInt4;

   --  RCC cross bar 53 configuration register
   type RCC_XBAR53CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR53SEL     : RCC_XBAR53CFGR_XBAR53SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR53EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR53STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR53CFGR_Register use record
      XBAR53SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR53EN      at 0 range 6 .. 6;
      XBAR53STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR54CFGR_XBAR54SEL_Field is HAL.UInt4;

   --  RCC cross bar 54 configuration register
   type RCC_XBAR54CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR54SEL     : RCC_XBAR54CFGR_XBAR54SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR54EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR54STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR54CFGR_Register use record
      XBAR54SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR54EN      at 0 range 6 .. 6;
      XBAR54STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR55CFGR_XBAR55SEL_Field is HAL.UInt4;

   --  RCC cross bar 55 configuration register
   type RCC_XBAR55CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR55SEL     : RCC_XBAR55CFGR_XBAR55SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR55EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR55STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR55CFGR_Register use record
      XBAR55SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR55EN      at 0 range 6 .. 6;
      XBAR55STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR56CFGR_XBAR56SEL_Field is HAL.UInt4;

   --  RCC cross bar 56 configuration register
   type RCC_XBAR56CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR56SEL     : RCC_XBAR56CFGR_XBAR56SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR56EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR56STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR56CFGR_Register use record
      XBAR56SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR56EN      at 0 range 6 .. 6;
      XBAR56STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR57CFGR_XBAR57SEL_Field is HAL.UInt4;

   --  RCC cross bar 57 configuration register
   type RCC_XBAR57CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR57SEL     : RCC_XBAR57CFGR_XBAR57SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR57EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR57STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR57CFGR_Register use record
      XBAR57SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR57EN      at 0 range 6 .. 6;
      XBAR57STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR58CFGR_XBAR58SEL_Field is HAL.UInt4;

   --  RCC cross bar 58 configuration register
   type RCC_XBAR58CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR58SEL     : RCC_XBAR58CFGR_XBAR58SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR58EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR58STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR58CFGR_Register use record
      XBAR58SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR58EN      at 0 range 6 .. 6;
      XBAR58STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR59CFGR_XBAR59SEL_Field is HAL.UInt4;

   --  RCC cross bar 59 configuration register
   type RCC_XBAR59CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR59SEL     : RCC_XBAR59CFGR_XBAR59SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR59EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR59STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR59CFGR_Register use record
      XBAR59SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR59EN      at 0 range 6 .. 6;
      XBAR59STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR60CFGR_XBAR60SEL_Field is HAL.UInt4;

   --  RCC cross bar 60 configuration register
   type RCC_XBAR60CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR60SEL     : RCC_XBAR60CFGR_XBAR60SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR60EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR60STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR60CFGR_Register use record
      XBAR60SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR60EN      at 0 range 6 .. 6;
      XBAR60STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR61CFGR_XBAR61SEL_Field is HAL.UInt4;

   --  RCC cross bar 61 configuration register
   type RCC_XBAR61CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR61SEL     : RCC_XBAR61CFGR_XBAR61SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR61EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR61STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR61CFGR_Register use record
      XBAR61SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR61EN      at 0 range 6 .. 6;
      XBAR61STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR62CFGR_XBAR62SEL_Field is HAL.UInt4;

   --  RCC cross bar 62 configuration register
   type RCC_XBAR62CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR62SEL     : RCC_XBAR62CFGR_XBAR62SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR62EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR62STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR62CFGR_Register use record
      XBAR62SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR62EN      at 0 range 6 .. 6;
      XBAR62STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_XBAR63CFGR_XBAR63SEL_Field is HAL.UInt4;

   --  RCC cross bar 63 configuration register
   type RCC_XBAR63CFGR_Register is record
      --  Cross bar channel x input clock selection
      XBAR63SEL     : RCC_XBAR63CFGR_XBAR63SEL_Field := 16#5#;
      --  unspecified
      Reserved_4_5  : HAL.UInt2 := 16#0#;
      --  Cross bar channel x clock output enable
      XBAR63EN      : Boolean := True;
      --  Read-only. Cross bar channel x output status
      XBAR63STS     : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_XBAR63CFGR_Register use record
      XBAR63SEL     at 0 range 0 .. 3;
      Reserved_4_5  at 0 range 4 .. 5;
      XBAR63EN      at 0 range 6 .. 6;
      XBAR63STS     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RCC_PREDIV0CFGR_PREDIV0_Field is HAL.UInt10;

   --  RCC pre divider 0 configuration register
   type RCC_PREDIV0CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV0        : RCC_PREDIV0CFGR_PREDIV0_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV0CFGR_Register use record
      PREDIV0        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV1CFGR_PREDIV1_Field is HAL.UInt10;

   --  RCC pre divider 1 configuration register
   type RCC_PREDIV1CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV1        : RCC_PREDIV1CFGR_PREDIV1_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV1CFGR_Register use record
      PREDIV1        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV2CFGR_PREDIV2_Field is HAL.UInt10;

   --  RCC pre divider 2 configuration register
   type RCC_PREDIV2CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV2        : RCC_PREDIV2CFGR_PREDIV2_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV2CFGR_Register use record
      PREDIV2        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV3CFGR_PREDIV3_Field is HAL.UInt10;

   --  RCC pre divider 3 configuration register
   type RCC_PREDIV3CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV3        : RCC_PREDIV3CFGR_PREDIV3_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV3CFGR_Register use record
      PREDIV3        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV4CFGR_PREDIV4_Field is HAL.UInt10;

   --  RCC pre divider 4 configuration register
   type RCC_PREDIV4CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV4        : RCC_PREDIV4CFGR_PREDIV4_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV4CFGR_Register use record
      PREDIV4        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV5CFGR_PREDIV5_Field is HAL.UInt10;

   --  RCC pre divider 5 configuration register
   type RCC_PREDIV5CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV5        : RCC_PREDIV5CFGR_PREDIV5_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV5CFGR_Register use record
      PREDIV5        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV6CFGR_PREDIV6_Field is HAL.UInt10;

   --  RCC pre divider 6 configuration register
   type RCC_PREDIV6CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV6        : RCC_PREDIV6CFGR_PREDIV6_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV6CFGR_Register use record
      PREDIV6        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV7CFGR_PREDIV7_Field is HAL.UInt10;

   --  RCC pre divider 7 configuration register
   type RCC_PREDIV7CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV7        : RCC_PREDIV7CFGR_PREDIV7_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV7CFGR_Register use record
      PREDIV7        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV8CFGR_PREDIV8_Field is HAL.UInt10;

   --  RCC pre divider 8 configuration register
   type RCC_PREDIV8CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV8        : RCC_PREDIV8CFGR_PREDIV8_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV8CFGR_Register use record
      PREDIV8        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV9CFGR_PREDIV9_Field is HAL.UInt10;

   --  RCC pre divider 9 configuration register
   type RCC_PREDIV9CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV9        : RCC_PREDIV9CFGR_PREDIV9_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV9CFGR_Register use record
      PREDIV9        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV10CFGR_PREDIV10_Field is HAL.UInt10;

   --  RCC pre divider 10 configuration register
   type RCC_PREDIV10CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV10       : RCC_PREDIV10CFGR_PREDIV10_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV10CFGR_Register use record
      PREDIV10       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV11CFGR_PREDIV11_Field is HAL.UInt10;

   --  RCC pre divider 11 configuration register
   type RCC_PREDIV11CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV11       : RCC_PREDIV11CFGR_PREDIV11_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV11CFGR_Register use record
      PREDIV11       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV12CFGR_PREDIV12_Field is HAL.UInt10;

   --  RCC pre divider 12 configuration register
   type RCC_PREDIV12CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV12       : RCC_PREDIV12CFGR_PREDIV12_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV12CFGR_Register use record
      PREDIV12       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV13CFGR_PREDIV13_Field is HAL.UInt10;

   --  RCC pre divider 13 configuration register
   type RCC_PREDIV13CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV13       : RCC_PREDIV13CFGR_PREDIV13_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV13CFGR_Register use record
      PREDIV13       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV14CFGR_PREDIV14_Field is HAL.UInt10;

   --  RCC pre divider 14 configuration register
   type RCC_PREDIV14CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV14       : RCC_PREDIV14CFGR_PREDIV14_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV14CFGR_Register use record
      PREDIV14       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV15CFGR_PREDIV15_Field is HAL.UInt10;

   --  RCC pre divider 15 configuration register
   type RCC_PREDIV15CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV15       : RCC_PREDIV15CFGR_PREDIV15_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV15CFGR_Register use record
      PREDIV15       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV16CFGR_PREDIV16_Field is HAL.UInt10;

   --  RCC pre divider 16 configuration register
   type RCC_PREDIV16CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV16       : RCC_PREDIV16CFGR_PREDIV16_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV16CFGR_Register use record
      PREDIV16       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV17CFGR_PREDIV17_Field is HAL.UInt10;

   --  RCC pre divider 17 configuration register
   type RCC_PREDIV17CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV17       : RCC_PREDIV17CFGR_PREDIV17_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV17CFGR_Register use record
      PREDIV17       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV18CFGR_PREDIV18_Field is HAL.UInt10;

   --  RCC pre divider 18 configuration register
   type RCC_PREDIV18CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV18       : RCC_PREDIV18CFGR_PREDIV18_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV18CFGR_Register use record
      PREDIV18       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV19CFGR_PREDIV19_Field is HAL.UInt10;

   --  RCC pre divider 19 configuration register
   type RCC_PREDIV19CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV19       : RCC_PREDIV19CFGR_PREDIV19_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV19CFGR_Register use record
      PREDIV19       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV20CFGR_PREDIV20_Field is HAL.UInt10;

   --  RCC pre divider 20 configuration register
   type RCC_PREDIV20CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV20       : RCC_PREDIV20CFGR_PREDIV20_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV20CFGR_Register use record
      PREDIV20       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV21CFGR_PREDIV21_Field is HAL.UInt10;

   --  RCC pre divider 21 configuration register
   type RCC_PREDIV21CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV21       : RCC_PREDIV21CFGR_PREDIV21_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV21CFGR_Register use record
      PREDIV21       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV22CFGR_PREDIV22_Field is HAL.UInt10;

   --  RCC pre divider 22 configuration register
   type RCC_PREDIV22CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV22       : RCC_PREDIV22CFGR_PREDIV22_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV22CFGR_Register use record
      PREDIV22       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV23CFGR_PREDIV23_Field is HAL.UInt10;

   --  RCC pre divider 23 configuration register
   type RCC_PREDIV23CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV23       : RCC_PREDIV23CFGR_PREDIV23_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV23CFGR_Register use record
      PREDIV23       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV24CFGR_PREDIV24_Field is HAL.UInt10;

   --  RCC pre divider 24 configuration register
   type RCC_PREDIV24CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV24       : RCC_PREDIV24CFGR_PREDIV24_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV24CFGR_Register use record
      PREDIV24       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV25CFGR_PREDIV25_Field is HAL.UInt10;

   --  RCC pre divider 25 configuration register
   type RCC_PREDIV25CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV25       : RCC_PREDIV25CFGR_PREDIV25_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV25CFGR_Register use record
      PREDIV25       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV26CFGR_PREDIV26_Field is HAL.UInt10;

   --  RCC pre divider 26 configuration register
   type RCC_PREDIV26CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV26       : RCC_PREDIV26CFGR_PREDIV26_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV26CFGR_Register use record
      PREDIV26       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV27CFGR_PREDIV27_Field is HAL.UInt10;

   --  RCC pre divider 27 configuration register
   type RCC_PREDIV27CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV27       : RCC_PREDIV27CFGR_PREDIV27_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV27CFGR_Register use record
      PREDIV27       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV28CFGR_PREDIV28_Field is HAL.UInt10;

   --  RCC pre divider 28 configuration register
   type RCC_PREDIV28CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV28       : RCC_PREDIV28CFGR_PREDIV28_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV28CFGR_Register use record
      PREDIV28       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV29CFGR_PREDIV29_Field is HAL.UInt10;

   --  RCC pre divider 29 configuration register
   type RCC_PREDIV29CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV29       : RCC_PREDIV29CFGR_PREDIV29_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV29CFGR_Register use record
      PREDIV29       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV30CFGR_PREDIV30_Field is HAL.UInt10;

   --  RCC pre divider 30 configuration register
   type RCC_PREDIV30CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV30       : RCC_PREDIV30CFGR_PREDIV30_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV30CFGR_Register use record
      PREDIV30       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV31CFGR_PREDIV31_Field is HAL.UInt10;

   --  RCC pre divider 31 configuration register
   type RCC_PREDIV31CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV31       : RCC_PREDIV31CFGR_PREDIV31_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV31CFGR_Register use record
      PREDIV31       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV32CFGR_PREDIV32_Field is HAL.UInt10;

   --  RCC pre divider 32 configuration register
   type RCC_PREDIV32CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV32       : RCC_PREDIV32CFGR_PREDIV32_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV32CFGR_Register use record
      PREDIV32       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV33CFGR_PREDIV33_Field is HAL.UInt10;

   --  RCC pre divider 33 configuration register
   type RCC_PREDIV33CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV33       : RCC_PREDIV33CFGR_PREDIV33_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV33CFGR_Register use record
      PREDIV33       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV34CFGR_PREDIV34_Field is HAL.UInt10;

   --  RCC pre divider 34 configuration register
   type RCC_PREDIV34CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV34       : RCC_PREDIV34CFGR_PREDIV34_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV34CFGR_Register use record
      PREDIV34       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV35CFGR_PREDIV35_Field is HAL.UInt10;

   --  RCC pre divider 35 configuration register
   type RCC_PREDIV35CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV35       : RCC_PREDIV35CFGR_PREDIV35_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV35CFGR_Register use record
      PREDIV35       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV36CFGR_PREDIV36_Field is HAL.UInt10;

   --  RCC pre divider 36 configuration register
   type RCC_PREDIV36CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV36       : RCC_PREDIV36CFGR_PREDIV36_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV36CFGR_Register use record
      PREDIV36       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV37CFGR_PREDIV37_Field is HAL.UInt10;

   --  RCC pre divider 37 configuration register
   type RCC_PREDIV37CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV37       : RCC_PREDIV37CFGR_PREDIV37_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV37CFGR_Register use record
      PREDIV37       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV38CFGR_PREDIV38_Field is HAL.UInt10;

   --  RCC pre divider 38 configuration register
   type RCC_PREDIV38CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV38       : RCC_PREDIV38CFGR_PREDIV38_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV38CFGR_Register use record
      PREDIV38       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV39CFGR_PREDIV39_Field is HAL.UInt10;

   --  RCC pre divider 39 configuration register
   type RCC_PREDIV39CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV39       : RCC_PREDIV39CFGR_PREDIV39_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV39CFGR_Register use record
      PREDIV39       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV40CFGR_PREDIV40_Field is HAL.UInt10;

   --  RCC pre divider 40 configuration register
   type RCC_PREDIV40CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV40       : RCC_PREDIV40CFGR_PREDIV40_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV40CFGR_Register use record
      PREDIV40       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV41CFGR_PREDIV41_Field is HAL.UInt10;

   --  RCC pre divider 41 configuration register
   type RCC_PREDIV41CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV41       : RCC_PREDIV41CFGR_PREDIV41_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV41CFGR_Register use record
      PREDIV41       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV42CFGR_PREDIV42_Field is HAL.UInt10;

   --  RCC pre divider 42 configuration register
   type RCC_PREDIV42CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV42       : RCC_PREDIV42CFGR_PREDIV42_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV42CFGR_Register use record
      PREDIV42       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV43CFGR_PREDIV43_Field is HAL.UInt10;

   --  RCC pre divider 43 configuration register
   type RCC_PREDIV43CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV43       : RCC_PREDIV43CFGR_PREDIV43_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV43CFGR_Register use record
      PREDIV43       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV44CFGR_PREDIV44_Field is HAL.UInt10;

   --  RCC pre divider 44 configuration register
   type RCC_PREDIV44CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV44       : RCC_PREDIV44CFGR_PREDIV44_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV44CFGR_Register use record
      PREDIV44       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV45CFGR_PREDIV45_Field is HAL.UInt10;

   --  RCC pre divider 45 configuration register
   type RCC_PREDIV45CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV45       : RCC_PREDIV45CFGR_PREDIV45_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV45CFGR_Register use record
      PREDIV45       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV46CFGR_PREDIV46_Field is HAL.UInt10;

   --  RCC pre divider 46 configuration register
   type RCC_PREDIV46CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV46       : RCC_PREDIV46CFGR_PREDIV46_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV46CFGR_Register use record
      PREDIV46       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV47CFGR_PREDIV47_Field is HAL.UInt10;

   --  RCC pre divider 47 configuration register
   type RCC_PREDIV47CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV47       : RCC_PREDIV47CFGR_PREDIV47_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV47CFGR_Register use record
      PREDIV47       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV48CFGR_PREDIV48_Field is HAL.UInt10;

   --  RCC pre divider 48 configuration register
   type RCC_PREDIV48CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV48       : RCC_PREDIV48CFGR_PREDIV48_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV48CFGR_Register use record
      PREDIV48       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV49CFGR_PREDIV49_Field is HAL.UInt10;

   --  RCC pre divider 49 configuration register
   type RCC_PREDIV49CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV49       : RCC_PREDIV49CFGR_PREDIV49_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV49CFGR_Register use record
      PREDIV49       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV50CFGR_PREDIV50_Field is HAL.UInt10;

   --  RCC pre divider 50 configuration register
   type RCC_PREDIV50CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV50       : RCC_PREDIV50CFGR_PREDIV50_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV50CFGR_Register use record
      PREDIV50       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV51CFGR_PREDIV51_Field is HAL.UInt10;

   --  RCC pre divider 51 configuration register
   type RCC_PREDIV51CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV51       : RCC_PREDIV51CFGR_PREDIV51_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV51CFGR_Register use record
      PREDIV51       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV52CFGR_PREDIV52_Field is HAL.UInt10;

   --  RCC pre divider 52 configuration register
   type RCC_PREDIV52CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV52       : RCC_PREDIV52CFGR_PREDIV52_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV52CFGR_Register use record
      PREDIV52       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV53CFGR_PREDIV53_Field is HAL.UInt10;

   --  RCC pre divider 53 configuration register
   type RCC_PREDIV53CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV53       : RCC_PREDIV53CFGR_PREDIV53_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV53CFGR_Register use record
      PREDIV53       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV54CFGR_PREDIV54_Field is HAL.UInt10;

   --  RCC pre divider 54 configuration register
   type RCC_PREDIV54CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV54       : RCC_PREDIV54CFGR_PREDIV54_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV54CFGR_Register use record
      PREDIV54       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV55CFGR_PREDIV55_Field is HAL.UInt10;

   --  RCC pre divider 55 configuration register
   type RCC_PREDIV55CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV55       : RCC_PREDIV55CFGR_PREDIV55_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV55CFGR_Register use record
      PREDIV55       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV56CFGR_PREDIV56_Field is HAL.UInt10;

   --  RCC pre divider 56 configuration register
   type RCC_PREDIV56CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV56       : RCC_PREDIV56CFGR_PREDIV56_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV56CFGR_Register use record
      PREDIV56       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV57CFGR_PREDIV57_Field is HAL.UInt10;

   --  RCC pre divider 57 configuration register
   type RCC_PREDIV57CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV57       : RCC_PREDIV57CFGR_PREDIV57_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV57CFGR_Register use record
      PREDIV57       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV58CFGR_PREDIV58_Field is HAL.UInt10;

   --  RCC pre divider 58 configuration register
   type RCC_PREDIV58CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV58       : RCC_PREDIV58CFGR_PREDIV58_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV58CFGR_Register use record
      PREDIV58       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV59CFGR_PREDIV59_Field is HAL.UInt10;

   --  RCC pre divider 59 configuration register
   type RCC_PREDIV59CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV59       : RCC_PREDIV59CFGR_PREDIV59_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV59CFGR_Register use record
      PREDIV59       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV60CFGR_PREDIV60_Field is HAL.UInt10;

   --  RCC pre divider 60 configuration register
   type RCC_PREDIV60CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV60       : RCC_PREDIV60CFGR_PREDIV60_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV60CFGR_Register use record
      PREDIV60       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV61CFGR_PREDIV61_Field is HAL.UInt10;

   --  RCC pre divider 61 configuration register
   type RCC_PREDIV61CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV61       : RCC_PREDIV61CFGR_PREDIV61_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV61CFGR_Register use record
      PREDIV61       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV62CFGR_PREDIV62_Field is HAL.UInt10;

   --  RCC pre divider 62 configuration register
   type RCC_PREDIV62CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV62       : RCC_PREDIV62CFGR_PREDIV62_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV62CFGR_Register use record
      PREDIV62       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_PREDIV63CFGR_PREDIV63_Field is HAL.UInt10;

   --  RCC pre divider 63 configuration register
   type RCC_PREDIV63CFGR_Register is record
      --  Predivider channel x divider ratio
      PREDIV63       : RCC_PREDIV63CFGR_PREDIV63_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PREDIV63CFGR_Register use record
      PREDIV63       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RCC_FINDIV0CFGR_FINDIV0_Field is HAL.UInt6;

   --  RCC final divider 0 configuration register
   type RCC_FINDIV0CFGR_Register is record
      --  Channel x divider ratio
      FINDIV0       : RCC_FINDIV0CFGR_FINDIV0_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV0EN     : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV0CFGR_Register use record
      FINDIV0       at 0 range 0 .. 5;
      FINDIV0EN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV1CFGR_FINDIV1_Field is HAL.UInt6;

   --  RCC final divider 1 configuration register
   type RCC_FINDIV1CFGR_Register is record
      --  Channel x divider ratio
      FINDIV1       : RCC_FINDIV1CFGR_FINDIV1_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV1EN     : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV1CFGR_Register use record
      FINDIV1       at 0 range 0 .. 5;
      FINDIV1EN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV2CFGR_FINDIV2_Field is HAL.UInt6;

   --  RCC final divider 2 configuration register
   type RCC_FINDIV2CFGR_Register is record
      --  Channel x divider ratio
      FINDIV2       : RCC_FINDIV2CFGR_FINDIV2_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV2EN     : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV2CFGR_Register use record
      FINDIV2       at 0 range 0 .. 5;
      FINDIV2EN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV3CFGR_FINDIV3_Field is HAL.UInt6;

   --  RCC final divider 3 configuration register
   type RCC_FINDIV3CFGR_Register is record
      --  Channel x divider ratio
      FINDIV3       : RCC_FINDIV3CFGR_FINDIV3_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV3EN     : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV3CFGR_Register use record
      FINDIV3       at 0 range 0 .. 5;
      FINDIV3EN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV4CFGR_FINDIV4_Field is HAL.UInt6;

   --  RCC final divider 4 configuration register
   type RCC_FINDIV4CFGR_Register is record
      --  Channel x divider ratio
      FINDIV4       : RCC_FINDIV4CFGR_FINDIV4_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV4EN     : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV4CFGR_Register use record
      FINDIV4       at 0 range 0 .. 5;
      FINDIV4EN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV5CFGR_FINDIV5_Field is HAL.UInt6;

   --  RCC final divider 5 configuration register
   type RCC_FINDIV5CFGR_Register is record
      --  Channel x divider ratio
      FINDIV5       : RCC_FINDIV5CFGR_FINDIV5_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV5EN     : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV5CFGR_Register use record
      FINDIV5       at 0 range 0 .. 5;
      FINDIV5EN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV6CFGR_FINDIV6_Field is HAL.UInt6;

   --  RCC final divider 6 configuration register
   type RCC_FINDIV6CFGR_Register is record
      --  Channel x divider ratio
      FINDIV6       : RCC_FINDIV6CFGR_FINDIV6_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV6EN     : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV6CFGR_Register use record
      FINDIV6       at 0 range 0 .. 5;
      FINDIV6EN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV7CFGR_FINDIV7_Field is HAL.UInt6;

   --  RCC final divider 7 configuration register
   type RCC_FINDIV7CFGR_Register is record
      --  Channel x divider ratio
      FINDIV7       : RCC_FINDIV7CFGR_FINDIV7_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV7EN     : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV7CFGR_Register use record
      FINDIV7       at 0 range 0 .. 5;
      FINDIV7EN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV8CFGR_FINDIV8_Field is HAL.UInt6;

   --  RCC final divider 8 configuration register
   type RCC_FINDIV8CFGR_Register is record
      --  Channel x divider ratio
      FINDIV8       : RCC_FINDIV8CFGR_FINDIV8_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV8EN     : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV8CFGR_Register use record
      FINDIV8       at 0 range 0 .. 5;
      FINDIV8EN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV9CFGR_FINDIV9_Field is HAL.UInt6;

   --  RCC final divider 9 configuration register
   type RCC_FINDIV9CFGR_Register is record
      --  Channel x divider ratio
      FINDIV9       : RCC_FINDIV9CFGR_FINDIV9_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV9EN     : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV9CFGR_Register use record
      FINDIV9       at 0 range 0 .. 5;
      FINDIV9EN     at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV10CFGR_FINDIV10_Field is HAL.UInt6;

   --  RCC final divider 10 configuration register
   type RCC_FINDIV10CFGR_Register is record
      --  Channel x divider ratio
      FINDIV10      : RCC_FINDIV10CFGR_FINDIV10_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV10EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV10CFGR_Register use record
      FINDIV10      at 0 range 0 .. 5;
      FINDIV10EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV11CFGR_FINDIV11_Field is HAL.UInt6;

   --  RCC final divider 11 configuration register
   type RCC_FINDIV11CFGR_Register is record
      --  Channel x divider ratio
      FINDIV11      : RCC_FINDIV11CFGR_FINDIV11_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV11EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV11CFGR_Register use record
      FINDIV11      at 0 range 0 .. 5;
      FINDIV11EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV12CFGR_FINDIV12_Field is HAL.UInt6;

   --  RCC final divider 12 configuration register
   type RCC_FINDIV12CFGR_Register is record
      --  Channel x divider ratio
      FINDIV12      : RCC_FINDIV12CFGR_FINDIV12_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV12EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV12CFGR_Register use record
      FINDIV12      at 0 range 0 .. 5;
      FINDIV12EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV13CFGR_FINDIV13_Field is HAL.UInt6;

   --  RCC final divider 13 configuration register
   type RCC_FINDIV13CFGR_Register is record
      --  Channel x divider ratio
      FINDIV13      : RCC_FINDIV13CFGR_FINDIV13_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV13EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV13CFGR_Register use record
      FINDIV13      at 0 range 0 .. 5;
      FINDIV13EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV14CFGR_FINDIV14_Field is HAL.UInt6;

   --  RCC final divider 14 configuration register
   type RCC_FINDIV14CFGR_Register is record
      --  Channel x divider ratio
      FINDIV14      : RCC_FINDIV14CFGR_FINDIV14_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV14EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV14CFGR_Register use record
      FINDIV14      at 0 range 0 .. 5;
      FINDIV14EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV15CFGR_FINDIV15_Field is HAL.UInt6;

   --  RCC final divider 15 configuration register
   type RCC_FINDIV15CFGR_Register is record
      --  Channel x divider ratio
      FINDIV15      : RCC_FINDIV15CFGR_FINDIV15_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV15EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV15CFGR_Register use record
      FINDIV15      at 0 range 0 .. 5;
      FINDIV15EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV16CFGR_FINDIV16_Field is HAL.UInt6;

   --  RCC final divider 16 configuration register
   type RCC_FINDIV16CFGR_Register is record
      --  Channel x divider ratio
      FINDIV16      : RCC_FINDIV16CFGR_FINDIV16_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV16EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV16CFGR_Register use record
      FINDIV16      at 0 range 0 .. 5;
      FINDIV16EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV17CFGR_FINDIV17_Field is HAL.UInt6;

   --  RCC final divider 17 configuration register
   type RCC_FINDIV17CFGR_Register is record
      --  Channel x divider ratio
      FINDIV17      : RCC_FINDIV17CFGR_FINDIV17_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV17EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV17CFGR_Register use record
      FINDIV17      at 0 range 0 .. 5;
      FINDIV17EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV18CFGR_FINDIV18_Field is HAL.UInt6;

   --  RCC final divider 18 configuration register
   type RCC_FINDIV18CFGR_Register is record
      --  Channel x divider ratio
      FINDIV18      : RCC_FINDIV18CFGR_FINDIV18_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV18EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV18CFGR_Register use record
      FINDIV18      at 0 range 0 .. 5;
      FINDIV18EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV19CFGR_FINDIV19_Field is HAL.UInt6;

   --  RCC final divider 19 configuration register
   type RCC_FINDIV19CFGR_Register is record
      --  Channel x divider ratio
      FINDIV19      : RCC_FINDIV19CFGR_FINDIV19_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV19EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV19CFGR_Register use record
      FINDIV19      at 0 range 0 .. 5;
      FINDIV19EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV20CFGR_FINDIV20_Field is HAL.UInt6;

   --  RCC final divider 20 configuration register
   type RCC_FINDIV20CFGR_Register is record
      --  Channel x divider ratio
      FINDIV20      : RCC_FINDIV20CFGR_FINDIV20_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV20EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV20CFGR_Register use record
      FINDIV20      at 0 range 0 .. 5;
      FINDIV20EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV21CFGR_FINDIV21_Field is HAL.UInt6;

   --  RCC final divider 21 configuration register
   type RCC_FINDIV21CFGR_Register is record
      --  Channel x divider ratio
      FINDIV21      : RCC_FINDIV21CFGR_FINDIV21_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV21EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV21CFGR_Register use record
      FINDIV21      at 0 range 0 .. 5;
      FINDIV21EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV22CFGR_FINDIV22_Field is HAL.UInt6;

   --  RCC final divider 22 configuration register
   type RCC_FINDIV22CFGR_Register is record
      --  Channel x divider ratio
      FINDIV22      : RCC_FINDIV22CFGR_FINDIV22_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV22EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV22CFGR_Register use record
      FINDIV22      at 0 range 0 .. 5;
      FINDIV22EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV23CFGR_FINDIV23_Field is HAL.UInt6;

   --  RCC final divider 23 configuration register
   type RCC_FINDIV23CFGR_Register is record
      --  Channel x divider ratio
      FINDIV23      : RCC_FINDIV23CFGR_FINDIV23_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV23EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV23CFGR_Register use record
      FINDIV23      at 0 range 0 .. 5;
      FINDIV23EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV24CFGR_FINDIV24_Field is HAL.UInt6;

   --  RCC final divider 24 configuration register
   type RCC_FINDIV24CFGR_Register is record
      --  Channel x divider ratio
      FINDIV24      : RCC_FINDIV24CFGR_FINDIV24_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV24EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV24CFGR_Register use record
      FINDIV24      at 0 range 0 .. 5;
      FINDIV24EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV25CFGR_FINDIV25_Field is HAL.UInt6;

   --  RCC final divider 25 configuration register
   type RCC_FINDIV25CFGR_Register is record
      --  Channel x divider ratio
      FINDIV25      : RCC_FINDIV25CFGR_FINDIV25_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV25EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV25CFGR_Register use record
      FINDIV25      at 0 range 0 .. 5;
      FINDIV25EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV26CFGR_FINDIV26_Field is HAL.UInt6;

   --  RCC final divider 26 configuration register
   type RCC_FINDIV26CFGR_Register is record
      --  Channel x divider ratio
      FINDIV26      : RCC_FINDIV26CFGR_FINDIV26_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV26EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV26CFGR_Register use record
      FINDIV26      at 0 range 0 .. 5;
      FINDIV26EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV27CFGR_FINDIV27_Field is HAL.UInt6;

   --  RCC final divider 27 configuration register
   type RCC_FINDIV27CFGR_Register is record
      --  Channel x divider ratio
      FINDIV27      : RCC_FINDIV27CFGR_FINDIV27_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV27EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV27CFGR_Register use record
      FINDIV27      at 0 range 0 .. 5;
      FINDIV27EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV28CFGR_FINDIV28_Field is HAL.UInt6;

   --  RCC final divider 28 configuration register
   type RCC_FINDIV28CFGR_Register is record
      --  Channel x divider ratio
      FINDIV28      : RCC_FINDIV28CFGR_FINDIV28_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV28EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV28CFGR_Register use record
      FINDIV28      at 0 range 0 .. 5;
      FINDIV28EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV29CFGR_FINDIV29_Field is HAL.UInt6;

   --  RCC final divider 29 configuration register
   type RCC_FINDIV29CFGR_Register is record
      --  Channel x divider ratio
      FINDIV29      : RCC_FINDIV29CFGR_FINDIV29_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV29EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV29CFGR_Register use record
      FINDIV29      at 0 range 0 .. 5;
      FINDIV29EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV30CFGR_FINDIV30_Field is HAL.UInt6;

   --  RCC final divider 30 configuration register
   type RCC_FINDIV30CFGR_Register is record
      --  Channel x divider ratio
      FINDIV30      : RCC_FINDIV30CFGR_FINDIV30_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV30EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV30CFGR_Register use record
      FINDIV30      at 0 range 0 .. 5;
      FINDIV30EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV31CFGR_FINDIV31_Field is HAL.UInt6;

   --  RCC final divider 31 configuration register
   type RCC_FINDIV31CFGR_Register is record
      --  Channel x divider ratio
      FINDIV31      : RCC_FINDIV31CFGR_FINDIV31_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV31EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV31CFGR_Register use record
      FINDIV31      at 0 range 0 .. 5;
      FINDIV31EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV32CFGR_FINDIV32_Field is HAL.UInt6;

   --  RCC final divider 32 configuration register
   type RCC_FINDIV32CFGR_Register is record
      --  Channel x divider ratio
      FINDIV32      : RCC_FINDIV32CFGR_FINDIV32_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV32EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV32CFGR_Register use record
      FINDIV32      at 0 range 0 .. 5;
      FINDIV32EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV33CFGR_FINDIV33_Field is HAL.UInt6;

   --  RCC final divider 33 configuration register
   type RCC_FINDIV33CFGR_Register is record
      --  Channel x divider ratio
      FINDIV33      : RCC_FINDIV33CFGR_FINDIV33_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV33EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV33CFGR_Register use record
      FINDIV33      at 0 range 0 .. 5;
      FINDIV33EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV34CFGR_FINDIV34_Field is HAL.UInt6;

   --  RCC final divider 34 configuration register
   type RCC_FINDIV34CFGR_Register is record
      --  Channel x divider ratio
      FINDIV34      : RCC_FINDIV34CFGR_FINDIV34_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV34EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV34CFGR_Register use record
      FINDIV34      at 0 range 0 .. 5;
      FINDIV34EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV35CFGR_FINDIV35_Field is HAL.UInt6;

   --  RCC final divider 35 configuration register
   type RCC_FINDIV35CFGR_Register is record
      --  Channel x divider ratio
      FINDIV35      : RCC_FINDIV35CFGR_FINDIV35_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV35EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV35CFGR_Register use record
      FINDIV35      at 0 range 0 .. 5;
      FINDIV35EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV36CFGR_FINDIV36_Field is HAL.UInt6;

   --  RCC final divider 36 configuration register
   type RCC_FINDIV36CFGR_Register is record
      --  Channel x divider ratio
      FINDIV36      : RCC_FINDIV36CFGR_FINDIV36_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV36EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV36CFGR_Register use record
      FINDIV36      at 0 range 0 .. 5;
      FINDIV36EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV37CFGR_FINDIV37_Field is HAL.UInt6;

   --  RCC final divider 37 configuration register
   type RCC_FINDIV37CFGR_Register is record
      --  Channel x divider ratio
      FINDIV37      : RCC_FINDIV37CFGR_FINDIV37_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV37EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV37CFGR_Register use record
      FINDIV37      at 0 range 0 .. 5;
      FINDIV37EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV38CFGR_FINDIV38_Field is HAL.UInt6;

   --  RCC final divider 38 configuration register
   type RCC_FINDIV38CFGR_Register is record
      --  Channel x divider ratio
      FINDIV38      : RCC_FINDIV38CFGR_FINDIV38_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV38EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV38CFGR_Register use record
      FINDIV38      at 0 range 0 .. 5;
      FINDIV38EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV39CFGR_FINDIV39_Field is HAL.UInt6;

   --  RCC final divider 39 configuration register
   type RCC_FINDIV39CFGR_Register is record
      --  Channel x divider ratio
      FINDIV39      : RCC_FINDIV39CFGR_FINDIV39_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV39EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV39CFGR_Register use record
      FINDIV39      at 0 range 0 .. 5;
      FINDIV39EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV40CFGR_FINDIV40_Field is HAL.UInt6;

   --  RCC final divider 40 configuration register
   type RCC_FINDIV40CFGR_Register is record
      --  Channel x divider ratio
      FINDIV40      : RCC_FINDIV40CFGR_FINDIV40_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV40EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV40CFGR_Register use record
      FINDIV40      at 0 range 0 .. 5;
      FINDIV40EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV41CFGR_FINDIV41_Field is HAL.UInt6;

   --  RCC final divider 41 configuration register
   type RCC_FINDIV41CFGR_Register is record
      --  Channel x divider ratio
      FINDIV41      : RCC_FINDIV41CFGR_FINDIV41_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV41EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV41CFGR_Register use record
      FINDIV41      at 0 range 0 .. 5;
      FINDIV41EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV42CFGR_FINDIV42_Field is HAL.UInt6;

   --  RCC final divider 42 configuration register
   type RCC_FINDIV42CFGR_Register is record
      --  Channel x divider ratio
      FINDIV42      : RCC_FINDIV42CFGR_FINDIV42_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV42EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV42CFGR_Register use record
      FINDIV42      at 0 range 0 .. 5;
      FINDIV42EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV43CFGR_FINDIV43_Field is HAL.UInt6;

   --  RCC final divider 43 configuration register
   type RCC_FINDIV43CFGR_Register is record
      --  Channel x divider ratio
      FINDIV43      : RCC_FINDIV43CFGR_FINDIV43_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV43EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV43CFGR_Register use record
      FINDIV43      at 0 range 0 .. 5;
      FINDIV43EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV44CFGR_FINDIV44_Field is HAL.UInt6;

   --  RCC final divider 44 configuration register
   type RCC_FINDIV44CFGR_Register is record
      --  Channel x divider ratio
      FINDIV44      : RCC_FINDIV44CFGR_FINDIV44_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV44EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV44CFGR_Register use record
      FINDIV44      at 0 range 0 .. 5;
      FINDIV44EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV45CFGR_FINDIV45_Field is HAL.UInt6;

   --  RCC final divider 45 configuration register
   type RCC_FINDIV45CFGR_Register is record
      --  Channel x divider ratio
      FINDIV45      : RCC_FINDIV45CFGR_FINDIV45_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV45EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV45CFGR_Register use record
      FINDIV45      at 0 range 0 .. 5;
      FINDIV45EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV46CFGR_FINDIV46_Field is HAL.UInt6;

   --  RCC final divider 46 configuration register
   type RCC_FINDIV46CFGR_Register is record
      --  Channel x divider ratio
      FINDIV46      : RCC_FINDIV46CFGR_FINDIV46_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV46EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV46CFGR_Register use record
      FINDIV46      at 0 range 0 .. 5;
      FINDIV46EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV47CFGR_FINDIV47_Field is HAL.UInt6;

   --  RCC final divider 47 configuration register
   type RCC_FINDIV47CFGR_Register is record
      --  Channel x divider ratio
      FINDIV47      : RCC_FINDIV47CFGR_FINDIV47_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV47EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV47CFGR_Register use record
      FINDIV47      at 0 range 0 .. 5;
      FINDIV47EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV48CFGR_FINDIV48_Field is HAL.UInt6;

   --  RCC final divider 48 configuration register
   type RCC_FINDIV48CFGR_Register is record
      --  Channel x divider ratio
      FINDIV48      : RCC_FINDIV48CFGR_FINDIV48_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV48EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV48CFGR_Register use record
      FINDIV48      at 0 range 0 .. 5;
      FINDIV48EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV49CFGR_FINDIV49_Field is HAL.UInt6;

   --  RCC final divider 49 configuration register
   type RCC_FINDIV49CFGR_Register is record
      --  Channel x divider ratio
      FINDIV49      : RCC_FINDIV49CFGR_FINDIV49_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV49EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV49CFGR_Register use record
      FINDIV49      at 0 range 0 .. 5;
      FINDIV49EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV50CFGR_FINDIV50_Field is HAL.UInt6;

   --  RCC final divider 50 configuration register
   type RCC_FINDIV50CFGR_Register is record
      --  Channel x divider ratio
      FINDIV50      : RCC_FINDIV50CFGR_FINDIV50_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV50EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV50CFGR_Register use record
      FINDIV50      at 0 range 0 .. 5;
      FINDIV50EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV51CFGR_FINDIV51_Field is HAL.UInt6;

   --  RCC final divider 51 configuration register
   type RCC_FINDIV51CFGR_Register is record
      --  Channel x divider ratio
      FINDIV51      : RCC_FINDIV51CFGR_FINDIV51_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV51EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV51CFGR_Register use record
      FINDIV51      at 0 range 0 .. 5;
      FINDIV51EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV52CFGR_FINDIV52_Field is HAL.UInt6;

   --  RCC final divider 52 configuration register
   type RCC_FINDIV52CFGR_Register is record
      --  Channel x divider ratio
      FINDIV52      : RCC_FINDIV52CFGR_FINDIV52_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV52EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV52CFGR_Register use record
      FINDIV52      at 0 range 0 .. 5;
      FINDIV52EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV53CFGR_FINDIV53_Field is HAL.UInt6;

   --  RCC final divider 53 configuration register
   type RCC_FINDIV53CFGR_Register is record
      --  Channel x divider ratio
      FINDIV53      : RCC_FINDIV53CFGR_FINDIV53_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV53EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV53CFGR_Register use record
      FINDIV53      at 0 range 0 .. 5;
      FINDIV53EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV54CFGR_FINDIV54_Field is HAL.UInt6;

   --  RCC final divider 54 configuration register
   type RCC_FINDIV54CFGR_Register is record
      --  Channel x divider ratio
      FINDIV54      : RCC_FINDIV54CFGR_FINDIV54_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV54EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV54CFGR_Register use record
      FINDIV54      at 0 range 0 .. 5;
      FINDIV54EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV55CFGR_FINDIV55_Field is HAL.UInt6;

   --  RCC final divider 55 configuration register
   type RCC_FINDIV55CFGR_Register is record
      --  Channel x divider ratio
      FINDIV55      : RCC_FINDIV55CFGR_FINDIV55_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV55EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV55CFGR_Register use record
      FINDIV55      at 0 range 0 .. 5;
      FINDIV55EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV56CFGR_FINDIV56_Field is HAL.UInt6;

   --  RCC final divider 56 configuration register
   type RCC_FINDIV56CFGR_Register is record
      --  Channel x divider ratio
      FINDIV56      : RCC_FINDIV56CFGR_FINDIV56_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV56EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV56CFGR_Register use record
      FINDIV56      at 0 range 0 .. 5;
      FINDIV56EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV57CFGR_FINDIV57_Field is HAL.UInt6;

   --  RCC final divider 57 configuration register
   type RCC_FINDIV57CFGR_Register is record
      --  Channel x divider ratio
      FINDIV57      : RCC_FINDIV57CFGR_FINDIV57_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV57EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV57CFGR_Register use record
      FINDIV57      at 0 range 0 .. 5;
      FINDIV57EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV58CFGR_FINDIV58_Field is HAL.UInt6;

   --  RCC final divider 58 configuration register
   type RCC_FINDIV58CFGR_Register is record
      --  Channel x divider ratio
      FINDIV58      : RCC_FINDIV58CFGR_FINDIV58_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV58EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV58CFGR_Register use record
      FINDIV58      at 0 range 0 .. 5;
      FINDIV58EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV59CFGR_FINDIV59_Field is HAL.UInt6;

   --  RCC final divider 59 configuration register
   type RCC_FINDIV59CFGR_Register is record
      --  Channel x divider ratio
      FINDIV59      : RCC_FINDIV59CFGR_FINDIV59_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV59EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV59CFGR_Register use record
      FINDIV59      at 0 range 0 .. 5;
      FINDIV59EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV60CFGR_FINDIV60_Field is HAL.UInt6;

   --  RCC final divider 60 configuration register
   type RCC_FINDIV60CFGR_Register is record
      --  Channel x divider ratio
      FINDIV60      : RCC_FINDIV60CFGR_FINDIV60_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV60EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV60CFGR_Register use record
      FINDIV60      at 0 range 0 .. 5;
      FINDIV60EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV61CFGR_FINDIV61_Field is HAL.UInt6;

   --  RCC final divider 61 configuration register
   type RCC_FINDIV61CFGR_Register is record
      --  Channel x divider ratio
      FINDIV61      : RCC_FINDIV61CFGR_FINDIV61_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV61EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV61CFGR_Register use record
      FINDIV61      at 0 range 0 .. 5;
      FINDIV61EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV62CFGR_FINDIV62_Field is HAL.UInt6;

   --  RCC final divider 62 configuration register
   type RCC_FINDIV62CFGR_Register is record
      --  Channel x divider ratio
      FINDIV62      : RCC_FINDIV62CFGR_FINDIV62_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV62EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV62CFGR_Register use record
      FINDIV62      at 0 range 0 .. 5;
      FINDIV62EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FINDIV63CFGR_FINDIV63_Field is HAL.UInt6;

   --  RCC final divider 63 configuration register
   type RCC_FINDIV63CFGR_Register is record
      --  Channel x divider ratio
      FINDIV63      : RCC_FINDIV63CFGR_FINDIV63_Field := 16#0#;
      --  Final divider channel x output enable
      FINDIV63EN    : Boolean := True;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FINDIV63CFGR_Register use record
      FINDIV63      at 0 range 0 .. 5;
      FINDIV63EN    at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RCC_FCALCOBS0CFGR_CKINTSEL_Field is HAL.UInt8;
   subtype RCC_FCALCOBS0CFGR_CKEXTSEL_Field is HAL.UInt3;
   subtype RCC_FCALCOBS0CFGR_CKOBSDIV_Field is HAL.UInt3;

   --  RCC clock frequency calculator and observation 0 clock 	configuration
   --  register
   type RCC_FCALCOBS0CFGR_Register is record
      --  Internal clock selector for clock frequency calculator and
      --  observation clock 0
      CKINTSEL       : RCC_FCALCOBS0CFGR_CKINTSEL_Field := 16#87#;
      --  External clock selector for clock frequency calculator and
      CKEXTSEL       : RCC_FCALCOBS0CFGR_CKEXTSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  External clock source for clock frequency calculator input clock
      FCALCCKEXTSEL  : Boolean := False;
      --  External clock source for observation clock 0
      CKOBSEXTSEL    : Boolean := False;
      --  Clock frequency calculator input clock inverter
      FCALCCKINV     : Boolean := False;
      --  Observation clock 0 inverter
      CKOBSINV       : Boolean := False;
      --  unspecified
      Reserved_19_21 : HAL.UInt3 := 16#0#;
      --  Observation clock 0 divide ratio
      CKOBSDIV       : RCC_FCALCOBS0CFGR_CKOBSDIV_Field := 16#0#;
      --  Clock frequency calculator input clock enable
      FCALCCKEN      : Boolean := True;
      --  Observation clock 0 output enable
      CKOBSEN        : Boolean := True;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#2#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FCALCOBS0CFGR_Register use record
      CKINTSEL       at 0 range 0 .. 7;
      CKEXTSEL       at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      FCALCCKEXTSEL  at 0 range 15 .. 15;
      CKOBSEXTSEL    at 0 range 16 .. 16;
      FCALCCKINV     at 0 range 17 .. 17;
      CKOBSINV       at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      CKOBSDIV       at 0 range 22 .. 24;
      FCALCCKEN      at 0 range 25 .. 25;
      CKOBSEN        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype RCC_FCALCOBS1CFGR_CKINTSEL_Field is HAL.UInt8;
   subtype RCC_FCALCOBS1CFGR_CKEXTSEL_Field is HAL.UInt3;
   subtype RCC_FCALCOBS1CFGR_CKOBSDIV_Field is HAL.UInt3;

   --  RCC clock frequency calculator and observation 1 clock 	configuration
   --  register
   type RCC_FCALCOBS1CFGR_Register is record
      --  Internal clock selector for observation clock 1
      CKINTSEL       : RCC_FCALCOBS1CFGR_CKINTSEL_Field := 16#87#;
      --  External clock for observation clock 1
      CKEXTSEL       : RCC_FCALCOBS1CFGR_CKEXTSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  External clock source for the observation clock 1
      CKOBSEXTSEL    : Boolean := False;
      --  unspecified
      Reserved_17_17 : HAL.Bit := 16#0#;
      --  Observation clock 1 inverter
      CKOBSINV       : Boolean := False;
      --  unspecified
      Reserved_19_21 : HAL.UInt3 := 16#0#;
      --  Observation clock 1 divide ratio
      CKOBSDIV       : RCC_FCALCOBS1CFGR_CKOBSDIV_Field := 16#0#;
      --  unspecified
      Reserved_25_25 : HAL.Bit := 16#1#;
      --  Observation clock 1 output enable
      CKOBSEN        : Boolean := True;
      --  Clock frequency calculator reset
      FCALCRSTN      : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FCALCOBS1CFGR_Register use record
      CKINTSEL       at 0 range 0 .. 7;
      CKEXTSEL       at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      CKOBSEXTSEL    at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      CKOBSINV       at 0 range 18 .. 18;
      Reserved_19_21 at 0 range 19 .. 21;
      CKOBSDIV       at 0 range 22 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      CKOBSEN        at 0 range 26 .. 26;
      FCALCRSTN      at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype RCC_FCALCREFCFGR_FCALCREFCKSEL_Field is HAL.UInt3;

   --  RCC clock frequency calculator reference clock	configuration register
   type RCC_FCALCREFCFGR_Register is record
      --  Reference clock selection used by clock frequency calculator
      FCALCREFCKSEL : RCC_FCALCREFCFGR_FCALCREFCKSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#800#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FCALCREFCFGR_Register use record
      FCALCREFCKSEL at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC clock frequency calculator control register 1
   type RCC_FCALCCR1_Register is record
      --  Clock frequency calculator run
      FCALCRUN      : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FCALCCR1_Register use record
      FCALCRUN      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype RCC_FCALCCR2_FCALCMD_Field is HAL.UInt2;
   subtype RCC_FCALCCR2_FCALCTWC_Field is HAL.UInt4;
   subtype RCC_FCALCCR2_FCALCTYP_Field is HAL.UInt5;

   --  RCC clock frequency calculator control register 2
   type RCC_FCALCCR2_Register is record
      --  unspecified
      Reserved_0_2   : HAL.UInt3 := 16#0#;
      --  Clock frequency calculation method
      FCALCMD        : RCC_FCALCCR2_FCALCMD_Field := 16#0#;
      --  unspecified
      Reserved_5_10  : HAL.UInt6 := 16#0#;
      --  Time window code for clock frequency calculation
      FCALCTWC       : RCC_FCALCCR2_FCALCTWC_Field := 16#0#;
      --  unspecified
      Reserved_15_16 : HAL.UInt2 := 16#0#;
      --  Clock frequency calculation type selection
      FCALCTYP       : RCC_FCALCCR2_FCALCTYP_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FCALCCR2_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      FCALCMD        at 0 range 3 .. 4;
      Reserved_5_10  at 0 range 5 .. 10;
      FCALCTWC       at 0 range 11 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      FCALCTYP       at 0 range 17 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype RCC_FCALCSR_FVAL_Field is HAL.UInt17;

   --  RCC clock frequency calculator status register
   type RCC_FCALCSR_Register is record
      --  Read-only. Clock frequency calculation value
      FVAL           : RCC_FCALCSR_FVAL_Field;
      --  unspecified
      Reserved_17_18 : HAL.UInt2;
      --  Read-only. Clock frequency calculation status
      FCALCSTS       : Boolean;
      --  unspecified
      Reserved_20_31 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_FCALCSR_Register use record
      FVAL           at 0 range 0 .. 16;
      Reserved_17_18 at 0 range 17 .. 18;
      FCALCSTS       at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  RCC PLL4 configuration register 1
   type RCC_PLL4CFGR1_Register is record
      --  PLLy spread-spectrum modulator reset
      SSMODRST       : Boolean := True;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  PLLy enable
      PLLEN          : Boolean := False;
      --  unspecified
      Reserved_9_23  : HAL.UInt15 := 16#0#;
      --  Read-only. PLLy clock ready flag
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  PLLy reference clock state
      CKREFST        : Boolean := True;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL4CFGR1_Register use record
      SSMODRST       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      PLLEN          at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      PLLRDY         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      CKREFST        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RCC_PLL4CFGR2_FREFDIV_Field is HAL.UInt6;
   subtype RCC_PLL4CFGR2_FBDIV_Field is HAL.UInt12;

   --  RCC PLL4 configuration register 2
   type RCC_PLL4CFGR2_Register is record
      --  PLLy reference input clock divide frequency ratio
      FREFDIV        : RCC_PLL4CFGR2_FREFDIV_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  PLLy VCO multiplication factor
      FBDIV          : RCC_PLL4CFGR2_FBDIV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL4CFGR2_Register use record
      FREFDIV        at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      FBDIV          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype RCC_PLL4CFGR3_FRACIN_Field is HAL.UInt24;

   --  RCC PLL4 configuration register 3
   type RCC_PLL4CFGR3_Register is record
      --  Fractional part of PLLy VCO multiplication factor
      FRACIN         : RCC_PLL4CFGR3_FRACIN_Field := 16#0#;
      --  PLLy VCO frequency modulation mode
      DOWNSPREAD     : Boolean := False;
      --  PLLy noise canceling DAC enable in fractional mode.
      DACEN          : Boolean := False;
      --  PLLy spread-spectrum modulator disable
      SSCGDIS        : Boolean := True;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL4CFGR3_Register use record
      FRACIN         at 0 range 0 .. 23;
      DOWNSPREAD     at 0 range 24 .. 24;
      DACEN          at 0 range 25 .. 25;
      SSCGDIS        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  RCC PLL4 configuration register 4
   type RCC_PLL4CFGR4_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  PLLy delta-sigma modulator enable
      DSMEN          : Boolean := False;
      --  PLLy output and post dividers enable
      FOUTPOSTDIVEN  : Boolean := False;
      --  PLLy FOUTPOSTDIV bypass
      BYPASS         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL4CFGR4_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DSMEN          at 0 range 8 .. 8;
      FOUTPOSTDIVEN  at 0 range 9 .. 9;
      BYPASS         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype RCC_PLL4CFGR5_DIVVAL_Field is HAL.UInt4;
   subtype RCC_PLL4CFGR5_SPREAD_Field is HAL.UInt5;

   --  RCC PLL4 configuration register 5
   type RCC_PLL4CFGR5_Register is record
      --  Modulation frequency adjustment for PLLy
      DIVVAL         : RCC_PLL4CFGR5_DIVVAL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Modulation depth adjustment for PLLy
      SPREAD         : RCC_PLL4CFGR5_SPREAD_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL4CFGR5_Register use record
      DIVVAL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SPREAD         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RCC_PLL4CFGR6_POSTDIV1_Field is HAL.UInt3;

   --  RCC PLL4 configuration register 6
   type RCC_PLL4CFGR6_Register is record
      --  PLLy VCO frequency divide level 1
      POSTDIV1      : RCC_PLL4CFGR6_POSTDIV1_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL4CFGR6_Register use record
      POSTDIV1      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RCC_PLL4CFGR7_POSTDIV2_Field is HAL.UInt3;

   --  RCC PLL4 configuration register 7
   type RCC_PLL4CFGR7_Register is record
      --  PLLy VCO frequency divide level 2
      POSTDIV2      : RCC_PLL4CFGR7_POSTDIV2_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL4CFGR7_Register use record
      POSTDIV2      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC PLL5 configuration register 1
   type RCC_PLL5CFGR1_Register is record
      --  PLLy spread-spectrum modulator reset
      SSMODRST       : Boolean := True;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  PLLy enable
      PLLEN          : Boolean := False;
      --  unspecified
      Reserved_9_23  : HAL.UInt15 := 16#0#;
      --  Read-only. PLLy clock ready flag
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  PLLy reference clock state
      CKREFST        : Boolean := True;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL5CFGR1_Register use record
      SSMODRST       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      PLLEN          at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      PLLRDY         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      CKREFST        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RCC_PLL5CFGR2_FREFDIV_Field is HAL.UInt6;
   subtype RCC_PLL5CFGR2_FBDIV_Field is HAL.UInt12;

   --  RCC PLL5 configuration register 2
   type RCC_PLL5CFGR2_Register is record
      --  PLLy reference input clock divide frequency ratio
      FREFDIV        : RCC_PLL5CFGR2_FREFDIV_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  PLLy VCO multiplication factor
      FBDIV          : RCC_PLL5CFGR2_FBDIV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL5CFGR2_Register use record
      FREFDIV        at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      FBDIV          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype RCC_PLL5CFGR3_FRACIN_Field is HAL.UInt24;

   --  RCC PLL5 configuration register 3
   type RCC_PLL5CFGR3_Register is record
      --  Fractional part of PLLy VCO multiplication factor
      FRACIN         : RCC_PLL5CFGR3_FRACIN_Field := 16#0#;
      --  PLLy VCO frequency modulation mode
      DOWNSPREAD     : Boolean := False;
      --  PLLy noise canceling DAC enable in fractional mode.
      DACEN          : Boolean := False;
      --  PLLy spread-spectrum modulator disable
      SSCGDIS        : Boolean := True;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL5CFGR3_Register use record
      FRACIN         at 0 range 0 .. 23;
      DOWNSPREAD     at 0 range 24 .. 24;
      DACEN          at 0 range 25 .. 25;
      SSCGDIS        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  RCC PLL5 configuration register 4
   type RCC_PLL5CFGR4_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  PLLy delta-sigma modulator enable
      DSMEN          : Boolean := False;
      --  PLLy output and post dividers enable
      FOUTPOSTDIVEN  : Boolean := False;
      --  PLLy FOUTPOSTDIV bypass
      BYPASS         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL5CFGR4_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DSMEN          at 0 range 8 .. 8;
      FOUTPOSTDIVEN  at 0 range 9 .. 9;
      BYPASS         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype RCC_PLL5CFGR5_DIVVAL_Field is HAL.UInt4;
   subtype RCC_PLL5CFGR5_SPREAD_Field is HAL.UInt5;

   --  RCC PLL5 configuration register 5
   type RCC_PLL5CFGR5_Register is record
      --  Modulation frequency adjustment for PLLy
      DIVVAL         : RCC_PLL5CFGR5_DIVVAL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Modulation depth adjustment for PLLy
      SPREAD         : RCC_PLL5CFGR5_SPREAD_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL5CFGR5_Register use record
      DIVVAL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SPREAD         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RCC_PLL5CFGR6_POSTDIV1_Field is HAL.UInt3;

   --  RCC PLL5 configuration register 6
   type RCC_PLL5CFGR6_Register is record
      --  PLLy VCO frequency divide level 1
      POSTDIV1      : RCC_PLL5CFGR6_POSTDIV1_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL5CFGR6_Register use record
      POSTDIV1      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RCC_PLL5CFGR7_POSTDIV2_Field is HAL.UInt3;

   --  RCC PLL5 configuration register 7
   type RCC_PLL5CFGR7_Register is record
      --  PLLy VCO frequency divide level 2
      POSTDIV2      : RCC_PLL5CFGR7_POSTDIV2_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL5CFGR7_Register use record
      POSTDIV2      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC PLL6 configuration register 1
   type RCC_PLL6CFGR1_Register is record
      --  PLLy spread-spectrum modulator reset
      SSMODRST       : Boolean := True;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  PLLy enable
      PLLEN          : Boolean := False;
      --  unspecified
      Reserved_9_23  : HAL.UInt15 := 16#0#;
      --  Read-only. PLLy clock ready flag
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  PLLy reference clock state
      CKREFST        : Boolean := True;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL6CFGR1_Register use record
      SSMODRST       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      PLLEN          at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      PLLRDY         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      CKREFST        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RCC_PLL6CFGR2_FREFDIV_Field is HAL.UInt6;
   subtype RCC_PLL6CFGR2_FBDIV_Field is HAL.UInt12;

   --  RCC PLL6 configuration register 2
   type RCC_PLL6CFGR2_Register is record
      --  PLLy reference input clock divide frequency ratio
      FREFDIV        : RCC_PLL6CFGR2_FREFDIV_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  PLLy VCO multiplication factor
      FBDIV          : RCC_PLL6CFGR2_FBDIV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL6CFGR2_Register use record
      FREFDIV        at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      FBDIV          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype RCC_PLL6CFGR3_FRACIN_Field is HAL.UInt24;

   --  RCC PLL6 configuration register 3
   type RCC_PLL6CFGR3_Register is record
      --  Fractional part of PLLy VCO multiplication factor
      FRACIN         : RCC_PLL6CFGR3_FRACIN_Field := 16#0#;
      --  PLLy VCO frequency modulation mode
      DOWNSPREAD     : Boolean := False;
      --  PLLy noise canceling DAC enable in fractional mode.
      DACEN          : Boolean := False;
      --  PLLy spread-spectrum modulator disable
      SSCGDIS        : Boolean := True;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL6CFGR3_Register use record
      FRACIN         at 0 range 0 .. 23;
      DOWNSPREAD     at 0 range 24 .. 24;
      DACEN          at 0 range 25 .. 25;
      SSCGDIS        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  RCC PLL6 configuration register 4
   type RCC_PLL6CFGR4_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  PLLy delta-sigma modulator enable
      DSMEN          : Boolean := False;
      --  PLLy output and post dividers enable
      FOUTPOSTDIVEN  : Boolean := False;
      --  PLLy FOUTPOSTDIV bypass
      BYPASS         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL6CFGR4_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DSMEN          at 0 range 8 .. 8;
      FOUTPOSTDIVEN  at 0 range 9 .. 9;
      BYPASS         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype RCC_PLL6CFGR5_DIVVAL_Field is HAL.UInt4;
   subtype RCC_PLL6CFGR5_SPREAD_Field is HAL.UInt5;

   --  RCC PLL6 configuration register 5
   type RCC_PLL6CFGR5_Register is record
      --  Modulation frequency adjustment for PLLy
      DIVVAL         : RCC_PLL6CFGR5_DIVVAL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Modulation depth adjustment for PLLy
      SPREAD         : RCC_PLL6CFGR5_SPREAD_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL6CFGR5_Register use record
      DIVVAL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SPREAD         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RCC_PLL6CFGR6_POSTDIV1_Field is HAL.UInt3;

   --  RCC PLL6 configuration register 6
   type RCC_PLL6CFGR6_Register is record
      --  PLLy VCO frequency divide level 1
      POSTDIV1      : RCC_PLL6CFGR6_POSTDIV1_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL6CFGR6_Register use record
      POSTDIV1      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RCC_PLL6CFGR7_POSTDIV2_Field is HAL.UInt3;

   --  RCC PLL6 configuration register 7
   type RCC_PLL6CFGR7_Register is record
      --  PLLy VCO frequency divide level 2
      POSTDIV2      : RCC_PLL6CFGR7_POSTDIV2_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL6CFGR7_Register use record
      POSTDIV2      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC PLL7 configuration register 1
   type RCC_PLL7CFGR1_Register is record
      --  PLLy spread-spectrum modulator reset
      SSMODRST       : Boolean := True;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  PLLy enable
      PLLEN          : Boolean := False;
      --  unspecified
      Reserved_9_23  : HAL.UInt15 := 16#0#;
      --  Read-only. PLLy clock ready flag
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  PLLy reference clock state
      CKREFST        : Boolean := True;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL7CFGR1_Register use record
      SSMODRST       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      PLLEN          at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      PLLRDY         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      CKREFST        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RCC_PLL7CFGR2_FREFDIV_Field is HAL.UInt6;
   subtype RCC_PLL7CFGR2_FBDIV_Field is HAL.UInt12;

   --  RCC PLL7 configuration register 2
   type RCC_PLL7CFGR2_Register is record
      --  PLLy reference input clock divide frequency ratio
      FREFDIV        : RCC_PLL7CFGR2_FREFDIV_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  PLLy VCO multiplication factor
      FBDIV          : RCC_PLL7CFGR2_FBDIV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL7CFGR2_Register use record
      FREFDIV        at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      FBDIV          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype RCC_PLL7CFGR3_FRACIN_Field is HAL.UInt24;

   --  RCC PLL7 configuration register 3
   type RCC_PLL7CFGR3_Register is record
      --  Fractional part of PLLy VCO multiplication factor
      FRACIN         : RCC_PLL7CFGR3_FRACIN_Field := 16#0#;
      --  PLLy VCO frequency modulation mode
      DOWNSPREAD     : Boolean := False;
      --  PLLy noise canceling DAC enable in fractional mode.
      DACEN          : Boolean := False;
      --  PLLy spread-spectrum modulator disable
      SSCGDIS        : Boolean := True;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL7CFGR3_Register use record
      FRACIN         at 0 range 0 .. 23;
      DOWNSPREAD     at 0 range 24 .. 24;
      DACEN          at 0 range 25 .. 25;
      SSCGDIS        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  RCC PLL7 configuration register 4
   type RCC_PLL7CFGR4_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  PLLy delta-sigma modulator enable
      DSMEN          : Boolean := False;
      --  PLLy output and post dividers enable
      FOUTPOSTDIVEN  : Boolean := False;
      --  PLLy FOUTPOSTDIV bypass
      BYPASS         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL7CFGR4_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DSMEN          at 0 range 8 .. 8;
      FOUTPOSTDIVEN  at 0 range 9 .. 9;
      BYPASS         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype RCC_PLL7CFGR5_DIVVAL_Field is HAL.UInt4;
   subtype RCC_PLL7CFGR5_SPREAD_Field is HAL.UInt5;

   --  RCC PLL7 configuration register 5
   type RCC_PLL7CFGR5_Register is record
      --  Modulation frequency adjustment for PLLy
      DIVVAL         : RCC_PLL7CFGR5_DIVVAL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Modulation depth adjustment for PLLy
      SPREAD         : RCC_PLL7CFGR5_SPREAD_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL7CFGR5_Register use record
      DIVVAL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SPREAD         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RCC_PLL7CFGR6_POSTDIV1_Field is HAL.UInt3;

   --  RCC PLL7 configuration register 6
   type RCC_PLL7CFGR6_Register is record
      --  PLLy VCO frequency divide level 1
      POSTDIV1      : RCC_PLL7CFGR6_POSTDIV1_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL7CFGR6_Register use record
      POSTDIV1      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RCC_PLL7CFGR7_POSTDIV2_Field is HAL.UInt3;

   --  RCC PLL7 configuration register 7
   type RCC_PLL7CFGR7_Register is record
      --  PLLy VCO frequency divide level 2
      POSTDIV2      : RCC_PLL7CFGR7_POSTDIV2_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL7CFGR7_Register use record
      POSTDIV2      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  RCC PLL8 configuration register 1
   type RCC_PLL8CFGR1_Register is record
      --  PLLy spread-spectrum modulator reset
      SSMODRST       : Boolean := True;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  PLLy enable
      PLLEN          : Boolean := False;
      --  unspecified
      Reserved_9_23  : HAL.UInt15 := 16#0#;
      --  Read-only. PLLy clock ready flag
      PLLRDY         : Boolean := False;
      --  unspecified
      Reserved_25_27 : HAL.UInt3 := 16#0#;
      --  PLLy reference clock state
      CKREFST        : Boolean := True;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL8CFGR1_Register use record
      SSMODRST       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      PLLEN          at 0 range 8 .. 8;
      Reserved_9_23  at 0 range 9 .. 23;
      PLLRDY         at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      CKREFST        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RCC_PLL8CFGR2_FREFDIV_Field is HAL.UInt6;
   subtype RCC_PLL8CFGR2_FBDIV_Field is HAL.UInt12;

   --  RCC PLL8 configuration register 2
   type RCC_PLL8CFGR2_Register is record
      --  PLLy reference input clock divide frequency ratio
      FREFDIV        : RCC_PLL8CFGR2_FREFDIV_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  PLLy VCO multiplication factor
      FBDIV          : RCC_PLL8CFGR2_FBDIV_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL8CFGR2_Register use record
      FREFDIV        at 0 range 0 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      FBDIV          at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype RCC_PLL8CFGR3_FRACIN_Field is HAL.UInt24;

   --  RCC PLL8 configuration register 3
   type RCC_PLL8CFGR3_Register is record
      --  Fractional part of PLLy VCO multiplication factor
      FRACIN         : RCC_PLL8CFGR3_FRACIN_Field := 16#0#;
      --  PLLy VCO frequency modulation mode
      DOWNSPREAD     : Boolean := False;
      --  PLLy noise canceling DAC enable in fractional mode.
      DACEN          : Boolean := False;
      --  PLLy spread-spectrum modulator disable
      SSCGDIS        : Boolean := True;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL8CFGR3_Register use record
      FRACIN         at 0 range 0 .. 23;
      DOWNSPREAD     at 0 range 24 .. 24;
      DACEN          at 0 range 25 .. 25;
      SSCGDIS        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  RCC PLL8 configuration register 4
   type RCC_PLL8CFGR4_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  PLLy delta-sigma modulator enable
      DSMEN          : Boolean := False;
      --  PLLy output and post dividers enable
      FOUTPOSTDIVEN  : Boolean := False;
      --  PLLy FOUTPOSTDIV bypass
      BYPASS         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL8CFGR4_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DSMEN          at 0 range 8 .. 8;
      FOUTPOSTDIVEN  at 0 range 9 .. 9;
      BYPASS         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype RCC_PLL8CFGR5_DIVVAL_Field is HAL.UInt4;
   subtype RCC_PLL8CFGR5_SPREAD_Field is HAL.UInt5;

   --  RCC PLL8 configuration register 5
   type RCC_PLL8CFGR5_Register is record
      --  Modulation frequency adjustment for PLLy
      DIVVAL         : RCC_PLL8CFGR5_DIVVAL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : HAL.UInt12 := 16#0#;
      --  Modulation depth adjustment for PLLy
      SPREAD         : RCC_PLL8CFGR5_SPREAD_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL8CFGR5_Register use record
      DIVVAL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SPREAD         at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype RCC_PLL8CFGR6_POSTDIV1_Field is HAL.UInt3;

   --  RCC PLL8 configuration register 6
   type RCC_PLL8CFGR6_Register is record
      --  PLLy VCO frequency divide level 1
      POSTDIV1      : RCC_PLL8CFGR6_POSTDIV1_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL8CFGR6_Register use record
      POSTDIV1      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RCC_PLL8CFGR7_POSTDIV2_Field is HAL.UInt3;

   --  RCC PLL8 configuration register 7
   type RCC_PLL8CFGR7_Register is record
      --  PLLy VCO frequency divide level 2
      POSTDIV2      : RCC_PLL8CFGR7_POSTDIV2_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_PLL8CFGR7_Register use record
      POSTDIV2      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RCC_VERR_MINREV_Field is HAL.UInt4;
   subtype RCC_VERR_MAJREV_Field is HAL.UInt4;

   --  RCC version register
   type RCC_VERR_Register is record
      --  Read-only. Minor RCC revision
      MINREV        : RCC_VERR_MINREV_Field;
      --  Read-only. Major RCC revision
      MAJREV        : RCC_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RCC_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RCC register block
   type RCC_Peripheral is record
      --  RCC secure configuration register 0
      RCC_SECCFGR0        : aliased HAL.UInt32;
      --  RCC secure configuration register 1
      RCC_SECCFGR1        : aliased HAL.UInt32;
      --  RCC secure configuration register 2
      RCC_SECCFGR2        : aliased HAL.UInt32;
      --  RCC secure configuration register 3
      RCC_SECCFGR3        : aliased RCC_SECCFGR3_Register;
      --  RCC privileged configuration register 0
      RCC_PRIVCFGR0       : aliased HAL.UInt32;
      --  RCC privileged configuration register 1
      RCC_PRIVCFGR1       : aliased HAL.UInt32;
      --  RCC privileged configuration register 2
      RCC_PRIVCFGR2       : aliased HAL.UInt32;
      --  RCC privileged configuration register 3
      RCC_PRIVCFGR3       : aliased RCC_PRIVCFGR3_Register;
      --  RCC resource configuration lock register 0
      RCC_RCFGLOCKR0      : aliased HAL.UInt32;
      --  RCC resource configuration lock register 1
      RCC_RCFGLOCKR1      : aliased HAL.UInt32;
      --  RCC resource configuration lock register 2
      RCC_RCFGLOCKR2      : aliased HAL.UInt32;
      --  RCC resource configuration lock register 3
      RCC_RCFGLOCKR3      : aliased RCC_RCFGLOCKR3_Register;
      --  RCC resource 0 CID configuration register
      RCC_R0CIDCFGR       : aliased RCC_R0CIDCFGR_Register;
      --  RCC resource 0 semaphore control register
      RCC_R0SEMCR         : aliased RCC_R0SEMCR_Register;
      --  RCC resource 1 CID configuration register
      RCC_R1CIDCFGR       : aliased RCC_R1CIDCFGR_Register;
      --  RCC resource 1 semaphore control register
      RCC_R1SEMCR         : aliased RCC_R1SEMCR_Register;
      --  RCC resource 2 CID configuration register
      RCC_R2CIDCFGR       : aliased RCC_R2CIDCFGR_Register;
      --  RCC resource 2 semaphore control register
      RCC_R2SEMCR         : aliased RCC_R2SEMCR_Register;
      --  RCC resource 3 CID configuration register
      RCC_R3CIDCFGR       : aliased RCC_R3CIDCFGR_Register;
      --  RCC resource 3 semaphore control register
      RCC_R3SEMCR         : aliased RCC_R3SEMCR_Register;
      --  RCC resource 4 CID configuration register
      RCC_R4CIDCFGR       : aliased RCC_R4CIDCFGR_Register;
      --  RCC resource 4 semaphore control register
      RCC_R4SEMCR         : aliased RCC_R4SEMCR_Register;
      --  RCC resource 5 CID configuration register
      RCC_R5CIDCFGR       : aliased RCC_R5CIDCFGR_Register;
      --  RCC resource 5 semaphore control register
      RCC_R5SEMCR         : aliased RCC_R5SEMCR_Register;
      --  RCC resource 6 CID configuration register
      RCC_R6CIDCFGR       : aliased RCC_R6CIDCFGR_Register;
      --  RCC resource 6 semaphore control register
      RCC_R6SEMCR         : aliased RCC_R6SEMCR_Register;
      --  RCC resource 7 CID configuration register
      RCC_R7CIDCFGR       : aliased RCC_R7CIDCFGR_Register;
      --  RCC resource 7 semaphore control register
      RCC_R7SEMCR         : aliased RCC_R7SEMCR_Register;
      --  RCC resource 8 CID configuration register
      RCC_R8CIDCFGR       : aliased RCC_R8CIDCFGR_Register;
      --  RCC resource 8 semaphore control register
      RCC_R8SEMCR         : aliased RCC_R8SEMCR_Register;
      --  RCC resource 9 CID configuration register
      RCC_R9CIDCFGR       : aliased RCC_R9CIDCFGR_Register;
      --  RCC resource 9 semaphore control register
      RCC_R9SEMCR         : aliased RCC_R9SEMCR_Register;
      --  RCC resource 10 CID configuration register
      RCC_R10CIDCFGR      : aliased RCC_R10CIDCFGR_Register;
      --  RCC resource 10 semaphore control register
      RCC_R10SEMCR        : aliased RCC_R10SEMCR_Register;
      --  RCC resource 11 CID configuration register
      RCC_R11CIDCFGR      : aliased RCC_R11CIDCFGR_Register;
      --  RCC resource 11 semaphore control register
      RCC_R11SEMCR        : aliased RCC_R11SEMCR_Register;
      --  RCC resource 12 CID configuration register
      RCC_R12CIDCFGR      : aliased RCC_R12CIDCFGR_Register;
      --  RCC resource 12 semaphore control register
      RCC_R12SEMCR        : aliased RCC_R12SEMCR_Register;
      --  RCC resource 13 CID configuration register
      RCC_R13CIDCFGR      : aliased RCC_R13CIDCFGR_Register;
      --  RCC resource 13 semaphore control register
      RCC_R13SEMCR        : aliased RCC_R13SEMCR_Register;
      --  RCC resource 14 CID configuration register
      RCC_R14CIDCFGR      : aliased RCC_R14CIDCFGR_Register;
      --  RCC resource 14 semaphore control register
      RCC_R14SEMCR        : aliased RCC_R14SEMCR_Register;
      --  RCC resource 15 CID configuration register
      RCC_R15CIDCFGR      : aliased RCC_R15CIDCFGR_Register;
      --  RCC resource 15 semaphore control register
      RCC_R15SEMCR        : aliased RCC_R15SEMCR_Register;
      --  RCC resource 16 CID configuration register
      RCC_R16CIDCFGR      : aliased RCC_R16CIDCFGR_Register;
      --  RCC resource 16 semaphore control register
      RCC_R16SEMCR        : aliased RCC_R16SEMCR_Register;
      --  RCC resource 17 CID configuration register
      RCC_R17CIDCFGR      : aliased RCC_R17CIDCFGR_Register;
      --  RCC resource 17 semaphore control register
      RCC_R17SEMCR        : aliased RCC_R17SEMCR_Register;
      --  RCC resource 18 CID configuration register
      RCC_R18CIDCFGR      : aliased RCC_R18CIDCFGR_Register;
      --  RCC resource 18 semaphore control register
      RCC_R18SEMCR        : aliased RCC_R18SEMCR_Register;
      --  RCC resource 19 CID configuration register
      RCC_R19CIDCFGR      : aliased RCC_R19CIDCFGR_Register;
      --  RCC resource 19 semaphore control register
      RCC_R19SEMCR        : aliased RCC_R19SEMCR_Register;
      --  RCC resource 20 CID configuration register
      RCC_R20CIDCFGR      : aliased RCC_R20CIDCFGR_Register;
      --  RCC resource 20 semaphore control register
      RCC_R20SEMCR        : aliased RCC_R20SEMCR_Register;
      --  RCC resource 21 CID configuration register
      RCC_R21CIDCFGR      : aliased RCC_R21CIDCFGR_Register;
      --  RCC resource 21 semaphore control register
      RCC_R21SEMCR        : aliased RCC_R21SEMCR_Register;
      --  RCC resource 22 CID configuration register
      RCC_R22CIDCFGR      : aliased RCC_R22CIDCFGR_Register;
      --  RCC resource 22 semaphore control register
      RCC_R22SEMCR        : aliased RCC_R22SEMCR_Register;
      --  RCC resource 23 CID configuration register
      RCC_R23CIDCFGR      : aliased RCC_R23CIDCFGR_Register;
      --  RCC resource 23 semaphore control register
      RCC_R23SEMCR        : aliased RCC_R23SEMCR_Register;
      --  RCC resource 24 CID configuration register
      RCC_R24CIDCFGR      : aliased RCC_R24CIDCFGR_Register;
      --  RCC resource 24 semaphore control register
      RCC_R24SEMCR        : aliased RCC_R24SEMCR_Register;
      --  RCC resource 25 CID configuration register
      RCC_R25CIDCFGR      : aliased RCC_R25CIDCFGR_Register;
      --  RCC resource 25 semaphore control register
      RCC_R25SEMCR        : aliased RCC_R25SEMCR_Register;
      --  RCC resource 26 CID configuration register
      RCC_R26CIDCFGR      : aliased RCC_R26CIDCFGR_Register;
      --  RCC resource 26 semaphore control register
      RCC_R26SEMCR        : aliased RCC_R26SEMCR_Register;
      --  RCC resource 27 CID configuration register
      RCC_R27CIDCFGR      : aliased RCC_R27CIDCFGR_Register;
      --  RCC resource 27 semaphore control register
      RCC_R27SEMCR        : aliased RCC_R27SEMCR_Register;
      --  RCC resource 28 CID configuration register
      RCC_R28CIDCFGR      : aliased RCC_R28CIDCFGR_Register;
      --  RCC resource 28 semaphore control register
      RCC_R28SEMCR        : aliased RCC_R28SEMCR_Register;
      --  RCC resource 29 CID configuration register
      RCC_R29CIDCFGR      : aliased RCC_R29CIDCFGR_Register;
      --  RCC resource 29 semaphore control register
      RCC_R29SEMCR        : aliased RCC_R29SEMCR_Register;
      --  RCC resource 30 CID configuration register
      RCC_R30CIDCFGR      : aliased RCC_R30CIDCFGR_Register;
      --  RCC resource 30 semaphore control register
      RCC_R30SEMCR        : aliased RCC_R30SEMCR_Register;
      --  RCC resource 31 CID configuration register
      RCC_R31CIDCFGR      : aliased RCC_R31CIDCFGR_Register;
      --  RCC resource 31 semaphore control register
      RCC_R31SEMCR        : aliased RCC_R31SEMCR_Register;
      --  RCC resource 32 CID configuration register
      RCC_R32CIDCFGR      : aliased RCC_R32CIDCFGR_Register;
      --  RCC resource 32 semaphore control register
      RCC_R32SEMCR        : aliased RCC_R32SEMCR_Register;
      --  RCC resource 33 CID configuration register
      RCC_R33CIDCFGR      : aliased RCC_R33CIDCFGR_Register;
      --  RCC resource 33 semaphore control register
      RCC_R33SEMCR        : aliased RCC_R33SEMCR_Register;
      --  RCC resource 34 CID configuration register
      RCC_R34CIDCFGR      : aliased RCC_R34CIDCFGR_Register;
      --  RCC resource 34 semaphore control register
      RCC_R34SEMCR        : aliased RCC_R34SEMCR_Register;
      --  RCC resource 35 CID configuration register
      RCC_R35CIDCFGR      : aliased RCC_R35CIDCFGR_Register;
      --  RCC resource 35 semaphore control register
      RCC_R35SEMCR        : aliased RCC_R35SEMCR_Register;
      --  RCC resource 36 CID configuration register
      RCC_R36CIDCFGR      : aliased RCC_R36CIDCFGR_Register;
      --  RCC resource 36 semaphore control register
      RCC_R36SEMCR        : aliased RCC_R36SEMCR_Register;
      --  RCC resource 37 CID configuration register
      RCC_R37CIDCFGR      : aliased RCC_R37CIDCFGR_Register;
      --  RCC resource 37 semaphore control register
      RCC_R37SEMCR        : aliased RCC_R37SEMCR_Register;
      --  RCC resource 38 CID configuration register
      RCC_R38CIDCFGR      : aliased RCC_R38CIDCFGR_Register;
      --  RCC resource 38 semaphore control register
      RCC_R38SEMCR        : aliased RCC_R38SEMCR_Register;
      --  RCC resource 39 CID configuration register
      RCC_R39CIDCFGR      : aliased RCC_R39CIDCFGR_Register;
      --  RCC resource 39 semaphore control register
      RCC_R39SEMCR        : aliased RCC_R39SEMCR_Register;
      --  RCC resource 40 CID configuration register
      RCC_R40CIDCFGR      : aliased RCC_R40CIDCFGR_Register;
      --  RCC resource 40 semaphore control register
      RCC_R40SEMCR        : aliased RCC_R40SEMCR_Register;
      --  RCC resource 41 CID configuration register
      RCC_R41CIDCFGR      : aliased RCC_R41CIDCFGR_Register;
      --  RCC resource 41 semaphore control register
      RCC_R41SEMCR        : aliased RCC_R41SEMCR_Register;
      --  RCC resource 42 CID configuration register
      RCC_R42CIDCFGR      : aliased RCC_R42CIDCFGR_Register;
      --  RCC resource 42 semaphore control register
      RCC_R42SEMCR        : aliased RCC_R42SEMCR_Register;
      --  RCC resource 43 CID configuration register
      RCC_R43CIDCFGR      : aliased RCC_R43CIDCFGR_Register;
      --  RCC resource 43 semaphore control register
      RCC_R43SEMCR        : aliased RCC_R43SEMCR_Register;
      --  RCC resource 44 CID configuration register
      RCC_R44CIDCFGR      : aliased RCC_R44CIDCFGR_Register;
      --  RCC resource 44 semaphore control register
      RCC_R44SEMCR        : aliased RCC_R44SEMCR_Register;
      --  RCC resource 45 CID configuration register
      RCC_R45CIDCFGR      : aliased RCC_R45CIDCFGR_Register;
      --  RCC resource 45 semaphore control register
      RCC_R45SEMCR        : aliased RCC_R45SEMCR_Register;
      --  RCC resource 46 CID configuration register
      RCC_R46CIDCFGR      : aliased RCC_R46CIDCFGR_Register;
      --  RCC resource 46 semaphore control register
      RCC_R46SEMCR        : aliased RCC_R46SEMCR_Register;
      --  RCC resource 47 CID configuration register
      RCC_R47CIDCFGR      : aliased RCC_R47CIDCFGR_Register;
      --  RCC resource 47 semaphore control register
      RCC_R47SEMCR        : aliased RCC_R47SEMCR_Register;
      --  RCC resource 48 CID configuration register
      RCC_R48CIDCFGR      : aliased RCC_R48CIDCFGR_Register;
      --  RCC resource 48 semaphore control register
      RCC_R48SEMCR        : aliased RCC_R48SEMCR_Register;
      --  RCC resource 49 CID configuration register
      RCC_R49CIDCFGR      : aliased RCC_R49CIDCFGR_Register;
      --  RCC resource 49 semaphore control register
      RCC_R49SEMCR        : aliased RCC_R49SEMCR_Register;
      --  RCC resource 50 CID configuration register
      RCC_R50CIDCFGR      : aliased RCC_R50CIDCFGR_Register;
      --  RCC resource 50 semaphore control register
      RCC_R50SEMCR        : aliased RCC_R50SEMCR_Register;
      --  RCC resource 51 CID configuration register
      RCC_R51CIDCFGR      : aliased RCC_R51CIDCFGR_Register;
      --  RCC resource 51 semaphore control register
      RCC_R51SEMCR        : aliased RCC_R51SEMCR_Register;
      --  RCC resource 52 CID configuration register
      RCC_R52CIDCFGR      : aliased RCC_R52CIDCFGR_Register;
      --  RCC resource 52 semaphore control register
      RCC_R52SEMCR        : aliased RCC_R52SEMCR_Register;
      --  RCC resource 53 CID configuration register
      RCC_R53CIDCFGR      : aliased RCC_R53CIDCFGR_Register;
      --  RCC resource 53 semaphore control register
      RCC_R53SEMCR        : aliased RCC_R53SEMCR_Register;
      --  RCC resource 54 CID configuration register
      RCC_R54CIDCFGR      : aliased RCC_R54CIDCFGR_Register;
      --  RCC resource 54 semaphore control register
      RCC_R54SEMCR        : aliased RCC_R54SEMCR_Register;
      --  RCC resource 55 CID configuration register
      RCC_R55CIDCFGR      : aliased RCC_R55CIDCFGR_Register;
      --  RCC resource 55 semaphore control register
      RCC_R55SEMCR        : aliased RCC_R55SEMCR_Register;
      --  RCC resource 56 CID configuration register
      RCC_R56CIDCFGR      : aliased RCC_R56CIDCFGR_Register;
      --  RCC resource 56 semaphore control register
      RCC_R56SEMCR        : aliased RCC_R56SEMCR_Register;
      --  RCC resource 57 CID configuration register
      RCC_R57CIDCFGR      : aliased RCC_R57CIDCFGR_Register;
      --  RCC resource 57 semaphore control register
      RCC_R57SEMCR        : aliased RCC_R57SEMCR_Register;
      --  RCC resource 58 CID configuration register
      RCC_R58CIDCFGR      : aliased RCC_R58CIDCFGR_Register;
      --  RCC resource 58 semaphore control register
      RCC_R58SEMCR        : aliased RCC_R58SEMCR_Register;
      --  RCC resource 59 CID configuration register
      RCC_R59CIDCFGR      : aliased RCC_R59CIDCFGR_Register;
      --  RCC resource 59 semaphore control register
      RCC_R59SEMCR        : aliased RCC_R59SEMCR_Register;
      --  RCC resource 60 CID configuration register
      RCC_R60CIDCFGR      : aliased RCC_R60CIDCFGR_Register;
      --  RCC resource 60 semaphore control register
      RCC_R60SEMCR        : aliased RCC_R60SEMCR_Register;
      --  RCC resource 61 CID configuration register
      RCC_R61CIDCFGR      : aliased RCC_R61CIDCFGR_Register;
      --  RCC resource 61 semaphore control register
      RCC_R61SEMCR        : aliased RCC_R61SEMCR_Register;
      --  RCC resource 62 CID configuration register
      RCC_R62CIDCFGR      : aliased RCC_R62CIDCFGR_Register;
      --  RCC resource 62 semaphore control register
      RCC_R62SEMCR        : aliased RCC_R62SEMCR_Register;
      --  RCC resource 63 CID configuration register
      RCC_R63CIDCFGR      : aliased RCC_R63CIDCFGR_Register;
      --  RCC resource 63 semaphore control register
      RCC_R63SEMCR        : aliased RCC_R63SEMCR_Register;
      --  RCC resource 64 CID configuration register
      RCC_R64CIDCFGR      : aliased RCC_R64CIDCFGR_Register;
      --  RCC resource 64 semaphore control register
      RCC_R64SEMCR        : aliased RCC_R64SEMCR_Register;
      --  RCC resource 65 CID configuration register
      RCC_R65CIDCFGR      : aliased RCC_R65CIDCFGR_Register;
      --  RCC resource 65 semaphore control register
      RCC_R65SEMCR        : aliased RCC_R65SEMCR_Register;
      --  RCC resource 66 CID configuration register
      RCC_R66CIDCFGR      : aliased RCC_R66CIDCFGR_Register;
      --  RCC resource 66 semaphore control register
      RCC_R66SEMCR        : aliased RCC_R66SEMCR_Register;
      --  RCC resource 67 CID configuration register
      RCC_R67CIDCFGR      : aliased RCC_R67CIDCFGR_Register;
      --  RCC resource 67 semaphore control register
      RCC_R67SEMCR        : aliased RCC_R67SEMCR_Register;
      --  RCC resource 68 CID configuration register
      RCC_R68CIDCFGR      : aliased RCC_R68CIDCFGR_Register;
      --  RCC resource 68 semaphore control register
      RCC_R68SEMCR        : aliased RCC_R68SEMCR_Register;
      --  RCC resource 69 CID configuration register
      RCC_R69CIDCFGR      : aliased RCC_R69CIDCFGR_Register;
      --  RCC resource 69 semaphore control register
      RCC_R69SEMCR        : aliased RCC_R69SEMCR_Register;
      --  RCC resource 70 CID configuration register
      RCC_R70CIDCFGR      : aliased RCC_R70CIDCFGR_Register;
      --  RCC resource 70 semaphore control register
      RCC_R70SEMCR        : aliased RCC_R70SEMCR_Register;
      --  RCC resource 71 CID configuration register
      RCC_R71CIDCFGR      : aliased RCC_R71CIDCFGR_Register;
      --  RCC resource 71 semaphore control register
      RCC_R71SEMCR        : aliased RCC_R71SEMCR_Register;
      --  RCC resource 72 CID configuration register
      RCC_R72CIDCFGR      : aliased RCC_R72CIDCFGR_Register;
      --  RCC resource 72 semaphore control register
      RCC_R72SEMCR        : aliased RCC_R72SEMCR_Register;
      --  RCC resource 73 CID configuration register
      RCC_R73CIDCFGR      : aliased RCC_R73CIDCFGR_Register;
      --  RCC resource 73 semaphore control register
      RCC_R73SEMCR        : aliased RCC_R73SEMCR_Register;
      --  RCC resource 74 CID configuration register
      RCC_R74CIDCFGR      : aliased RCC_R74CIDCFGR_Register;
      --  RCC resource 74 semaphore control register
      RCC_R74SEMCR        : aliased RCC_R74SEMCR_Register;
      --  RCC resource 75 CID configuration register
      RCC_R75CIDCFGR      : aliased RCC_R75CIDCFGR_Register;
      --  RCC resource 75 semaphore control register
      RCC_R75SEMCR        : aliased RCC_R75SEMCR_Register;
      --  RCC resource 76 CID configuration register
      RCC_R76CIDCFGR      : aliased RCC_R76CIDCFGR_Register;
      --  RCC resource 76 semaphore control register
      RCC_R76SEMCR        : aliased RCC_R76SEMCR_Register;
      --  RCC resource 77 CID configuration register
      RCC_R77CIDCFGR      : aliased RCC_R77CIDCFGR_Register;
      --  RCC resource 77 semaphore control register
      RCC_R77SEMCR        : aliased RCC_R77SEMCR_Register;
      --  RCC resource 78 CID configuration register
      RCC_R78CIDCFGR      : aliased RCC_R78CIDCFGR_Register;
      --  RCC resource 78 semaphore control register
      RCC_R78SEMCR        : aliased RCC_R78SEMCR_Register;
      --  RCC resource 79 CID configuration register
      RCC_R79CIDCFGR      : aliased RCC_R79CIDCFGR_Register;
      --  RCC resource 79 semaphore control register
      RCC_R79SEMCR        : aliased RCC_R79SEMCR_Register;
      --  RCC resource 80 CID configuration register
      RCC_R80CIDCFGR      : aliased RCC_R80CIDCFGR_Register;
      --  RCC resource 80 semaphore control register
      RCC_R80SEMCR        : aliased RCC_R80SEMCR_Register;
      --  RCC resource 81 CID configuration register
      RCC_R81CIDCFGR      : aliased RCC_R81CIDCFGR_Register;
      --  RCC resource 81 semaphore control register
      RCC_R81SEMCR        : aliased RCC_R81SEMCR_Register;
      --  RCC resource 82 CID configuration register
      RCC_R82CIDCFGR      : aliased RCC_R82CIDCFGR_Register;
      --  RCC resource 82 semaphore control register
      RCC_R82SEMCR        : aliased RCC_R82SEMCR_Register;
      --  RCC resource 83 CID configuration register
      RCC_R83CIDCFGR      : aliased RCC_R83CIDCFGR_Register;
      --  RCC resource 83 semaphore control register
      RCC_R83SEMCR        : aliased RCC_R83SEMCR_Register;
      --  RCC resource 84 CID configuration register
      RCC_R84CIDCFGR      : aliased RCC_R84CIDCFGR_Register;
      --  RCC resource 84 semaphore control register
      RCC_R84SEMCR        : aliased RCC_R84SEMCR_Register;
      --  RCC resource 85 CID configuration register
      RCC_R85CIDCFGR      : aliased RCC_R85CIDCFGR_Register;
      --  RCC resource 85 semaphore control register
      RCC_R85SEMCR        : aliased RCC_R85SEMCR_Register;
      --  RCC resource 86 CID configuration register
      RCC_R86CIDCFGR      : aliased RCC_R86CIDCFGR_Register;
      --  RCC resource 86 semaphore control register
      RCC_R86SEMCR        : aliased RCC_R86SEMCR_Register;
      --  RCC resource 87 CID configuration register
      RCC_R87CIDCFGR      : aliased RCC_R87CIDCFGR_Register;
      --  RCC resource 87 semaphore control register
      RCC_R87SEMCR        : aliased RCC_R87SEMCR_Register;
      --  RCC resource 88 CID configuration register
      RCC_R88CIDCFGR      : aliased RCC_R88CIDCFGR_Register;
      --  RCC resource 88 semaphore control register
      RCC_R88SEMCR        : aliased RCC_R88SEMCR_Register;
      --  RCC resource 89 CID configuration register
      RCC_R89CIDCFGR      : aliased RCC_R89CIDCFGR_Register;
      --  RCC resource 89 semaphore control register
      RCC_R89SEMCR        : aliased RCC_R89SEMCR_Register;
      --  RCC resource 90 CID configuration register
      RCC_R90CIDCFGR      : aliased RCC_R90CIDCFGR_Register;
      --  RCC resource 90 semaphore control register
      RCC_R90SEMCR        : aliased RCC_R90SEMCR_Register;
      --  RCC resource 91 CID configuration register
      RCC_R91CIDCFGR      : aliased RCC_R91CIDCFGR_Register;
      --  RCC resource 91 semaphore control register
      RCC_R91SEMCR        : aliased RCC_R91SEMCR_Register;
      --  RCC resource 92 CID configuration register
      RCC_R92CIDCFGR      : aliased RCC_R92CIDCFGR_Register;
      --  RCC resource 92 semaphore control register
      RCC_R92SEMCR        : aliased RCC_R92SEMCR_Register;
      --  RCC resource 93 CID configuration register
      RCC_R93CIDCFGR      : aliased RCC_R93CIDCFGR_Register;
      --  RCC resource 93 semaphore control register
      RCC_R93SEMCR        : aliased RCC_R93SEMCR_Register;
      --  RCC resource 94 CID configuration register
      RCC_R94CIDCFGR      : aliased RCC_R94CIDCFGR_Register;
      --  RCC resource 94 semaphore control register
      RCC_R94SEMCR        : aliased RCC_R94SEMCR_Register;
      --  RCC resource 95 CID configuration register
      RCC_R95CIDCFGR      : aliased RCC_R95CIDCFGR_Register;
      --  RCC resource 95 semaphore control register
      RCC_R95SEMCR        : aliased RCC_R95SEMCR_Register;
      --  RCC resource 96 CID configuration register
      RCC_R96CIDCFGR      : aliased RCC_R96CIDCFGR_Register;
      --  RCC resource 96 semaphore control register
      RCC_R96SEMCR        : aliased RCC_R96SEMCR_Register;
      --  RCC resource 97 CID configuration register
      RCC_R97CIDCFGR      : aliased RCC_R97CIDCFGR_Register;
      --  RCC resource 97 semaphore control register
      RCC_R97SEMCR        : aliased RCC_R97SEMCR_Register;
      --  RCC resource 98 CID configuration register
      RCC_R98CIDCFGR      : aliased RCC_R98CIDCFGR_Register;
      --  RCC resource 98 semaphore control register
      RCC_R98SEMCR        : aliased RCC_R98SEMCR_Register;
      --  RCC resource 99 CID configuration register
      RCC_R99CIDCFGR      : aliased RCC_R99CIDCFGR_Register;
      --  RCC resource 99 semaphore control register
      RCC_R99SEMCR        : aliased RCC_R99SEMCR_Register;
      --  RCC resource 100 CID configuration register
      RCC_R100CIDCFGR     : aliased RCC_R100CIDCFGR_Register;
      --  RCC resource 100 semaphore control register
      RCC_R100SEMCR       : aliased RCC_R100SEMCR_Register;
      --  RCC resource 101 CID configuration register
      RCC_R101CIDCFGR     : aliased RCC_R101CIDCFGR_Register;
      --  RCC resource 101 semaphore control register
      RCC_R101SEMCR       : aliased RCC_R101SEMCR_Register;
      --  RCC resource 102 CID configuration register
      RCC_R102CIDCFGR     : aliased RCC_R102CIDCFGR_Register;
      --  RCC resource 102 semaphore control register
      RCC_R102SEMCR       : aliased RCC_R102SEMCR_Register;
      --  RCC resource 103 CID configuration register
      RCC_R103CIDCFGR     : aliased RCC_R103CIDCFGR_Register;
      --  RCC resource 103 semaphore control register
      RCC_R103SEMCR       : aliased RCC_R103SEMCR_Register;
      --  RCC resource 104 CID configuration register
      RCC_R104CIDCFGR     : aliased RCC_R104CIDCFGR_Register;
      --  RCC resource 104 semaphore control register
      RCC_R104SEMCR       : aliased RCC_R104SEMCR_Register;
      --  RCC resource 105 CID configuration register
      RCC_R105CIDCFGR     : aliased RCC_R105CIDCFGR_Register;
      --  RCC resource 105 semaphore control register
      RCC_R105SEMCR       : aliased RCC_R105SEMCR_Register;
      --  RCC resource 106 CID configuration register
      RCC_R106CIDCFGR     : aliased RCC_R106CIDCFGR_Register;
      --  RCC resource 106 semaphore control register
      RCC_R106SEMCR       : aliased RCC_R106SEMCR_Register;
      --  RCC resource 107 CID configuration register
      RCC_R107CIDCFGR     : aliased RCC_R107CIDCFGR_Register;
      --  RCC resource 107 semaphore control register
      RCC_R107SEMCR       : aliased RCC_R107SEMCR_Register;
      --  RCC resource 108 CID configuration register
      RCC_R108CIDCFGR     : aliased RCC_R108CIDCFGR_Register;
      --  RCC resource 108 semaphore control register
      RCC_R108SEMCR       : aliased RCC_R108SEMCR_Register;
      --  RCC resource 109 CID configuration register
      RCC_R109CIDCFGR     : aliased RCC_R109CIDCFGR_Register;
      --  RCC resource 109 semaphore control register
      RCC_R109SEMCR       : aliased RCC_R109SEMCR_Register;
      --  RCC resource 110 CID configuration register
      RCC_R110CIDCFGR     : aliased RCC_R110CIDCFGR_Register;
      --  RCC resource 110 semaphore control register
      RCC_R110SEMCR       : aliased RCC_R110SEMCR_Register;
      --  RCC resource 111 CID configuration register
      RCC_R111CIDCFGR     : aliased RCC_R111CIDCFGR_Register;
      --  RCC resource 111 semaphore control register
      RCC_R111SEMCR       : aliased RCC_R111SEMCR_Register;
      --  RCC resource 112 CID configuration register
      RCC_R112CIDCFGR     : aliased RCC_R112CIDCFGR_Register;
      --  RCC resource 112 semaphore control register
      RCC_R112SEMCR       : aliased RCC_R112SEMCR_Register;
      --  RCC resource 113 CID configuration register
      RCC_R113CIDCFGR     : aliased RCC_R113CIDCFGR_Register;
      --  RCC resource 113 semaphore control register
      RCC_R113SEMCR       : aliased RCC_R113SEMCR_Register;
      --  RCC global reset control set register
      RCC_GRSTCSETR       : aliased RCC_GRSTCSETR_Register;
      --  RCC CPU1 reset control set register
      RCC_C1RSTCSETR      : aliased RCC_C1RSTCSETR_Register;
      --  RCC CPU1 processor core 1 reset control set register
      RCC_C1P1RSTCSETR    : aliased RCC_C1P1RSTCSETR_Register;
      --  RCC CPU2 reset control set register
      RCC_C2RSTCSETR      : aliased RCC_C2RSTCSETR_Register;
      --  RCC hardware reset status clear register
      RCC_HWRSTSCLRR      : aliased RCC_HWRSTSCLRR_Register;
      --  RCC CPU1 hardware reset status clear register
      RCC_C1HWRSTSCLRR    : aliased RCC_C1HWRSTSCLRR_Register;
      --  RCC CPU2 hardware reset status clear register
      RCC_C2HWRSTSCLRR    : aliased RCC_C2HWRSTSCLRR_Register;
      --  RCC CPU1 boot reset status set register
      RCC_C1BOOTRSTSSETR  : aliased RCC_C1BOOTRSTSSETR_Register;
      --  RCC CPU1 boot reset status clear register
      RCC_C1BOOTRSTSCLRR  : aliased RCC_C1BOOTRSTSCLRR_Register;
      --  RCC CPU2 boot reset status set register
      RCC_C2BOOTRSTSSETR  : aliased RCC_C2BOOTRSTSSETR_Register;
      --  RCC CPU2 boot reset status clear register
      RCC_C2BOOTRSTSCLRR  : aliased RCC_C2BOOTRSTSCLRR_Register;
      --  RCC CPU1 stop request set register
      RCC_C1SREQSETR      : aliased RCC_C1SREQSETR_Register;
      --  RCC CPU1 stop request clear register
      RCC_C1SREQCLRR      : aliased RCC_C1SREQCLRR_Register;
      --  RCC CPU boot control register
      RCC_CPUBOOTCR       : aliased RCC_CPUBOOTCR_Register;
      --  RCC standby boot control register
      RCC_STBYBOOTCR      : aliased RCC_STBYBOOTCR_Register;
      --  RCC legacy boot control register
      RCC_LEGBOOTCR       : aliased RCC_LEGBOOTCR_Register;
      --  RCC backup domain control register
      RCC_BDCR            : aliased RCC_BDCR_Register;
      --  RCC D3 domain control register
      RCC_D3DCR           : aliased RCC_D3DCR_Register;
      --  RCC D3 domain status register
      RCC_D3DSR           : aliased RCC_D3DSR_Register;
      --  RCC reset duration control register
      RCC_RDCR            : aliased RCC_RDCR_Register;
      --  RCC C1MS reset delay control register
      RCC_C1MSRDCR        : aliased RCC_C1MSRDCR_Register;
      --  RCC PWR_LP delay control register
      RCC_PWRLPDLYCR      : aliased RCC_PWRLPDLYCR_Register;
      --  RCC CPU1 clock source interrupt enable set register
      RCC_C1CIESETR       : aliased RCC_C1CIESETR_Register;
      --  RCC CPU1 clock source interrupt flag clear register
      RCC_C1CIFCLRR       : aliased RCC_C1CIFCLRR_Register;
      --  RCC CPU2 clock source interrupt enable set register
      RCC_C2CIESETR       : aliased RCC_C2CIESETR_Register;
      --  RCC CPU2 clock source interrupt flag clear register
      RCC_C2CIFCLRR       : aliased RCC_C2CIFCLRR_Register;
      --  RCC IWDG CPU1 clock freeze set register
      RCC_IWDGC1FZSETR    : aliased RCC_IWDGC1FZSETR_Register;
      --  RCC IWDG CPU1 clock freeze clear register
      RCC_IWDGC1FZCLRR    : aliased RCC_IWDGC1FZCLRR_Register;
      --  RCC IWDG CPU1 configuration set register
      RCC_IWDGC1CFGSETR   : aliased RCC_IWDGC1CFGSETR_Register;
      --  RCC IWDG CPU1 configuration clear register
      RCC_IWDGC1CFGCLRR   : aliased RCC_IWDGC1CFGCLRR_Register;
      --  RCC IWDG CPU2 clock freeze set register
      RCC_IWDGC2FZSETR    : aliased RCC_IWDGC2FZSETR_Register;
      --  RCC IWDG CPU2 clock freeze clear register
      RCC_IWDGC2FZCLRR    : aliased RCC_IWDGC2FZCLRR_Register;
      --  RCC IWDG CPU2 configuration set register
      RCC_IWDGC2CFGSETR   : aliased RCC_IWDGC2CFGSETR_Register;
      --  RCC IWDG CPU2 configuration clear register
      RCC_IWDGC2CFGCLRR   : aliased RCC_IWDGC2CFGCLRR_Register;
      --  RCC IWDG CPU3 configuration set register
      RCC_IWDGC3CFGSETR   : aliased RCC_IWDGC3CFGSETR_Register;
      --  RCC IWDG CPU3 configuration clear register
      RCC_IWDGC3CFGCLRR   : aliased RCC_IWDGC3CFGCLRR_Register;
      --  RCC CPU3 configuration register
      RCC_C3CFGR          : aliased RCC_C3CFGR_Register;
      --  RCC MCO1 configuration register
      RCC_MCO1CFGR        : aliased RCC_MCO1CFGR_Register;
      --  RCC MCO2 configuration register
      RCC_MCO2CFGR        : aliased RCC_MCO2CFGR_Register;
      --  RCC oscillator clock enable set register
      RCC_OCENSETR        : aliased RCC_OCENSETR_Register;
      --  RCC oscillator clock enable clear register
      RCC_OCENCLRR        : aliased RCC_OCENCLRR_Register;
      --  RCC oscillator clock ready register
      RCC_OCRDYR          : aliased RCC_OCRDYR_Register;
      --  RCC HSI configuration register
      RCC_HSICFGR         : aliased RCC_HSICFGR_Register;
      --  RCC MSI configuration register
      RCC_MSICFGR         : aliased RCC_MSICFGR_Register;
      --  RCC RTC clock divider register
      RCC_RTCDIVR         : aliased RCC_RTCDIVR_Register;
      --  RCC APB1 clock divider register
      RCC_APB1DIVR        : aliased RCC_APB1DIVR_Register;
      --  RCC APB2 clock divider register
      RCC_APB2DIVR        : aliased RCC_APB2DIVR_Register;
      --  RCC APB3 clock divider register
      RCC_APB3DIVR        : aliased RCC_APB3DIVR_Register;
      --  RCC APB4 clock divider register
      RCC_APB4DIVR        : aliased RCC_APB4DIVR_Register;
      --  RCC APBDBG clock divider register
      RCC_APBDBGDIVR      : aliased RCC_APBDBGDIVR_Register;
      --  RCC TIM group 1 prescaler register
      RCC_TIMG1PRER       : aliased RCC_TIMG1PRER_Register;
      --  RCC TIM group 2 prescaler register
      RCC_TIMG2PRER       : aliased RCC_TIMG2PRER_Register;
      --  RCC LSMCU clock divider register
      RCC_LSMCUDIVR       : aliased RCC_LSMCUDIVR_Register;
      --  RCC DDRC AXI port configuration register
      RCC_DDRCPCFGR       : aliased RCC_DDRCPCFGR_Register;
      --  RCC DDRC APB configuration register
      RCC_DDRCAPBCFGR     : aliased RCC_DDRCAPBCFGR_Register;
      --  RCC DDRPHYC APB configuration register
      RCC_DDRPHYCAPBCFGR  : aliased RCC_DDRPHYCAPBCFGR_Register;
      --  RCC DDRPHYC configuration register
      RCC_DDRPHYCCFGR     : aliased RCC_DDRPHYCCFGR_Register;
      --  RCC DDR configuration register
      RCC_DDRCFGR         : aliased RCC_DDRCFGR_Register;
      --  RCC DDR interface configuration register
      RCC_DDRITFCFGR      : aliased RCC_DDRITFCFGR_Register;
      --  RCC SYSRAM configuration register
      RCC_SYSRAMCFGR      : aliased RCC_SYSRAMCFGR_Register;
      --  RCC VDERAM configuration register
      RCC_VDERAMCFGR      : aliased RCC_VDERAMCFGR_Register;
      --  RCC SRAM1 configuration register
      RCC_SRAM1CFGR       : aliased RCC_SRAM1CFGR_Register;
      --  RCC SRAM2 configuration register
      RCC_SRAM2CFGR       : aliased RCC_SRAM2CFGR_Register;
      --  RCC RETRAM configuration register
      RCC_RETRAMCFGR      : aliased RCC_RETRAMCFGR_Register;
      --  RCC BKPSRAM configuration register
      RCC_BKPSRAMCFGR     : aliased RCC_BKPSRAMCFGR_Register;
      --  RCC LPSRAM1 configuration register
      RCC_LPSRAM1CFGR     : aliased RCC_LPSRAM1CFGR_Register;
      --  RCC LPSRAM2 configuration register
      RCC_LPSRAM2CFGR     : aliased RCC_LPSRAM2CFGR_Register;
      --  RCC LPSRAM3 configuration register
      RCC_LPSRAM3CFGR     : aliased RCC_LPSRAM3CFGR_Register;
      --  RCC OCTOSPI1 configuration register
      RCC_OSPI1CFGR       : aliased RCC_OSPI1CFGR_Register;
      --  RCC OCTOSPI2 configuration register
      RCC_OSPI2CFGR       : aliased RCC_OSPI2CFGR_Register;
      --  RCC FMC configuration register
      RCC_FMCCFGR         : aliased RCC_FMCCFGR_Register;
      --  RCC debug configuration register
      RCC_DBGCFGR         : aliased RCC_DBGCFGR_Register;
      --  RCC STM configuration register
      RCC_STMCFGR         : aliased RCC_STMCFGR_Register;
      --  RCC ETR configuration register
      RCC_ETRCFGR         : aliased RCC_ETRCFGR_Register;
      --  RCC GPIOZ configuration register
      RCC_GPIOZCFGR       : aliased RCC_GPIOZCFGR_Register;
      --  RCC HPDMA1 configuration register
      RCC_HPDMA1CFGR      : aliased RCC_HPDMA1CFGR_Register;
      --  RCC HPDMA2 configuration register
      RCC_HPDMA2CFGR      : aliased RCC_HPDMA2CFGR_Register;
      --  RCC HPDMA3 configuration register
      RCC_HPDMA3CFGR      : aliased RCC_HPDMA3CFGR_Register;
      --  RCC LPDMA1 configuration register
      RCC_LPDMACFGR       : aliased RCC_LPDMACFGR_Register;
      --  RCC HSEM configuration register
      RCC_HSEMCFGR        : aliased RCC_HSEMCFGR_Register;
      --  RCC IPCC1 configuration register
      RCC_IPCC1CFGR       : aliased RCC_IPCC1CFGR_Register;
      --  RCC IPCC2 configuration register
      RCC_IPCC2CFGR       : aliased RCC_IPCC2CFGR_Register;
      --  RCC RTC configuration register
      RCC_RTCCFGR         : aliased RCC_RTCCFGR_Register;
      --  RCC SYSCPU1 configuration register
      RCC_SYSCPU1CFGR     : aliased RCC_SYSCPU1CFGR_Register;
      --  RCC BSEC configuration register
      RCC_BSECCFGR        : aliased RCC_BSECCFGR_Register;
      --  RCC PLL2 configuration register 1
      RCC_PLL2CFGR1       : aliased RCC_PLL2CFGR1_Register;
      --  RCC PLL2 configuration register 2
      RCC_PLL2CFGR2       : aliased RCC_PLL2CFGR2_Register;
      --  RCC PLL2 configuration register 3
      RCC_PLL2CFGR3       : aliased RCC_PLL2CFGR3_Register;
      --  RCC PLL2 configuration register 4
      RCC_PLL2CFGR4       : aliased RCC_PLL2CFGR4_Register;
      --  RCC PLL2 configuration register 5
      RCC_PLL2CFGR5       : aliased RCC_PLL2CFGR5_Register;
      --  RCC PLL2 configuration register 6
      RCC_PLL2CFGR6       : aliased RCC_PLL2CFGR6_Register;
      --  RCC PLL2 configuration register 7
      RCC_PLL2CFGR7       : aliased RCC_PLL2CFGR7_Register;
      --  RCC PLL3 configuration register 1
      RCC_PLL3CFGR1       : aliased RCC_PLL3CFGR1_Register;
      --  RCC PLL3 configuration register 2
      RCC_PLL3CFGR2       : aliased RCC_PLL3CFGR2_Register;
      --  RCC PLL3 configuration register 3
      RCC_PLL3CFGR3       : aliased RCC_PLL3CFGR3_Register;
      --  RCC PLL3 configuration register 4
      RCC_PLL3CFGR4       : aliased RCC_PLL3CFGR4_Register;
      --  RCC PLL3 configuration register 5
      RCC_PLL3CFGR5       : aliased RCC_PLL3CFGR5_Register;
      --  RCC PLL3 configuration register 6
      RCC_PLL3CFGR6       : aliased RCC_PLL3CFGR6_Register;
      --  RCC PLL3 configuration register 7
      RCC_PLL3CFGR7       : aliased RCC_PLL3CFGR7_Register;
      --  RCC HSI frequency monitoring control register
      RCC_HSIFMONCR       : aliased RCC_HSIFMONCR_Register;
      --  RCC HSI frequency value register
      RCC_HSIFVALR        : aliased RCC_HSIFVALR_Register;
      --  RCC TIM1 configuration register
      RCC_TIM1CFGR        : aliased RCC_TIM1CFGR_Register;
      --  RCC TIM2 configuration register
      RCC_TIM2CFGR        : aliased RCC_TIM2CFGR_Register;
      --  RCC TIM3 configuration register
      RCC_TIM3CFGR        : aliased RCC_TIM3CFGR_Register;
      --  RCC TIM4 configuration register
      RCC_TIM4CFGR        : aliased RCC_TIM4CFGR_Register;
      --  RCC TIM5 configuration register
      RCC_TIM5CFGR        : aliased RCC_TIM5CFGR_Register;
      --  RCC TIM6 configuration register
      RCC_TIM6CFGR        : aliased RCC_TIM6CFGR_Register;
      --  RCC TIM7 configuration register
      RCC_TIM7CFGR        : aliased RCC_TIM7CFGR_Register;
      --  RCC TIM8 configuration register
      RCC_TIM8CFGR        : aliased RCC_TIM8CFGR_Register;
      --  RCC TIM10 configuration register
      RCC_TIM10CFGR       : aliased RCC_TIM10CFGR_Register;
      --  RCC TIM11 configuration register
      RCC_TIM11CFGR       : aliased RCC_TIM11CFGR_Register;
      --  RCC TIM12 configuration register
      RCC_TIM12CFGR       : aliased RCC_TIM12CFGR_Register;
      --  RCC TIM13 configuration register
      RCC_TIM13CFGR       : aliased RCC_TIM13CFGR_Register;
      --  RCC TIM14 configuration register
      RCC_TIM14CFGR       : aliased RCC_TIM14CFGR_Register;
      --  RCC TIM15 configuration register
      RCC_TIM15CFGR       : aliased RCC_TIM15CFGR_Register;
      --  RCC TIM16 configuration register
      RCC_TIM16CFGR       : aliased RCC_TIM16CFGR_Register;
      --  RCC TIM17 configuration register
      RCC_TIM17CFGR       : aliased RCC_TIM17CFGR_Register;
      --  RCC TIM20 configuration register
      RCC_TIM20CFGR       : aliased RCC_TIM20CFGR_Register;
      --  RCC LPTIM1 configuration register
      RCC_LPTIM1CFGR      : aliased RCC_LPTIM1CFGR_Register;
      --  RCC LPTIM2 configuration register
      RCC_LPTIM2CFGR      : aliased RCC_LPTIM2CFGR_Register;
      --  RCC LPTIM3 configuration register
      RCC_LPTIM3CFGR      : aliased RCC_LPTIM3CFGR_Register;
      --  RCC LPTIM4 configuration register
      RCC_LPTIM4CFGR      : aliased RCC_LPTIM4CFGR_Register;
      --  RCC LPTIM5 configuration register
      RCC_LPTIM5CFGR      : aliased RCC_LPTIM5CFGR_Register;
      --  RCC SPI1 configuration register
      RCC_SPI1CFGR        : aliased RCC_SPI1CFGR_Register;
      --  RCC SPI2 configuration register
      RCC_SPI2CFGR        : aliased RCC_SPI2CFGR_Register;
      --  RCC SPI3 configuration register
      RCC_SPI3CFGR        : aliased RCC_SPI3CFGR_Register;
      --  RCC SPI4 configuration register
      RCC_SPI4CFGR        : aliased RCC_SPI4CFGR_Register;
      --  RCC SPI5 configuration register
      RCC_SPI5CFGR        : aliased RCC_SPI5CFGR_Register;
      --  RCC SPI6 configuration register
      RCC_SPI6CFGR        : aliased RCC_SPI6CFGR_Register;
      --  RCC SPI7 configuration register
      RCC_SPI7CFGR        : aliased RCC_SPI7CFGR_Register;
      --  RCC SPI8 configuration register
      RCC_SPI8CFGR        : aliased RCC_SPI8CFGR_Register;
      --  RCC SPDIFRX configuration register
      RCC_SPDIFRXCFGR     : aliased RCC_SPDIFRXCFGR_Register;
      --  RCC USART1 configuration register
      RCC_USART1CFGR      : aliased RCC_USART1CFGR_Register;
      --  RCC USART2 configuration register
      RCC_USART2CFGR      : aliased RCC_USART2CFGR_Register;
      --  RCC USART3 configuration register
      RCC_USART3CFGR      : aliased RCC_USART3CFGR_Register;
      --  RCC UART4 configuration register
      RCC_UART4CFGR       : aliased RCC_UART4CFGR_Register;
      --  RCC UART5 configuration register
      RCC_UART5CFGR       : aliased RCC_UART5CFGR_Register;
      --  RCC USART6 configuration register
      RCC_USART6CFGR      : aliased RCC_USART6CFGR_Register;
      --  RCC UART7 configuration register
      RCC_UART7CFGR       : aliased RCC_UART7CFGR_Register;
      --  RCC UART8 configuration register
      RCC_UART8CFGR       : aliased RCC_UART8CFGR_Register;
      --  RCC UART9 configuration register
      RCC_UART9CFGR       : aliased RCC_UART9CFGR_Register;
      --  RCC LPUART1 configuration register
      RCC_LPUART1CFGR     : aliased RCC_LPUART1CFGR_Register;
      --  RCC I2C1 configuration register
      RCC_I2C1CFGR        : aliased RCC_I2C1CFGR_Register;
      --  RCC I2C2 configuration register
      RCC_I2C2CFGR        : aliased RCC_I2C2CFGR_Register;
      --  RCC I2C3 configuration register
      RCC_I2C3CFGR        : aliased RCC_I2C3CFGR_Register;
      --  RCC I2C4 configuration register
      RCC_I2C4CFGR        : aliased RCC_I2C4CFGR_Register;
      --  RCC I2C5 configuration register
      RCC_I2C5CFGR        : aliased RCC_I2C5CFGR_Register;
      --  RCC I2C6 configuration register
      RCC_I2C6CFGR        : aliased RCC_I2C6CFGR_Register;
      --  RCC I2C7 configuration register
      RCC_I2C7CFGR        : aliased RCC_I2C7CFGR_Register;
      --  RCC I2C8 configuration register
      RCC_I2C8CFGR        : aliased RCC_I2C8CFGR_Register;
      --  RCC SAI1 configuration register
      RCC_SAI1CFGR        : aliased RCC_SAI1CFGR_Register;
      --  RCC SAI2 configuration register
      RCC_SAI2CFGR        : aliased RCC_SAI2CFGR_Register;
      --  RCC SAI3 configuration register
      RCC_SAI3CFGR        : aliased RCC_SAI3CFGR_Register;
      --  RCC SAI4 configuration register
      RCC_SAI4CFGR        : aliased RCC_SAI4CFGR_Register;
      --  RCC MDF1 configuration register
      RCC_MDF1CFGR        : aliased RCC_MDF1CFGR_Register;
      --  RCC ADF1 configuration register
      RCC_ADF1CFGR        : aliased RCC_ADF1CFGR_Register;
      --  RCC FDCAN configuration register
      RCC_FDCANCFGR       : aliased RCC_FDCANCFGR_Register;
      --  RCC HDP configuration register
      RCC_HDPCFGR         : aliased RCC_HDPCFGR_Register;
      --  RCC ADC12 configuration register
      RCC_ADC12CFGR       : aliased RCC_ADC12CFGR_Register;
      --  RCC ADC3 configuration register
      RCC_ADC3CFGR        : aliased RCC_ADC3CFGR_Register;
      --  RCC Ethernet 1 configuration register
      RCC_ETH1CFGR        : aliased RCC_ETH1CFGR_Register;
      --  RCC Ethernet 2 configuration register
      RCC_ETH2CFGR        : aliased RCC_ETH2CFGR_Register;
      --  RCC USBH configuration register
      RCC_USBHCFGR        : aliased RCC_USBHCFGR_Register;
      --  RCC USB2PHY1 configuration register
      RCC_USB2PHY1CFGR    : aliased RCC_USB2PHY1CFGR_Register;
      --  RCC USB2PHY2 configuration register
      RCC_USB2PHY2CFGR    : aliased RCC_USB2PHY2CFGR_Register;
      --  RCC USB3DR configuration register
      RCC_USB3DRCFGR      : aliased RCC_USB3DRCFGR_Register;
      --  RCC USB3PCIEPHY configuration register
      RCC_USB3PCIEPHYCFGR : aliased RCC_USB3PCIEPHYCFGR_Register;
      --  RCC PCIE configuration register
      RCC_PCIECFGR        : aliased RCC_PCIECFGR_Register;
      --  RCC UCPD configuration register
      RCC_UCPDCFGR        : aliased RCC_UCPDCFGR_Register;
      --  RCC Ethernet switch configuration register
      RCC_ETHSWCFGR       : aliased RCC_ETHSWCFGR_Register;
      --  RCC Ethernet switch ACM configuration register
      RCC_ETHSWACMCFGR    : aliased RCC_ETHSWACMCFGR_Register;
      --  RCC Ethernet switch ACM message configuration register
      RCC_ETHSWACMMSGCFGR : aliased RCC_ETHSWACMMSGCFGR_Register;
      --  RCC STGEN configuration register
      RCC_STGENCFGR       : aliased RCC_STGENCFGR_Register;
      --  RCC SDMMC1 configuration register
      RCC_SDMMC1CFGR      : aliased RCC_SDMMC1CFGR_Register;
      --  RCC SDMMC2 configuration register
      RCC_SDMMC2CFGR      : aliased RCC_SDMMC2CFGR_Register;
      --  RCC SDMMC3 configuration register
      RCC_SDMMC3CFGR      : aliased RCC_SDMMC3CFGR_Register;
      --  RCC GPU configuration register
      RCC_GPUCFGR         : aliased RCC_GPUCFGR_Register;
      --  RCC LTDC configuration register
      RCC_LTDCCFGR        : aliased RCC_LTDCCFGR_Register;
      --  RCC DSI configuration register
      RCC_DSICFGR         : aliased RCC_DSICFGR_Register;
      --  RCC LVDS configuration register
      RCC_LVDSCFGR        : aliased RCC_LVDSCFGR_Register;
      --  RCC CSI configuration register
      RCC_CSICFGR         : aliased RCC_CSICFGR_Register;
      --  RCC DCMIPP configuration register
      RCC_DCMIPPCFGR      : aliased RCC_DCMIPPCFGR_Register;
      --  RCC CCI configuration register
      RCC_CCICFGR         : aliased RCC_CCICFGR_Register;
      --  RCC VDEC configuration register
      RCC_VDECCFGR        : aliased RCC_VDECCFGR_Register;
      --  RCC VENC configuration register
      RCC_VENCCFGR        : aliased RCC_VENCCFGR_Register;
      --  RCC RNG configuration register
      RCC_RNGCFGR         : aliased RCC_RNGCFGR_Register;
      --  RCC PKA configuration register
      RCC_PKACFGR         : aliased RCC_PKACFGR_Register;
      --  RCC SAES configuration register
      RCC_SAESCFGR        : aliased RCC_SAESCFGR_Register;
      --  RCC HASH configuration register
      RCC_HASHCFGR        : aliased RCC_HASHCFGR_Register;
      --  RCC CRYP1 configuration register
      RCC_CRYP1CFGR       : aliased RCC_CRYP1CFGR_Register;
      --  RCC CRYP2 configuration register
      RCC_CRYP2CFGR       : aliased RCC_CRYP2CFGR_Register;
      --  RCC IWDG1 configuration register
      RCC_IWDG1CFGR       : aliased RCC_IWDG1CFGR_Register;
      --  RCC IWDG2 configuration register
      RCC_IWDG2CFGR       : aliased RCC_IWDG2CFGR_Register;
      --  RCC IWDG3 configuration register
      RCC_IWDG3CFGR       : aliased RCC_IWDG3CFGR_Register;
      --  RCC IWDG4 configuration register
      RCC_IWDG4CFGR       : aliased RCC_IWDG4CFGR_Register;
      --  RCC IWDG5 configuration register
      RCC_IWDG5CFGR       : aliased RCC_IWDG5CFGR_Register;
      --  RCC WWDG1 configuration register
      RCC_WWDG1CFGR       : aliased RCC_WWDG1CFGR_Register;
      --  RCC WWDG2 configuration register
      RCC_WWDG2CFGR       : aliased RCC_WWDG2CFGR_Register;
      --  RCC VREF configuration register
      RCC_VREFCFGR        : aliased RCC_VREFCFGR_Register;
      --  RCC DTS configuration register
      RCC_DTSCFGR         : aliased RCC_DTSCFGR_Register;
      --  RCC CRC configuration register
      RCC_CRCCFGR         : aliased RCC_CRCCFGR_Register;
      --  RCC SERC configuration register
      RCC_SERCCFGR        : aliased RCC_SERCCFGR_Register;
      --  RCC OCTOSPI I/O manager configuration register
      RCC_OSPIIOMCFGR     : aliased RCC_OSPIIOMCFGR_Register;
      --  RCC GICV2M configuration register
      RCC_GICV2MCFGR      : aliased RCC_GICV2MCFGR_Register;
      --  RCC I3C1 configuration register
      RCC_I3C1CFGR        : aliased RCC_I3C1CFGR_Register;
      --  RCC I3C2 configuration register
      RCC_I3C2CFGR        : aliased RCC_I3C2CFGR_Register;
      --  RCC I3C3 configuration register
      RCC_I3C3CFGR        : aliased RCC_I3C3CFGR_Register;
      --  RCC I3C4 configuration register
      RCC_I3C4CFGR        : aliased RCC_I3C4CFGR_Register;
      --  RCC MUXSEL configuration register
      RCC_MUXSELCFGR      : aliased RCC_MUXSELCFGR_Register;
      --  RCC cross bar 0 configuration register
      RCC_XBAR0CFGR       : aliased RCC_XBAR0CFGR_Register;
      --  RCC cross bar 1 configuration register
      RCC_XBAR1CFGR       : aliased RCC_XBAR1CFGR_Register;
      --  RCC cross bar 2 configuration register
      RCC_XBAR2CFGR       : aliased RCC_XBAR2CFGR_Register;
      --  RCC cross bar 3 configuration register
      RCC_XBAR3CFGR       : aliased RCC_XBAR3CFGR_Register;
      --  RCC cross bar 4 configuration register
      RCC_XBAR4CFGR       : aliased RCC_XBAR4CFGR_Register;
      --  RCC cross bar 5 configuration register
      RCC_XBAR5CFGR       : aliased RCC_XBAR5CFGR_Register;
      --  RCC cross bar 6 configuration register
      RCC_XBAR6CFGR       : aliased RCC_XBAR6CFGR_Register;
      --  RCC cross bar 7 configuration register
      RCC_XBAR7CFGR       : aliased RCC_XBAR7CFGR_Register;
      --  RCC cross bar 8 configuration register
      RCC_XBAR8CFGR       : aliased RCC_XBAR8CFGR_Register;
      --  RCC cross bar 9 configuration register
      RCC_XBAR9CFGR       : aliased RCC_XBAR9CFGR_Register;
      --  RCC cross bar 10 configuration register
      RCC_XBAR10CFGR      : aliased RCC_XBAR10CFGR_Register;
      --  RCC cross bar 11 configuration register
      RCC_XBAR11CFGR      : aliased RCC_XBAR11CFGR_Register;
      --  RCC cross bar 12 configuration register
      RCC_XBAR12CFGR      : aliased RCC_XBAR12CFGR_Register;
      --  RCC cross bar 13 configuration register
      RCC_XBAR13CFGR      : aliased RCC_XBAR13CFGR_Register;
      --  RCC cross bar 14 configuration register
      RCC_XBAR14CFGR      : aliased RCC_XBAR14CFGR_Register;
      --  RCC cross bar 15 configuration register
      RCC_XBAR15CFGR      : aliased RCC_XBAR15CFGR_Register;
      --  RCC cross bar 16 configuration register
      RCC_XBAR16CFGR      : aliased RCC_XBAR16CFGR_Register;
      --  RCC cross bar 17 configuration register
      RCC_XBAR17CFGR      : aliased RCC_XBAR17CFGR_Register;
      --  RCC cross bar 18 configuration register
      RCC_XBAR18CFGR      : aliased RCC_XBAR18CFGR_Register;
      --  RCC cross bar 19 configuration register
      RCC_XBAR19CFGR      : aliased RCC_XBAR19CFGR_Register;
      --  RCC cross bar 20 configuration register
      RCC_XBAR20CFGR      : aliased RCC_XBAR20CFGR_Register;
      --  RCC cross bar 21 configuration register
      RCC_XBAR21CFGR      : aliased RCC_XBAR21CFGR_Register;
      --  RCC cross bar 22 configuration register
      RCC_XBAR22CFGR      : aliased RCC_XBAR22CFGR_Register;
      --  RCC cross bar 23 configuration register
      RCC_XBAR23CFGR      : aliased RCC_XBAR23CFGR_Register;
      --  RCC cross bar 24 configuration register
      RCC_XBAR24CFGR      : aliased RCC_XBAR24CFGR_Register;
      --  RCC cross bar 25 configuration register
      RCC_XBAR25CFGR      : aliased RCC_XBAR25CFGR_Register;
      --  RCC cross bar 26 configuration register
      RCC_XBAR26CFGR      : aliased RCC_XBAR26CFGR_Register;
      --  RCC cross bar 27 configuration register
      RCC_XBAR27CFGR      : aliased RCC_XBAR27CFGR_Register;
      --  RCC cross bar 28 configuration register
      RCC_XBAR28CFGR      : aliased RCC_XBAR28CFGR_Register;
      --  RCC cross bar 29 configuration register
      RCC_XBAR29CFGR      : aliased RCC_XBAR29CFGR_Register;
      --  RCC cross bar 30 configuration register
      RCC_XBAR30CFGR      : aliased RCC_XBAR30CFGR_Register;
      --  RCC cross bar 31 configuration register
      RCC_XBAR31CFGR      : aliased RCC_XBAR31CFGR_Register;
      --  RCC cross bar 32 configuration register
      RCC_XBAR32CFGR      : aliased RCC_XBAR32CFGR_Register;
      --  RCC cross bar 33 configuration register
      RCC_XBAR33CFGR      : aliased RCC_XBAR33CFGR_Register;
      --  RCC cross bar 34 configuration register
      RCC_XBAR34CFGR      : aliased RCC_XBAR34CFGR_Register;
      --  RCC cross bar 35 configuration register
      RCC_XBAR35CFGR      : aliased RCC_XBAR35CFGR_Register;
      --  RCC cross bar 36 configuration register
      RCC_XBAR36CFGR      : aliased RCC_XBAR36CFGR_Register;
      --  RCC cross bar 37 configuration register
      RCC_XBAR37CFGR      : aliased RCC_XBAR37CFGR_Register;
      --  RCC cross bar 38 configuration register
      RCC_XBAR38CFGR      : aliased RCC_XBAR38CFGR_Register;
      --  RCC cross bar 39 configuration register
      RCC_XBAR39CFGR      : aliased RCC_XBAR39CFGR_Register;
      --  RCC cross bar 40 configuration register
      RCC_XBAR40CFGR      : aliased RCC_XBAR40CFGR_Register;
      --  RCC cross bar 41 configuration register
      RCC_XBAR41CFGR      : aliased RCC_XBAR41CFGR_Register;
      --  RCC cross bar 42 configuration register
      RCC_XBAR42CFGR      : aliased RCC_XBAR42CFGR_Register;
      --  RCC cross bar 43 configuration register
      RCC_XBAR43CFGR      : aliased RCC_XBAR43CFGR_Register;
      --  RCC cross bar 44 configuration register
      RCC_XBAR44CFGR      : aliased RCC_XBAR44CFGR_Register;
      --  RCC cross bar 45 configuration register
      RCC_XBAR45CFGR      : aliased RCC_XBAR45CFGR_Register;
      --  RCC cross bar 46 configuration register
      RCC_XBAR46CFGR      : aliased RCC_XBAR46CFGR_Register;
      --  RCC cross bar 47 configuration register
      RCC_XBAR47CFGR      : aliased RCC_XBAR47CFGR_Register;
      --  RCC cross bar 48 configuration register
      RCC_XBAR48CFGR      : aliased RCC_XBAR48CFGR_Register;
      --  RCC cross bar 49 configuration register
      RCC_XBAR49CFGR      : aliased RCC_XBAR49CFGR_Register;
      --  RCC cross bar 50 configuration register
      RCC_XBAR50CFGR      : aliased RCC_XBAR50CFGR_Register;
      --  RCC cross bar 51 configuration register
      RCC_XBAR51CFGR      : aliased RCC_XBAR51CFGR_Register;
      --  RCC cross bar 52 configuration register
      RCC_XBAR52CFGR      : aliased RCC_XBAR52CFGR_Register;
      --  RCC cross bar 53 configuration register
      RCC_XBAR53CFGR      : aliased RCC_XBAR53CFGR_Register;
      --  RCC cross bar 54 configuration register
      RCC_XBAR54CFGR      : aliased RCC_XBAR54CFGR_Register;
      --  RCC cross bar 55 configuration register
      RCC_XBAR55CFGR      : aliased RCC_XBAR55CFGR_Register;
      --  RCC cross bar 56 configuration register
      RCC_XBAR56CFGR      : aliased RCC_XBAR56CFGR_Register;
      --  RCC cross bar 57 configuration register
      RCC_XBAR57CFGR      : aliased RCC_XBAR57CFGR_Register;
      --  RCC cross bar 58 configuration register
      RCC_XBAR58CFGR      : aliased RCC_XBAR58CFGR_Register;
      --  RCC cross bar 59 configuration register
      RCC_XBAR59CFGR      : aliased RCC_XBAR59CFGR_Register;
      --  RCC cross bar 60 configuration register
      RCC_XBAR60CFGR      : aliased RCC_XBAR60CFGR_Register;
      --  RCC cross bar 61 configuration register
      RCC_XBAR61CFGR      : aliased RCC_XBAR61CFGR_Register;
      --  RCC cross bar 62 configuration register
      RCC_XBAR62CFGR      : aliased RCC_XBAR62CFGR_Register;
      --  RCC cross bar 63 configuration register
      RCC_XBAR63CFGR      : aliased RCC_XBAR63CFGR_Register;
      --  RCC pre divider 0 configuration register
      RCC_PREDIV0CFGR     : aliased RCC_PREDIV0CFGR_Register;
      --  RCC pre divider 1 configuration register
      RCC_PREDIV1CFGR     : aliased RCC_PREDIV1CFGR_Register;
      --  RCC pre divider 2 configuration register
      RCC_PREDIV2CFGR     : aliased RCC_PREDIV2CFGR_Register;
      --  RCC pre divider 3 configuration register
      RCC_PREDIV3CFGR     : aliased RCC_PREDIV3CFGR_Register;
      --  RCC pre divider 4 configuration register
      RCC_PREDIV4CFGR     : aliased RCC_PREDIV4CFGR_Register;
      --  RCC pre divider 5 configuration register
      RCC_PREDIV5CFGR     : aliased RCC_PREDIV5CFGR_Register;
      --  RCC pre divider 6 configuration register
      RCC_PREDIV6CFGR     : aliased RCC_PREDIV6CFGR_Register;
      --  RCC pre divider 7 configuration register
      RCC_PREDIV7CFGR     : aliased RCC_PREDIV7CFGR_Register;
      --  RCC pre divider 8 configuration register
      RCC_PREDIV8CFGR     : aliased RCC_PREDIV8CFGR_Register;
      --  RCC pre divider 9 configuration register
      RCC_PREDIV9CFGR     : aliased RCC_PREDIV9CFGR_Register;
      --  RCC pre divider 10 configuration register
      RCC_PREDIV10CFGR    : aliased RCC_PREDIV10CFGR_Register;
      --  RCC pre divider 11 configuration register
      RCC_PREDIV11CFGR    : aliased RCC_PREDIV11CFGR_Register;
      --  RCC pre divider 12 configuration register
      RCC_PREDIV12CFGR    : aliased RCC_PREDIV12CFGR_Register;
      --  RCC pre divider 13 configuration register
      RCC_PREDIV13CFGR    : aliased RCC_PREDIV13CFGR_Register;
      --  RCC pre divider 14 configuration register
      RCC_PREDIV14CFGR    : aliased RCC_PREDIV14CFGR_Register;
      --  RCC pre divider 15 configuration register
      RCC_PREDIV15CFGR    : aliased RCC_PREDIV15CFGR_Register;
      --  RCC pre divider 16 configuration register
      RCC_PREDIV16CFGR    : aliased RCC_PREDIV16CFGR_Register;
      --  RCC pre divider 17 configuration register
      RCC_PREDIV17CFGR    : aliased RCC_PREDIV17CFGR_Register;
      --  RCC pre divider 18 configuration register
      RCC_PREDIV18CFGR    : aliased RCC_PREDIV18CFGR_Register;
      --  RCC pre divider 19 configuration register
      RCC_PREDIV19CFGR    : aliased RCC_PREDIV19CFGR_Register;
      --  RCC pre divider 20 configuration register
      RCC_PREDIV20CFGR    : aliased RCC_PREDIV20CFGR_Register;
      --  RCC pre divider 21 configuration register
      RCC_PREDIV21CFGR    : aliased RCC_PREDIV21CFGR_Register;
      --  RCC pre divider 22 configuration register
      RCC_PREDIV22CFGR    : aliased RCC_PREDIV22CFGR_Register;
      --  RCC pre divider 23 configuration register
      RCC_PREDIV23CFGR    : aliased RCC_PREDIV23CFGR_Register;
      --  RCC pre divider 24 configuration register
      RCC_PREDIV24CFGR    : aliased RCC_PREDIV24CFGR_Register;
      --  RCC pre divider 25 configuration register
      RCC_PREDIV25CFGR    : aliased RCC_PREDIV25CFGR_Register;
      --  RCC pre divider 26 configuration register
      RCC_PREDIV26CFGR    : aliased RCC_PREDIV26CFGR_Register;
      --  RCC pre divider 27 configuration register
      RCC_PREDIV27CFGR    : aliased RCC_PREDIV27CFGR_Register;
      --  RCC pre divider 28 configuration register
      RCC_PREDIV28CFGR    : aliased RCC_PREDIV28CFGR_Register;
      --  RCC pre divider 29 configuration register
      RCC_PREDIV29CFGR    : aliased RCC_PREDIV29CFGR_Register;
      --  RCC pre divider 30 configuration register
      RCC_PREDIV30CFGR    : aliased RCC_PREDIV30CFGR_Register;
      --  RCC pre divider 31 configuration register
      RCC_PREDIV31CFGR    : aliased RCC_PREDIV31CFGR_Register;
      --  RCC pre divider 32 configuration register
      RCC_PREDIV32CFGR    : aliased RCC_PREDIV32CFGR_Register;
      --  RCC pre divider 33 configuration register
      RCC_PREDIV33CFGR    : aliased RCC_PREDIV33CFGR_Register;
      --  RCC pre divider 34 configuration register
      RCC_PREDIV34CFGR    : aliased RCC_PREDIV34CFGR_Register;
      --  RCC pre divider 35 configuration register
      RCC_PREDIV35CFGR    : aliased RCC_PREDIV35CFGR_Register;
      --  RCC pre divider 36 configuration register
      RCC_PREDIV36CFGR    : aliased RCC_PREDIV36CFGR_Register;
      --  RCC pre divider 37 configuration register
      RCC_PREDIV37CFGR    : aliased RCC_PREDIV37CFGR_Register;
      --  RCC pre divider 38 configuration register
      RCC_PREDIV38CFGR    : aliased RCC_PREDIV38CFGR_Register;
      --  RCC pre divider 39 configuration register
      RCC_PREDIV39CFGR    : aliased RCC_PREDIV39CFGR_Register;
      --  RCC pre divider 40 configuration register
      RCC_PREDIV40CFGR    : aliased RCC_PREDIV40CFGR_Register;
      --  RCC pre divider 41 configuration register
      RCC_PREDIV41CFGR    : aliased RCC_PREDIV41CFGR_Register;
      --  RCC pre divider 42 configuration register
      RCC_PREDIV42CFGR    : aliased RCC_PREDIV42CFGR_Register;
      --  RCC pre divider 43 configuration register
      RCC_PREDIV43CFGR    : aliased RCC_PREDIV43CFGR_Register;
      --  RCC pre divider 44 configuration register
      RCC_PREDIV44CFGR    : aliased RCC_PREDIV44CFGR_Register;
      --  RCC pre divider 45 configuration register
      RCC_PREDIV45CFGR    : aliased RCC_PREDIV45CFGR_Register;
      --  RCC pre divider 46 configuration register
      RCC_PREDIV46CFGR    : aliased RCC_PREDIV46CFGR_Register;
      --  RCC pre divider 47 configuration register
      RCC_PREDIV47CFGR    : aliased RCC_PREDIV47CFGR_Register;
      --  RCC pre divider 48 configuration register
      RCC_PREDIV48CFGR    : aliased RCC_PREDIV48CFGR_Register;
      --  RCC pre divider 49 configuration register
      RCC_PREDIV49CFGR    : aliased RCC_PREDIV49CFGR_Register;
      --  RCC pre divider 50 configuration register
      RCC_PREDIV50CFGR    : aliased RCC_PREDIV50CFGR_Register;
      --  RCC pre divider 51 configuration register
      RCC_PREDIV51CFGR    : aliased RCC_PREDIV51CFGR_Register;
      --  RCC pre divider 52 configuration register
      RCC_PREDIV52CFGR    : aliased RCC_PREDIV52CFGR_Register;
      --  RCC pre divider 53 configuration register
      RCC_PREDIV53CFGR    : aliased RCC_PREDIV53CFGR_Register;
      --  RCC pre divider 54 configuration register
      RCC_PREDIV54CFGR    : aliased RCC_PREDIV54CFGR_Register;
      --  RCC pre divider 55 configuration register
      RCC_PREDIV55CFGR    : aliased RCC_PREDIV55CFGR_Register;
      --  RCC pre divider 56 configuration register
      RCC_PREDIV56CFGR    : aliased RCC_PREDIV56CFGR_Register;
      --  RCC pre divider 57 configuration register
      RCC_PREDIV57CFGR    : aliased RCC_PREDIV57CFGR_Register;
      --  RCC pre divider 58 configuration register
      RCC_PREDIV58CFGR    : aliased RCC_PREDIV58CFGR_Register;
      --  RCC pre divider 59 configuration register
      RCC_PREDIV59CFGR    : aliased RCC_PREDIV59CFGR_Register;
      --  RCC pre divider 60 configuration register
      RCC_PREDIV60CFGR    : aliased RCC_PREDIV60CFGR_Register;
      --  RCC pre divider 61 configuration register
      RCC_PREDIV61CFGR    : aliased RCC_PREDIV61CFGR_Register;
      --  RCC pre divider 62 configuration register
      RCC_PREDIV62CFGR    : aliased RCC_PREDIV62CFGR_Register;
      --  RCC pre divider 63 configuration register
      RCC_PREDIV63CFGR    : aliased RCC_PREDIV63CFGR_Register;
      --  RCC pre divider status register 1
      RCC_PREDIVSR1       : aliased HAL.UInt32;
      --  RCC pre divider status register 2
      RCC_PREDIVSR2       : aliased HAL.UInt32;
      --  RCC final divider 0 configuration register
      RCC_FINDIV0CFGR     : aliased RCC_FINDIV0CFGR_Register;
      --  RCC final divider 1 configuration register
      RCC_FINDIV1CFGR     : aliased RCC_FINDIV1CFGR_Register;
      --  RCC final divider 2 configuration register
      RCC_FINDIV2CFGR     : aliased RCC_FINDIV2CFGR_Register;
      --  RCC final divider 3 configuration register
      RCC_FINDIV3CFGR     : aliased RCC_FINDIV3CFGR_Register;
      --  RCC final divider 4 configuration register
      RCC_FINDIV4CFGR     : aliased RCC_FINDIV4CFGR_Register;
      --  RCC final divider 5 configuration register
      RCC_FINDIV5CFGR     : aliased RCC_FINDIV5CFGR_Register;
      --  RCC final divider 6 configuration register
      RCC_FINDIV6CFGR     : aliased RCC_FINDIV6CFGR_Register;
      --  RCC final divider 7 configuration register
      RCC_FINDIV7CFGR     : aliased RCC_FINDIV7CFGR_Register;
      --  RCC final divider 8 configuration register
      RCC_FINDIV8CFGR     : aliased RCC_FINDIV8CFGR_Register;
      --  RCC final divider 9 configuration register
      RCC_FINDIV9CFGR     : aliased RCC_FINDIV9CFGR_Register;
      --  RCC final divider 10 configuration register
      RCC_FINDIV10CFGR    : aliased RCC_FINDIV10CFGR_Register;
      --  RCC final divider 11 configuration register
      RCC_FINDIV11CFGR    : aliased RCC_FINDIV11CFGR_Register;
      --  RCC final divider 12 configuration register
      RCC_FINDIV12CFGR    : aliased RCC_FINDIV12CFGR_Register;
      --  RCC final divider 13 configuration register
      RCC_FINDIV13CFGR    : aliased RCC_FINDIV13CFGR_Register;
      --  RCC final divider 14 configuration register
      RCC_FINDIV14CFGR    : aliased RCC_FINDIV14CFGR_Register;
      --  RCC final divider 15 configuration register
      RCC_FINDIV15CFGR    : aliased RCC_FINDIV15CFGR_Register;
      --  RCC final divider 16 configuration register
      RCC_FINDIV16CFGR    : aliased RCC_FINDIV16CFGR_Register;
      --  RCC final divider 17 configuration register
      RCC_FINDIV17CFGR    : aliased RCC_FINDIV17CFGR_Register;
      --  RCC final divider 18 configuration register
      RCC_FINDIV18CFGR    : aliased RCC_FINDIV18CFGR_Register;
      --  RCC final divider 19 configuration register
      RCC_FINDIV19CFGR    : aliased RCC_FINDIV19CFGR_Register;
      --  RCC final divider 20 configuration register
      RCC_FINDIV20CFGR    : aliased RCC_FINDIV20CFGR_Register;
      --  RCC final divider 21 configuration register
      RCC_FINDIV21CFGR    : aliased RCC_FINDIV21CFGR_Register;
      --  RCC final divider 22 configuration register
      RCC_FINDIV22CFGR    : aliased RCC_FINDIV22CFGR_Register;
      --  RCC final divider 23 configuration register
      RCC_FINDIV23CFGR    : aliased RCC_FINDIV23CFGR_Register;
      --  RCC final divider 24 configuration register
      RCC_FINDIV24CFGR    : aliased RCC_FINDIV24CFGR_Register;
      --  RCC final divider 25 configuration register
      RCC_FINDIV25CFGR    : aliased RCC_FINDIV25CFGR_Register;
      --  RCC final divider 26 configuration register
      RCC_FINDIV26CFGR    : aliased RCC_FINDIV26CFGR_Register;
      --  RCC final divider 27 configuration register
      RCC_FINDIV27CFGR    : aliased RCC_FINDIV27CFGR_Register;
      --  RCC final divider 28 configuration register
      RCC_FINDIV28CFGR    : aliased RCC_FINDIV28CFGR_Register;
      --  RCC final divider 29 configuration register
      RCC_FINDIV29CFGR    : aliased RCC_FINDIV29CFGR_Register;
      --  RCC final divider 30 configuration register
      RCC_FINDIV30CFGR    : aliased RCC_FINDIV30CFGR_Register;
      --  RCC final divider 31 configuration register
      RCC_FINDIV31CFGR    : aliased RCC_FINDIV31CFGR_Register;
      --  RCC final divider 32 configuration register
      RCC_FINDIV32CFGR    : aliased RCC_FINDIV32CFGR_Register;
      --  RCC final divider 33 configuration register
      RCC_FINDIV33CFGR    : aliased RCC_FINDIV33CFGR_Register;
      --  RCC final divider 34 configuration register
      RCC_FINDIV34CFGR    : aliased RCC_FINDIV34CFGR_Register;
      --  RCC final divider 35 configuration register
      RCC_FINDIV35CFGR    : aliased RCC_FINDIV35CFGR_Register;
      --  RCC final divider 36 configuration register
      RCC_FINDIV36CFGR    : aliased RCC_FINDIV36CFGR_Register;
      --  RCC final divider 37 configuration register
      RCC_FINDIV37CFGR    : aliased RCC_FINDIV37CFGR_Register;
      --  RCC final divider 38 configuration register
      RCC_FINDIV38CFGR    : aliased RCC_FINDIV38CFGR_Register;
      --  RCC final divider 39 configuration register
      RCC_FINDIV39CFGR    : aliased RCC_FINDIV39CFGR_Register;
      --  RCC final divider 40 configuration register
      RCC_FINDIV40CFGR    : aliased RCC_FINDIV40CFGR_Register;
      --  RCC final divider 41 configuration register
      RCC_FINDIV41CFGR    : aliased RCC_FINDIV41CFGR_Register;
      --  RCC final divider 42 configuration register
      RCC_FINDIV42CFGR    : aliased RCC_FINDIV42CFGR_Register;
      --  RCC final divider 43 configuration register
      RCC_FINDIV43CFGR    : aliased RCC_FINDIV43CFGR_Register;
      --  RCC final divider 44 configuration register
      RCC_FINDIV44CFGR    : aliased RCC_FINDIV44CFGR_Register;
      --  RCC final divider 45 configuration register
      RCC_FINDIV45CFGR    : aliased RCC_FINDIV45CFGR_Register;
      --  RCC final divider 46 configuration register
      RCC_FINDIV46CFGR    : aliased RCC_FINDIV46CFGR_Register;
      --  RCC final divider 47 configuration register
      RCC_FINDIV47CFGR    : aliased RCC_FINDIV47CFGR_Register;
      --  RCC final divider 48 configuration register
      RCC_FINDIV48CFGR    : aliased RCC_FINDIV48CFGR_Register;
      --  RCC final divider 49 configuration register
      RCC_FINDIV49CFGR    : aliased RCC_FINDIV49CFGR_Register;
      --  RCC final divider 50 configuration register
      RCC_FINDIV50CFGR    : aliased RCC_FINDIV50CFGR_Register;
      --  RCC final divider 51 configuration register
      RCC_FINDIV51CFGR    : aliased RCC_FINDIV51CFGR_Register;
      --  RCC final divider 52 configuration register
      RCC_FINDIV52CFGR    : aliased RCC_FINDIV52CFGR_Register;
      --  RCC final divider 53 configuration register
      RCC_FINDIV53CFGR    : aliased RCC_FINDIV53CFGR_Register;
      --  RCC final divider 54 configuration register
      RCC_FINDIV54CFGR    : aliased RCC_FINDIV54CFGR_Register;
      --  RCC final divider 55 configuration register
      RCC_FINDIV55CFGR    : aliased RCC_FINDIV55CFGR_Register;
      --  RCC final divider 56 configuration register
      RCC_FINDIV56CFGR    : aliased RCC_FINDIV56CFGR_Register;
      --  RCC final divider 57 configuration register
      RCC_FINDIV57CFGR    : aliased RCC_FINDIV57CFGR_Register;
      --  RCC final divider 58 configuration register
      RCC_FINDIV58CFGR    : aliased RCC_FINDIV58CFGR_Register;
      --  RCC final divider 59 configuration register
      RCC_FINDIV59CFGR    : aliased RCC_FINDIV59CFGR_Register;
      --  RCC final divider 60 configuration register
      RCC_FINDIV60CFGR    : aliased RCC_FINDIV60CFGR_Register;
      --  RCC final divider 61 configuration register
      RCC_FINDIV61CFGR    : aliased RCC_FINDIV61CFGR_Register;
      --  RCC final divider 62 configuration register
      RCC_FINDIV62CFGR    : aliased RCC_FINDIV62CFGR_Register;
      --  RCC final divider 63 configuration register
      RCC_FINDIV63CFGR    : aliased RCC_FINDIV63CFGR_Register;
      --  RCC final divider status register 1
      RCC_FINDIVSR1       : aliased HAL.UInt32;
      --  RCC final divider status register 2
      RCC_FINDIVSR2       : aliased HAL.UInt32;
      --  RCC clock frequency calculator and observation 0 clock 	configuration
      --  register
      RCC_FCALCOBS0CFGR   : aliased RCC_FCALCOBS0CFGR_Register;
      --  RCC clock frequency calculator and observation 1 clock 	configuration
      --  register
      RCC_FCALCOBS1CFGR   : aliased RCC_FCALCOBS1CFGR_Register;
      --  RCC clock frequency calculator reference clock	configuration register
      RCC_FCALCREFCFGR    : aliased RCC_FCALCREFCFGR_Register;
      --  RCC clock frequency calculator control register 1
      RCC_FCALCCR1        : aliased RCC_FCALCCR1_Register;
      --  RCC clock frequency calculator control register 2
      RCC_FCALCCR2        : aliased RCC_FCALCCR2_Register;
      --  RCC clock frequency calculator status register
      RCC_FCALCSR         : aliased RCC_FCALCSR_Register;
      --  RCC PLL4 configuration register 1
      RCC_PLL4CFGR1       : aliased RCC_PLL4CFGR1_Register;
      --  RCC PLL4 configuration register 2
      RCC_PLL4CFGR2       : aliased RCC_PLL4CFGR2_Register;
      --  RCC PLL4 configuration register 3
      RCC_PLL4CFGR3       : aliased RCC_PLL4CFGR3_Register;
      --  RCC PLL4 configuration register 4
      RCC_PLL4CFGR4       : aliased RCC_PLL4CFGR4_Register;
      --  RCC PLL4 configuration register 5
      RCC_PLL4CFGR5       : aliased RCC_PLL4CFGR5_Register;
      --  RCC PLL4 configuration register 6
      RCC_PLL4CFGR6       : aliased RCC_PLL4CFGR6_Register;
      --  RCC PLL4 configuration register 7
      RCC_PLL4CFGR7       : aliased RCC_PLL4CFGR7_Register;
      --  RCC PLL5 configuration register 1
      RCC_PLL5CFGR1       : aliased RCC_PLL5CFGR1_Register;
      --  RCC PLL5 configuration register 2
      RCC_PLL5CFGR2       : aliased RCC_PLL5CFGR2_Register;
      --  RCC PLL5 configuration register 3
      RCC_PLL5CFGR3       : aliased RCC_PLL5CFGR3_Register;
      --  RCC PLL5 configuration register 4
      RCC_PLL5CFGR4       : aliased RCC_PLL5CFGR4_Register;
      --  RCC PLL5 configuration register 5
      RCC_PLL5CFGR5       : aliased RCC_PLL5CFGR5_Register;
      --  RCC PLL5 configuration register 6
      RCC_PLL5CFGR6       : aliased RCC_PLL5CFGR6_Register;
      --  RCC PLL5 configuration register 7
      RCC_PLL5CFGR7       : aliased RCC_PLL5CFGR7_Register;
      --  RCC PLL6 configuration register 1
      RCC_PLL6CFGR1       : aliased RCC_PLL6CFGR1_Register;
      --  RCC PLL6 configuration register 2
      RCC_PLL6CFGR2       : aliased RCC_PLL6CFGR2_Register;
      --  RCC PLL6 configuration register 3
      RCC_PLL6CFGR3       : aliased RCC_PLL6CFGR3_Register;
      --  RCC PLL6 configuration register 4
      RCC_PLL6CFGR4       : aliased RCC_PLL6CFGR4_Register;
      --  RCC PLL6 configuration register 5
      RCC_PLL6CFGR5       : aliased RCC_PLL6CFGR5_Register;
      --  RCC PLL6 configuration register 6
      RCC_PLL6CFGR6       : aliased RCC_PLL6CFGR6_Register;
      --  RCC PLL6 configuration register 7
      RCC_PLL6CFGR7       : aliased RCC_PLL6CFGR7_Register;
      --  RCC PLL7 configuration register 1
      RCC_PLL7CFGR1       : aliased RCC_PLL7CFGR1_Register;
      --  RCC PLL7 configuration register 2
      RCC_PLL7CFGR2       : aliased RCC_PLL7CFGR2_Register;
      --  RCC PLL7 configuration register 3
      RCC_PLL7CFGR3       : aliased RCC_PLL7CFGR3_Register;
      --  RCC PLL7 configuration register 4
      RCC_PLL7CFGR4       : aliased RCC_PLL7CFGR4_Register;
      --  RCC PLL7 configuration register 5
      RCC_PLL7CFGR5       : aliased RCC_PLL7CFGR5_Register;
      --  RCC PLL7 configuration register 6
      RCC_PLL7CFGR6       : aliased RCC_PLL7CFGR6_Register;
      --  RCC PLL7 configuration register 7
      RCC_PLL7CFGR7       : aliased RCC_PLL7CFGR7_Register;
      --  RCC PLL8 configuration register 1
      RCC_PLL8CFGR1       : aliased RCC_PLL8CFGR1_Register;
      --  RCC PLL8 configuration register 2
      RCC_PLL8CFGR2       : aliased RCC_PLL8CFGR2_Register;
      --  RCC PLL8 configuration register 3
      RCC_PLL8CFGR3       : aliased RCC_PLL8CFGR3_Register;
      --  RCC PLL8 configuration register 4
      RCC_PLL8CFGR4       : aliased RCC_PLL8CFGR4_Register;
      --  RCC PLL8 configuration register 5
      RCC_PLL8CFGR5       : aliased RCC_PLL8CFGR5_Register;
      --  RCC PLL8 configuration register 6
      RCC_PLL8CFGR6       : aliased RCC_PLL8CFGR6_Register;
      --  RCC PLL8 configuration register 7
      RCC_PLL8CFGR7       : aliased RCC_PLL8CFGR7_Register;
      --  RCC version register
      RCC_VERR            : aliased RCC_VERR_Register;
      --  RCC identifier register
      RCC_IDR             : aliased HAL.UInt32;
      --  RCC size identification register
      RCC_SIDR            : aliased HAL.UInt32;
   end record
     with Volatile;

   for RCC_Peripheral use record
      RCC_SECCFGR0        at 16#0# range 0 .. 31;
      RCC_SECCFGR1        at 16#4# range 0 .. 31;
      RCC_SECCFGR2        at 16#8# range 0 .. 31;
      RCC_SECCFGR3        at 16#C# range 0 .. 31;
      RCC_PRIVCFGR0       at 16#10# range 0 .. 31;
      RCC_PRIVCFGR1       at 16#14# range 0 .. 31;
      RCC_PRIVCFGR2       at 16#18# range 0 .. 31;
      RCC_PRIVCFGR3       at 16#1C# range 0 .. 31;
      RCC_RCFGLOCKR0      at 16#20# range 0 .. 31;
      RCC_RCFGLOCKR1      at 16#24# range 0 .. 31;
      RCC_RCFGLOCKR2      at 16#28# range 0 .. 31;
      RCC_RCFGLOCKR3      at 16#2C# range 0 .. 31;
      RCC_R0CIDCFGR       at 16#30# range 0 .. 31;
      RCC_R0SEMCR         at 16#34# range 0 .. 31;
      RCC_R1CIDCFGR       at 16#38# range 0 .. 31;
      RCC_R1SEMCR         at 16#3C# range 0 .. 31;
      RCC_R2CIDCFGR       at 16#40# range 0 .. 31;
      RCC_R2SEMCR         at 16#44# range 0 .. 31;
      RCC_R3CIDCFGR       at 16#48# range 0 .. 31;
      RCC_R3SEMCR         at 16#4C# range 0 .. 31;
      RCC_R4CIDCFGR       at 16#50# range 0 .. 31;
      RCC_R4SEMCR         at 16#54# range 0 .. 31;
      RCC_R5CIDCFGR       at 16#58# range 0 .. 31;
      RCC_R5SEMCR         at 16#5C# range 0 .. 31;
      RCC_R6CIDCFGR       at 16#60# range 0 .. 31;
      RCC_R6SEMCR         at 16#64# range 0 .. 31;
      RCC_R7CIDCFGR       at 16#68# range 0 .. 31;
      RCC_R7SEMCR         at 16#6C# range 0 .. 31;
      RCC_R8CIDCFGR       at 16#70# range 0 .. 31;
      RCC_R8SEMCR         at 16#74# range 0 .. 31;
      RCC_R9CIDCFGR       at 16#78# range 0 .. 31;
      RCC_R9SEMCR         at 16#7C# range 0 .. 31;
      RCC_R10CIDCFGR      at 16#80# range 0 .. 31;
      RCC_R10SEMCR        at 16#84# range 0 .. 31;
      RCC_R11CIDCFGR      at 16#88# range 0 .. 31;
      RCC_R11SEMCR        at 16#8C# range 0 .. 31;
      RCC_R12CIDCFGR      at 16#90# range 0 .. 31;
      RCC_R12SEMCR        at 16#94# range 0 .. 31;
      RCC_R13CIDCFGR      at 16#98# range 0 .. 31;
      RCC_R13SEMCR        at 16#9C# range 0 .. 31;
      RCC_R14CIDCFGR      at 16#A0# range 0 .. 31;
      RCC_R14SEMCR        at 16#A4# range 0 .. 31;
      RCC_R15CIDCFGR      at 16#A8# range 0 .. 31;
      RCC_R15SEMCR        at 16#AC# range 0 .. 31;
      RCC_R16CIDCFGR      at 16#B0# range 0 .. 31;
      RCC_R16SEMCR        at 16#B4# range 0 .. 31;
      RCC_R17CIDCFGR      at 16#B8# range 0 .. 31;
      RCC_R17SEMCR        at 16#BC# range 0 .. 31;
      RCC_R18CIDCFGR      at 16#C0# range 0 .. 31;
      RCC_R18SEMCR        at 16#C4# range 0 .. 31;
      RCC_R19CIDCFGR      at 16#C8# range 0 .. 31;
      RCC_R19SEMCR        at 16#CC# range 0 .. 31;
      RCC_R20CIDCFGR      at 16#D0# range 0 .. 31;
      RCC_R20SEMCR        at 16#D4# range 0 .. 31;
      RCC_R21CIDCFGR      at 16#D8# range 0 .. 31;
      RCC_R21SEMCR        at 16#DC# range 0 .. 31;
      RCC_R22CIDCFGR      at 16#E0# range 0 .. 31;
      RCC_R22SEMCR        at 16#E4# range 0 .. 31;
      RCC_R23CIDCFGR      at 16#E8# range 0 .. 31;
      RCC_R23SEMCR        at 16#EC# range 0 .. 31;
      RCC_R24CIDCFGR      at 16#F0# range 0 .. 31;
      RCC_R24SEMCR        at 16#F4# range 0 .. 31;
      RCC_R25CIDCFGR      at 16#F8# range 0 .. 31;
      RCC_R25SEMCR        at 16#FC# range 0 .. 31;
      RCC_R26CIDCFGR      at 16#100# range 0 .. 31;
      RCC_R26SEMCR        at 16#104# range 0 .. 31;
      RCC_R27CIDCFGR      at 16#108# range 0 .. 31;
      RCC_R27SEMCR        at 16#10C# range 0 .. 31;
      RCC_R28CIDCFGR      at 16#110# range 0 .. 31;
      RCC_R28SEMCR        at 16#114# range 0 .. 31;
      RCC_R29CIDCFGR      at 16#118# range 0 .. 31;
      RCC_R29SEMCR        at 16#11C# range 0 .. 31;
      RCC_R30CIDCFGR      at 16#120# range 0 .. 31;
      RCC_R30SEMCR        at 16#124# range 0 .. 31;
      RCC_R31CIDCFGR      at 16#128# range 0 .. 31;
      RCC_R31SEMCR        at 16#12C# range 0 .. 31;
      RCC_R32CIDCFGR      at 16#130# range 0 .. 31;
      RCC_R32SEMCR        at 16#134# range 0 .. 31;
      RCC_R33CIDCFGR      at 16#138# range 0 .. 31;
      RCC_R33SEMCR        at 16#13C# range 0 .. 31;
      RCC_R34CIDCFGR      at 16#140# range 0 .. 31;
      RCC_R34SEMCR        at 16#144# range 0 .. 31;
      RCC_R35CIDCFGR      at 16#148# range 0 .. 31;
      RCC_R35SEMCR        at 16#14C# range 0 .. 31;
      RCC_R36CIDCFGR      at 16#150# range 0 .. 31;
      RCC_R36SEMCR        at 16#154# range 0 .. 31;
      RCC_R37CIDCFGR      at 16#158# range 0 .. 31;
      RCC_R37SEMCR        at 16#15C# range 0 .. 31;
      RCC_R38CIDCFGR      at 16#160# range 0 .. 31;
      RCC_R38SEMCR        at 16#164# range 0 .. 31;
      RCC_R39CIDCFGR      at 16#168# range 0 .. 31;
      RCC_R39SEMCR        at 16#16C# range 0 .. 31;
      RCC_R40CIDCFGR      at 16#170# range 0 .. 31;
      RCC_R40SEMCR        at 16#174# range 0 .. 31;
      RCC_R41CIDCFGR      at 16#178# range 0 .. 31;
      RCC_R41SEMCR        at 16#17C# range 0 .. 31;
      RCC_R42CIDCFGR      at 16#180# range 0 .. 31;
      RCC_R42SEMCR        at 16#184# range 0 .. 31;
      RCC_R43CIDCFGR      at 16#188# range 0 .. 31;
      RCC_R43SEMCR        at 16#18C# range 0 .. 31;
      RCC_R44CIDCFGR      at 16#190# range 0 .. 31;
      RCC_R44SEMCR        at 16#194# range 0 .. 31;
      RCC_R45CIDCFGR      at 16#198# range 0 .. 31;
      RCC_R45SEMCR        at 16#19C# range 0 .. 31;
      RCC_R46CIDCFGR      at 16#1A0# range 0 .. 31;
      RCC_R46SEMCR        at 16#1A4# range 0 .. 31;
      RCC_R47CIDCFGR      at 16#1A8# range 0 .. 31;
      RCC_R47SEMCR        at 16#1AC# range 0 .. 31;
      RCC_R48CIDCFGR      at 16#1B0# range 0 .. 31;
      RCC_R48SEMCR        at 16#1B4# range 0 .. 31;
      RCC_R49CIDCFGR      at 16#1B8# range 0 .. 31;
      RCC_R49SEMCR        at 16#1BC# range 0 .. 31;
      RCC_R50CIDCFGR      at 16#1C0# range 0 .. 31;
      RCC_R50SEMCR        at 16#1C4# range 0 .. 31;
      RCC_R51CIDCFGR      at 16#1C8# range 0 .. 31;
      RCC_R51SEMCR        at 16#1CC# range 0 .. 31;
      RCC_R52CIDCFGR      at 16#1D0# range 0 .. 31;
      RCC_R52SEMCR        at 16#1D4# range 0 .. 31;
      RCC_R53CIDCFGR      at 16#1D8# range 0 .. 31;
      RCC_R53SEMCR        at 16#1DC# range 0 .. 31;
      RCC_R54CIDCFGR      at 16#1E0# range 0 .. 31;
      RCC_R54SEMCR        at 16#1E4# range 0 .. 31;
      RCC_R55CIDCFGR      at 16#1E8# range 0 .. 31;
      RCC_R55SEMCR        at 16#1EC# range 0 .. 31;
      RCC_R56CIDCFGR      at 16#1F0# range 0 .. 31;
      RCC_R56SEMCR        at 16#1F4# range 0 .. 31;
      RCC_R57CIDCFGR      at 16#1F8# range 0 .. 31;
      RCC_R57SEMCR        at 16#1FC# range 0 .. 31;
      RCC_R58CIDCFGR      at 16#200# range 0 .. 31;
      RCC_R58SEMCR        at 16#204# range 0 .. 31;
      RCC_R59CIDCFGR      at 16#208# range 0 .. 31;
      RCC_R59SEMCR        at 16#20C# range 0 .. 31;
      RCC_R60CIDCFGR      at 16#210# range 0 .. 31;
      RCC_R60SEMCR        at 16#214# range 0 .. 31;
      RCC_R61CIDCFGR      at 16#218# range 0 .. 31;
      RCC_R61SEMCR        at 16#21C# range 0 .. 31;
      RCC_R62CIDCFGR      at 16#220# range 0 .. 31;
      RCC_R62SEMCR        at 16#224# range 0 .. 31;
      RCC_R63CIDCFGR      at 16#228# range 0 .. 31;
      RCC_R63SEMCR        at 16#22C# range 0 .. 31;
      RCC_R64CIDCFGR      at 16#230# range 0 .. 31;
      RCC_R64SEMCR        at 16#234# range 0 .. 31;
      RCC_R65CIDCFGR      at 16#238# range 0 .. 31;
      RCC_R65SEMCR        at 16#23C# range 0 .. 31;
      RCC_R66CIDCFGR      at 16#240# range 0 .. 31;
      RCC_R66SEMCR        at 16#244# range 0 .. 31;
      RCC_R67CIDCFGR      at 16#248# range 0 .. 31;
      RCC_R67SEMCR        at 16#24C# range 0 .. 31;
      RCC_R68CIDCFGR      at 16#250# range 0 .. 31;
      RCC_R68SEMCR        at 16#254# range 0 .. 31;
      RCC_R69CIDCFGR      at 16#258# range 0 .. 31;
      RCC_R69SEMCR        at 16#25C# range 0 .. 31;
      RCC_R70CIDCFGR      at 16#260# range 0 .. 31;
      RCC_R70SEMCR        at 16#264# range 0 .. 31;
      RCC_R71CIDCFGR      at 16#268# range 0 .. 31;
      RCC_R71SEMCR        at 16#26C# range 0 .. 31;
      RCC_R72CIDCFGR      at 16#270# range 0 .. 31;
      RCC_R72SEMCR        at 16#274# range 0 .. 31;
      RCC_R73CIDCFGR      at 16#278# range 0 .. 31;
      RCC_R73SEMCR        at 16#27C# range 0 .. 31;
      RCC_R74CIDCFGR      at 16#280# range 0 .. 31;
      RCC_R74SEMCR        at 16#284# range 0 .. 31;
      RCC_R75CIDCFGR      at 16#288# range 0 .. 31;
      RCC_R75SEMCR        at 16#28C# range 0 .. 31;
      RCC_R76CIDCFGR      at 16#290# range 0 .. 31;
      RCC_R76SEMCR        at 16#294# range 0 .. 31;
      RCC_R77CIDCFGR      at 16#298# range 0 .. 31;
      RCC_R77SEMCR        at 16#29C# range 0 .. 31;
      RCC_R78CIDCFGR      at 16#2A0# range 0 .. 31;
      RCC_R78SEMCR        at 16#2A4# range 0 .. 31;
      RCC_R79CIDCFGR      at 16#2A8# range 0 .. 31;
      RCC_R79SEMCR        at 16#2AC# range 0 .. 31;
      RCC_R80CIDCFGR      at 16#2B0# range 0 .. 31;
      RCC_R80SEMCR        at 16#2B4# range 0 .. 31;
      RCC_R81CIDCFGR      at 16#2B8# range 0 .. 31;
      RCC_R81SEMCR        at 16#2BC# range 0 .. 31;
      RCC_R82CIDCFGR      at 16#2C0# range 0 .. 31;
      RCC_R82SEMCR        at 16#2C4# range 0 .. 31;
      RCC_R83CIDCFGR      at 16#2C8# range 0 .. 31;
      RCC_R83SEMCR        at 16#2CC# range 0 .. 31;
      RCC_R84CIDCFGR      at 16#2D0# range 0 .. 31;
      RCC_R84SEMCR        at 16#2D4# range 0 .. 31;
      RCC_R85CIDCFGR      at 16#2D8# range 0 .. 31;
      RCC_R85SEMCR        at 16#2DC# range 0 .. 31;
      RCC_R86CIDCFGR      at 16#2E0# range 0 .. 31;
      RCC_R86SEMCR        at 16#2E4# range 0 .. 31;
      RCC_R87CIDCFGR      at 16#2E8# range 0 .. 31;
      RCC_R87SEMCR        at 16#2EC# range 0 .. 31;
      RCC_R88CIDCFGR      at 16#2F0# range 0 .. 31;
      RCC_R88SEMCR        at 16#2F4# range 0 .. 31;
      RCC_R89CIDCFGR      at 16#2F8# range 0 .. 31;
      RCC_R89SEMCR        at 16#2FC# range 0 .. 31;
      RCC_R90CIDCFGR      at 16#300# range 0 .. 31;
      RCC_R90SEMCR        at 16#304# range 0 .. 31;
      RCC_R91CIDCFGR      at 16#308# range 0 .. 31;
      RCC_R91SEMCR        at 16#30C# range 0 .. 31;
      RCC_R92CIDCFGR      at 16#310# range 0 .. 31;
      RCC_R92SEMCR        at 16#314# range 0 .. 31;
      RCC_R93CIDCFGR      at 16#318# range 0 .. 31;
      RCC_R93SEMCR        at 16#31C# range 0 .. 31;
      RCC_R94CIDCFGR      at 16#320# range 0 .. 31;
      RCC_R94SEMCR        at 16#324# range 0 .. 31;
      RCC_R95CIDCFGR      at 16#328# range 0 .. 31;
      RCC_R95SEMCR        at 16#32C# range 0 .. 31;
      RCC_R96CIDCFGR      at 16#330# range 0 .. 31;
      RCC_R96SEMCR        at 16#334# range 0 .. 31;
      RCC_R97CIDCFGR      at 16#338# range 0 .. 31;
      RCC_R97SEMCR        at 16#33C# range 0 .. 31;
      RCC_R98CIDCFGR      at 16#340# range 0 .. 31;
      RCC_R98SEMCR        at 16#344# range 0 .. 31;
      RCC_R99CIDCFGR      at 16#348# range 0 .. 31;
      RCC_R99SEMCR        at 16#34C# range 0 .. 31;
      RCC_R100CIDCFGR     at 16#350# range 0 .. 31;
      RCC_R100SEMCR       at 16#354# range 0 .. 31;
      RCC_R101CIDCFGR     at 16#358# range 0 .. 31;
      RCC_R101SEMCR       at 16#35C# range 0 .. 31;
      RCC_R102CIDCFGR     at 16#360# range 0 .. 31;
      RCC_R102SEMCR       at 16#364# range 0 .. 31;
      RCC_R103CIDCFGR     at 16#368# range 0 .. 31;
      RCC_R103SEMCR       at 16#36C# range 0 .. 31;
      RCC_R104CIDCFGR     at 16#370# range 0 .. 31;
      RCC_R104SEMCR       at 16#374# range 0 .. 31;
      RCC_R105CIDCFGR     at 16#378# range 0 .. 31;
      RCC_R105SEMCR       at 16#37C# range 0 .. 31;
      RCC_R106CIDCFGR     at 16#380# range 0 .. 31;
      RCC_R106SEMCR       at 16#384# range 0 .. 31;
      RCC_R107CIDCFGR     at 16#388# range 0 .. 31;
      RCC_R107SEMCR       at 16#38C# range 0 .. 31;
      RCC_R108CIDCFGR     at 16#390# range 0 .. 31;
      RCC_R108SEMCR       at 16#394# range 0 .. 31;
      RCC_R109CIDCFGR     at 16#398# range 0 .. 31;
      RCC_R109SEMCR       at 16#39C# range 0 .. 31;
      RCC_R110CIDCFGR     at 16#3A0# range 0 .. 31;
      RCC_R110SEMCR       at 16#3A4# range 0 .. 31;
      RCC_R111CIDCFGR     at 16#3A8# range 0 .. 31;
      RCC_R111SEMCR       at 16#3AC# range 0 .. 31;
      RCC_R112CIDCFGR     at 16#3B0# range 0 .. 31;
      RCC_R112SEMCR       at 16#3B4# range 0 .. 31;
      RCC_R113CIDCFGR     at 16#3B8# range 0 .. 31;
      RCC_R113SEMCR       at 16#3BC# range 0 .. 31;
      RCC_GRSTCSETR       at 16#400# range 0 .. 31;
      RCC_C1RSTCSETR      at 16#404# range 0 .. 31;
      RCC_C1P1RSTCSETR    at 16#408# range 0 .. 31;
      RCC_C2RSTCSETR      at 16#40C# range 0 .. 31;
      RCC_HWRSTSCLRR      at 16#410# range 0 .. 31;
      RCC_C1HWRSTSCLRR    at 16#414# range 0 .. 31;
      RCC_C2HWRSTSCLRR    at 16#418# range 0 .. 31;
      RCC_C1BOOTRSTSSETR  at 16#41C# range 0 .. 31;
      RCC_C1BOOTRSTSCLRR  at 16#420# range 0 .. 31;
      RCC_C2BOOTRSTSSETR  at 16#424# range 0 .. 31;
      RCC_C2BOOTRSTSCLRR  at 16#428# range 0 .. 31;
      RCC_C1SREQSETR      at 16#42C# range 0 .. 31;
      RCC_C1SREQCLRR      at 16#430# range 0 .. 31;
      RCC_CPUBOOTCR       at 16#434# range 0 .. 31;
      RCC_STBYBOOTCR      at 16#438# range 0 .. 31;
      RCC_LEGBOOTCR       at 16#43C# range 0 .. 31;
      RCC_BDCR            at 16#440# range 0 .. 31;
      RCC_D3DCR           at 16#444# range 0 .. 31;
      RCC_D3DSR           at 16#448# range 0 .. 31;
      RCC_RDCR            at 16#44C# range 0 .. 31;
      RCC_C1MSRDCR        at 16#450# range 0 .. 31;
      RCC_PWRLPDLYCR      at 16#454# range 0 .. 31;
      RCC_C1CIESETR       at 16#458# range 0 .. 31;
      RCC_C1CIFCLRR       at 16#45C# range 0 .. 31;
      RCC_C2CIESETR       at 16#460# range 0 .. 31;
      RCC_C2CIFCLRR       at 16#464# range 0 .. 31;
      RCC_IWDGC1FZSETR    at 16#468# range 0 .. 31;
      RCC_IWDGC1FZCLRR    at 16#46C# range 0 .. 31;
      RCC_IWDGC1CFGSETR   at 16#470# range 0 .. 31;
      RCC_IWDGC1CFGCLRR   at 16#474# range 0 .. 31;
      RCC_IWDGC2FZSETR    at 16#478# range 0 .. 31;
      RCC_IWDGC2FZCLRR    at 16#47C# range 0 .. 31;
      RCC_IWDGC2CFGSETR   at 16#480# range 0 .. 31;
      RCC_IWDGC2CFGCLRR   at 16#484# range 0 .. 31;
      RCC_IWDGC3CFGSETR   at 16#488# range 0 .. 31;
      RCC_IWDGC3CFGCLRR   at 16#48C# range 0 .. 31;
      RCC_C3CFGR          at 16#490# range 0 .. 31;
      RCC_MCO1CFGR        at 16#494# range 0 .. 31;
      RCC_MCO2CFGR        at 16#498# range 0 .. 31;
      RCC_OCENSETR        at 16#49C# range 0 .. 31;
      RCC_OCENCLRR        at 16#4A0# range 0 .. 31;
      RCC_OCRDYR          at 16#4A4# range 0 .. 31;
      RCC_HSICFGR         at 16#4A8# range 0 .. 31;
      RCC_MSICFGR         at 16#4AC# range 0 .. 31;
      RCC_RTCDIVR         at 16#4B0# range 0 .. 31;
      RCC_APB1DIVR        at 16#4B4# range 0 .. 31;
      RCC_APB2DIVR        at 16#4B8# range 0 .. 31;
      RCC_APB3DIVR        at 16#4BC# range 0 .. 31;
      RCC_APB4DIVR        at 16#4C0# range 0 .. 31;
      RCC_APBDBGDIVR      at 16#4C4# range 0 .. 31;
      RCC_TIMG1PRER       at 16#4C8# range 0 .. 31;
      RCC_TIMG2PRER       at 16#4CC# range 0 .. 31;
      RCC_LSMCUDIVR       at 16#4D0# range 0 .. 31;
      RCC_DDRCPCFGR       at 16#4D4# range 0 .. 31;
      RCC_DDRCAPBCFGR     at 16#4D8# range 0 .. 31;
      RCC_DDRPHYCAPBCFGR  at 16#4DC# range 0 .. 31;
      RCC_DDRPHYCCFGR     at 16#4E0# range 0 .. 31;
      RCC_DDRCFGR         at 16#4E4# range 0 .. 31;
      RCC_DDRITFCFGR      at 16#4E8# range 0 .. 31;
      RCC_SYSRAMCFGR      at 16#4F0# range 0 .. 31;
      RCC_VDERAMCFGR      at 16#4F4# range 0 .. 31;
      RCC_SRAM1CFGR       at 16#4F8# range 0 .. 31;
      RCC_SRAM2CFGR       at 16#4FC# range 0 .. 31;
      RCC_RETRAMCFGR      at 16#500# range 0 .. 31;
      RCC_BKPSRAMCFGR     at 16#504# range 0 .. 31;
      RCC_LPSRAM1CFGR     at 16#508# range 0 .. 31;
      RCC_LPSRAM2CFGR     at 16#50C# range 0 .. 31;
      RCC_LPSRAM3CFGR     at 16#510# range 0 .. 31;
      RCC_OSPI1CFGR       at 16#514# range 0 .. 31;
      RCC_OSPI2CFGR       at 16#518# range 0 .. 31;
      RCC_FMCCFGR         at 16#51C# range 0 .. 31;
      RCC_DBGCFGR         at 16#520# range 0 .. 31;
      RCC_STMCFGR         at 16#524# range 0 .. 31;
      RCC_ETRCFGR         at 16#528# range 0 .. 31;
      RCC_GPIOZCFGR       at 16#558# range 0 .. 31;
      RCC_HPDMA1CFGR      at 16#55C# range 0 .. 31;
      RCC_HPDMA2CFGR      at 16#560# range 0 .. 31;
      RCC_HPDMA3CFGR      at 16#564# range 0 .. 31;
      RCC_LPDMACFGR       at 16#568# range 0 .. 31;
      RCC_HSEMCFGR        at 16#56C# range 0 .. 31;
      RCC_IPCC1CFGR       at 16#570# range 0 .. 31;
      RCC_IPCC2CFGR       at 16#574# range 0 .. 31;
      RCC_RTCCFGR         at 16#578# range 0 .. 31;
      RCC_SYSCPU1CFGR     at 16#580# range 0 .. 31;
      RCC_BSECCFGR        at 16#584# range 0 .. 31;
      RCC_PLL2CFGR1       at 16#590# range 0 .. 31;
      RCC_PLL2CFGR2       at 16#594# range 0 .. 31;
      RCC_PLL2CFGR3       at 16#598# range 0 .. 31;
      RCC_PLL2CFGR4       at 16#59C# range 0 .. 31;
      RCC_PLL2CFGR5       at 16#5A0# range 0 .. 31;
      RCC_PLL2CFGR6       at 16#5A8# range 0 .. 31;
      RCC_PLL2CFGR7       at 16#5AC# range 0 .. 31;
      RCC_PLL3CFGR1       at 16#5B8# range 0 .. 31;
      RCC_PLL3CFGR2       at 16#5BC# range 0 .. 31;
      RCC_PLL3CFGR3       at 16#5C0# range 0 .. 31;
      RCC_PLL3CFGR4       at 16#5C4# range 0 .. 31;
      RCC_PLL3CFGR5       at 16#5C8# range 0 .. 31;
      RCC_PLL3CFGR6       at 16#5D0# range 0 .. 31;
      RCC_PLL3CFGR7       at 16#5D4# range 0 .. 31;
      RCC_HSIFMONCR       at 16#5E0# range 0 .. 31;
      RCC_HSIFVALR        at 16#5E4# range 0 .. 31;
      RCC_TIM1CFGR        at 16#700# range 0 .. 31;
      RCC_TIM2CFGR        at 16#704# range 0 .. 31;
      RCC_TIM3CFGR        at 16#708# range 0 .. 31;
      RCC_TIM4CFGR        at 16#70C# range 0 .. 31;
      RCC_TIM5CFGR        at 16#710# range 0 .. 31;
      RCC_TIM6CFGR        at 16#714# range 0 .. 31;
      RCC_TIM7CFGR        at 16#718# range 0 .. 31;
      RCC_TIM8CFGR        at 16#71C# range 0 .. 31;
      RCC_TIM10CFGR       at 16#720# range 0 .. 31;
      RCC_TIM11CFGR       at 16#724# range 0 .. 31;
      RCC_TIM12CFGR       at 16#728# range 0 .. 31;
      RCC_TIM13CFGR       at 16#72C# range 0 .. 31;
      RCC_TIM14CFGR       at 16#730# range 0 .. 31;
      RCC_TIM15CFGR       at 16#734# range 0 .. 31;
      RCC_TIM16CFGR       at 16#738# range 0 .. 31;
      RCC_TIM17CFGR       at 16#73C# range 0 .. 31;
      RCC_TIM20CFGR       at 16#740# range 0 .. 31;
      RCC_LPTIM1CFGR      at 16#744# range 0 .. 31;
      RCC_LPTIM2CFGR      at 16#748# range 0 .. 31;
      RCC_LPTIM3CFGR      at 16#74C# range 0 .. 31;
      RCC_LPTIM4CFGR      at 16#750# range 0 .. 31;
      RCC_LPTIM5CFGR      at 16#754# range 0 .. 31;
      RCC_SPI1CFGR        at 16#758# range 0 .. 31;
      RCC_SPI2CFGR        at 16#75C# range 0 .. 31;
      RCC_SPI3CFGR        at 16#760# range 0 .. 31;
      RCC_SPI4CFGR        at 16#764# range 0 .. 31;
      RCC_SPI5CFGR        at 16#768# range 0 .. 31;
      RCC_SPI6CFGR        at 16#76C# range 0 .. 31;
      RCC_SPI7CFGR        at 16#770# range 0 .. 31;
      RCC_SPI8CFGR        at 16#774# range 0 .. 31;
      RCC_SPDIFRXCFGR     at 16#778# range 0 .. 31;
      RCC_USART1CFGR      at 16#77C# range 0 .. 31;
      RCC_USART2CFGR      at 16#780# range 0 .. 31;
      RCC_USART3CFGR      at 16#784# range 0 .. 31;
      RCC_UART4CFGR       at 16#788# range 0 .. 31;
      RCC_UART5CFGR       at 16#78C# range 0 .. 31;
      RCC_USART6CFGR      at 16#790# range 0 .. 31;
      RCC_UART7CFGR       at 16#794# range 0 .. 31;
      RCC_UART8CFGR       at 16#798# range 0 .. 31;
      RCC_UART9CFGR       at 16#79C# range 0 .. 31;
      RCC_LPUART1CFGR     at 16#7A0# range 0 .. 31;
      RCC_I2C1CFGR        at 16#7A4# range 0 .. 31;
      RCC_I2C2CFGR        at 16#7A8# range 0 .. 31;
      RCC_I2C3CFGR        at 16#7AC# range 0 .. 31;
      RCC_I2C4CFGR        at 16#7B0# range 0 .. 31;
      RCC_I2C5CFGR        at 16#7B4# range 0 .. 31;
      RCC_I2C6CFGR        at 16#7B8# range 0 .. 31;
      RCC_I2C7CFGR        at 16#7BC# range 0 .. 31;
      RCC_I2C8CFGR        at 16#7C0# range 0 .. 31;
      RCC_SAI1CFGR        at 16#7C4# range 0 .. 31;
      RCC_SAI2CFGR        at 16#7C8# range 0 .. 31;
      RCC_SAI3CFGR        at 16#7CC# range 0 .. 31;
      RCC_SAI4CFGR        at 16#7D0# range 0 .. 31;
      RCC_MDF1CFGR        at 16#7D8# range 0 .. 31;
      RCC_ADF1CFGR        at 16#7DC# range 0 .. 31;
      RCC_FDCANCFGR       at 16#7E0# range 0 .. 31;
      RCC_HDPCFGR         at 16#7E4# range 0 .. 31;
      RCC_ADC12CFGR       at 16#7E8# range 0 .. 31;
      RCC_ADC3CFGR        at 16#7EC# range 0 .. 31;
      RCC_ETH1CFGR        at 16#7F0# range 0 .. 31;
      RCC_ETH2CFGR        at 16#7F4# range 0 .. 31;
      RCC_USBHCFGR        at 16#7FC# range 0 .. 31;
      RCC_USB2PHY1CFGR    at 16#800# range 0 .. 31;
      RCC_USB2PHY2CFGR    at 16#804# range 0 .. 31;
      RCC_USB3DRCFGR      at 16#808# range 0 .. 31;
      RCC_USB3PCIEPHYCFGR at 16#80C# range 0 .. 31;
      RCC_PCIECFGR        at 16#810# range 0 .. 31;
      RCC_UCPDCFGR        at 16#814# range 0 .. 31;
      RCC_ETHSWCFGR       at 16#818# range 0 .. 31;
      RCC_ETHSWACMCFGR    at 16#81C# range 0 .. 31;
      RCC_ETHSWACMMSGCFGR at 16#820# range 0 .. 31;
      RCC_STGENCFGR       at 16#824# range 0 .. 31;
      RCC_SDMMC1CFGR      at 16#830# range 0 .. 31;
      RCC_SDMMC2CFGR      at 16#834# range 0 .. 31;
      RCC_SDMMC3CFGR      at 16#838# range 0 .. 31;
      RCC_GPUCFGR         at 16#83C# range 0 .. 31;
      RCC_LTDCCFGR        at 16#840# range 0 .. 31;
      RCC_DSICFGR         at 16#844# range 0 .. 31;
      RCC_LVDSCFGR        at 16#850# range 0 .. 31;
      RCC_CSICFGR         at 16#858# range 0 .. 31;
      RCC_DCMIPPCFGR      at 16#85C# range 0 .. 31;
      RCC_CCICFGR         at 16#860# range 0 .. 31;
      RCC_VDECCFGR        at 16#864# range 0 .. 31;
      RCC_VENCCFGR        at 16#868# range 0 .. 31;
      RCC_RNGCFGR         at 16#870# range 0 .. 31;
      RCC_PKACFGR         at 16#874# range 0 .. 31;
      RCC_SAESCFGR        at 16#878# range 0 .. 31;
      RCC_HASHCFGR        at 16#87C# range 0 .. 31;
      RCC_CRYP1CFGR       at 16#880# range 0 .. 31;
      RCC_CRYP2CFGR       at 16#884# range 0 .. 31;
      RCC_IWDG1CFGR       at 16#888# range 0 .. 31;
      RCC_IWDG2CFGR       at 16#88C# range 0 .. 31;
      RCC_IWDG3CFGR       at 16#890# range 0 .. 31;
      RCC_IWDG4CFGR       at 16#894# range 0 .. 31;
      RCC_IWDG5CFGR       at 16#898# range 0 .. 31;
      RCC_WWDG1CFGR       at 16#89C# range 0 .. 31;
      RCC_WWDG2CFGR       at 16#8A0# range 0 .. 31;
      RCC_VREFCFGR        at 16#8A8# range 0 .. 31;
      RCC_DTSCFGR         at 16#8AC# range 0 .. 31;
      RCC_CRCCFGR         at 16#8B4# range 0 .. 31;
      RCC_SERCCFGR        at 16#8B8# range 0 .. 31;
      RCC_OSPIIOMCFGR     at 16#8BC# range 0 .. 31;
      RCC_GICV2MCFGR      at 16#8C0# range 0 .. 31;
      RCC_I3C1CFGR        at 16#8C8# range 0 .. 31;
      RCC_I3C2CFGR        at 16#8CC# range 0 .. 31;
      RCC_I3C3CFGR        at 16#8D0# range 0 .. 31;
      RCC_I3C4CFGR        at 16#8D4# range 0 .. 31;
      RCC_MUXSELCFGR      at 16#1000# range 0 .. 31;
      RCC_XBAR0CFGR       at 16#1018# range 0 .. 31;
      RCC_XBAR1CFGR       at 16#101C# range 0 .. 31;
      RCC_XBAR2CFGR       at 16#1020# range 0 .. 31;
      RCC_XBAR3CFGR       at 16#1024# range 0 .. 31;
      RCC_XBAR4CFGR       at 16#1028# range 0 .. 31;
      RCC_XBAR5CFGR       at 16#102C# range 0 .. 31;
      RCC_XBAR6CFGR       at 16#1030# range 0 .. 31;
      RCC_XBAR7CFGR       at 16#1034# range 0 .. 31;
      RCC_XBAR8CFGR       at 16#1038# range 0 .. 31;
      RCC_XBAR9CFGR       at 16#103C# range 0 .. 31;
      RCC_XBAR10CFGR      at 16#1040# range 0 .. 31;
      RCC_XBAR11CFGR      at 16#1044# range 0 .. 31;
      RCC_XBAR12CFGR      at 16#1048# range 0 .. 31;
      RCC_XBAR13CFGR      at 16#104C# range 0 .. 31;
      RCC_XBAR14CFGR      at 16#1050# range 0 .. 31;
      RCC_XBAR15CFGR      at 16#1054# range 0 .. 31;
      RCC_XBAR16CFGR      at 16#1058# range 0 .. 31;
      RCC_XBAR17CFGR      at 16#105C# range 0 .. 31;
      RCC_XBAR18CFGR      at 16#1060# range 0 .. 31;
      RCC_XBAR19CFGR      at 16#1064# range 0 .. 31;
      RCC_XBAR20CFGR      at 16#1068# range 0 .. 31;
      RCC_XBAR21CFGR      at 16#106C# range 0 .. 31;
      RCC_XBAR22CFGR      at 16#1070# range 0 .. 31;
      RCC_XBAR23CFGR      at 16#1074# range 0 .. 31;
      RCC_XBAR24CFGR      at 16#1078# range 0 .. 31;
      RCC_XBAR25CFGR      at 16#107C# range 0 .. 31;
      RCC_XBAR26CFGR      at 16#1080# range 0 .. 31;
      RCC_XBAR27CFGR      at 16#1084# range 0 .. 31;
      RCC_XBAR28CFGR      at 16#1088# range 0 .. 31;
      RCC_XBAR29CFGR      at 16#108C# range 0 .. 31;
      RCC_XBAR30CFGR      at 16#1090# range 0 .. 31;
      RCC_XBAR31CFGR      at 16#1094# range 0 .. 31;
      RCC_XBAR32CFGR      at 16#1098# range 0 .. 31;
      RCC_XBAR33CFGR      at 16#109C# range 0 .. 31;
      RCC_XBAR34CFGR      at 16#10A0# range 0 .. 31;
      RCC_XBAR35CFGR      at 16#10A4# range 0 .. 31;
      RCC_XBAR36CFGR      at 16#10A8# range 0 .. 31;
      RCC_XBAR37CFGR      at 16#10AC# range 0 .. 31;
      RCC_XBAR38CFGR      at 16#10B0# range 0 .. 31;
      RCC_XBAR39CFGR      at 16#10B4# range 0 .. 31;
      RCC_XBAR40CFGR      at 16#10B8# range 0 .. 31;
      RCC_XBAR41CFGR      at 16#10BC# range 0 .. 31;
      RCC_XBAR42CFGR      at 16#10C0# range 0 .. 31;
      RCC_XBAR43CFGR      at 16#10C4# range 0 .. 31;
      RCC_XBAR44CFGR      at 16#10C8# range 0 .. 31;
      RCC_XBAR45CFGR      at 16#10CC# range 0 .. 31;
      RCC_XBAR46CFGR      at 16#10D0# range 0 .. 31;
      RCC_XBAR47CFGR      at 16#10D4# range 0 .. 31;
      RCC_XBAR48CFGR      at 16#10D8# range 0 .. 31;
      RCC_XBAR49CFGR      at 16#10DC# range 0 .. 31;
      RCC_XBAR50CFGR      at 16#10E0# range 0 .. 31;
      RCC_XBAR51CFGR      at 16#10E4# range 0 .. 31;
      RCC_XBAR52CFGR      at 16#10E8# range 0 .. 31;
      RCC_XBAR53CFGR      at 16#10EC# range 0 .. 31;
      RCC_XBAR54CFGR      at 16#10F0# range 0 .. 31;
      RCC_XBAR55CFGR      at 16#10F4# range 0 .. 31;
      RCC_XBAR56CFGR      at 16#10F8# range 0 .. 31;
      RCC_XBAR57CFGR      at 16#10FC# range 0 .. 31;
      RCC_XBAR58CFGR      at 16#1100# range 0 .. 31;
      RCC_XBAR59CFGR      at 16#1104# range 0 .. 31;
      RCC_XBAR60CFGR      at 16#1108# range 0 .. 31;
      RCC_XBAR61CFGR      at 16#110C# range 0 .. 31;
      RCC_XBAR62CFGR      at 16#1110# range 0 .. 31;
      RCC_XBAR63CFGR      at 16#1114# range 0 .. 31;
      RCC_PREDIV0CFGR     at 16#1118# range 0 .. 31;
      RCC_PREDIV1CFGR     at 16#111C# range 0 .. 31;
      RCC_PREDIV2CFGR     at 16#1120# range 0 .. 31;
      RCC_PREDIV3CFGR     at 16#1124# range 0 .. 31;
      RCC_PREDIV4CFGR     at 16#1128# range 0 .. 31;
      RCC_PREDIV5CFGR     at 16#112C# range 0 .. 31;
      RCC_PREDIV6CFGR     at 16#1130# range 0 .. 31;
      RCC_PREDIV7CFGR     at 16#1134# range 0 .. 31;
      RCC_PREDIV8CFGR     at 16#1138# range 0 .. 31;
      RCC_PREDIV9CFGR     at 16#113C# range 0 .. 31;
      RCC_PREDIV10CFGR    at 16#1140# range 0 .. 31;
      RCC_PREDIV11CFGR    at 16#1144# range 0 .. 31;
      RCC_PREDIV12CFGR    at 16#1148# range 0 .. 31;
      RCC_PREDIV13CFGR    at 16#114C# range 0 .. 31;
      RCC_PREDIV14CFGR    at 16#1150# range 0 .. 31;
      RCC_PREDIV15CFGR    at 16#1154# range 0 .. 31;
      RCC_PREDIV16CFGR    at 16#1158# range 0 .. 31;
      RCC_PREDIV17CFGR    at 16#115C# range 0 .. 31;
      RCC_PREDIV18CFGR    at 16#1160# range 0 .. 31;
      RCC_PREDIV19CFGR    at 16#1164# range 0 .. 31;
      RCC_PREDIV20CFGR    at 16#1168# range 0 .. 31;
      RCC_PREDIV21CFGR    at 16#116C# range 0 .. 31;
      RCC_PREDIV22CFGR    at 16#1170# range 0 .. 31;
      RCC_PREDIV23CFGR    at 16#1174# range 0 .. 31;
      RCC_PREDIV24CFGR    at 16#1178# range 0 .. 31;
      RCC_PREDIV25CFGR    at 16#117C# range 0 .. 31;
      RCC_PREDIV26CFGR    at 16#1180# range 0 .. 31;
      RCC_PREDIV27CFGR    at 16#1184# range 0 .. 31;
      RCC_PREDIV28CFGR    at 16#1188# range 0 .. 31;
      RCC_PREDIV29CFGR    at 16#118C# range 0 .. 31;
      RCC_PREDIV30CFGR    at 16#1190# range 0 .. 31;
      RCC_PREDIV31CFGR    at 16#1194# range 0 .. 31;
      RCC_PREDIV32CFGR    at 16#1198# range 0 .. 31;
      RCC_PREDIV33CFGR    at 16#119C# range 0 .. 31;
      RCC_PREDIV34CFGR    at 16#11A0# range 0 .. 31;
      RCC_PREDIV35CFGR    at 16#11A4# range 0 .. 31;
      RCC_PREDIV36CFGR    at 16#11A8# range 0 .. 31;
      RCC_PREDIV37CFGR    at 16#11AC# range 0 .. 31;
      RCC_PREDIV38CFGR    at 16#11B0# range 0 .. 31;
      RCC_PREDIV39CFGR    at 16#11B4# range 0 .. 31;
      RCC_PREDIV40CFGR    at 16#11B8# range 0 .. 31;
      RCC_PREDIV41CFGR    at 16#11BC# range 0 .. 31;
      RCC_PREDIV42CFGR    at 16#11C0# range 0 .. 31;
      RCC_PREDIV43CFGR    at 16#11C4# range 0 .. 31;
      RCC_PREDIV44CFGR    at 16#11C8# range 0 .. 31;
      RCC_PREDIV45CFGR    at 16#11CC# range 0 .. 31;
      RCC_PREDIV46CFGR    at 16#11D0# range 0 .. 31;
      RCC_PREDIV47CFGR    at 16#11D4# range 0 .. 31;
      RCC_PREDIV48CFGR    at 16#11D8# range 0 .. 31;
      RCC_PREDIV49CFGR    at 16#11DC# range 0 .. 31;
      RCC_PREDIV50CFGR    at 16#11E0# range 0 .. 31;
      RCC_PREDIV51CFGR    at 16#11E4# range 0 .. 31;
      RCC_PREDIV52CFGR    at 16#11E8# range 0 .. 31;
      RCC_PREDIV53CFGR    at 16#11EC# range 0 .. 31;
      RCC_PREDIV54CFGR    at 16#11F0# range 0 .. 31;
      RCC_PREDIV55CFGR    at 16#11F4# range 0 .. 31;
      RCC_PREDIV56CFGR    at 16#11F8# range 0 .. 31;
      RCC_PREDIV57CFGR    at 16#11FC# range 0 .. 31;
      RCC_PREDIV58CFGR    at 16#1200# range 0 .. 31;
      RCC_PREDIV59CFGR    at 16#1204# range 0 .. 31;
      RCC_PREDIV60CFGR    at 16#1208# range 0 .. 31;
      RCC_PREDIV61CFGR    at 16#120C# range 0 .. 31;
      RCC_PREDIV62CFGR    at 16#1210# range 0 .. 31;
      RCC_PREDIV63CFGR    at 16#1214# range 0 .. 31;
      RCC_PREDIVSR1       at 16#1218# range 0 .. 31;
      RCC_PREDIVSR2       at 16#121C# range 0 .. 31;
      RCC_FINDIV0CFGR     at 16#1224# range 0 .. 31;
      RCC_FINDIV1CFGR     at 16#1228# range 0 .. 31;
      RCC_FINDIV2CFGR     at 16#122C# range 0 .. 31;
      RCC_FINDIV3CFGR     at 16#1230# range 0 .. 31;
      RCC_FINDIV4CFGR     at 16#1234# range 0 .. 31;
      RCC_FINDIV5CFGR     at 16#1238# range 0 .. 31;
      RCC_FINDIV6CFGR     at 16#123C# range 0 .. 31;
      RCC_FINDIV7CFGR     at 16#1240# range 0 .. 31;
      RCC_FINDIV8CFGR     at 16#1244# range 0 .. 31;
      RCC_FINDIV9CFGR     at 16#1248# range 0 .. 31;
      RCC_FINDIV10CFGR    at 16#124C# range 0 .. 31;
      RCC_FINDIV11CFGR    at 16#1250# range 0 .. 31;
      RCC_FINDIV12CFGR    at 16#1254# range 0 .. 31;
      RCC_FINDIV13CFGR    at 16#1258# range 0 .. 31;
      RCC_FINDIV14CFGR    at 16#125C# range 0 .. 31;
      RCC_FINDIV15CFGR    at 16#1260# range 0 .. 31;
      RCC_FINDIV16CFGR    at 16#1264# range 0 .. 31;
      RCC_FINDIV17CFGR    at 16#1268# range 0 .. 31;
      RCC_FINDIV18CFGR    at 16#126C# range 0 .. 31;
      RCC_FINDIV19CFGR    at 16#1270# range 0 .. 31;
      RCC_FINDIV20CFGR    at 16#1274# range 0 .. 31;
      RCC_FINDIV21CFGR    at 16#1278# range 0 .. 31;
      RCC_FINDIV22CFGR    at 16#127C# range 0 .. 31;
      RCC_FINDIV23CFGR    at 16#1280# range 0 .. 31;
      RCC_FINDIV24CFGR    at 16#1284# range 0 .. 31;
      RCC_FINDIV25CFGR    at 16#1288# range 0 .. 31;
      RCC_FINDIV26CFGR    at 16#128C# range 0 .. 31;
      RCC_FINDIV27CFGR    at 16#1290# range 0 .. 31;
      RCC_FINDIV28CFGR    at 16#1294# range 0 .. 31;
      RCC_FINDIV29CFGR    at 16#1298# range 0 .. 31;
      RCC_FINDIV30CFGR    at 16#129C# range 0 .. 31;
      RCC_FINDIV31CFGR    at 16#12A0# range 0 .. 31;
      RCC_FINDIV32CFGR    at 16#12A4# range 0 .. 31;
      RCC_FINDIV33CFGR    at 16#12A8# range 0 .. 31;
      RCC_FINDIV34CFGR    at 16#12AC# range 0 .. 31;
      RCC_FINDIV35CFGR    at 16#12B0# range 0 .. 31;
      RCC_FINDIV36CFGR    at 16#12B4# range 0 .. 31;
      RCC_FINDIV37CFGR    at 16#12B8# range 0 .. 31;
      RCC_FINDIV38CFGR    at 16#12BC# range 0 .. 31;
      RCC_FINDIV39CFGR    at 16#12C0# range 0 .. 31;
      RCC_FINDIV40CFGR    at 16#12C4# range 0 .. 31;
      RCC_FINDIV41CFGR    at 16#12C8# range 0 .. 31;
      RCC_FINDIV42CFGR    at 16#12CC# range 0 .. 31;
      RCC_FINDIV43CFGR    at 16#12D0# range 0 .. 31;
      RCC_FINDIV44CFGR    at 16#12D4# range 0 .. 31;
      RCC_FINDIV45CFGR    at 16#12D8# range 0 .. 31;
      RCC_FINDIV46CFGR    at 16#12DC# range 0 .. 31;
      RCC_FINDIV47CFGR    at 16#12E0# range 0 .. 31;
      RCC_FINDIV48CFGR    at 16#12E4# range 0 .. 31;
      RCC_FINDIV49CFGR    at 16#12E8# range 0 .. 31;
      RCC_FINDIV50CFGR    at 16#12EC# range 0 .. 31;
      RCC_FINDIV51CFGR    at 16#12F0# range 0 .. 31;
      RCC_FINDIV52CFGR    at 16#12F4# range 0 .. 31;
      RCC_FINDIV53CFGR    at 16#12F8# range 0 .. 31;
      RCC_FINDIV54CFGR    at 16#12FC# range 0 .. 31;
      RCC_FINDIV55CFGR    at 16#1300# range 0 .. 31;
      RCC_FINDIV56CFGR    at 16#1304# range 0 .. 31;
      RCC_FINDIV57CFGR    at 16#1308# range 0 .. 31;
      RCC_FINDIV58CFGR    at 16#130C# range 0 .. 31;
      RCC_FINDIV59CFGR    at 16#1310# range 0 .. 31;
      RCC_FINDIV60CFGR    at 16#1314# range 0 .. 31;
      RCC_FINDIV61CFGR    at 16#1318# range 0 .. 31;
      RCC_FINDIV62CFGR    at 16#131C# range 0 .. 31;
      RCC_FINDIV63CFGR    at 16#1320# range 0 .. 31;
      RCC_FINDIVSR1       at 16#1324# range 0 .. 31;
      RCC_FINDIVSR2       at 16#1328# range 0 .. 31;
      RCC_FCALCOBS0CFGR   at 16#1340# range 0 .. 31;
      RCC_FCALCOBS1CFGR   at 16#1344# range 0 .. 31;
      RCC_FCALCREFCFGR    at 16#1348# range 0 .. 31;
      RCC_FCALCCR1        at 16#134C# range 0 .. 31;
      RCC_FCALCCR2        at 16#1354# range 0 .. 31;
      RCC_FCALCSR         at 16#1358# range 0 .. 31;
      RCC_PLL4CFGR1       at 16#1360# range 0 .. 31;
      RCC_PLL4CFGR2       at 16#1364# range 0 .. 31;
      RCC_PLL4CFGR3       at 16#1368# range 0 .. 31;
      RCC_PLL4CFGR4       at 16#136C# range 0 .. 31;
      RCC_PLL4CFGR5       at 16#1370# range 0 .. 31;
      RCC_PLL4CFGR6       at 16#1378# range 0 .. 31;
      RCC_PLL4CFGR7       at 16#137C# range 0 .. 31;
      RCC_PLL5CFGR1       at 16#1388# range 0 .. 31;
      RCC_PLL5CFGR2       at 16#138C# range 0 .. 31;
      RCC_PLL5CFGR3       at 16#1390# range 0 .. 31;
      RCC_PLL5CFGR4       at 16#1394# range 0 .. 31;
      RCC_PLL5CFGR5       at 16#1398# range 0 .. 31;
      RCC_PLL5CFGR6       at 16#13A0# range 0 .. 31;
      RCC_PLL5CFGR7       at 16#13A4# range 0 .. 31;
      RCC_PLL6CFGR1       at 16#13B0# range 0 .. 31;
      RCC_PLL6CFGR2       at 16#13B4# range 0 .. 31;
      RCC_PLL6CFGR3       at 16#13B8# range 0 .. 31;
      RCC_PLL6CFGR4       at 16#13BC# range 0 .. 31;
      RCC_PLL6CFGR5       at 16#13C0# range 0 .. 31;
      RCC_PLL6CFGR6       at 16#13C8# range 0 .. 31;
      RCC_PLL6CFGR7       at 16#13CC# range 0 .. 31;
      RCC_PLL7CFGR1       at 16#13D8# range 0 .. 31;
      RCC_PLL7CFGR2       at 16#13DC# range 0 .. 31;
      RCC_PLL7CFGR3       at 16#13E0# range 0 .. 31;
      RCC_PLL7CFGR4       at 16#13E4# range 0 .. 31;
      RCC_PLL7CFGR5       at 16#13E8# range 0 .. 31;
      RCC_PLL7CFGR6       at 16#13F0# range 0 .. 31;
      RCC_PLL7CFGR7       at 16#13F4# range 0 .. 31;
      RCC_PLL8CFGR1       at 16#1400# range 0 .. 31;
      RCC_PLL8CFGR2       at 16#1404# range 0 .. 31;
      RCC_PLL8CFGR3       at 16#1408# range 0 .. 31;
      RCC_PLL8CFGR4       at 16#140C# range 0 .. 31;
      RCC_PLL8CFGR5       at 16#1410# range 0 .. 31;
      RCC_PLL8CFGR6       at 16#1418# range 0 .. 31;
      RCC_PLL8CFGR7       at 16#141C# range 0 .. 31;
      RCC_VERR            at 16#FFF4# range 0 .. 31;
      RCC_IDR             at 16#FFF8# range 0 .. 31;
      RCC_SIDR            at 16#FFFC# range 0 .. 31;
   end record;

   --  RCC register block
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

   --  RCC register block
   RCC_S_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_S_Base;

end STM32_SVD.RCC;
