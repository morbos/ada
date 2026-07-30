--  This spec has been automatically generated from STM32U3C5.svd

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
   type EXTI_RTSR1_RT_Field_Array is array (0 .. 22) of Boolean
     with Component_Size => 1, Size => 23;

   --  Type definition for EXTI_RTSR1_RT
   type EXTI_RTSR1_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt23;
         when True =>
            --  RT as an array
            Arr : EXTI_RTSR1_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for EXTI_RTSR1_RT_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  EXTI rising trigger selection register
   type EXTI_RTSR1_Register is record
      --  Rising trigger event configuration bit of configurable event input i
      RT             : EXTI_RTSR1_RT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_RTSR1_Register use record
      RT             at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  EXTI_FTSR1_FT array
   type EXTI_FTSR1_FT_Field_Array is array (0 .. 22) of Boolean
     with Component_Size => 1, Size => 23;

   --  Type definition for EXTI_FTSR1_FT
   type EXTI_FTSR1_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt23;
         when True =>
            --  FT as an array
            Arr : EXTI_FTSR1_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for EXTI_FTSR1_FT_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  EXTI falling trigger selection register
   type EXTI_FTSR1_Register is record
      --  Falling trigger event configuration bit of configurable event input i
      FT             : EXTI_FTSR1_FT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_FTSR1_Register use record
      FT             at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  EXTI_SWIER1_SWI array
   type EXTI_SWIER1_SWI_Field_Array is array (0 .. 22) of Boolean
     with Component_Size => 1, Size => 23;

   --  Type definition for EXTI_SWIER1_SWI
   type EXTI_SWIER1_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt23;
         when True =>
            --  SWI as an array
            Arr : EXTI_SWIER1_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for EXTI_SWIER1_SWI_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  EXTI software interrupt event register
   type EXTI_SWIER1_Register is record
      --  Software interrupt on event i
      SWI            : EXTI_SWIER1_SWI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_SWIER1_Register use record
      SWI            at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  EXTI_RPR1_RPIF array
   type EXTI_RPR1_RPIF_Field_Array is array (0 .. 22) of Boolean
     with Component_Size => 1, Size => 23;

   --  Type definition for EXTI_RPR1_RPIF
   type EXTI_RPR1_RPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : HAL.UInt23;
         when True =>
            --  RPIF as an array
            Arr : EXTI_RPR1_RPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for EXTI_RPR1_RPIF_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  EXTI rising edge pending register
   type EXTI_RPR1_Register is record
      --  Configurable event input i rising edge pending bit
      RPIF           : EXTI_RPR1_RPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_RPR1_Register use record
      RPIF           at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  EXTI_FPR1_FPIF array
   type EXTI_FPR1_FPIF_Field_Array is array (0 .. 22) of Boolean
     with Component_Size => 1, Size => 23;

   --  Type definition for EXTI_FPR1_FPIF
   type EXTI_FPR1_FPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : HAL.UInt23;
         when True =>
            --  FPIF as an array
            Arr : EXTI_FPR1_FPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for EXTI_FPR1_FPIF_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  EXTI falling edge pending register
   type EXTI_FPR1_Register is record
      --  configurable event inputs i falling edge pending bit
      FPIF           : EXTI_FPR1_FPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_FPR1_Register use record
      FPIF           at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  EXTI_SECCFGR1_SEC array
   type EXTI_SECCFGR1_SEC_Field_Array is array (0 .. 22) of Boolean
     with Component_Size => 1, Size => 23;

   --  Type definition for EXTI_SECCFGR1_SEC
   type EXTI_SECCFGR1_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt23;
         when True =>
            --  SEC as an array
            Arr : EXTI_SECCFGR1_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for EXTI_SECCFGR1_SEC_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  EXTI security configuration register
   type EXTI_SECCFGR1_Register is record
      --  Security enable on event input i
      SEC            : EXTI_SECCFGR1_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_SECCFGR1_Register use record
      SEC            at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  EXTI_PRIVCFGR1_PRIV array
   type EXTI_PRIVCFGR1_PRIV_Field_Array is array (0 .. 22) of Boolean
     with Component_Size => 1, Size => 23;

   --  Type definition for EXTI_PRIVCFGR1_PRIV
   type EXTI_PRIVCFGR1_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt23;
         when True =>
            --  PRIV as an array
            Arr : EXTI_PRIVCFGR1_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for EXTI_PRIVCFGR1_PRIV_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  EXTI privilege configuration register
   type EXTI_PRIVCFGR1_Register is record
      --  Security enable on event input i
      PRIV           : EXTI_PRIVCFGR1_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_PRIVCFGR1_Register use record
      PRIV           at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  EXTI_EXTICR1_EXTI array element
   subtype EXTI_EXTICR1_EXTI_Element is HAL.UInt8;

   --  EXTI_EXTICR1_EXTI array
   type EXTI_EXTICR1_EXTI_Field_Array is array (0 .. 3)
     of EXTI_EXTICR1_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI external interrupt selection register
   type EXTI_EXTICR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTI_EXTICR1_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_EXTICR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTI_EXTICR2_EXTI array element
   subtype EXTI_EXTICR2_EXTI_Element is HAL.UInt8;

   --  EXTI_EXTICR2_EXTI array
   type EXTI_EXTICR2_EXTI_Field_Array is array (4 .. 7)
     of EXTI_EXTICR2_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI external interrupt selection register
   type EXTI_EXTICR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTI_EXTICR2_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_EXTICR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTI_EXTICR3_EXTI array element
   subtype EXTI_EXTICR3_EXTI_Element is HAL.UInt8;

   --  EXTI_EXTICR3_EXTI array
   type EXTI_EXTICR3_EXTI_Field_Array is array (8 .. 11)
     of EXTI_EXTICR3_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI external interrupt selection register
   type EXTI_EXTICR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTI_EXTICR3_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_EXTICR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTI_EXTICR4_EXTI array element
   subtype EXTI_EXTICR4_EXTI_Element is HAL.UInt8;

   --  EXTI_EXTICR4_EXTI array
   type EXTI_EXTICR4_EXTI_Field_Array is array (12 .. 15)
     of EXTI_EXTICR4_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI external interrupt selection register
   type EXTI_EXTICR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTI_EXTICR4_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_EXTICR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTI lock register
   type EXTI_LOCKR_Register is record
      --  Global security and privilege configuration registers (EXTI_SECCFGR
      --  and EXTI_PRIVCFGR) lock
      LOCK          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_LOCKR_Register use record
      LOCK          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  EXTI_IMR1_IM array
   type EXTI_IMR1_IM_Field_Array is array (0 .. 22) of Boolean
     with Component_Size => 1, Size => 23;

   --  Type definition for EXTI_IMR1_IM
   type EXTI_IMR1_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt23;
         when True =>
            --  IM as an array
            Arr : EXTI_IMR1_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for EXTI_IMR1_IM_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  EXTI CPU wake-up with interrupt mask register
   type EXTI_IMR1_Register is record
      --  CPU wake-up with interrupt mask on event input i
      IM             : EXTI_IMR1_IM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_IMR1_Register use record
      IM             at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  EXTI_EMR1_EM array
   type EXTI_EMR1_EM_Field_Array is array (0 .. 22) of Boolean
     with Component_Size => 1, Size => 23;

   --  Type definition for EXTI_EMR1_EM
   type EXTI_EMR1_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt23;
         when True =>
            --  EM as an array
            Arr : EXTI_EMR1_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for EXTI_EMR1_EM_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  EXTI CPU wake-up with event mask register
   type EXTI_EMR1_Register is record
      --  CPU wake-up with event generation mask on event input i
      EM             : EXTI_EMR1_EM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_EMR1_Register use record
      EM             at 0 range 0 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  EXTI register block
   type EXTI_Peripheral is record
      --  EXTI rising trigger selection register
      EXTI_RTSR1     : aliased EXTI_RTSR1_Register;
      --  EXTI falling trigger selection register
      EXTI_FTSR1     : aliased EXTI_FTSR1_Register;
      --  EXTI software interrupt event register
      EXTI_SWIER1    : aliased EXTI_SWIER1_Register;
      --  EXTI rising edge pending register
      EXTI_RPR1      : aliased EXTI_RPR1_Register;
      --  EXTI falling edge pending register
      EXTI_FPR1      : aliased EXTI_FPR1_Register;
      --  EXTI security configuration register
      EXTI_SECCFGR1  : aliased EXTI_SECCFGR1_Register;
      --  EXTI privilege configuration register
      EXTI_PRIVCFGR1 : aliased EXTI_PRIVCFGR1_Register;
      --  EXTI external interrupt selection register
      EXTI_EXTICR1   : aliased EXTI_EXTICR1_Register;
      --  EXTI external interrupt selection register
      EXTI_EXTICR2   : aliased EXTI_EXTICR2_Register;
      --  EXTI external interrupt selection register
      EXTI_EXTICR3   : aliased EXTI_EXTICR3_Register;
      --  EXTI external interrupt selection register
      EXTI_EXTICR4   : aliased EXTI_EXTICR4_Register;
      --  EXTI lock register
      EXTI_LOCKR     : aliased EXTI_LOCKR_Register;
      --  EXTI CPU wake-up with interrupt mask register
      EXTI_IMR1      : aliased EXTI_IMR1_Register;
      --  EXTI CPU wake-up with event mask register
      EXTI_EMR1      : aliased EXTI_EMR1_Register;
   end record
     with Volatile;

   for EXTI_Peripheral use record
      EXTI_RTSR1     at 16#0# range 0 .. 31;
      EXTI_FTSR1     at 16#4# range 0 .. 31;
      EXTI_SWIER1    at 16#8# range 0 .. 31;
      EXTI_RPR1      at 16#C# range 0 .. 31;
      EXTI_FPR1      at 16#10# range 0 .. 31;
      EXTI_SECCFGR1  at 16#14# range 0 .. 31;
      EXTI_PRIVCFGR1 at 16#18# range 0 .. 31;
      EXTI_EXTICR1   at 16#60# range 0 .. 31;
      EXTI_EXTICR2   at 16#64# range 0 .. 31;
      EXTI_EXTICR3   at 16#68# range 0 .. 31;
      EXTI_EXTICR4   at 16#6C# range 0 .. 31;
      EXTI_LOCKR     at 16#70# range 0 .. 31;
      EXTI_IMR1      at 16#80# range 0 .. 31;
      EXTI_EMR1      at 16#84# range 0 .. 31;
   end record;

   --  EXTI register block
   EXTI_Periph : aliased EXTI_Peripheral
     with Import, Address => EXTI_Base;

   --  EXTI register block
   SEC_ExTI_Periph : aliased EXTI_Peripheral
     with Import, Address => SEC_ExTI_Base;

end STM32_SVD.EXTI;
