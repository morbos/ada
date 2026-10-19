--  This spec has been automatically generated from STM32C011.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.EXTI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  EXTI_RTSR1_RT array
   type EXTI_RTSR1_RT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI_RTSR1_RT
   type EXTI_RTSR1_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt16;
         when True =>
            --  RT as an array
            Arr : EXTI_RTSR1_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI_RTSR1_RT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI rising trigger selection register
   type EXTI_RTSR1_Register is record
      --  Rising trigger event configuration bit of configurable line x (x = 15
      --  to 0) Each bit enables/disables the rising edge trigger for the event
      --  and interrupt on the corresponding line.
      RT             : EXTI_RTSR1_RT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_RTSR1_Register use record
      RT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTI_FTSR1_FT array
   type EXTI_FTSR1_FT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI_FTSR1_FT
   type EXTI_FTSR1_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt16;
         when True =>
            --  FT as an array
            Arr : EXTI_FTSR1_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI_FTSR1_FT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI falling trigger selection register 1
   type EXTI_FTSR1_Register is record
      --  Falling trigger event configuration bit of configurable line x (x =
      --  15 to 0). Each bit enables/disables the falling edge trigger for the
      --  event and interrupt on the corresponding line.
      FT             : EXTI_FTSR1_FT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_FTSR1_Register use record
      FT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTI_SWIER1_SWI array
   type EXTI_SWIER1_SWI_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI_SWIER1_SWI
   type EXTI_SWIER1_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt16;
         when True =>
            --  SWI as an array
            Arr : EXTI_SWIER1_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI_SWIER1_SWI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI software interrupt event register 1
   type EXTI_SWIER1_Register is record
      --  Software rising edge event trigger on line x (x = 15 to 0) Setting of
      --  any bit by software triggers a rising edge event on the corresponding
      --  line x, resulting in an interrupt, independently of EXTI_RTSR1 and
      --  EXTI_FTSR1 settings. The bits are automatically cleared by HW.
      --  Reading of any bit always returns 0.
      SWI            : EXTI_SWIER1_SWI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_SWIER1_Register use record
      SWI            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTI_RPR1_RPIF array
   type EXTI_RPR1_RPIF_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI_RPR1_RPIF
   type EXTI_RPR1_RPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : HAL.UInt16;
         when True =>
            --  RPIF as an array
            Arr : EXTI_RPR1_RPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI_RPR1_RPIF_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI rising edge pending register 1
   type EXTI_RPR1_Register is record
      --  Rising edge event pending for configurable line x (x = 15 to 0) Each
      --  bit is set upon a rising edge event generated by hardware or by
      --  software (through the EXTI_SWIER1 register) on the corresponding
      --  line. Each bit is cleared by writing 1 into it.
      RPIF           : EXTI_RPR1_RPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_RPR1_Register use record
      RPIF           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTI_FPR1_FPIF array
   type EXTI_FPR1_FPIF_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI_FPR1_FPIF
   type EXTI_FPR1_FPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : HAL.UInt16;
         when True =>
            --  FPIF as an array
            Arr : EXTI_FPR1_FPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI_FPR1_FPIF_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI falling edge pending register 1
   type EXTI_FPR1_Register is record
      --  Falling edge event pending for configurable line x (x = 15 to 0) Each
      --  bit is set upon a falling edge event generated by hardware or by
      --  software (through the EXTI_SWIER1 register) on the corresponding
      --  line. Each bit is cleared by writing 1 into it.
      FPIF           : EXTI_FPR1_FPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_FPR1_Register use record
      FPIF           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTI_EXTICR_EXTI array element
   subtype EXTI_EXTICR_EXTI_Element is HAL.UInt8;

   --  EXTI_EXTICR_EXTI array
   type EXTI_EXTICR_EXTI_Field_Array is array (0 .. 3)
     of EXTI_EXTICR_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI external interrupt selection register
   type EXTI_EXTICR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTI_EXTICR_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_EXTICR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype EXTI_IMR1_IM_Field is HAL.UInt16;

   --  EXTI CPU wakeup with interrupt mask register
   type EXTI_IMR1_Register is record
      --  CPU wakeup with interrupt mask
      IM             : EXTI_IMR1_IM_Field := 16#0#;
      --  unspecified
      Reserved_16_18 : HAL.UInt3 := 16#0#;
      --  IM19
      IM19           : Boolean := True;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#7#;
      --  IM23
      IM23           : Boolean := True;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#1#;
      --  IM25
      IM25           : Boolean := True;
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#1F#;
      --  IM31
      IM31           : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_IMR1_Register use record
      IM             at 0 range 0 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      IM19           at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      IM23           at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      IM25           at 0 range 25 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      IM31           at 0 range 31 .. 31;
   end record;

   subtype EXTI_EMR1_EM_Field is HAL.UInt16;

   --  EXTI CPU wakeup with event mask register
   type EXTI_EMR1_Register is record
      --  CPU wakeup with event generation mask
      EM             : EXTI_EMR1_EM_Field := 16#0#;
      --  unspecified
      Reserved_16_18 : HAL.UInt3 := 16#0#;
      --  EM19
      EM19           : Boolean := False;
      --  unspecified
      Reserved_20_22 : HAL.UInt3 := 16#0#;
      --  EM23
      EM23           : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  EM25
      EM25           : Boolean := False;
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#0#;
      --  EM31
      EM31           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_EMR1_Register use record
      EM             at 0 range 0 .. 15;
      Reserved_16_18 at 0 range 16 .. 18;
      EM19           at 0 range 19 .. 19;
      Reserved_20_22 at 0 range 20 .. 22;
      EM23           at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      EM25           at 0 range 25 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      EM31           at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  EXTI address block description
   type EXTI_Peripheral is record
      --  EXTI rising trigger selection register
      EXTI_RTSR1   : aliased EXTI_RTSR1_Register;
      --  EXTI falling trigger selection register 1
      EXTI_FTSR1   : aliased EXTI_FTSR1_Register;
      --  EXTI software interrupt event register 1
      EXTI_SWIER1  : aliased EXTI_SWIER1_Register;
      --  EXTI rising edge pending register 1
      EXTI_RPR1    : aliased EXTI_RPR1_Register;
      --  EXTI falling edge pending register 1
      EXTI_FPR1    : aliased EXTI_FPR1_Register;
      --  EXTI external interrupt selection register
      EXTI_EXTICR1 : aliased EXTI_EXTICR_Register;
      --  EXTI external interrupt selection register
      EXTI_EXTICR2 : aliased EXTI_EXTICR_Register;
      --  EXTI external interrupt selection register
      EXTI_EXTICR3 : aliased EXTI_EXTICR_Register;
      --  EXTI external interrupt selection register
      EXTI_EXTICR4 : aliased EXTI_EXTICR_Register;
      --  EXTI CPU wakeup with interrupt mask register
      EXTI_IMR1    : aliased EXTI_IMR1_Register;
      --  EXTI CPU wakeup with event mask register
      EXTI_EMR1    : aliased EXTI_EMR1_Register;
   end record
     with Volatile;

   for EXTI_Peripheral use record
      EXTI_RTSR1   at 16#0# range 0 .. 31;
      EXTI_FTSR1   at 16#4# range 0 .. 31;
      EXTI_SWIER1  at 16#8# range 0 .. 31;
      EXTI_RPR1    at 16#C# range 0 .. 31;
      EXTI_FPR1    at 16#10# range 0 .. 31;
      EXTI_EXTICR1 at 16#60# range 0 .. 31;
      EXTI_EXTICR2 at 16#64# range 0 .. 31;
      EXTI_EXTICR3 at 16#68# range 0 .. 31;
      EXTI_EXTICR4 at 16#6C# range 0 .. 31;
      EXTI_IMR1    at 16#80# range 0 .. 31;
      EXTI_EMR1    at 16#84# range 0 .. 31;
   end record;

   --  EXTI address block description
   EXTI_Periph : aliased EXTI_Peripheral
     with Import, Address => EXTI_Base;

end STM32_SVD.EXTI;
