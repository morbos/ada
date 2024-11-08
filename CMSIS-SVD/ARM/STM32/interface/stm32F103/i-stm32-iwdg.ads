--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32F103.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.IWDG is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype KR_KEY_Field is Interfaces.Bit_Types.Short;

   --  Key register (IWDG_KR)
   type KR_Register is record
      --  Write-only. Key value
      KEY            : KR_KEY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for KR_Register use record
      KEY            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PR_PR_Field is Interfaces.Bit_Types.UInt3;

   --  Prescaler register (IWDG_PR)
   type PR_Register is record
      --  Prescaler divider
      PR            : PR_PR_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PR_Register use record
      PR            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RLR_RL_Field is Interfaces.Bit_Types.UInt12;

   --  Reload register (IWDG_RLR)
   type RLR_Register is record
      --  Watchdog counter reload value
      RL             : RLR_RL_Field := 16#FFF#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RLR_Register use record
      RL             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SR_PVU_Field is Interfaces.Bit_Types.Bit;
   subtype SR_RVU_Field is Interfaces.Bit_Types.Bit;

   --  Status register (IWDG_SR)
   type SR_Register is record
      --  Read-only. Watchdog prescaler value update
      PVU           : SR_PVU_Field;
      --  Read-only. Watchdog counter reload value update
      RVU           : SR_RVU_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      PVU           at 0 range 0 .. 0;
      RVU           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Independent watchdog
   type IWDG_Peripheral is record
      --  Key register (IWDG_KR)
      KR  : aliased KR_Register;
      --  Prescaler register (IWDG_PR)
      PR  : aliased PR_Register;
      --  Reload register (IWDG_RLR)
      RLR : aliased RLR_Register;
      --  Status register (IWDG_SR)
      SR  : aliased SR_Register;
   end record
     with Volatile;

   for IWDG_Peripheral use record
      KR  at 16#0# range 0 .. 31;
      PR  at 16#4# range 0 .. 31;
      RLR at 16#8# range 0 .. 31;
      SR  at 16#C# range 0 .. 31;
   end record;

   --  Independent watchdog
   IWDG_Periph : aliased IWDG_Peripheral
     with Import, Address => System'To_Address (16#40003000#);

end Interfaces.STM32.IWDG;
