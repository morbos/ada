--  This spec has been automatically generated from AIR32F103xx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.IWDG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype KR_KEY_Field is HAL.UInt16;

   --  Key register (IWDG_KR)
   type KR_Register is record
      --  Write-only. Key value
      KEY            : KR_KEY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for KR_Register use record
      KEY            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PR_PR_Field is HAL.UInt3;

   --  Prescaler register (IWDG_PR)
   type PR_Register is record
      --  Prescaler divider
      PR            : PR_PR_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PR_Register use record
      PR            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RLR_RL_Field is HAL.UInt12;

   --  Reload register (IWDG_RLR)
   type RLR_Register is record
      --  Watchdog counter reload value
      RL             : RLR_RL_Field := 16#FFF#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RLR_Register use record
      RL             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Status register (IWDG_SR)
   type SR_Register is record
      --  Read-only. Watchdog prescaler value update
      PVU           : Boolean;
      --  Read-only. Watchdog counter reload value update
      RVU           : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
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
     with Import, Address => IWDG_Base;

end STM32_SVD.IWDG;
