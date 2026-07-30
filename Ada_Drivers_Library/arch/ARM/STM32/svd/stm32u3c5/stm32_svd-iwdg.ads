--  This spec has been automatically generated from STM32U3C5.svd

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

   subtype IWDG_KR_KEY_Field is HAL.UInt16;

   --  IWDG key register
   type IWDG_KR_Register is record
      --  Write-only. Key value (write only, read 0x0000)
      KEY            : IWDG_KR_KEY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IWDG_KR_Register use record
      KEY            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IWDG_PR_PR_Field is HAL.UInt4;

   --  IWDG prescaler register
   type IWDG_PR_Register is record
      --  Prescaler divider
      PR            : IWDG_PR_PR_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IWDG_PR_Register use record
      PR            at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype IWDG_RLR_RL_Field is HAL.UInt12;

   --  IWDG reload register
   type IWDG_RLR_Register is record
      --  Watchdog counter reload value
      RL             : IWDG_RLR_RL_Field := 16#FFF#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IWDG_RLR_Register use record
      RL             at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  IWDG status register
   type IWDG_SR_Register is record
      --  Read-only. Watchdog prescaler value update
      PVU            : Boolean;
      --  Read-only. Watchdog counter reload value update
      RVU            : Boolean;
      --  Read-only. Watchdog counter window value update
      WVU            : Boolean;
      --  Read-only. Watchdog interrupt comparator value update
      EWU            : Boolean;
      --  unspecified
      Reserved_4_13  : HAL.UInt10;
      --  Read-only. Watchdog early interrupt flag
      EWIF           : Boolean;
      --  unspecified
      Reserved_15_31 : HAL.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IWDG_SR_Register use record
      PVU            at 0 range 0 .. 0;
      RVU            at 0 range 1 .. 1;
      WVU            at 0 range 2 .. 2;
      EWU            at 0 range 3 .. 3;
      Reserved_4_13  at 0 range 4 .. 13;
      EWIF           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype IWDG_WINR_WIN_Field is HAL.UInt12;

   --  IWDG window register
   type IWDG_WINR_Register is record
      --  Watchdog counter window value
      WIN            : IWDG_WINR_WIN_Field := 16#FFF#;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IWDG_WINR_Register use record
      WIN            at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype IWDG_EWCR_EWIT_Field is HAL.UInt12;

   --  IWDG early wake-up interrupt register
   type IWDG_EWCR_Register is record
      --  Watchdog counter window value
      EWIT           : IWDG_EWCR_EWIT_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Write-only. Watchdog early interrupt acknowledge
      EWIC           : Boolean := False;
      --  Watchdog early interrupt enable
      EWIE           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IWDG_EWCR_Register use record
      EWIT           at 0 range 0 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      EWIC           at 0 range 14 .. 14;
      EWIE           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  IWDG address block description
   type IWDG_Peripheral is record
      --  IWDG key register
      IWDG_KR   : aliased IWDG_KR_Register;
      --  IWDG prescaler register
      IWDG_PR   : aliased IWDG_PR_Register;
      --  IWDG reload register
      IWDG_RLR  : aliased IWDG_RLR_Register;
      --  IWDG status register
      IWDG_SR   : aliased IWDG_SR_Register;
      --  IWDG window register
      IWDG_WINR : aliased IWDG_WINR_Register;
      --  IWDG early wake-up interrupt register
      IWDG_EWCR : aliased IWDG_EWCR_Register;
   end record
     with Volatile;

   for IWDG_Peripheral use record
      IWDG_KR   at 16#0# range 0 .. 31;
      IWDG_PR   at 16#4# range 0 .. 31;
      IWDG_RLR  at 16#8# range 0 .. 31;
      IWDG_SR   at 16#C# range 0 .. 31;
      IWDG_WINR at 16#10# range 0 .. 31;
      IWDG_EWCR at 16#14# range 0 .. 31;
   end record;

   --  IWDG address block description
   IWDG_Periph : aliased IWDG_Peripheral
     with Import, Address => IWDG_Base;

   --  IWDG address block description
   SEC_IWDG_Periph : aliased IWDG_Peripheral
     with Import, Address => SEC_IWDG_Base;

end STM32_SVD.IWDG;
