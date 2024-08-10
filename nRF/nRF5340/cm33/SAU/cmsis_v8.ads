--

--  This spec has been automatically generated from ARMCM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

--  ARM 32-bit Cortex-M33 based device
package CMSIS_V8 is
   pragma Preelaborate;

   --------------------
   -- Base addresses --
   --------------------

   SAU_Base : constant System.Address :=
     System'To_Address (16#E000EDD0#);

end CMSIS_V8;
