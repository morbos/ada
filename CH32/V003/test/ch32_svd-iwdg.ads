--  This spec has been automatically generated from CH32V003xx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package CH32_SVD.IWDG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CTLR_KEY_Field is HAL.UInt16;

   --  Key register (IWDG_CTLR)
   type CTLR_Register is record
      --  Write-only. Key value
      KEY            : CTLR_KEY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR_Register use record
      KEY            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PSCR_PR_Field is HAL.UInt3;

   --  Prescaler register (IWDG_PSCR)
   type PSCR_Register is record
      --  Prescaler divider
      PR            : PSCR_PR_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSCR_Register use record
      PR            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RLDR_RL_Field is HAL.UInt12;

   --  Reload register (IWDG_RLDR)
   type RLDR_Register is record
      --  Watchdog counter reload value
      RL             : RLDR_RL_Field := 16#FFF#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RLDR_Register use record
      RL             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Status register (IWDG_SR)
   type STATR_Register is record
      --  Read-only. Watchdog prescaler value update
      PVU           : Boolean;
      --  Read-only. Watchdog counter reload value update
      RVU           : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATR_Register use record
      PVU           at 0 range 0 .. 0;
      RVU           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Independent watchdog
   type IWDG_Peripheral is record
      --  Key register (IWDG_CTLR)
      CTLR  : aliased CTLR_Register;
      --  Prescaler register (IWDG_PSCR)
      PSCR  : aliased PSCR_Register;
      --  Reload register (IWDG_RLDR)
      RLDR  : aliased RLDR_Register;
      --  Status register (IWDG_SR)
      STATR : aliased STATR_Register;
   end record
     with Volatile;

   for IWDG_Peripheral use record
      CTLR  at 16#0# range 0 .. 31;
      PSCR  at 16#4# range 0 .. 31;
      RLDR  at 16#8# range 0 .. 31;
      STATR at 16#C# range 0 .. 31;
   end record;

   --  Independent watchdog
   IWDG_Periph : aliased IWDG_Peripheral
     with Import, Address => IWDG_Base;

end CH32_SVD.IWDG;
