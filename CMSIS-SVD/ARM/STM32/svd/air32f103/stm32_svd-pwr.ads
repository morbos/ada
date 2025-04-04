--  This spec has been automatically generated from AIR32F103xx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.PWR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype CR_PLS_Field is HAL.UInt3;

   --  Power control register (PWR_CR)
   type CR_Register is record
      --  Low Power Deep Sleep
      LPDS          : Boolean := False;
      --  Power Down Deep Sleep
      PDDS          : Boolean := False;
      --  Clear Wake-up Flag
      CWUF          : Boolean := False;
      --  Clear STANDBY Flag
      CSBF          : Boolean := False;
      --  Power Voltage Detector Enable
      PVDE          : Boolean := False;
      --  PVD Level Selection
      PLS           : CR_PLS_Field := 16#0#;
      --  Disable Backup Domain write protection
      DBP           : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      LPDS          at 0 range 0 .. 0;
      PDDS          at 0 range 1 .. 1;
      CWUF          at 0 range 2 .. 2;
      CSBF          at 0 range 3 .. 3;
      PVDE          at 0 range 4 .. 4;
      PLS           at 0 range 5 .. 7;
      DBP           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Power control register (PWR_CR)
   type CSR_Register is record
      --  Read-only. Wake-Up Flag
      WUF           : Boolean := False;
      --  Read-only. STANDBY Flag
      SBF           : Boolean := False;
      --  Read-only. PVD Output
      PVDO          : Boolean := False;
      --  unspecified
      Reserved_3_7  : HAL.UInt5 := 16#0#;
      --  Enable WKUP pin
      EWUP          : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      WUF           at 0 range 0 .. 0;
      SBF           at 0 range 1 .. 1;
      PVDO          at 0 range 2 .. 2;
      Reserved_3_7  at 0 range 3 .. 7;
      EWUP          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type PWR_Peripheral is record
      --  Power control register (PWR_CR)
      CR  : aliased CR_Register;
      --  Power control register (PWR_CR)
      CSR : aliased CSR_Register;
   end record
     with Volatile;

   for PWR_Peripheral use record
      CR  at 16#0# range 0 .. 31;
      CSR at 16#4# range 0 .. 31;
   end record;

   --  Power control
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_Base;

end STM32_SVD.PWR;
