--

--  This spec has been automatically generated from ARMCM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package CMSIS_V8.SAU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable
   type CTRL_ENABLE_Field is
     (
      --  SAU is disabled
      Disable,
      --  SAU is enabled
      Enable)
     with Size => 1;
   for CTRL_ENABLE_Field use
     (Disable => 0,
      Enable => 1);

   --  Security attribution if SAU disabled
   type CTRL_ALLNS_Field is
     (
      --  Memory is marked as secure
      Secure,
      --  Memory is marked as non-secure
      Non_Secure)
     with Size => 1;
   for CTRL_ALLNS_Field use
     (Secure => 0,
      Non_Secure => 1);

   --  Control Register
   type CTRL_Register is record
      --  Enable
      ENABLE        : CTRL_ENABLE_Field := CMSIS_V8.SAU.Disable;
      --  Security attribution if SAU disabled
      ALLNS         : CTRL_ALLNS_Field := CMSIS_V8.SAU.Secure;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      ENABLE        at 0 range 0 .. 0;
      ALLNS         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype TYPE_SREGION_Field is HAL.UInt8;

   --  Type Register
   type TYPE_Register is record
      --  Read-only. Number of implemented SAU regions
      SREGION       : TYPE_SREGION_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TYPE_Register use record
      SREGION       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Currently selected SAU region
   type RNR_REGION_Field is
     (
      --  Select SAU Region 0
      Sau_Region_0,
      --  Select SAU Region 1
      Sau_Region_1,
      --  Select SAU Region 2
      Sau_Region_2,
      --  Select SAU Region 3
      Sau_Region_3)
     with Size => 8;
   for RNR_REGION_Field use
     (Sau_Region_0 => 0,
      Sau_Region_1 => 1,
      Sau_Region_2 => 2,
      Sau_Region_3 => 3);

   --  Region Number Register
   type RNR_Register is record
      --  Currently selected SAU region
      REGION        : RNR_REGION_Field := CMSIS_V8.SAU.Sau_Region_0;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RNR_Register use record
      REGION        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RBAR_BADDR_Field is HAL.UInt27;

   --  Region Base Address Register
   type RBAR_Register is record
      --  unspecified
      Reserved_0_4 : HAL.UInt5 := 16#0#;
      --  Base Address
      BADDR        : RBAR_BADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RBAR_Register use record
      Reserved_0_4 at 0 range 0 .. 4;
      BADDR        at 0 range 5 .. 31;
   end record;

   subtype RLAR_LADDR_Field is HAL.UInt27;

   --  Region Limit Address Register
   type RLAR_Register is record
      --  SAU Region enabled
      ENABLE       : Boolean := False;
      --  Non-Secure Callable
      NSC          : Boolean := False;
      --  unspecified
      Reserved_2_4 : HAL.UInt3 := 16#0#;
      --  Limit Address
      LADDR        : RLAR_LADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RLAR_Register use record
      ENABLE       at 0 range 0 .. 0;
      NSC          at 0 range 1 .. 1;
      Reserved_2_4 at 0 range 2 .. 4;
      LADDR        at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Security Attribution Unit
   type SAU_Peripheral is record
      --  Control Register
      CTRL   : aliased CTRL_Register;
      --  Type Register
      TYPE_k : aliased TYPE_Register;
      --  Region Number Register
      RNR    : aliased RNR_Register;
      --  Region Base Address Register
      RBAR   : aliased RBAR_Register;
      --  Region Limit Address Register
      RLAR   : aliased RLAR_Register;
   end record
     with Volatile;

   for SAU_Peripheral use record
      CTRL   at 16#0# range 0 .. 31;
      TYPE_k at 16#4# range 0 .. 31;
      RNR    at 16#8# range 0 .. 31;
      RBAR   at 16#C# range 0 .. 31;
      RLAR   at 16#10# range 0 .. 31;
   end record;

   --  Security Attribution Unit
   SAU_Periph : aliased SAU_Peripheral
     with Import, Address => System'To_Address (16#E000EDD0#);

end CMSIS_V8.SAU;
