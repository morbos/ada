--
--  Copyright (C) 2022, AdaCore
--

--  This spec has been automatically generated from STM32U5xx.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.OTFDEC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  OTFDEC control register
   type CR_Register is record
      --  Encryption mode bit
      ENC           : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      ENC           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  OTFDEC privileged access control configuration register
   type PRIVCFGR_Register is record
      --  Encryption mode bit
      PRIV          : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype R1CFGR_MODE_Field is Interfaces.Bit_Types.UInt2;
   subtype R1CFGR_KEYCRC_Field is Interfaces.Bit_Types.Byte;
   subtype R1CFGR_REGx_VERSION_Field is Interfaces.Bit_Types.UInt16;

   --  OTFDEC region x configuration register
   type R1CFGR_Register is record
      --  region on-the-fly decryption enable
      REG_EN       : Boolean := False;
      --  region config lock
      CONFIGLOCK   : Boolean := False;
      --  region key lock
      KEYLOCK      : Boolean := False;
      --  unspecified
      Reserved_3_3 : Interfaces.Bit_Types.Bit := 16#0#;
      --  operating mode
      MODE         : R1CFGR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. region key 8-bit CRC
      KEYCRC       : R1CFGR_KEYCRC_Field := 16#0#;
      --  region firmware version
      REGx_VERSION : R1CFGR_REGx_VERSION_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for R1CFGR_Register use record
      REG_EN       at 0 range 0 .. 0;
      CONFIGLOCK   at 0 range 1 .. 1;
      KEYLOCK      at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      MODE         at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      KEYCRC       at 0 range 8 .. 15;
      REGx_VERSION at 0 range 16 .. 31;
   end record;

   subtype R2CFGR_MODE_Field is Interfaces.Bit_Types.UInt2;
   subtype R2CFGR_KEYCRC_Field is Interfaces.Bit_Types.Byte;
   subtype R2CFGR_REGx_VERSION_Field is Interfaces.Bit_Types.UInt16;

   --  OTFDEC region x configuration register
   type R2CFGR_Register is record
      --  region on-the-fly decryption enable
      REG_EN       : Boolean := False;
      --  region config lock
      CONFIGLOCK   : Boolean := False;
      --  region key lock
      KEYLOCK      : Boolean := False;
      --  unspecified
      Reserved_3_3 : Interfaces.Bit_Types.Bit := 16#0#;
      --  operating mode
      MODE         : R2CFGR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. region key 8-bit CRC
      KEYCRC       : R2CFGR_KEYCRC_Field := 16#0#;
      --  region firmware version
      REGx_VERSION : R2CFGR_REGx_VERSION_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for R2CFGR_Register use record
      REG_EN       at 0 range 0 .. 0;
      CONFIGLOCK   at 0 range 1 .. 1;
      KEYLOCK      at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      MODE         at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      KEYCRC       at 0 range 8 .. 15;
      REGx_VERSION at 0 range 16 .. 31;
   end record;

   subtype R3CFGR_MODE_Field is Interfaces.Bit_Types.UInt2;
   subtype R3CFGR_KEYCRC_Field is Interfaces.Bit_Types.Byte;
   subtype R3CFGR_REGx_VERSION_Field is Interfaces.Bit_Types.UInt16;

   --  OTFDEC region x configuration register
   type R3CFGR_Register is record
      --  region on-the-fly decryption enable
      REG_EN       : Boolean := False;
      --  region config lock
      CONFIGLOCK   : Boolean := False;
      --  region key lock
      KEYLOCK      : Boolean := False;
      --  unspecified
      Reserved_3_3 : Interfaces.Bit_Types.Bit := 16#0#;
      --  operating mode
      MODE         : R3CFGR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. region key 8-bit CRC
      KEYCRC       : R3CFGR_KEYCRC_Field := 16#0#;
      --  region firmware version
      REGx_VERSION : R3CFGR_REGx_VERSION_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for R3CFGR_Register use record
      REG_EN       at 0 range 0 .. 0;
      CONFIGLOCK   at 0 range 1 .. 1;
      KEYLOCK      at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      MODE         at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      KEYCRC       at 0 range 8 .. 15;
      REGx_VERSION at 0 range 16 .. 31;
   end record;

   subtype R4CFGR_MODE_Field is Interfaces.Bit_Types.UInt2;
   subtype R4CFGR_KEYCRC_Field is Interfaces.Bit_Types.Byte;
   subtype R4CFGR_REGx_VERSION_Field is Interfaces.Bit_Types.UInt16;

   --  OTFDEC region x configuration register
   type R4CFGR_Register is record
      --  region on-the-fly decryption enable
      REG_EN       : Boolean := False;
      --  region config lock
      CONFIGLOCK   : Boolean := False;
      --  region key lock
      KEYLOCK      : Boolean := False;
      --  unspecified
      Reserved_3_3 : Interfaces.Bit_Types.Bit := 16#0#;
      --  operating mode
      MODE         : R4CFGR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. region key 8-bit CRC
      KEYCRC       : R4CFGR_KEYCRC_Field := 16#0#;
      --  region firmware version
      REGx_VERSION : R4CFGR_REGx_VERSION_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for R4CFGR_Register use record
      REG_EN       at 0 range 0 .. 0;
      CONFIGLOCK   at 0 range 1 .. 1;
      KEYLOCK      at 0 range 2 .. 2;
      Reserved_3_3 at 0 range 3 .. 3;
      MODE         at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      KEYCRC       at 0 range 8 .. 15;
      REGx_VERSION at 0 range 16 .. 31;
   end record;

   --  OTFDEC interrupt status register
   type ISR_Register is record
      --  Read-only. Security Error Interrupt Flag status
      SEIF          : Boolean;
      --  Read-only. Execute-only execute-Never Error Interrupt Flag status
      XONEIF        : Boolean;
      --  Read-only. Key Error Interrupt Flag status
      KEIF          : Boolean;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ISR_Register use record
      SEIF          at 0 range 0 .. 0;
      XONEIF        at 0 range 1 .. 1;
      KEIF          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  OTFDEC interrupt clear register
   type ICR_Register is record
      --  Read-only. SEIF
      SEIF          : Boolean;
      --  Read-only. Execute-only execute-Never Error Interrupt Flag clear
      XONEIF        : Boolean;
      --  Read-only. KEIF
      KEIF          : Boolean;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICR_Register use record
      SEIF          at 0 range 0 .. 0;
      XONEIF        at 0 range 1 .. 1;
      KEIF          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  OTFDEC interrupt enable register
   type IER_Register is record
      --  Security Error Interrupt Enable
      SEIE          : Boolean := False;
      --  XONEIE
      XONEIE        : Boolean := False;
      --  KEIE
      KEIE          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      SEIE          at 0 range 0 .. 0;
      XONEIE        at 0 range 1 .. 1;
      KEIE          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type OTFDEC1_Disc is
     (Val_4Endaddr,
      Val_3Noncer0);

   --  On-The-Fly Decryption engine
   type OTFDEC_Peripheral
     (Discriminent : OTFDEC1_Disc := Val_4Endaddr)
   is record
      --  OTFDEC control register
      CR          : aliased CR_Register;
      --  OTFDEC privileged access control configuration register
      PRIVCFGR    : aliased PRIVCFGR_Register;
      --  OTFDEC region x configuration register
      R1CFGR      : aliased R1CFGR_Register;
      --  OTFDEC region x start address register
      R1STARTADDR : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x end address register
      R1ENDADDR   : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x nonce register 0
      R1NONCER0   : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x nonce register 1
      R1NONCER1   : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 0
      R1KEYR0     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 1
      R1KEYR1     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 2
      R1KEYR2     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 3
      R1KEYR3     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x configuration register
      R2CFGR      : aliased R2CFGR_Register;
      --  OTFDEC region x start address register
      R2STARTADDR : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x end address register
      R2ENDADDR   : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x nonce register 0
      R2NONCER0   : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x nonce register 1
      R2NONCER1   : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 0
      R2KEYR0     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 1
      R2KEYR1     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 2
      R2KEYR2     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 3
      R2KEYR3     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x configuration register
      R3CFGR      : aliased R3CFGR_Register;
      --  OTFDEC region x start address register
      R3STARTADDR : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x end address register
      R3ENDADDR   : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x nonce register 1
      R3NONCER1   : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 0
      R3KEYR0     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 1
      R3KEYR1     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 2
      R3KEYR2     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 3
      R3KEYR3     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x configuration register
      R4CFGR      : aliased R4CFGR_Register;
      --  OTFDEC region x start address register
      R4STARTADDR : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x nonce register 0
      R4NONCER0   : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x nonce register 1
      R4NONCER1   : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 0
      R4KEYR0     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 1
      R4KEYR1     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 2
      R4KEYR2     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC region x key register 3
      R4KEYR3     : aliased Interfaces.Bit_Types.UInt32;
      --  OTFDEC interrupt status register
      ISR         : aliased ISR_Register;
      --  OTFDEC interrupt clear register
      ICR         : aliased ICR_Register;
      --  OTFDEC interrupt enable register
      IER         : aliased IER_Register;
      case Discriminent is
         when Val_4Endaddr =>
            --  OTFDEC region x end address register
            R4ENDADDR : aliased Interfaces.Bit_Types.UInt32;
         when Val_3Noncer0 =>
            --  OTFDEC region x nonce register 0
            R3NONCER0 : aliased Interfaces.Bit_Types.UInt32;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for OTFDEC_Peripheral use record
      CR          at 16#0# range 0 .. 31;
      PRIVCFGR    at 16#10# range 0 .. 31;
      R1CFGR      at 16#20# range 0 .. 31;
      R1STARTADDR at 16#24# range 0 .. 31;
      R1ENDADDR   at 16#28# range 0 .. 31;
      R1NONCER0   at 16#2C# range 0 .. 31;
      R1NONCER1   at 16#30# range 0 .. 31;
      R1KEYR0     at 16#34# range 0 .. 31;
      R1KEYR1     at 16#38# range 0 .. 31;
      R1KEYR2     at 16#3C# range 0 .. 31;
      R1KEYR3     at 16#40# range 0 .. 31;
      R2CFGR      at 16#50# range 0 .. 31;
      R2STARTADDR at 16#54# range 0 .. 31;
      R2ENDADDR   at 16#58# range 0 .. 31;
      R2NONCER0   at 16#5C# range 0 .. 31;
      R2NONCER1   at 16#60# range 0 .. 31;
      R2KEYR0     at 16#64# range 0 .. 31;
      R2KEYR1     at 16#68# range 0 .. 31;
      R2KEYR2     at 16#6C# range 0 .. 31;
      R2KEYR3     at 16#70# range 0 .. 31;
      R3CFGR      at 16#80# range 0 .. 31;
      R3STARTADDR at 16#84# range 0 .. 31;
      R3ENDADDR   at 16#88# range 0 .. 31;
      R3NONCER1   at 16#90# range 0 .. 31;
      R3KEYR0     at 16#94# range 0 .. 31;
      R3KEYR1     at 16#98# range 0 .. 31;
      R3KEYR2     at 16#9C# range 0 .. 31;
      R3KEYR3     at 16#A0# range 0 .. 31;
      R4CFGR      at 16#B0# range 0 .. 31;
      R4STARTADDR at 16#B4# range 0 .. 31;
      R4NONCER0   at 16#BC# range 0 .. 31;
      R4NONCER1   at 16#C0# range 0 .. 31;
      R4KEYR0     at 16#C4# range 0 .. 31;
      R4KEYR1     at 16#C8# range 0 .. 31;
      R4KEYR2     at 16#CC# range 0 .. 31;
      R4KEYR3     at 16#D0# range 0 .. 31;
      ISR         at 16#300# range 0 .. 31;
      ICR         at 16#304# range 0 .. 31;
      IER         at 16#308# range 0 .. 31;
      R4ENDADDR   at 16#8C# range 0 .. 31;
      R3NONCER0   at 16#8C# range 0 .. 31;
   end record;

   --  On-The-Fly Decryption engine
   OTFDEC1_Periph : aliased OTFDEC_Peripheral
     with Import, Address => OTFDEC1_Base;

   --  On-The-Fly Decryption engine
   OTFDEC2_Periph : aliased OTFDEC_Peripheral
     with Import, Address => OTFDEC2_Base;

   --  On-The-Fly Decryption engine
   SEC_OTFDEC1_Periph : aliased OTFDEC_Peripheral
     with Import, Address => SEC_OTFDEC1_Base;

   --  On-The-Fly Decryption engine
   SEC_OTFDEC2_Periph : aliased OTFDEC_Peripheral
     with Import, Address => SEC_OTFDEC2_Base;

end Interfaces.STM32.OTFDEC;
