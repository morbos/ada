--  This spec has been automatically generated from CH32V003xx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package CH32_SVD.EXTI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  INTENR_MR array
   type INTENR_MR_Field_Array is array (0 .. 9) of Boolean
     with Component_Size => 1, Size => 10;

   --  Type definition for INTENR_MR
   type INTENR_MR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MR as a value
            Val : HAL.UInt10;
         when True =>
            --  MR as an array
            Arr : INTENR_MR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for INTENR_MR_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  Interrupt mask register (EXTI_INTENR)
   type INTENR_Register is record
      --  Interrupt Mask on line 0
      MR             : INTENR_MR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENR_Register use record
      MR             at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  EVENR_MR array
   type EVENR_MR_Field_Array is array (0 .. 9) of Boolean
     with Component_Size => 1, Size => 10;

   --  Type definition for EVENR_MR
   type EVENR_MR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MR as a value
            Val : HAL.UInt10;
         when True =>
            --  MR as an array
            Arr : EVENR_MR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for EVENR_MR_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  Event mask register (EXTI_EVENR)
   type EVENR_Register is record
      --  Event Mask on line 0
      MR             : EVENR_MR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENR_Register use record
      MR             at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  RTENR_TR array
   type RTENR_TR_Field_Array is array (0 .. 9) of Boolean
     with Component_Size => 1, Size => 10;

   --  Type definition for RTENR_TR
   type RTENR_TR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TR as a value
            Val : HAL.UInt10;
         when True =>
            --  TR as an array
            Arr : RTENR_TR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for RTENR_TR_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  Rising Trigger selection register (EXTI_RTENR)
   type RTENR_Register is record
      --  Rising trigger event configuration of line 0
      TR             : RTENR_TR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTENR_Register use record
      TR             at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  FTENR_TR array
   type FTENR_TR_Field_Array is array (0 .. 9) of Boolean
     with Component_Size => 1, Size => 10;

   --  Type definition for FTENR_TR
   type FTENR_TR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TR as a value
            Val : HAL.UInt10;
         when True =>
            --  TR as an array
            Arr : FTENR_TR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for FTENR_TR_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  Falling Trigger selection register (EXTI_FTENR)
   type FTENR_Register is record
      --  Falling trigger event configuration of line 0
      TR             : FTENR_TR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTENR_Register use record
      TR             at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  SWIEVR_SWIER array
   type SWIEVR_SWIER_Field_Array is array (0 .. 9) of Boolean
     with Component_Size => 1, Size => 10;

   --  Type definition for SWIEVR_SWIER
   type SWIEVR_SWIER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWIER as a value
            Val : HAL.UInt10;
         when True =>
            --  SWIER as an array
            Arr : SWIEVR_SWIER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for SWIEVR_SWIER_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  Software interrupt event register (EXTI_SWIEVR)
   type SWIEVR_Register is record
      --  Software Interrupt on line 0
      SWIER          : SWIEVR_SWIER_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWIEVR_Register use record
      SWIER          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  INTFR_PR array
   type INTFR_PR_Field_Array is array (0 .. 9) of Boolean
     with Component_Size => 1, Size => 10;

   --  Type definition for INTFR_PR
   type INTFR_PR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PR as a value
            Val : HAL.UInt10;
         when True =>
            --  PR as an array
            Arr : INTFR_PR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for INTFR_PR_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  Pending register (EXTI_INTFR)
   type INTFR_Register is record
      --  Pending bit 0
      PR             : INTFR_PR_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTFR_Register use record
      PR             at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  EXTI
   type EXTI_Peripheral is record
      --  Interrupt mask register (EXTI_INTENR)
      INTENR : aliased INTENR_Register;
      --  Event mask register (EXTI_EVENR)
      EVENR  : aliased EVENR_Register;
      --  Rising Trigger selection register (EXTI_RTENR)
      RTENR  : aliased RTENR_Register;
      --  Falling Trigger selection register (EXTI_FTENR)
      FTENR  : aliased FTENR_Register;
      --  Software interrupt event register (EXTI_SWIEVR)
      SWIEVR : aliased SWIEVR_Register;
      --  Pending register (EXTI_INTFR)
      INTFR  : aliased INTFR_Register;
   end record
     with Volatile;

   for EXTI_Peripheral use record
      INTENR at 16#0# range 0 .. 31;
      EVENR  at 16#4# range 0 .. 31;
      RTENR  at 16#8# range 0 .. 31;
      FTENR  at 16#C# range 0 .. 31;
      SWIEVR at 16#10# range 0 .. 31;
      INTFR  at 16#14# range 0 .. 31;
   end record;

   --  EXTI
   EXTI_Periph : aliased EXTI_Peripheral
     with Import, Address => EXTI_Base;

end CH32_SVD.EXTI;
