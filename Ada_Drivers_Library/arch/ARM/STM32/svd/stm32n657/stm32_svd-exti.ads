--  This spec has been automatically generated from STM32N657.svd

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

   --  EXTI_RTSR1_RT array
   type EXTI_RTSR1_RT_Field_Array_1 is array (20 .. 21) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI_RTSR1_RT
   type EXTI_RTSR1_RT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt2;
         when True =>
            --  RT as an array
            Arr : EXTI_RTSR1_RT_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI_RTSR1_RT_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI rising trigger selection register
   type EXTI_RTSR1_Register is record
      --  Rising trigger event configuration bit of configurable event input x
      RT             : EXTI_RTSR1_RT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Rising trigger event configuration bit of configurable event input x
      RT_1           : EXTI_RTSR1_RT_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_RTSR1_Register use record
      RT             at 0 range 0 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      RT_1           at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
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

   --  EXTI_FTSR1_FT array
   type EXTI_FTSR1_FT_Field_Array_1 is array (20 .. 21) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI_FTSR1_FT
   type EXTI_FTSR1_FT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt2;
         when True =>
            --  FT as an array
            Arr : EXTI_FTSR1_FT_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI_FTSR1_FT_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI falling trigger selection register
   type EXTI_FTSR1_Register is record
      --  Falling trigger event configuration bit of configurable event input x
      FT             : EXTI_FTSR1_FT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Falling trigger event configuration bit of configurable event input x
      FT_1           : EXTI_FTSR1_FT_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_FTSR1_Register use record
      FT             at 0 range 0 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      FT_1           at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
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

   --  EXTI_SWIER1_SWI array
   type EXTI_SWIER1_SWI_Field_Array_1 is array (20 .. 21) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI_SWIER1_SWI
   type EXTI_SWIER1_SWI_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt2;
         when True =>
            --  SWI as an array
            Arr : EXTI_SWIER1_SWI_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI_SWIER1_SWI_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI software interrupt event register
   type EXTI_SWIER1_Register is record
      --  Software interrupt on event x
      SWI            : EXTI_SWIER1_SWI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Software interrupt on event x
      SWI_1          : EXTI_SWIER1_SWI_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_SWIER1_Register use record
      SWI            at 0 range 0 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      SWI_1          at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
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

   --  EXTI_RPR1_RPIF array
   type EXTI_RPR1_RPIF_Field_Array_1 is array (20 .. 21) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI_RPR1_RPIF
   type EXTI_RPR1_RPIF_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : HAL.UInt2;
         when True =>
            --  RPIF as an array
            Arr : EXTI_RPR1_RPIF_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI_RPR1_RPIF_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI rising edge pending register
   type EXTI_RPR1_Register is record
      --  Configurable event input x rising edge pending bit
      RPIF           : EXTI_RPR1_RPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Configurable event input x rising edge pending bit
      RPIF_1         : EXTI_RPR1_RPIF_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_RPR1_Register use record
      RPIF           at 0 range 0 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      RPIF_1         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
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

   --  EXTI_FPR1_FPIF array
   type EXTI_FPR1_FPIF_Field_Array_1 is array (20 .. 21) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI_FPR1_FPIF
   type EXTI_FPR1_FPIF_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : HAL.UInt2;
         when True =>
            --  FPIF as an array
            Arr : EXTI_FPR1_FPIF_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI_FPR1_FPIF_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI falling edge pending register
   type EXTI_FPR1_Register is record
      --  Configurable event input x rising edge pending bit
      FPIF           : EXTI_FPR1_FPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  configurable event input x falling edge pending bit
      FPIF_1         : EXTI_FPR1_FPIF_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_FPR1_Register use record
      FPIF           at 0 range 0 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      FPIF_1         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  EXTI_SECCFGR1_SEC array
   type EXTI_SECCFGR1_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI_SECCFGR1_SEC
   type EXTI_SECCFGR1_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt16;
         when True =>
            --  SEC as an array
            Arr : EXTI_SECCFGR1_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI_SECCFGR1_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI_SECCFGR1_SEC array
   type EXTI_SECCFGR1_SEC_Field_Array_1 is array (17 .. 31) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for EXTI_SECCFGR1_SEC
   type EXTI_SECCFGR1_SEC_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt15;
         when True =>
            --  SEC as an array
            Arr : EXTI_SECCFGR1_SEC_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EXTI_SECCFGR1_SEC_Field_1 use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  EXTI security configuration register
   type EXTI_SECCFGR1_Register is record
      --  Security enable on event input x
      SEC            : EXTI_SECCFGR1_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  Security enable on event input x
      SEC_1          : EXTI_SECCFGR1_SEC_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_SECCFGR1_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      SEC_1          at 0 range 17 .. 31;
   end record;

   --  EXTI_PRIVCFGR1_PRIV array
   type EXTI_PRIVCFGR1_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI_PRIVCFGR1_PRIV
   type EXTI_PRIVCFGR1_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt16;
         when True =>
            --  PRIV as an array
            Arr : EXTI_PRIVCFGR1_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI_PRIVCFGR1_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI_PRIVCFGR1_PRIV array
   type EXTI_PRIVCFGR1_PRIV_Field_Array_1 is array (17 .. 31) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for EXTI_PRIVCFGR1_PRIV
   type EXTI_PRIVCFGR1_PRIV_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt15;
         when True =>
            --  PRIV as an array
            Arr : EXTI_PRIVCFGR1_PRIV_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EXTI_PRIVCFGR1_PRIV_Field_1 use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  EXTI privilege configuration register
   type EXTI_PRIVCFGR1_Register is record
      --  Privilege enable on event input x
      PRIV           : EXTI_PRIVCFGR1_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  Privilege enable on event input x
      PRIV_1         : EXTI_PRIVCFGR1_PRIV_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_PRIVCFGR1_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      PRIV_1         at 0 range 17 .. 31;
   end record;

   --  EXTI_RTSR2_RT array
   type EXTI_RTSR2_RT_Field_Array is array (39 .. 40) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI_RTSR2_RT
   type EXTI_RTSR2_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt2;
         when True =>
            --  RT as an array
            Arr : EXTI_RTSR2_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI_RTSR2_RT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI rising trigger selection register
   type EXTI_RTSR2_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Rising trigger event configuration bit of configurable event input x
      RT             : EXTI_RTSR2_RT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_18  : HAL.UInt10 := 16#0#;
      --  Rising trigger event configuration bit of configurable event input 51
      RT51           : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Rising trigger event configuration bit of configurable event input 54
      RT54           : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Rising trigger event configuration bit of configurable event input 56
      RT56           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_RTSR2_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      RT             at 0 range 7 .. 8;
      Reserved_9_18  at 0 range 9 .. 18;
      RT51           at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      RT54           at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RT56           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  EXTI_FTSR2_FT array
   type EXTI_FTSR2_FT_Field_Array is array (39 .. 40) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI_FTSR2_FT
   type EXTI_FTSR2_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt2;
         when True =>
            --  FT as an array
            Arr : EXTI_FTSR2_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI_FTSR2_FT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI falling trigger selection register
   type EXTI_FTSR2_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Falling trigger event configuration bit of configurable event input x
      FT             : EXTI_FTSR2_FT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_18  : HAL.UInt10 := 16#0#;
      --  Falling trigger event configuration bit of configurable event input
      --  51
      FT51           : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Falling trigger event configuration bit of configurable event input
      --  54
      FT54           : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Falling trigger event configuration bit of configurable event input
      --  56
      FT56           : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_FTSR2_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      FT             at 0 range 7 .. 8;
      Reserved_9_18  at 0 range 9 .. 18;
      FT51           at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      FT54           at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      FT56           at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  EXTI_SWIER2_SWI array
   type EXTI_SWIER2_SWI_Field_Array is array (39 .. 40) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI_SWIER2_SWI
   type EXTI_SWIER2_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt2;
         when True =>
            --  SWI as an array
            Arr : EXTI_SWIER2_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI_SWIER2_SWI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI software interrupt event register
   type EXTI_SWIER2_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Software interrupt on event x
      SWI            : EXTI_SWIER2_SWI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_18  : HAL.UInt10 := 16#0#;
      --  Software interrupt on event 51
      SWI51          : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Software interrupt on event 54
      SWI54          : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Software interrupt on event 56
      SWI56          : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_SWIER2_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      SWI            at 0 range 7 .. 8;
      Reserved_9_18  at 0 range 9 .. 18;
      SWI51          at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      SWI54          at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SWI56          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  EXTI_RPR2_RPIF array
   type EXTI_RPR2_RPIF_Field_Array is array (39 .. 40) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI_RPR2_RPIF
   type EXTI_RPR2_RPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : HAL.UInt2;
         when True =>
            --  RPIF as an array
            Arr : EXTI_RPR2_RPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI_RPR2_RPIF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI rising edge pending register
   type EXTI_RPR2_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Configurable event input x rising edge pending bit
      RPIF           : EXTI_RPR2_RPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_18  : HAL.UInt10 := 16#0#;
      --  Configurable event input 51 rising edge pending bit
      RPIF51         : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Configurable event input 54 rising edge pending bit
      RPIF54         : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Configurable event input 56 rising edge pending bit
      RPIF56         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_RPR2_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      RPIF           at 0 range 7 .. 8;
      Reserved_9_18  at 0 range 9 .. 18;
      RPIF51         at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      RPIF54         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RPIF56         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  EXTI_FPR2_FPIF array
   type EXTI_FPR2_FPIF_Field_Array is array (39 .. 40) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI_FPR2_FPIF
   type EXTI_FPR2_FPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : HAL.UInt2;
         when True =>
            --  FPIF as an array
            Arr : EXTI_FPR2_FPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI_FPR2_FPIF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI falling edge pending register
   type EXTI_FPR2_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Configurable event input x falling edge pending bit
      FPIF           : EXTI_FPR2_FPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_9_18  : HAL.UInt10 := 16#0#;
      --  Configurable event input 51 falling edge pending bit
      FPIF51         : Boolean := False;
      --  unspecified
      Reserved_20_21 : HAL.UInt2 := 16#0#;
      --  Configurable event input 54 falling edge pending bit
      FPIF54         : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Configurable event input 56 falling edge pending bit
      FPIF56         : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_FPR2_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      FPIF           at 0 range 7 .. 8;
      Reserved_9_18  at 0 range 9 .. 18;
      FPIF51         at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      FPIF54         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      FPIF56         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  EXTI_SECCFGR2_SEC array
   type EXTI_SECCFGR2_SEC_Field_Array is array (32 .. 58) of Boolean
     with Component_Size => 1, Size => 27;

   --  Type definition for EXTI_SECCFGR2_SEC
   type EXTI_SECCFGR2_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt27;
         when True =>
            --  SEC as an array
            Arr : EXTI_SECCFGR2_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for EXTI_SECCFGR2_SEC_Field use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  EXTI_SECCFGR2_SEC array
   type EXTI_SECCFGR2_SEC_Field_Array_1 is array (60 .. 63) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for EXTI_SECCFGR2_SEC
   type EXTI_SECCFGR2_SEC_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt4;
         when True =>
            --  SEC as an array
            Arr : EXTI_SECCFGR2_SEC_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for EXTI_SECCFGR2_SEC_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  EXTI security enable register
   type EXTI_SECCFGR2_Register is record
      --  Security enable on event input x
      SEC            : EXTI_SECCFGR2_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Security enable on event input x
      SEC_1          : EXTI_SECCFGR2_SEC_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_SECCFGR2_Register use record
      SEC            at 0 range 0 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SEC_1          at 0 range 28 .. 31;
   end record;

   --  EXTI_PRIVCFGR2_PRIV array
   type EXTI_PRIVCFGR2_PRIV_Field_Array is array (32 .. 58) of Boolean
     with Component_Size => 1, Size => 27;

   --  Type definition for EXTI_PRIVCFGR2_PRIV
   type EXTI_PRIVCFGR2_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt27;
         when True =>
            --  PRIV as an array
            Arr : EXTI_PRIVCFGR2_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for EXTI_PRIVCFGR2_PRIV_Field use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  EXTI_PRIVCFGR2_PRIV array
   type EXTI_PRIVCFGR2_PRIV_Field_Array_1 is array (60 .. 63) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for EXTI_PRIVCFGR2_PRIV
   type EXTI_PRIVCFGR2_PRIV_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt4;
         when True =>
            --  PRIV as an array
            Arr : EXTI_PRIVCFGR2_PRIV_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for EXTI_PRIVCFGR2_PRIV_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  EXTI privilege enable register
   type EXTI_PRIVCFGR2_Register is record
      --  Privilege enable on event input x
      PRIV           : EXTI_PRIVCFGR2_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Privilege enable on event input x
      PRIV_1         : EXTI_PRIVCFGR2_PRIV_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_PRIVCFGR2_Register use record
      PRIV           at 0 range 0 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      PRIV_1         at 0 range 28 .. 31;
   end record;

   --  EXTI_RTSR3_RT array
   type EXTI_RTSR3_RT_Field_Array is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI_RTSR3_RT
   type EXTI_RTSR3_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt7;
         when True =>
            --  RT as an array
            Arr : EXTI_RTSR3_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI_RTSR3_RT_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI rising trigger selection register
   type EXTI_RTSR3_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Rising trigger event configuration bit of configurable event input 66
      RT66           : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Rising trigger event configuration bit of configurable event input x
      RT             : EXTI_RTSR3_RT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_RTSR3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RT66           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RT             at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  EXTI_FTSR3_FT array
   type EXTI_FTSR3_FT_Field_Array is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI_FTSR3_FT
   type EXTI_FTSR3_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt7;
         when True =>
            --  FT as an array
            Arr : EXTI_FTSR3_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI_FTSR3_FT_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI falling trigger selection register
   type EXTI_FTSR3_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Falling trigger event configuration bit of configurable event input
      --  66
      FT66           : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Falling trigger event configuration bit of configurable event input x
      FT             : EXTI_FTSR3_FT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_FTSR3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FT66           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      FT             at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  EXTI_SWIER3_SWI array
   type EXTI_SWIER3_SWI_Field_Array is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI_SWIER3_SWI
   type EXTI_SWIER3_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt7;
         when True =>
            --  SWI as an array
            Arr : EXTI_SWIER3_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI_SWIER3_SWI_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI software interrupt event register
   type EXTI_SWIER3_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Software interrupt on event 66
      SWI66          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Software interrupt on event x
      SWI            : EXTI_SWIER3_SWI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_SWIER3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      SWI66          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SWI            at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  EXTI_RPR3_RPIF array
   type EXTI_RPR3_RPIF_Field_Array is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI_RPR3_RPIF
   type EXTI_RPR3_RPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : HAL.UInt7;
         when True =>
            --  RPIF as an array
            Arr : EXTI_RPR3_RPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI_RPR3_RPIF_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI rising edge pending register
   type EXTI_RPR3_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  configurable event input 66rising edge pending bit
      RPIF66         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  configurable event input x rising edge pending bit
      RPIF           : EXTI_RPR3_RPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_RPR3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RPIF66         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RPIF           at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  EXTI_FPR3_FPIF array
   type EXTI_FPR3_FPIF_Field_Array is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI_FPR3_FPIF
   type EXTI_FPR3_FPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : HAL.UInt7;
         when True =>
            --  FPIF as an array
            Arr : EXTI_FPR3_FPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI_FPR3_FPIF_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI falling edge pending register
   type EXTI_FPR3_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  configurable event input 66 falling edge pending bit
      FPIF66         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  configurable event input x falling edge pending bit
      FPIF           : EXTI_FPR3_FPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_FPR3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FPIF66         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      FPIF           at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  EXTI_SECCFGR3_SEC array
   type EXTI_SECCFGR3_SEC_Field_Array is array (64 .. 66) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI_SECCFGR3_SEC
   type EXTI_SECCFGR3_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt3;
         when True =>
            --  SEC as an array
            Arr : EXTI_SECCFGR3_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI_SECCFGR3_SEC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI_SECCFGR3_SEC array
   type EXTI_SECCFGR3_SEC_Field_Array_1 is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI_SECCFGR3_SEC
   type EXTI_SECCFGR3_SEC_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt7;
         when True =>
            --  SEC as an array
            Arr : EXTI_SECCFGR3_SEC_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI_SECCFGR3_SEC_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI security enable register
   type EXTI_SECCFGR3_Register is record
      --  Security enable on event input x
      SEC            : EXTI_SECCFGR3_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Security enable on event input x
      SEC_1          : EXTI_SECCFGR3_SEC_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Security enable on event input 77
      SEC77          : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_SECCFGR3_Register use record
      SEC            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SEC_1          at 0 range 4 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      SEC77          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  EXTI_PRIVCFGR3_PRIV array
   type EXTI_PRIVCFGR3_PRIV_Field_Array is array (64 .. 66) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI_PRIVCFGR3_PRIV
   type EXTI_PRIVCFGR3_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt3;
         when True =>
            --  PRIV as an array
            Arr : EXTI_PRIVCFGR3_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI_PRIVCFGR3_PRIV_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI_PRIVCFGR3_PRIV array
   type EXTI_PRIVCFGR3_PRIV_Field_Array_1 is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI_PRIVCFGR3_PRIV
   type EXTI_PRIVCFGR3_PRIV_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt7;
         when True =>
            --  PRIV as an array
            Arr : EXTI_PRIVCFGR3_PRIV_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI_PRIVCFGR3_PRIV_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI privilege enable register
   type EXTI_PRIVCFGR3_Register is record
      --  Privilege enable on event input x
      PRIV           : EXTI_PRIVCFGR3_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Privilege enable on event input x
      PRIV_1         : EXTI_PRIVCFGR3_PRIV_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  Privilege enable on event input 77
      PRIV77         : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_PRIVCFGR3_Register use record
      PRIV           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PRIV_1         at 0 range 4 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      PRIV77         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  EXTI_EXTICR1_EXTI array element
   subtype EXTI_EXTICR1_EXTI_Element is HAL.UInt8;

   --  EXTI_EXTICR1_EXTI array
   type EXTI_EXTICR1_EXTI_Field_Array is array (0 .. 3)
     of EXTI_EXTICR1_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI external interrupt selection register 1
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

   --  EXTI external interrupt selection register 2
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

   --  EXTI external interrupt selection register 3
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

   --  EXTI external interrupt selection register 4
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
      --  Global security privilege EXTI_SECCFGRx/PRIVCFGRx
      GLOCK         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_LOCKR_Register use record
      GLOCK         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  EXTI_IMR1_IM array
   type EXTI_IMR1_IM_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI_IMR1_IM
   type EXTI_IMR1_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt16;
         when True =>
            --  IM as an array
            Arr : EXTI_IMR1_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI_IMR1_IM_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI_IMR1_IM array
   type EXTI_IMR1_IM_Field_Array_1 is array (17 .. 31) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for EXTI_IMR1_IM
   type EXTI_IMR1_IM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt15;
         when True =>
            --  IM as an array
            Arr : EXTI_IMR1_IM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EXTI_IMR1_IM_Field_1 use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  EXTI CPU wake-up with interrupt mask register 1
   type EXTI_IMR1_Register is record
      --  CPU wake-up with interrupt mask on event input x
      IM             : EXTI_IMR1_IM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  CPU wake-up with interrupt mask on event input x
      IM_1           : EXTI_IMR1_IM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_IMR1_Register use record
      IM             at 0 range 0 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      IM_1           at 0 range 17 .. 31;
   end record;

   --  EXTI_EMR1_EM array
   type EXTI_EMR1_EM_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI_EMR1_EM
   type EXTI_EMR1_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt16;
         when True =>
            --  EM as an array
            Arr : EXTI_EMR1_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI_EMR1_EM_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI_EMR1_EM array
   type EXTI_EMR1_EM_Field_Array_1 is array (17 .. 31) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for EXTI_EMR1_EM
   type EXTI_EMR1_EM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt15;
         when True =>
            --  EM as an array
            Arr : EXTI_EMR1_EM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EXTI_EMR1_EM_Field_1 use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  EXTI CPU wake-up with event mask register 1
   type EXTI_EMR1_Register is record
      --  CPU wake-up with interrupt mask on event input x
      EM             : EXTI_EMR1_EM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  CPU wake-up with event on event input x
      EM_1           : EXTI_EMR1_EM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_EMR1_Register use record
      EM             at 0 range 0 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      EM_1           at 0 range 17 .. 31;
   end record;

   --  EXTI_IMR2_IM array
   type EXTI_IMR2_IM_Field_Array is array (32 .. 58) of Boolean
     with Component_Size => 1, Size => 27;

   --  Type definition for EXTI_IMR2_IM
   type EXTI_IMR2_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt27;
         when True =>
            --  IM as an array
            Arr : EXTI_IMR2_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for EXTI_IMR2_IM_Field use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  EXTI_IMR2_IM array
   type EXTI_IMR2_IM_Field_Array_1 is array (60 .. 63) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for EXTI_IMR2_IM
   type EXTI_IMR2_IM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt4;
         when True =>
            --  IM as an array
            Arr : EXTI_IMR2_IM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for EXTI_IMR2_IM_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  EXTI CPU wake-up with interrupt mask register 2
   type EXTI_IMR2_Register is record
      --  CPU wake-up with interrupt mask on event input x
      IM             : EXTI_IMR2_IM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  CPU wake-up with interrupt mask on event input x
      IM_1           : EXTI_IMR2_IM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_IMR2_Register use record
      IM             at 0 range 0 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      IM_1           at 0 range 28 .. 31;
   end record;

   --  EXTI_EMR2_EM array
   type EXTI_EMR2_EM_Field_Array is array (32 .. 58) of Boolean
     with Component_Size => 1, Size => 27;

   --  Type definition for EXTI_EMR2_EM
   type EXTI_EMR2_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt27;
         when True =>
            --  EM as an array
            Arr : EXTI_EMR2_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for EXTI_EMR2_EM_Field use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  EXTI_EMR2_EM array
   type EXTI_EMR2_EM_Field_Array_1 is array (60 .. 63) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for EXTI_EMR2_EM
   type EXTI_EMR2_EM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt4;
         when True =>
            --  EM as an array
            Arr : EXTI_EMR2_EM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for EXTI_EMR2_EM_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  EXTI CPU wake-up with event mask register 2
   type EXTI_EMR2_Register is record
      --  CPU wake-up with interrupt mask on event input x
      EM             : EXTI_EMR2_EM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  CPU wake-up with event on event input x
      EM_1           : EXTI_EMR2_EM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_EMR2_Register use record
      EM             at 0 range 0 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      EM_1           at 0 range 28 .. 31;
   end record;

   --  EXTI_IMR3_IM array
   type EXTI_IMR3_IM_Field_Array is array (64 .. 66) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI_IMR3_IM
   type EXTI_IMR3_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt3;
         when True =>
            --  IM as an array
            Arr : EXTI_IMR3_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI_IMR3_IM_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI_IMR3_IM array
   type EXTI_IMR3_IM_Field_Array_1 is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI_IMR3_IM
   type EXTI_IMR3_IM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt7;
         when True =>
            --  IM as an array
            Arr : EXTI_IMR3_IM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI_IMR3_IM_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI CPU wake-up with interrupt mask register 3
   type EXTI_IMR3_Register is record
      --  CPU wake-up with interrupt mask on event input x
      IM             : EXTI_IMR3_IM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  CPU wake-up with interrupt mask on event input x
      IM_1           : EXTI_IMR3_IM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  CPU wake-up with interrupt mask on event input 77
      IM77           : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_IMR3_Register use record
      IM             at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      IM_1           at 0 range 4 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      IM77           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  EXTI_EMR3_EM array
   type EXTI_EMR3_EM_Field_Array is array (64 .. 66) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI_EMR3_EM
   type EXTI_EMR3_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt3;
         when True =>
            --  EM as an array
            Arr : EXTI_EMR3_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI_EMR3_EM_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI_EMR3_EM array
   type EXTI_EMR3_EM_Field_Array_1 is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI_EMR3_EM
   type EXTI_EMR3_EM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt7;
         when True =>
            --  EM as an array
            Arr : EXTI_EMR3_EM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI_EMR3_EM_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI CPU wake-up with event mask register 3
   type EXTI_EMR3_Register is record
      --  CPU wake-up with interrupt mask on event input x
      EM             : EXTI_EMR3_EM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  CPU wake-up with interrupt mask on event input x
      EM_1           : EXTI_EMR3_EM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  CPU wake-up with event on event input 77
      EM77           : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI_EMR3_Register use record
      EM             at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      EM_1           at 0 range 4 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      EM77           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Extended interrupts and event controller
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
      --  EXTI rising trigger selection register
      EXTI_RTSR2     : aliased EXTI_RTSR2_Register;
      --  EXTI falling trigger selection register
      EXTI_FTSR2     : aliased EXTI_FTSR2_Register;
      --  EXTI software interrupt event register
      EXTI_SWIER2    : aliased EXTI_SWIER2_Register;
      --  EXTI rising edge pending register
      EXTI_RPR2      : aliased EXTI_RPR2_Register;
      --  EXTI falling edge pending register
      EXTI_FPR2      : aliased EXTI_FPR2_Register;
      --  EXTI security enable register
      EXTI_SECCFGR2  : aliased EXTI_SECCFGR2_Register;
      --  EXTI privilege enable register
      EXTI_PRIVCFGR2 : aliased EXTI_PRIVCFGR2_Register;
      --  EXTI rising trigger selection register
      EXTI_RTSR3     : aliased EXTI_RTSR3_Register;
      --  EXTI falling trigger selection register
      EXTI_FTSR3     : aliased EXTI_FTSR3_Register;
      --  EXTI software interrupt event register
      EXTI_SWIER3    : aliased EXTI_SWIER3_Register;
      --  EXTI rising edge pending register
      EXTI_RPR3      : aliased EXTI_RPR3_Register;
      --  EXTI falling edge pending register
      EXTI_FPR3      : aliased EXTI_FPR3_Register;
      --  EXTI security enable register
      EXTI_SECCFGR3  : aliased EXTI_SECCFGR3_Register;
      --  EXTI privilege enable register
      EXTI_PRIVCFGR3 : aliased EXTI_PRIVCFGR3_Register;
      --  EXTI external interrupt selection register 1
      EXTI_EXTICR1   : aliased EXTI_EXTICR1_Register;
      --  EXTI external interrupt selection register 2
      EXTI_EXTICR2   : aliased EXTI_EXTICR2_Register;
      --  EXTI external interrupt selection register 3
      EXTI_EXTICR3   : aliased EXTI_EXTICR3_Register;
      --  EXTI external interrupt selection register 4
      EXTI_EXTICR4   : aliased EXTI_EXTICR4_Register;
      --  EXTI lock register
      EXTI_LOCKR     : aliased EXTI_LOCKR_Register;
      --  EXTI CPU wake-up with interrupt mask register 1
      EXTI_IMR1      : aliased EXTI_IMR1_Register;
      --  EXTI CPU wake-up with event mask register 1
      EXTI_EMR1      : aliased EXTI_EMR1_Register;
      --  EXTI CPU wake-up with interrupt mask register 2
      EXTI_IMR2      : aliased EXTI_IMR2_Register;
      --  EXTI CPU wake-up with event mask register 2
      EXTI_EMR2      : aliased EXTI_EMR2_Register;
      --  EXTI CPU wake-up with interrupt mask register 3
      EXTI_IMR3      : aliased EXTI_IMR3_Register;
      --  EXTI CPU wake-up with event mask register 3
      EXTI_EMR3      : aliased EXTI_EMR3_Register;
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
      EXTI_RTSR2     at 16#20# range 0 .. 31;
      EXTI_FTSR2     at 16#24# range 0 .. 31;
      EXTI_SWIER2    at 16#28# range 0 .. 31;
      EXTI_RPR2      at 16#2C# range 0 .. 31;
      EXTI_FPR2      at 16#30# range 0 .. 31;
      EXTI_SECCFGR2  at 16#34# range 0 .. 31;
      EXTI_PRIVCFGR2 at 16#38# range 0 .. 31;
      EXTI_RTSR3     at 16#40# range 0 .. 31;
      EXTI_FTSR3     at 16#44# range 0 .. 31;
      EXTI_SWIER3    at 16#48# range 0 .. 31;
      EXTI_RPR3      at 16#4C# range 0 .. 31;
      EXTI_FPR3      at 16#50# range 0 .. 31;
      EXTI_SECCFGR3  at 16#54# range 0 .. 31;
      EXTI_PRIVCFGR3 at 16#58# range 0 .. 31;
      EXTI_EXTICR1   at 16#60# range 0 .. 31;
      EXTI_EXTICR2   at 16#64# range 0 .. 31;
      EXTI_EXTICR3   at 16#68# range 0 .. 31;
      EXTI_EXTICR4   at 16#6C# range 0 .. 31;
      EXTI_LOCKR     at 16#70# range 0 .. 31;
      EXTI_IMR1      at 16#80# range 0 .. 31;
      EXTI_EMR1      at 16#84# range 0 .. 31;
      EXTI_IMR2      at 16#90# range 0 .. 31;
      EXTI_EMR2      at 16#94# range 0 .. 31;
      EXTI_IMR3      at 16#A0# range 0 .. 31;
      EXTI_EMR3      at 16#A4# range 0 .. 31;
   end record;

   --  Extended interrupts and event controller
   EXTI_Periph : aliased EXTI_Peripheral
     with Import, Address => EXTI_Base;

   --  Extended interrupts and event controller
   EXTI_S_Periph : aliased EXTI_Peripheral
     with Import, Address => EXTI_S_Base;

end STM32_SVD.EXTI;
