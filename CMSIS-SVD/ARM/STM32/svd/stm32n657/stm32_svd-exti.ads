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

   --  RTSR1_RT array
   type RTSR1_RT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for RTSR1_RT
   type RTSR1_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt16;
         when True =>
            --  RT as an array
            Arr : RTSR1_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for RTSR1_RT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  RTSR1_RT array
   type RTSR1_RT_Field_Array_1 is array (20 .. 21) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RTSR1_RT
   type RTSR1_RT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt2;
         when True =>
            --  RT as an array
            Arr : RTSR1_RT_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RTSR1_RT_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI rising trigger selection register
   type RTSR1_Register is record
      --  Rising trigger event configuration bit of configurable event input x
      RT             : RTSR1_RT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Rising trigger event configuration bit of configurable event input x
      RT_1           : RTSR1_RT_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTSR1_Register use record
      RT             at 0 range 0 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      RT_1           at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  FTSR1_FT array
   type FTSR1_FT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for FTSR1_FT
   type FTSR1_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt16;
         when True =>
            --  FT as an array
            Arr : FTSR1_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FTSR1_FT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  FTSR1_FT array
   type FTSR1_FT_Field_Array_1 is array (20 .. 21) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FTSR1_FT
   type FTSR1_FT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt2;
         when True =>
            --  FT as an array
            Arr : FTSR1_FT_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FTSR1_FT_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI falling trigger selection register
   type FTSR1_Register is record
      --  Falling trigger event configuration bit of configurable event input x
      FT             : FTSR1_FT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Falling trigger event configuration bit of configurable event input x
      FT_1           : FTSR1_FT_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTSR1_Register use record
      FT             at 0 range 0 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      FT_1           at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  SWIER1_SWI array
   type SWIER1_SWI_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for SWIER1_SWI
   type SWIER1_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt16;
         when True =>
            --  SWI as an array
            Arr : SWIER1_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SWIER1_SWI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  SWIER1_SWI array
   type SWIER1_SWI_Field_Array_1 is array (20 .. 21) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SWIER1_SWI
   type SWIER1_SWI_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt2;
         when True =>
            --  SWI as an array
            Arr : SWIER1_SWI_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SWIER1_SWI_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI software interrupt event register
   type SWIER1_Register is record
      --  Software interrupt on event x
      SWI            : SWIER1_SWI_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Software interrupt on event x
      SWI_1          : SWIER1_SWI_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWIER1_Register use record
      SWI            at 0 range 0 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      SWI_1          at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  RPR1_RPIF array
   type RPR1_RPIF_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for RPR1_RPIF
   type RPR1_RPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : HAL.UInt16;
         when True =>
            --  RPIF as an array
            Arr : RPR1_RPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for RPR1_RPIF_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  RPR1_RPIF array
   type RPR1_RPIF_Field_Array_1 is array (20 .. 21) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RPR1_RPIF
   type RPR1_RPIF_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : HAL.UInt2;
         when True =>
            --  RPIF as an array
            Arr : RPR1_RPIF_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RPR1_RPIF_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI rising edge pending register
   type RPR1_Register is record
      --  Configurable event input x rising edge pending bit
      RPIF           : RPR1_RPIF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  Configurable event input x rising edge pending bit
      RPIF_1         : RPR1_RPIF_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RPR1_Register use record
      RPIF           at 0 range 0 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      RPIF_1         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  FPR1_FPIF array
   type FPR1_FPIF_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for FPR1_FPIF
   type FPR1_FPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : HAL.UInt16;
         when True =>
            --  FPIF as an array
            Arr : FPR1_FPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FPR1_FPIF_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  FPR1_FPIF array
   type FPR1_FPIF_Field_Array_1 is array (20 .. 21) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FPR1_FPIF
   type FPR1_FPIF_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : HAL.UInt2;
         when True =>
            --  FPIF as an array
            Arr : FPR1_FPIF_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FPR1_FPIF_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI falling edge pending register
   type FPR1_Register is record
      --  Configurable event input x rising edge pending bit
      FPIF           : FPR1_FPIF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_19 : HAL.UInt4 := 16#0#;
      --  configurable event input x falling edge pending bit
      FPIF_1         : FPR1_FPIF_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPR1_Register use record
      FPIF           at 0 range 0 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      FPIF_1         at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  SECCFGR1_SEC array
   type SECCFGR1_SEC_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for SECCFGR1_SEC
   type SECCFGR1_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt16;
         when True =>
            --  SEC as an array
            Arr : SECCFGR1_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for SECCFGR1_SEC_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  SECCFGR1_SEC array
   type SECCFGR1_SEC_Field_Array_1 is array (17 .. 31) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for SECCFGR1_SEC
   type SECCFGR1_SEC_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt15;
         when True =>
            --  SEC as an array
            Arr : SECCFGR1_SEC_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for SECCFGR1_SEC_Field_1 use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  EXTI security configuration register
   type SECCFGR1_Register is record
      --  Security enable on event input x
      SEC            : SECCFGR1_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  Security enable on event input x
      SEC_1          : SECCFGR1_SEC_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SECCFGR1_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      SEC_1          at 0 range 17 .. 31;
   end record;

   --  PRIVCFGR1_PRIV array
   type PRIVCFGR1_PRIV_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PRIVCFGR1_PRIV
   type PRIVCFGR1_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt16;
         when True =>
            --  PRIV as an array
            Arr : PRIVCFGR1_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PRIVCFGR1_PRIV_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PRIVCFGR1_PRIV array
   type PRIVCFGR1_PRIV_Field_Array_1 is array (17 .. 31) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for PRIVCFGR1_PRIV
   type PRIVCFGR1_PRIV_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt15;
         when True =>
            --  PRIV as an array
            Arr : PRIVCFGR1_PRIV_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for PRIVCFGR1_PRIV_Field_1 use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  EXTI privilege configuration register
   type PRIVCFGR1_Register is record
      --  Privilege enable on event input x
      PRIV           : PRIVCFGR1_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  Privilege enable on event input x
      PRIV_1         : PRIVCFGR1_PRIV_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRIVCFGR1_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      PRIV_1         at 0 range 17 .. 31;
   end record;

   --  RTSR2_RT array
   type RTSR2_RT_Field_Array is array (39 .. 40) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RTSR2_RT
   type RTSR2_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt2;
         when True =>
            --  RT as an array
            Arr : RTSR2_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RTSR2_RT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI rising trigger selection register
   type RTSR2_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Rising trigger event configuration bit of configurable event input x
      RT             : RTSR2_RT_Field := (As_Array => False, Val => 16#0#);
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

   for RTSR2_Register use record
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

   --  FTSR2_FT array
   type FTSR2_FT_Field_Array is array (39 .. 40) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FTSR2_FT
   type FTSR2_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt2;
         when True =>
            --  FT as an array
            Arr : FTSR2_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FTSR2_FT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI falling trigger selection register
   type FTSR2_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Falling trigger event configuration bit of configurable event input x
      FT             : FTSR2_FT_Field := (As_Array => False, Val => 16#0#);
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

   for FTSR2_Register use record
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

   --  SWIER2_SWI array
   type SWIER2_SWI_Field_Array is array (39 .. 40) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SWIER2_SWI
   type SWIER2_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt2;
         when True =>
            --  SWI as an array
            Arr : SWIER2_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SWIER2_SWI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI software interrupt event register
   type SWIER2_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Software interrupt on event x
      SWI            : SWIER2_SWI_Field := (As_Array => False, Val => 16#0#);
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

   for SWIER2_Register use record
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

   --  RPR2_RPIF array
   type RPR2_RPIF_Field_Array is array (39 .. 40) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for RPR2_RPIF
   type RPR2_RPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : HAL.UInt2;
         when True =>
            --  RPIF as an array
            Arr : RPR2_RPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RPR2_RPIF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI rising edge pending register
   type RPR2_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Configurable event input x rising edge pending bit
      RPIF           : RPR2_RPIF_Field := (As_Array => False, Val => 16#0#);
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

   for RPR2_Register use record
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

   --  FPR2_FPIF array
   type FPR2_FPIF_Field_Array is array (39 .. 40) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FPR2_FPIF
   type FPR2_FPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : HAL.UInt2;
         when True =>
            --  FPIF as an array
            Arr : FPR2_FPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FPR2_FPIF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI falling edge pending register
   type FPR2_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Configurable event input x falling edge pending bit
      FPIF           : FPR2_FPIF_Field := (As_Array => False, Val => 16#0#);
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

   for FPR2_Register use record
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

   --  SECCFGR2_SEC array
   type SECCFGR2_SEC_Field_Array is array (32 .. 58) of Boolean
     with Component_Size => 1, Size => 27;

   --  Type definition for SECCFGR2_SEC
   type SECCFGR2_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt27;
         when True =>
            --  SEC as an array
            Arr : SECCFGR2_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for SECCFGR2_SEC_Field use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  SECCFGR2_SEC array
   type SECCFGR2_SEC_Field_Array_1 is array (60 .. 63) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for SECCFGR2_SEC
   type SECCFGR2_SEC_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt4;
         when True =>
            --  SEC as an array
            Arr : SECCFGR2_SEC_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SECCFGR2_SEC_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  EXTI security enable register
   type SECCFGR2_Register is record
      --  Security enable on event input x
      SEC            : SECCFGR2_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Security enable on event input x
      SEC_1          : SECCFGR2_SEC_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SECCFGR2_Register use record
      SEC            at 0 range 0 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SEC_1          at 0 range 28 .. 31;
   end record;

   --  PRIVCFGR2_PRIV array
   type PRIVCFGR2_PRIV_Field_Array is array (32 .. 58) of Boolean
     with Component_Size => 1, Size => 27;

   --  Type definition for PRIVCFGR2_PRIV
   type PRIVCFGR2_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt27;
         when True =>
            --  PRIV as an array
            Arr : PRIVCFGR2_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for PRIVCFGR2_PRIV_Field use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  PRIVCFGR2_PRIV array
   type PRIVCFGR2_PRIV_Field_Array_1 is array (60 .. 63) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PRIVCFGR2_PRIV
   type PRIVCFGR2_PRIV_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt4;
         when True =>
            --  PRIV as an array
            Arr : PRIVCFGR2_PRIV_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PRIVCFGR2_PRIV_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  EXTI privilege enable register
   type PRIVCFGR2_Register is record
      --  Privilege enable on event input x
      PRIV           : PRIVCFGR2_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Privilege enable on event input x
      PRIV_1         : PRIVCFGR2_PRIV_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRIVCFGR2_Register use record
      PRIV           at 0 range 0 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      PRIV_1         at 0 range 28 .. 31;
   end record;

   --  RTSR3_RT array
   type RTSR3_RT_Field_Array is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for RTSR3_RT
   type RTSR3_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt7;
         when True =>
            --  RT as an array
            Arr : RTSR3_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for RTSR3_RT_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI rising trigger selection register
   type RTSR3_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Rising trigger event configuration bit of configurable event input 66
      RT66           : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Rising trigger event configuration bit of configurable event input x
      RT             : RTSR3_RT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTSR3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RT66           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RT             at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  FTSR3_FT array
   type FTSR3_FT_Field_Array is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for FTSR3_FT
   type FTSR3_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt7;
         when True =>
            --  FT as an array
            Arr : FTSR3_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for FTSR3_FT_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI falling trigger selection register
   type FTSR3_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Falling trigger event configuration bit of configurable event input
      --  66
      FT66           : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Falling trigger event configuration bit of configurable event input x
      FT             : FTSR3_FT_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FTSR3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FT66           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      FT             at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  SWIER3_SWI array
   type SWIER3_SWI_Field_Array is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for SWIER3_SWI
   type SWIER3_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt7;
         when True =>
            --  SWI as an array
            Arr : SWIER3_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for SWIER3_SWI_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI software interrupt event register
   type SWIER3_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Software interrupt on event 66
      SWI66          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Software interrupt on event x
      SWI            : SWIER3_SWI_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWIER3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      SWI66          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SWI            at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  RPR3_RPIF array
   type RPR3_RPIF_Field_Array is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for RPR3_RPIF
   type RPR3_RPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : HAL.UInt7;
         when True =>
            --  RPIF as an array
            Arr : RPR3_RPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for RPR3_RPIF_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI rising edge pending register
   type RPR3_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  configurable event input 66rising edge pending bit
      RPIF66         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  configurable event input x rising edge pending bit
      RPIF           : RPR3_RPIF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RPR3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RPIF66         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RPIF           at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  FPR3_FPIF array
   type FPR3_FPIF_Field_Array is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for FPR3_FPIF
   type FPR3_FPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : HAL.UInt7;
         when True =>
            --  FPIF as an array
            Arr : FPR3_FPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for FPR3_FPIF_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI falling edge pending register
   type FPR3_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  configurable event input 66 falling edge pending bit
      FPIF66         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  configurable event input x falling edge pending bit
      FPIF           : FPR3_FPIF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPR3_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      FPIF66         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      FPIF           at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  SECCFGR3_SEC array
   type SECCFGR3_SEC_Field_Array is array (64 .. 66) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for SECCFGR3_SEC
   type SECCFGR3_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt3;
         when True =>
            --  SEC as an array
            Arr : SECCFGR3_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for SECCFGR3_SEC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  SECCFGR3_SEC array
   type SECCFGR3_SEC_Field_Array_1 is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for SECCFGR3_SEC
   type SECCFGR3_SEC_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt7;
         when True =>
            --  SEC as an array
            Arr : SECCFGR3_SEC_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for SECCFGR3_SEC_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI security enable register
   type SECCFGR3_Register is record
      --  Security enable on event input x
      SEC            : SECCFGR3_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Security enable on event input x
      SEC_1          : SECCFGR3_SEC_Field_1 :=
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

   for SECCFGR3_Register use record
      SEC            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SEC_1          at 0 range 4 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      SEC77          at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  PRIVCFGR3_PRIV array
   type PRIVCFGR3_PRIV_Field_Array is array (64 .. 66) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PRIVCFGR3_PRIV
   type PRIVCFGR3_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt3;
         when True =>
            --  PRIV as an array
            Arr : PRIVCFGR3_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PRIVCFGR3_PRIV_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  PRIVCFGR3_PRIV array
   type PRIVCFGR3_PRIV_Field_Array_1 is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for PRIVCFGR3_PRIV
   type PRIVCFGR3_PRIV_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt7;
         when True =>
            --  PRIV as an array
            Arr : PRIVCFGR3_PRIV_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for PRIVCFGR3_PRIV_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI privilege enable register
   type PRIVCFGR3_Register is record
      --  Privilege enable on event input x
      PRIV           : PRIVCFGR3_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Privilege enable on event input x
      PRIV_1         : PRIVCFGR3_PRIV_Field_1 :=
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

   for PRIVCFGR3_Register use record
      PRIV           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PRIV_1         at 0 range 4 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      PRIV77         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  EXTICR1_EXTI array element
   subtype EXTICR1_EXTI_Element is HAL.UInt8;

   --  EXTICR1_EXTI array
   type EXTICR1_EXTI_Field_Array is array (0 .. 3) of EXTICR1_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI external interrupt selection register 1
   type EXTICR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTICR1_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTICR2_EXTI array element
   subtype EXTICR2_EXTI_Element is HAL.UInt8;

   --  EXTICR2_EXTI array
   type EXTICR2_EXTI_Field_Array is array (4 .. 7) of EXTICR2_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI external interrupt selection register 2
   type EXTICR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTICR2_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTICR3_EXTI array element
   subtype EXTICR3_EXTI_Element is HAL.UInt8;

   --  EXTICR3_EXTI array
   type EXTICR3_EXTI_Field_Array is array (8 .. 11) of EXTICR3_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI external interrupt selection register 3
   type EXTICR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTICR3_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTICR4_EXTI array element
   subtype EXTICR4_EXTI_Element is HAL.UInt8;

   --  EXTICR4_EXTI array
   type EXTICR4_EXTI_Field_Array is array (12 .. 15) of EXTICR4_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI external interrupt selection register 4
   type EXTICR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTICR4_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTICR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTI lock register
   type LOCKR_Register is record
      --  Global security privilege SECCFGRx/PRIVCFGRx
      GLOCK         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOCKR_Register use record
      GLOCK         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  IMR1_IM array
   type IMR1_IM_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for IMR1_IM
   type IMR1_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt16;
         when True =>
            --  IM as an array
            Arr : IMR1_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for IMR1_IM_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  IMR1_IM array
   type IMR1_IM_Field_Array_1 is array (17 .. 31) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for IMR1_IM
   type IMR1_IM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt15;
         when True =>
            --  IM as an array
            Arr : IMR1_IM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for IMR1_IM_Field_1 use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  EXTI CPU wake-up with interrupt mask register 1
   type IMR1_Register is record
      --  CPU wake-up with interrupt mask on event input x
      IM             : IMR1_IM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  CPU wake-up with interrupt mask on event input x
      IM_1           : IMR1_IM_Field_1 := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR1_Register use record
      IM             at 0 range 0 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      IM_1           at 0 range 17 .. 31;
   end record;

   --  EMR1_EM array
   type EMR1_EM_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EMR1_EM
   type EMR1_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt16;
         when True =>
            --  EM as an array
            Arr : EMR1_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EMR1_EM_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EMR1_EM array
   type EMR1_EM_Field_Array_1 is array (17 .. 31) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for EMR1_EM
   type EMR1_EM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt15;
         when True =>
            --  EM as an array
            Arr : EMR1_EM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EMR1_EM_Field_1 use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  EXTI CPU wake-up with event mask register 1
   type EMR1_Register is record
      --  CPU wake-up with interrupt mask on event input x
      EM             : EMR1_EM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  CPU wake-up with event on event input x
      EM_1           : EMR1_EM_Field_1 := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMR1_Register use record
      EM             at 0 range 0 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      EM_1           at 0 range 17 .. 31;
   end record;

   --  IMR2_IM array
   type IMR2_IM_Field_Array is array (32 .. 58) of Boolean
     with Component_Size => 1, Size => 27;

   --  Type definition for IMR2_IM
   type IMR2_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt27;
         when True =>
            --  IM as an array
            Arr : IMR2_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for IMR2_IM_Field use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  IMR2_IM array
   type IMR2_IM_Field_Array_1 is array (60 .. 63) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for IMR2_IM
   type IMR2_IM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt4;
         when True =>
            --  IM as an array
            Arr : IMR2_IM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for IMR2_IM_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  EXTI CPU wake-up with interrupt mask register 2
   type IMR2_Register is record
      --  CPU wake-up with interrupt mask on event input x
      IM             : IMR2_IM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  CPU wake-up with interrupt mask on event input x
      IM_1           : IMR2_IM_Field_1 := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR2_Register use record
      IM             at 0 range 0 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      IM_1           at 0 range 28 .. 31;
   end record;

   --  EMR2_EM array
   type EMR2_EM_Field_Array is array (32 .. 58) of Boolean
     with Component_Size => 1, Size => 27;

   --  Type definition for EMR2_EM
   type EMR2_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt27;
         when True =>
            --  EM as an array
            Arr : EMR2_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 27;

   for EMR2_EM_Field use record
      Val at 0 range 0 .. 26;
      Arr at 0 range 0 .. 26;
   end record;

   --  EMR2_EM array
   type EMR2_EM_Field_Array_1 is array (60 .. 63) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for EMR2_EM
   type EMR2_EM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt4;
         when True =>
            --  EM as an array
            Arr : EMR2_EM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for EMR2_EM_Field_1 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  EXTI CPU wake-up with event mask register 2
   type EMR2_Register is record
      --  CPU wake-up with interrupt mask on event input x
      EM             : EMR2_EM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  CPU wake-up with event on event input x
      EM_1           : EMR2_EM_Field_1 := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMR2_Register use record
      EM             at 0 range 0 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      EM_1           at 0 range 28 .. 31;
   end record;

   --  IMR3_IM array
   type IMR3_IM_Field_Array is array (64 .. 66) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for IMR3_IM
   type IMR3_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt3;
         when True =>
            --  IM as an array
            Arr : IMR3_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for IMR3_IM_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  IMR3_IM array
   type IMR3_IM_Field_Array_1 is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for IMR3_IM
   type IMR3_IM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : HAL.UInt7;
         when True =>
            --  IM as an array
            Arr : IMR3_IM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for IMR3_IM_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI CPU wake-up with interrupt mask register 3
   type IMR3_Register is record
      --  CPU wake-up with interrupt mask on event input x
      IM             : IMR3_IM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  CPU wake-up with interrupt mask on event input x
      IM_1           : IMR3_IM_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  CPU wake-up with interrupt mask on event input 77
      IM77           : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR3_Register use record
      IM             at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      IM_1           at 0 range 4 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      IM77           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  EMR3_EM array
   type EMR3_EM_Field_Array is array (64 .. 66) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EMR3_EM
   type EMR3_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt3;
         when True =>
            --  EM as an array
            Arr : EMR3_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EMR3_EM_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EMR3_EM array
   type EMR3_EM_Field_Array_1 is array (68 .. 74) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EMR3_EM
   type EMR3_EM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt7;
         when True =>
            --  EM as an array
            Arr : EMR3_EM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EMR3_EM_Field_1 use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI CPU wake-up with event mask register 3
   type EMR3_Register is record
      --  CPU wake-up with interrupt mask on event input x
      EM             : EMR3_EM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  CPU wake-up with interrupt mask on event input x
      EM_1           : EMR3_EM_Field_1 := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_11_12 : HAL.UInt2 := 16#0#;
      --  CPU wake-up with event on event input 77
      EM77           : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMR3_Register use record
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
      RTSR1     : aliased RTSR1_Register;
      --  EXTI falling trigger selection register
      FTSR1     : aliased FTSR1_Register;
      --  EXTI software interrupt event register
      SWIER1    : aliased SWIER1_Register;
      --  EXTI rising edge pending register
      RPR1      : aliased RPR1_Register;
      --  EXTI falling edge pending register
      FPR1      : aliased FPR1_Register;
      --  EXTI security configuration register
      SECCFGR1  : aliased SECCFGR1_Register;
      --  EXTI privilege configuration register
      PRIVCFGR1 : aliased PRIVCFGR1_Register;
      --  EXTI rising trigger selection register
      RTSR2     : aliased RTSR2_Register;
      --  EXTI falling trigger selection register
      FTSR2     : aliased FTSR2_Register;
      --  EXTI software interrupt event register
      SWIER2    : aliased SWIER2_Register;
      --  EXTI rising edge pending register
      RPR2      : aliased RPR2_Register;
      --  EXTI falling edge pending register
      FPR2      : aliased FPR2_Register;
      --  EXTI security enable register
      SECCFGR2  : aliased SECCFGR2_Register;
      --  EXTI privilege enable register
      PRIVCFGR2 : aliased PRIVCFGR2_Register;
      --  EXTI rising trigger selection register
      RTSR3     : aliased RTSR3_Register;
      --  EXTI falling trigger selection register
      FTSR3     : aliased FTSR3_Register;
      --  EXTI software interrupt event register
      SWIER3    : aliased SWIER3_Register;
      --  EXTI rising edge pending register
      RPR3      : aliased RPR3_Register;
      --  EXTI falling edge pending register
      FPR3      : aliased FPR3_Register;
      --  EXTI security enable register
      SECCFGR3  : aliased SECCFGR3_Register;
      --  EXTI privilege enable register
      PRIVCFGR3 : aliased PRIVCFGR3_Register;
      --  EXTI external interrupt selection register 1
      EXTICR1   : aliased EXTICR1_Register;
      --  EXTI external interrupt selection register 2
      EXTICR2   : aliased EXTICR2_Register;
      --  EXTI external interrupt selection register 3
      EXTICR3   : aliased EXTICR3_Register;
      --  EXTI external interrupt selection register 4
      EXTICR4   : aliased EXTICR4_Register;
      --  EXTI lock register
      LOCKR     : aliased LOCKR_Register;
      --  EXTI CPU wake-up with interrupt mask register 1
      IMR1      : aliased IMR1_Register;
      --  EXTI CPU wake-up with event mask register 1
      EMR1      : aliased EMR1_Register;
      --  EXTI CPU wake-up with interrupt mask register 2
      IMR2      : aliased IMR2_Register;
      --  EXTI CPU wake-up with event mask register 2
      EMR2      : aliased EMR2_Register;
      --  EXTI CPU wake-up with interrupt mask register 3
      IMR3      : aliased IMR3_Register;
      --  EXTI CPU wake-up with event mask register 3
      EMR3      : aliased EMR3_Register;
   end record
     with Volatile;

   for EXTI_Peripheral use record
      RTSR1     at 16#0# range 0 .. 31;
      FTSR1     at 16#4# range 0 .. 31;
      SWIER1    at 16#8# range 0 .. 31;
      RPR1      at 16#C# range 0 .. 31;
      FPR1      at 16#10# range 0 .. 31;
      SECCFGR1  at 16#14# range 0 .. 31;
      PRIVCFGR1 at 16#18# range 0 .. 31;
      RTSR2     at 16#20# range 0 .. 31;
      FTSR2     at 16#24# range 0 .. 31;
      SWIER2    at 16#28# range 0 .. 31;
      RPR2      at 16#2C# range 0 .. 31;
      FPR2      at 16#30# range 0 .. 31;
      SECCFGR2  at 16#34# range 0 .. 31;
      PRIVCFGR2 at 16#38# range 0 .. 31;
      RTSR3     at 16#40# range 0 .. 31;
      FTSR3     at 16#44# range 0 .. 31;
      SWIER3    at 16#48# range 0 .. 31;
      RPR3      at 16#4C# range 0 .. 31;
      FPR3      at 16#50# range 0 .. 31;
      SECCFGR3  at 16#54# range 0 .. 31;
      PRIVCFGR3 at 16#58# range 0 .. 31;
      EXTICR1   at 16#60# range 0 .. 31;
      EXTICR2   at 16#64# range 0 .. 31;
      EXTICR3   at 16#68# range 0 .. 31;
      EXTICR4   at 16#6C# range 0 .. 31;
      LOCKR     at 16#70# range 0 .. 31;
      IMR1      at 16#80# range 0 .. 31;
      EMR1      at 16#84# range 0 .. 31;
      IMR2      at 16#90# range 0 .. 31;
      EMR2      at 16#94# range 0 .. 31;
      IMR3      at 16#A0# range 0 .. 31;
      EMR3      at 16#A4# range 0 .. 31;
   end record;

   --  Extended interrupts and event controller
   EXTI_Periph : aliased EXTI_Peripheral
     with Import, Address => EXTI_Base;

   --  Extended interrupts and event controller
   EXTI_S_Periph : aliased EXTI_Peripheral
     with Import, Address => EXTI_S_Base;

end STM32_SVD.EXTI;
