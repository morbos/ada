--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DLYBSD is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DLYBSD_CFG_SDMMC_RX_TAP_SEL_Field is HAL.UInt6;
   subtype DLYBSD_CFG_SDMMC_DLL_BYP_CMD_Field is HAL.UInt5;

   --  Delay block SDMMC DLL configuration
   type DLYBSD_CFG_Register is record
      --  DLL enable
      SDMMC_DLL_EN            : Boolean := False;
      --  selection of RX delay
      SDMMC_RX_TAP_SEL        : DLYBSD_CFG_SDMMC_RX_TAP_SEL_Field := 16#0#;
      --  unspecified
      Reserved_7_15           : HAL.UInt9 := 16#0#;
      --  DLL configuration
      SDMMC_DLL_BYP_EN        : Boolean := False;
      --  Bypass command
      SDMMC_DLL_BYP_CMD       : DLYBSD_CFG_SDMMC_DLL_BYP_CMD_Field := 16#0#;
      --  Antiglitch logic enabled when 1
      SDMMC_DLL_ANTIGLITCH_EN : Boolean := True;
      --  unspecified
      Reserved_23_31          : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLYBSD_CFG_Register use record
      SDMMC_DLL_EN            at 0 range 0 .. 0;
      SDMMC_RX_TAP_SEL        at 0 range 1 .. 6;
      Reserved_7_15           at 0 range 7 .. 15;
      SDMMC_DLL_BYP_EN        at 0 range 16 .. 16;
      SDMMC_DLL_BYP_CMD       at 0 range 17 .. 21;
      SDMMC_DLL_ANTIGLITCH_EN at 0 range 22 .. 22;
      Reserved_23_31          at 0 range 23 .. 31;
   end record;

   --  Delay block SDMMC DLL status
   type DLYBSD_STATUS_Register is record
      --  SDMMC DLL lock
      SDMMC_DLL_LOCK       : Boolean := False;
      --  SDMMC RX delay selection acknowledge
      SDMMC_RX_TAP_SEL_ACK : Boolean := True;
      --  unspecified
      Reserved_2_31        : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DLYBSD_STATUS_Register use record
      SDMMC_DLL_LOCK       at 0 range 0 .. 0;
      SDMMC_RX_TAP_SEL_ACK at 0 range 1 .. 1;
      Reserved_2_31        at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DLYBSD address block description
   type DLYBSD_Peripheral is record
      --  Delay block SDMMC DLL configuration
      DLYBSD_CFG    : aliased DLYBSD_CFG_Register;
      --  Delay block SDMMC DLL status
      DLYBSD_STATUS : aliased DLYBSD_STATUS_Register;
   end record
     with Volatile;

   for DLYBSD_Peripheral use record
      DLYBSD_CFG    at 16#0# range 0 .. 31;
      DLYBSD_STATUS at 16#4# range 0 .. 31;
   end record;

   --  DLYBSD address block description
   DLYBSD_Periph : aliased DLYBSD_Peripheral
     with Import, Address => DLYBSD_Base;

   --  DLYBSD address block description
   DLYBSD2_Periph : aliased DLYBSD_Peripheral
     with Import, Address => DLYBSD2_Base;

   --  DLYBSD address block description
   DLYBSD2_S_Periph : aliased DLYBSD_Peripheral
     with Import, Address => DLYBSD2_S_Base;

   --  DLYBSD address block description
   DLYBSD_S_Periph : aliased DLYBSD_Peripheral
     with Import, Address => DLYBSD_S_Base;

end STM32_SVD.DLYBSD;
