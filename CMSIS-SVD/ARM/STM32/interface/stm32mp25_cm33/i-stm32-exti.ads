--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.EXTI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  EXTI2_RTSR1_RT array
   type EXTI2_RTSR1_RT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI2_RTSR1_RT
   type EXTI2_RTSR1_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  RT as an array
            Arr : EXTI2_RTSR1_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI2_RTSR1_RT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI2 rising trigger selection register
   type EXTI2_RTSR1_Register is record
      --  Rising trigger event configuration bit of configurable event input 0.
      RT             : EXTI2_RTSR1_RT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_RTSR1_Register use record
      RT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTI2_FTSR1_FT array
   type EXTI2_FTSR1_FT_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI2_FTSR1_FT
   type EXTI2_FTSR1_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  FT as an array
            Arr : EXTI2_FTSR1_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI2_FTSR1_FT_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI2 falling trigger selection register
   type EXTI2_FTSR1_Register is record
      --  Falling trigger event configuration bit of configurable event input
      --  0.
      FT             : EXTI2_FTSR1_FT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_FTSR1_Register use record
      FT             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTI2_SWIER1_SWI array
   type EXTI2_SWIER1_SWI_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI2_SWIER1_SWI
   type EXTI2_SWIER1_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  SWI as an array
            Arr : EXTI2_SWIER1_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI2_SWIER1_SWI_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI2 software interrupt event register
   type EXTI2_SWIER1_Register is record
      --  Software interrupt on event 0.
      SWI            : EXTI2_SWIER1_SWI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_SWIER1_Register use record
      SWI            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTI2_RPR1_RPIF array
   type EXTI2_RPR1_RPIF_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI2_RPR1_RPIF
   type EXTI2_RPR1_RPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  RPIF as an array
            Arr : EXTI2_RPR1_RPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI2_RPR1_RPIF_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI2 rising edge pending register
   type EXTI2_RPR1_Register is record
      --  configurable event input 0 rising edge Pending bit.
      RPIF           : EXTI2_RPR1_RPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_RPR1_Register use record
      RPIF           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTI2_FPR1_FPIF array
   type EXTI2_FPR1_FPIF_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI2_FPR1_FPIF
   type EXTI2_FPR1_FPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  FPIF as an array
            Arr : EXTI2_FPR1_FPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI2_FPR1_FPIF_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI2 falling edge pending register
   type EXTI2_FPR1_Register is record
      --  configurable event input 0 falling edge pending bit.
      FPIF           : EXTI2_FPR1_FPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_FPR1_Register use record
      FPIF           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTI2_SECCFGR1_SEC array
   type EXTI2_SECCFGR1_SEC_Field_Array is array (0 .. 27) of Boolean
     with Component_Size => 1, Size => 28;

   --  Type definition for EXTI2_SECCFGR1_SEC
   type EXTI2_SECCFGR1_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt28;
         when True =>
            --  SEC as an array
            Arr : EXTI2_SECCFGR1_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 28;

   for EXTI2_SECCFGR1_SEC_Field use record
      Val at 0 range 0 .. 27;
      Arr at 0 range 0 .. 27;
   end record;

   --  EXTI2_SECCFGR1_SEC array
   type EXTI2_SECCFGR1_SEC_Field_Array_1 is array (29 .. 31) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_SECCFGR1_SEC
   type EXTI2_SECCFGR1_SEC_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SEC as an array
            Arr : EXTI2_SECCFGR1_SEC_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_SECCFGR1_SEC_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 security configuration register
   type EXTI2_SECCFGR1_Register is record
      --  Security enable on event input n. (where n = 27 to 0)
      SEC            : EXTI2_SECCFGR1_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Security enable on event input 29.
      SEC_1          : EXTI2_SECCFGR1_SEC_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_SECCFGR1_Register use record
      SEC            at 0 range 0 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      SEC_1          at 0 range 29 .. 31;
   end record;

   --  EXTI2_PRIVCFGR1_PRIV array
   type EXTI2_PRIVCFGR1_PRIV_Field_Array is array (0 .. 27) of Boolean
     with Component_Size => 1, Size => 28;

   --  Type definition for EXTI2_PRIVCFGR1_PRIV
   type EXTI2_PRIVCFGR1_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt28;
         when True =>
            --  PRIV as an array
            Arr : EXTI2_PRIVCFGR1_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 28;

   for EXTI2_PRIVCFGR1_PRIV_Field use record
      Val at 0 range 0 .. 27;
      Arr at 0 range 0 .. 27;
   end record;

   --  EXTI2_PRIVCFGR1_PRIV array
   type EXTI2_PRIVCFGR1_PRIV_Field_Array_1 is array (29 .. 31) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_PRIVCFGR1_PRIV
   type EXTI2_PRIVCFGR1_PRIV_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  PRIV as an array
            Arr : EXTI2_PRIVCFGR1_PRIV_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_PRIVCFGR1_PRIV_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 Privilege configuration register
   type EXTI2_PRIVCFGR1_Register is record
      --  Privilege enable on event input n. (where n = 27 to 0)
      PRIV           : EXTI2_PRIVCFGR1_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Privilege enable on event input 29.
      PRIV_1         : EXTI2_PRIVCFGR1_PRIV_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_PRIVCFGR1_Register use record
      PRIV           at 0 range 0 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      PRIV_1         at 0 range 29 .. 31;
   end record;

   --  EXTI2_RTSR2_RT array
   type EXTI2_RTSR2_RT_Field_Array is array (46 .. 51) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EXTI2_RTSR2_RT
   type EXTI2_RTSR2_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  RT as an array
            Arr : EXTI2_RTSR2_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EXTI2_RTSR2_RT_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EXTI2_RTSR2_RT array
   type EXTI2_RTSR2_RT_Field_Array_1 is array (59 .. 61) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_RTSR2_RT
   type EXTI2_RTSR2_RT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  RT as an array
            Arr : EXTI2_RTSR2_RT_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_RTSR2_RT_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 rising trigger selection register
   type EXTI2_RTSR2_Register is record
      --  unspecified
      Reserved_0_13  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Rising trigger event configuration bit of configurable event input
      --  46.
      RT             : EXTI2_RTSR2_RT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_26 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Rising trigger event configuration bit of configurable event input
      --  59.
      RT_1           : EXTI2_RTSR2_RT_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_RTSR2_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      RT             at 0 range 14 .. 19;
      Reserved_20_26 at 0 range 20 .. 26;
      RT_1           at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  EXTI2_FTSR2_FT array
   type EXTI2_FTSR2_FT_Field_Array is array (46 .. 51) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EXTI2_FTSR2_FT
   type EXTI2_FTSR2_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  FT as an array
            Arr : EXTI2_FTSR2_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EXTI2_FTSR2_FT_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EXTI2_FTSR2_FT array
   type EXTI2_FTSR2_FT_Field_Array_1 is array (59 .. 61) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_FTSR2_FT
   type EXTI2_FTSR2_FT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  FT as an array
            Arr : EXTI2_FTSR2_FT_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_FTSR2_FT_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 falling trigger selection register
   type EXTI2_FTSR2_Register is record
      --  unspecified
      Reserved_0_13  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Falling trigger event configuration bit of configurable event input
      --  46.
      FT             : EXTI2_FTSR2_FT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_26 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Falling trigger event configuration bit of configurable event input
      --  59.
      FT_1           : EXTI2_FTSR2_FT_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_FTSR2_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      FT             at 0 range 14 .. 19;
      Reserved_20_26 at 0 range 20 .. 26;
      FT_1           at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  EXTI2_SWIER2_SWI array
   type EXTI2_SWIER2_SWI_Field_Array is array (46 .. 51) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EXTI2_SWIER2_SWI
   type EXTI2_SWIER2_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  SWI as an array
            Arr : EXTI2_SWIER2_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EXTI2_SWIER2_SWI_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EXTI2_SWIER2_SWI array
   type EXTI2_SWIER2_SWI_Field_Array_1 is array (59 .. 61) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_SWIER2_SWI
   type EXTI2_SWIER2_SWI_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SWI as an array
            Arr : EXTI2_SWIER2_SWI_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_SWIER2_SWI_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 software interrupt event register
   type EXTI2_SWIER2_Register is record
      --  unspecified
      Reserved_0_13  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Software interrupt on event 46.
      SWI            : EXTI2_SWIER2_SWI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_26 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Software interrupt on event 59.
      SWI_1          : EXTI2_SWIER2_SWI_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_SWIER2_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      SWI            at 0 range 14 .. 19;
      Reserved_20_26 at 0 range 20 .. 26;
      SWI_1          at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  EXTI2_RPR2_RPIF array
   type EXTI2_RPR2_RPIF_Field_Array is array (46 .. 51) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EXTI2_RPR2_RPIF
   type EXTI2_RPR2_RPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  RPIF as an array
            Arr : EXTI2_RPR2_RPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EXTI2_RPR2_RPIF_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EXTI2_RPR2_RPIF array
   type EXTI2_RPR2_RPIF_Field_Array_1 is array (59 .. 61) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_RPR2_RPIF
   type EXTI2_RPR2_RPIF_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  RPIF as an array
            Arr : EXTI2_RPR2_RPIF_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_RPR2_RPIF_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 rising edge pending register
   type EXTI2_RPR2_Register is record
      --  unspecified
      Reserved_0_13  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  configurable event input 46 rising edge Pending bit.
      RPIF           : EXTI2_RPR2_RPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_26 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  configurable event input 59 rising edge Pending bit.
      RPIF_1         : EXTI2_RPR2_RPIF_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_RPR2_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      RPIF           at 0 range 14 .. 19;
      Reserved_20_26 at 0 range 20 .. 26;
      RPIF_1         at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  EXTI2_FPR2_FPIF array
   type EXTI2_FPR2_FPIF_Field_Array is array (46 .. 51) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EXTI2_FPR2_FPIF
   type EXTI2_FPR2_FPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  FPIF as an array
            Arr : EXTI2_FPR2_FPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EXTI2_FPR2_FPIF_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EXTI2_FPR2_FPIF array
   type EXTI2_FPR2_FPIF_Field_Array_1 is array (59 .. 61) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_FPR2_FPIF
   type EXTI2_FPR2_FPIF_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  FPIF as an array
            Arr : EXTI2_FPR2_FPIF_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_FPR2_FPIF_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 falling edge pending register
   type EXTI2_FPR2_Register is record
      --  unspecified
      Reserved_0_13  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  configurable event input 46 pending bit.
      FPIF           : EXTI2_FPR2_FPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_26 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  configurable event input 59 pending bit.
      FPIF_1         : EXTI2_FPR2_FPIF_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_FPR2_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      FPIF           at 0 range 14 .. 19;
      Reserved_20_26 at 0 range 20 .. 26;
      FPIF_1         at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  EXTI2_SECCFGR2_SEC array
   type EXTI2_SECCFGR2_SEC_Field_Array is array (33 .. 38) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EXTI2_SECCFGR2_SEC
   type EXTI2_SECCFGR2_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  SEC as an array
            Arr : EXTI2_SECCFGR2_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EXTI2_SECCFGR2_SEC_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EXTI2_SECCFGR2_SEC array
   type EXTI2_SECCFGR2_SEC_Field_Array_1 is array (40 .. 44) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for EXTI2_SECCFGR2_SEC
   type EXTI2_SECCFGR2_SEC_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  SEC as an array
            Arr : EXTI2_SECCFGR2_SEC_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for EXTI2_SECCFGR2_SEC_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  EXTI2_SECCFGR2_SEC array
   type EXTI2_SECCFGR2_SEC_Field_Array_2 is array (46 .. 56) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EXTI2_SECCFGR2_SEC
   type EXTI2_SECCFGR2_SEC_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt11;
         when True =>
            --  SEC as an array
            Arr : EXTI2_SECCFGR2_SEC_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EXTI2_SECCFGR2_SEC_Field_2 use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  EXTI2_SECCFGR2_SEC array
   type EXTI2_SECCFGR2_SEC_Field_Array_3 is array (59 .. 63) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for EXTI2_SECCFGR2_SEC
   type EXTI2_SECCFGR2_SEC_Field_3
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  SEC as an array
            Arr : EXTI2_SECCFGR2_SEC_Field_Array_3;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for EXTI2_SECCFGR2_SEC_Field_3 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  EXTI2 security enable register
   type EXTI2_SECCFGR2_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Security enable on event input 33.
      SEC            : EXTI2_SECCFGR2_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Security enable on event input 40.
      SEC_1          : EXTI2_SECCFGR2_SEC_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Security enable on event input 46.
      SEC_2          : EXTI2_SECCFGR2_SEC_Field_2 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_25_26 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Security enable on event input 59.
      SEC_3          : EXTI2_SECCFGR2_SEC_Field_3 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_SECCFGR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      SEC            at 0 range 1 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC_1          at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      SEC_2          at 0 range 14 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      SEC_3          at 0 range 27 .. 31;
   end record;

   --  EXTI2_PRIVCFGR2_PRIV array
   type EXTI2_PRIVCFGR2_PRIV_Field_Array is array (33 .. 38) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EXTI2_PRIVCFGR2_PRIV
   type EXTI2_PRIVCFGR2_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  PRIV as an array
            Arr : EXTI2_PRIVCFGR2_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EXTI2_PRIVCFGR2_PRIV_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EXTI2_PRIVCFGR2_PRIV array
   type EXTI2_PRIVCFGR2_PRIV_Field_Array_1 is array (40 .. 44) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for EXTI2_PRIVCFGR2_PRIV
   type EXTI2_PRIVCFGR2_PRIV_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  PRIV as an array
            Arr : EXTI2_PRIVCFGR2_PRIV_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for EXTI2_PRIVCFGR2_PRIV_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  EXTI2_PRIVCFGR2_PRIV array
   type EXTI2_PRIVCFGR2_PRIV_Field_Array_2 is array (46 .. 56) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EXTI2_PRIVCFGR2_PRIV
   type EXTI2_PRIVCFGR2_PRIV_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt11;
         when True =>
            --  PRIV as an array
            Arr : EXTI2_PRIVCFGR2_PRIV_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EXTI2_PRIVCFGR2_PRIV_Field_2 use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  EXTI2_PRIVCFGR2_PRIV array
   type EXTI2_PRIVCFGR2_PRIV_Field_Array_3 is array (59 .. 63) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for EXTI2_PRIVCFGR2_PRIV
   type EXTI2_PRIVCFGR2_PRIV_Field_3
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  PRIV as an array
            Arr : EXTI2_PRIVCFGR2_PRIV_Field_Array_3;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for EXTI2_PRIVCFGR2_PRIV_Field_3 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  EXTI2 Privilege enable register
   type EXTI2_PRIVCFGR2_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Privilege enable on event input 33.
      PRIV           : EXTI2_PRIVCFGR2_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Privilege enable on event input 40.
      PRIV_1         : EXTI2_PRIVCFGR2_PRIV_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Privilege enable on event input 46.
      PRIV_2         : EXTI2_PRIVCFGR2_PRIV_Field_2 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_25_26 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Privilege enable on event input 59.
      PRIV_3         : EXTI2_PRIVCFGR2_PRIV_Field_3 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_PRIVCFGR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      PRIV           at 0 range 1 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PRIV_1         at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PRIV_2         at 0 range 14 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      PRIV_3         at 0 range 27 .. 31;
   end record;

   --  EXTI2_RTSR3_RT array
   type EXTI2_RTSR3_RT_Field_Array is array (64 .. 66) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_RTSR3_RT
   type EXTI2_RTSR3_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  RT as an array
            Arr : EXTI2_RTSR3_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_RTSR3_RT_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 rising trigger selection register
   type EXTI2_RTSR3_Register is record
      --  Rising trigger event configuration bit of configurable event input
      --  64.
      RT            : EXTI2_RTSR3_RT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_RTSR3_Register use record
      RT            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  EXTI2_FTSR3_FT array
   type EXTI2_FTSR3_FT_Field_Array is array (64 .. 66) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_FTSR3_FT
   type EXTI2_FTSR3_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  FT as an array
            Arr : EXTI2_FTSR3_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_FTSR3_FT_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 falling trigger selection register
   type EXTI2_FTSR3_Register is record
      --  Falling trigger event configuration bit of configurable event input
      --  64.
      FT            : EXTI2_FTSR3_FT_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_FTSR3_Register use record
      FT            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  EXTI2_SWIER3_SWI array
   type EXTI2_SWIER3_SWI_Field_Array is array (64 .. 66) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_SWIER3_SWI
   type EXTI2_SWIER3_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  SWI as an array
            Arr : EXTI2_SWIER3_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_SWIER3_SWI_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 software interrupt event register
   type EXTI2_SWIER3_Register is record
      --  Software interrupt on event 64.
      SWI           : EXTI2_SWIER3_SWI_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_SWIER3_Register use record
      SWI           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  EXTI2_RPR3_RPIF array
   type EXTI2_RPR3_RPIF_Field_Array is array (64 .. 66) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_RPR3_RPIF
   type EXTI2_RPR3_RPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  RPIF as an array
            Arr : EXTI2_RPR3_RPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_RPR3_RPIF_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 rising edge pending register
   type EXTI2_RPR3_Register is record
      --  configurable event input 64 rising edge pending bit.
      RPIF          : EXTI2_RPR3_RPIF_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_RPR3_Register use record
      RPIF          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  EXTI2_FPR3_FPIF array
   type EXTI2_FPR3_FPIF_Field_Array is array (64 .. 66) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_FPR3_FPIF
   type EXTI2_FPR3_FPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  FPIF as an array
            Arr : EXTI2_FPR3_FPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_FPR3_FPIF_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 falling edge pending register
   type EXTI2_FPR3_Register is record
      --  configurable event input 64 falling edge pending bit.
      FPIF          : EXTI2_FPR3_FPIF_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_FPR3_Register use record
      FPIF          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  EXTI2_SECCFGR3_SEC array
   type EXTI2_SECCFGR3_SEC_Field_Array is array (64 .. 70) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI2_SECCFGR3_SEC
   type EXTI2_SECCFGR3_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  SEC as an array
            Arr : EXTI2_SECCFGR3_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI2_SECCFGR3_SEC_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI2 security enable register
   type EXTI2_SECCFGR3_Register is record
      --  Security enable on event input 64.
      SEC            : EXTI2_SECCFGR3_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_11  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Security enable on event input 76. When CID filtering is disabled in
      --  EXTI2_E76CIDCFGR this SEC76 can be accessed by any processor CID.
      --  When CID filtering is enabled in EXTI2_E76CIDCFGR this SEC76 can only
      --  be accessed by the allowed processor CID. Dis allowed CID write to
      --  this SEC76 is discarded and read returns 0.
      SEC76          : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_SECCFGR3_Register use record
      SEC            at 0 range 0 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      SEC76          at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  EXTI2_PRIVCFGR3_PRIV array
   type EXTI2_PRIVCFGR3_PRIV_Field_Array is array (64 .. 70) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI2_PRIVCFGR3_PRIV
   type EXTI2_PRIVCFGR3_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  PRIV as an array
            Arr : EXTI2_PRIVCFGR3_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI2_PRIVCFGR3_PRIV_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI2 Privilege enable register
   type EXTI2_PRIVCFGR3_Register is record
      --  Privilege enable on event input 64.
      PRIV           : EXTI2_PRIVCFGR3_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_11  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Privilege enable on event input 76. When EXTI2_SECCFGR3.SEC76 is
      --  disabled, PRIV76 can be accessed with secure and non-secure access.
      --  When EXTI2_SECCFGR3.SEC76 is enabled, PRIV76 can only be written with
      --  secure access. Non-secure write to this PRIV76 is discarded. When CID
      --  filtering is disabled in EXTI2_E76CIDCFGR this PRIV76 can be accessed
      --  by any processor CID. When CID filtering is enabled in
      --  EXTI2_E76CIDCFGR this PRIV76 can only be accessed by the allowed
      --  processor CID. Dis allowed CID write to this PRIV76 is discarded and
      --  read returns 0.
      PRIV76         : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_PRIVCFGR3_Register use record
      PRIV           at 0 range 0 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      PRIV76         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  EXTI2_EXTICR1_EXTI array element
   subtype EXTI2_EXTICR1_EXTI_Element is Interfaces.Bit_Types.Byte;

   --  EXTI2_EXTICR1_EXTI array
   type EXTI2_EXTICR1_EXTI_Field_Array is array (0 .. 3)
     of EXTI2_EXTICR1_EXTI_Element
     with Component_Size => 8, Size => 32;

   type EXTI2_EXTICR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTI2_EXTICR1_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_EXTICR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTI2_EXTICR2_EXTI array element
   subtype EXTI2_EXTICR2_EXTI_Element is Interfaces.Bit_Types.Byte;

   --  EXTI2_EXTICR2_EXTI array
   type EXTI2_EXTICR2_EXTI_Field_Array is array (4 .. 7)
     of EXTI2_EXTICR2_EXTI_Element
     with Component_Size => 8, Size => 32;

   type EXTI2_EXTICR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTI2_EXTICR2_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_EXTICR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTI2_EXTICR3_EXTI array element
   subtype EXTI2_EXTICR3_EXTI_Element is Interfaces.Bit_Types.Byte;

   --  EXTI2_EXTICR3_EXTI array
   type EXTI2_EXTICR3_EXTI_Field_Array is array (8 .. 11)
     of EXTI2_EXTICR3_EXTI_Element
     with Component_Size => 8, Size => 32;

   type EXTI2_EXTICR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTI2_EXTICR3_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_EXTICR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTI2_EXTICR4_EXTI array element
   subtype EXTI2_EXTICR4_EXTI_Element is Interfaces.Bit_Types.Byte;

   --  EXTI2_EXTICR4_EXTI array
   type EXTI2_EXTICR4_EXTI_Field_Array is array (12 .. 15)
     of EXTI2_EXTICR4_EXTI_Element
     with Component_Size => 8, Size => 32;

   type EXTI2_EXTICR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTI2_EXTICR4_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_EXTICR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTI2 lock register
   type EXTI2_LOCKR_Register is record
      --  Global security, privilege and CID configuration registers
      --  EXTI2_SECCFGRx, EXTI2_PRIVCFGRx, EXTI2_EnCIDCFGR and EXTI2_CmCIDCFGR
      --  lock. This register bit is write once after reset.
      GLOCK         : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_LOCKR_Register use record
      GLOCK         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  EXTI2_C1IMR1_IM array
   type EXTI2_C1IMR1_IM_Field_Array is array (0 .. 27) of Boolean
     with Component_Size => 1, Size => 28;

   --  Type definition for EXTI2_C1IMR1_IM
   type EXTI2_C1IMR1_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt28;
         when True =>
            --  IM as an array
            Arr : EXTI2_C1IMR1_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 28;

   for EXTI2_C1IMR1_IM_Field use record
      Val at 0 range 0 .. 27;
      Arr at 0 range 0 .. 27;
   end record;

   --  EXTI2_C1IMR1_IM array
   type EXTI2_C1IMR1_IM_Field_Array_1 is array (29 .. 31) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_C1IMR1_IM
   type EXTI2_C1IMR1_IM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  IM as an array
            Arr : EXTI2_C1IMR1_IM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_C1IMR1_IM_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 CPU1 wakeup with interrupt mask register
   type EXTI2_C1IMR1_Register is record
      --  CPUm wakeup with interrupt mask on event input 0.
      IM             : EXTI2_C1IMR1_IM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 29.
      IM_1           : EXTI2_C1IMR1_IM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C1IMR1_Register use record
      IM             at 0 range 0 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      IM_1           at 0 range 29 .. 31;
   end record;

   --  EXTI2_C1IMR2_IM array
   type EXTI2_C1IMR2_IM_Field_Array is array (33 .. 38) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EXTI2_C1IMR2_IM
   type EXTI2_C1IMR2_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  IM as an array
            Arr : EXTI2_C1IMR2_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EXTI2_C1IMR2_IM_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EXTI2_C1IMR2_IM array
   type EXTI2_C1IMR2_IM_Field_Array_1 is array (40 .. 44) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for EXTI2_C1IMR2_IM
   type EXTI2_C1IMR2_IM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  IM as an array
            Arr : EXTI2_C1IMR2_IM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for EXTI2_C1IMR2_IM_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  EXTI2_C1IMR2_IM array
   type EXTI2_C1IMR2_IM_Field_Array_2 is array (46 .. 56) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EXTI2_C1IMR2_IM
   type EXTI2_C1IMR2_IM_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt11;
         when True =>
            --  IM as an array
            Arr : EXTI2_C1IMR2_IM_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EXTI2_C1IMR2_IM_Field_2 use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  EXTI2_C1IMR2_IM array
   type EXTI2_C1IMR2_IM_Field_Array_3 is array (59 .. 63) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for EXTI2_C1IMR2_IM
   type EXTI2_C1IMR2_IM_Field_3
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  IM as an array
            Arr : EXTI2_C1IMR2_IM_Field_Array_3;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for EXTI2_C1IMR2_IM_Field_3 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  EXTI2 CPU1 wakeup with interrupt mask register
   type EXTI2_C1IMR2_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 33.
      IM             : EXTI2_C1IMR2_IM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 40.
      IM_1           : EXTI2_C1IMR2_IM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 46.
      IM_2           : EXTI2_C1IMR2_IM_Field_2 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_25_26 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 59.
      IM_3           : EXTI2_C1IMR2_IM_Field_3 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C1IMR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      IM             at 0 range 1 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      IM_1           at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      IM_2           at 0 range 14 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      IM_3           at 0 range 27 .. 31;
   end record;

   --  EXTI2_C1IMR3_IM array
   type EXTI2_C1IMR3_IM_Field_Array is array (64 .. 70) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI2_C1IMR3_IM
   type EXTI2_C1IMR3_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  IM as an array
            Arr : EXTI2_C1IMR3_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI2_C1IMR3_IM_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI2 CPU1 wakeup with interrupt mask register
   type EXTI2_C1IMR3_Register is record
      --  CPUm wakeup with interrupt mask on event input 64.
      IM             : EXTI2_C1IMR3_IM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_11  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 76. When
      --  EXTI2_SECCFGR3.SEC76 is disabled, IM76 can be accessed with
      --  non-secure and secure access. When EXTI2_SECCFGR3.SEC76 is enabled,
      --  IM76 can only be accessed with secure access. Non-secure write to
      --  this bit is discarded, non-secure read returns 0. When
      --  EXTI2_PRIVCFGR3.PRIV76 is disabled, IM76 can be accessed with
      --  privilege and unprivileged access. When EXTI2_PRIVCFGR3.PRIV76 is
      --  enabled, IM76 can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded and read returns 0. When
      --  CID filtering is disabled in EXTI2_E76CIDCFGR this IM76 can be
      --  accessed by any processor CID. When CID filtering is enabled in
      --  EXTI2_E76CIDCFGR this IM76 can only be accessed by the allowed
      --  processor CID. Dis allowed CID write to this IM76 is discarded and
      --  read returns 0.
      IM76           : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C1IMR3_Register use record
      IM             at 0 range 0 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      IM76           at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  EXTI2_C2IMR1_IM array
   type EXTI2_C2IMR1_IM_Field_Array is array (0 .. 27) of Boolean
     with Component_Size => 1, Size => 28;

   --  Type definition for EXTI2_C2IMR1_IM
   type EXTI2_C2IMR1_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt28;
         when True =>
            --  IM as an array
            Arr : EXTI2_C2IMR1_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 28;

   for EXTI2_C2IMR1_IM_Field use record
      Val at 0 range 0 .. 27;
      Arr at 0 range 0 .. 27;
   end record;

   --  EXTI2_C2IMR1_IM array
   type EXTI2_C2IMR1_IM_Field_Array_1 is array (29 .. 31) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_C2IMR1_IM
   type EXTI2_C2IMR1_IM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  IM as an array
            Arr : EXTI2_C2IMR1_IM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_C2IMR1_IM_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 CPU2 wakeup with interrupt mask register
   type EXTI2_C2IMR1_Register is record
      --  CPUm wakeup with interrupt mask on event input 0.
      IM             : EXTI2_C2IMR1_IM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 29.
      IM_1           : EXTI2_C2IMR1_IM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C2IMR1_Register use record
      IM             at 0 range 0 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      IM_1           at 0 range 29 .. 31;
   end record;

   --  EXTI2_C2EMR1_EM array
   type EXTI2_C2EMR1_EM_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI2_C2EMR1_EM
   type EXTI2_C2EMR1_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  EM as an array
            Arr : EXTI2_C2EMR1_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI2_C2EMR1_EM_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI2 CPU2 wakeup with event mask register
   type EXTI2_C2EMR1_Register is record
      --  CPU(m) wakeup with event generation mask on event input n. (where n =
      --  15 to 0) When EXTI2_SECCFGR1.SECENn is disabled, EMn can be accessed
      --  with non-secure and secure access. When EXTI2_SECCFGR1.SECENn is
      --  enabled, EMn can only be accessed with secure access. Non-secure
      --  write to this bit is discarded, non-secure read returns 0. When
      --  EXTI2_PRIVCFGR1.PRIVn is disabled, EMn can be accessed with privilege
      --  and unprivileged access. When EXTI2_PRIVCFGR1.PRIVn is enabled, EMn
      --  can only be accessed with privilege access. Unprivileged write to
      --  this bit is discarded and read returns 0. When CID filtering is
      --  disabled in EXTI2_EnCIDCFGR this EMn can be accessed by any processor
      --  CID. When CID filtering is enabled in EXTI2_EnCIDCFGR this EMn can
      --  only be accessed by the allowed processor CID. Dis allowed CID write
      --  to this EMn is discarded and read returns 0.
      EM             : EXTI2_C2EMR1_EM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C2EMR1_Register use record
      EM             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTI2_C2IMR2_IM array
   type EXTI2_C2IMR2_IM_Field_Array is array (33 .. 38) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EXTI2_C2IMR2_IM
   type EXTI2_C2IMR2_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  IM as an array
            Arr : EXTI2_C2IMR2_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EXTI2_C2IMR2_IM_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EXTI2_C2IMR2_IM array
   type EXTI2_C2IMR2_IM_Field_Array_1 is array (40 .. 44) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for EXTI2_C2IMR2_IM
   type EXTI2_C2IMR2_IM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  IM as an array
            Arr : EXTI2_C2IMR2_IM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for EXTI2_C2IMR2_IM_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  EXTI2_C2IMR2_IM array
   type EXTI2_C2IMR2_IM_Field_Array_2 is array (46 .. 56) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EXTI2_C2IMR2_IM
   type EXTI2_C2IMR2_IM_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt11;
         when True =>
            --  IM as an array
            Arr : EXTI2_C2IMR2_IM_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EXTI2_C2IMR2_IM_Field_2 use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  EXTI2_C2IMR2_IM array
   type EXTI2_C2IMR2_IM_Field_Array_3 is array (59 .. 63) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for EXTI2_C2IMR2_IM
   type EXTI2_C2IMR2_IM_Field_3
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  IM as an array
            Arr : EXTI2_C2IMR2_IM_Field_Array_3;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for EXTI2_C2IMR2_IM_Field_3 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  EXTI2 CPU2 wakeup with interrupt mask register
   type EXTI2_C2IMR2_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 33.
      IM             : EXTI2_C2IMR2_IM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 40.
      IM_1           : EXTI2_C2IMR2_IM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 46.
      IM_2           : EXTI2_C2IMR2_IM_Field_2 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_25_26 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 59.
      IM_3           : EXTI2_C2IMR2_IM_Field_3 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C2IMR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      IM             at 0 range 1 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      IM_1           at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      IM_2           at 0 range 14 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      IM_3           at 0 range 27 .. 31;
   end record;

   --  EXTI2_C2EMR2_EM array
   type EXTI2_C2EMR2_EM_Field_Array is array (59 .. 61) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_C2EMR2_EM
   type EXTI2_C2EMR2_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  EM as an array
            Arr : EXTI2_C2EMR2_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_C2EMR2_EM_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 CPU2 wakeup with event mask register
   type EXTI2_C2EMR2_Register is record
      --  unspecified
      Reserved_0_26  : Interfaces.Bit_Types.UInt27 := 16#0#;
      --  CPU(m) wakeup with event generation mask on event input 59.
      EM             : EXTI2_C2EMR2_EM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C2EMR2_Register use record
      Reserved_0_26  at 0 range 0 .. 26;
      EM             at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  EXTI2_C2IMR3_IM array
   type EXTI2_C2IMR3_IM_Field_Array is array (64 .. 70) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI2_C2IMR3_IM
   type EXTI2_C2IMR3_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  IM as an array
            Arr : EXTI2_C2IMR3_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI2_C2IMR3_IM_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI2 CPU2 wakeup with interrupt mask register
   type EXTI2_C2IMR3_Register is record
      --  CPUm wakeup with interrupt mask on event input 64.
      IM             : EXTI2_C2IMR3_IM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_11  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 76. When
      --  EXTI2_SECCFGR3.SEC76 is disabled, IM76 can be accessed with
      --  non-secure and secure access. When EXTI2_SECCFGR3.SEC76 is enabled,
      --  IM76 can only be accessed with secure access. Non-secure write to
      --  this bit is discarded, non-secure read returns 0. When
      --  EXTI2_PRIVCFGR3.PRIV76 is disabled, IM76 can be accessed with
      --  privilege and unprivileged access. When EXTI2_PRIVCFGR3.PRIV76 is
      --  enabled, IM76 can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded and read returns 0. When
      --  CID filtering is disabled in EXTI2_E76CIDCFGR this IM76 can be
      --  accessed by any processor CID. When CID filtering is enabled in
      --  EXTI2_E76CIDCFGR this IM76 can only be accessed by the allowed
      --  processor CID. Dis allowed CID write to this IM76 is discarded and
      --  read returns 0.
      IM76           : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C2IMR3_Register use record
      IM             at 0 range 0 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      IM76           at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  EXTI2_C3IMR1_IM array
   type EXTI2_C3IMR1_IM_Field_Array is array (0 .. 27) of Boolean
     with Component_Size => 1, Size => 28;

   --  Type definition for EXTI2_C3IMR1_IM
   type EXTI2_C3IMR1_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt28;
         when True =>
            --  IM as an array
            Arr : EXTI2_C3IMR1_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 28;

   for EXTI2_C3IMR1_IM_Field use record
      Val at 0 range 0 .. 27;
      Arr at 0 range 0 .. 27;
   end record;

   --  EXTI2_C3IMR1_IM array
   type EXTI2_C3IMR1_IM_Field_Array_1 is array (29 .. 31) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_C3IMR1_IM
   type EXTI2_C3IMR1_IM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  IM as an array
            Arr : EXTI2_C3IMR1_IM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_C3IMR1_IM_Field_1 use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 CPU3 wakeup with interrupt mask register
   type EXTI2_C3IMR1_Register is record
      --  CPUm wakeup with interrupt mask on event input 0.
      IM             : EXTI2_C3IMR1_IM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_28 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 29.
      IM_1           : EXTI2_C3IMR1_IM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C3IMR1_Register use record
      IM             at 0 range 0 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      IM_1           at 0 range 29 .. 31;
   end record;

   --  EXTI2_C3EMR1_EM array
   type EXTI2_C3EMR1_EM_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI2_C3EMR1_EM
   type EXTI2_C3EMR1_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  EM as an array
            Arr : EXTI2_C3EMR1_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI2_C3EMR1_EM_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI2 CPU3 wakeup with event mask register
   type EXTI2_C3EMR1_Register is record
      --  CPU(m) wakeup with event generation mask on event input n. (where n =
      --  15 to 0) When EXTI2_SECCFGR1.SECENn is disabled, EMn can be accessed
      --  with non-secure and secure access. When EXTI2_SECCFGR1.SECENn is
      --  enabled, EMn can only be accessed with secure access. Non-secure
      --  write to this bit is discarded, non-secure read returns 0. When
      --  EXTI2_PRIVCFGR1.PRIVn is disabled, EMn can be accessed with privilege
      --  and unprivileged access. When EXTI2_PRIVCFGR1.PRIVn is enabled, EMn
      --  can only be accessed with privilege access. Unprivileged write to
      --  this bit is discarded and read returns 0. When CID filtering is
      --  disabled in EXTI2_EnCIDCFGR this EMn can be accessed by any processor
      --  CID. When CID filtering is enabled in EXTI2_EnCIDCFGR this EMn can
      --  only be accessed by the allowed processor CID. Dis allowed CID write
      --  to this EMn is discarded and read returns 0.
      EM             : EXTI2_C3EMR1_EM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C3EMR1_Register use record
      EM             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTI2_C3IMR2_IM array
   type EXTI2_C3IMR2_IM_Field_Array is array (33 .. 38) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EXTI2_C3IMR2_IM
   type EXTI2_C3IMR2_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  IM as an array
            Arr : EXTI2_C3IMR2_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EXTI2_C3IMR2_IM_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EXTI2_C3IMR2_IM array
   type EXTI2_C3IMR2_IM_Field_Array_1 is array (40 .. 44) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for EXTI2_C3IMR2_IM
   type EXTI2_C3IMR2_IM_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  IM as an array
            Arr : EXTI2_C3IMR2_IM_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for EXTI2_C3IMR2_IM_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  EXTI2_C3IMR2_IM array
   type EXTI2_C3IMR2_IM_Field_Array_2 is array (46 .. 56) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EXTI2_C3IMR2_IM
   type EXTI2_C3IMR2_IM_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt11;
         when True =>
            --  IM as an array
            Arr : EXTI2_C3IMR2_IM_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EXTI2_C3IMR2_IM_Field_2 use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  EXTI2_C3IMR2_IM array
   type EXTI2_C3IMR2_IM_Field_Array_3 is array (59 .. 63) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for EXTI2_C3IMR2_IM
   type EXTI2_C3IMR2_IM_Field_3
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt5;
         when True =>
            --  IM as an array
            Arr : EXTI2_C3IMR2_IM_Field_Array_3;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for EXTI2_C3IMR2_IM_Field_3 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  EXTI2 CPU3 wakeup with interrupt mask register
   type EXTI2_C3IMR2_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 33.
      IM             : EXTI2_C3IMR2_IM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 40.
      IM_1           : EXTI2_C3IMR2_IM_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 46.
      IM_2           : EXTI2_C3IMR2_IM_Field_2 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_25_26 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 59.
      IM_3           : EXTI2_C3IMR2_IM_Field_3 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C3IMR2_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      IM             at 0 range 1 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      IM_1           at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      IM_2           at 0 range 14 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      IM_3           at 0 range 27 .. 31;
   end record;

   --  EXTI2_C3EMR2_EM array
   type EXTI2_C3EMR2_EM_Field_Array is array (59 .. 61) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI2_C3EMR2_EM
   type EXTI2_C3EMR2_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : Interfaces.Bit_Types.UInt3;
         when True =>
            --  EM as an array
            Arr : EXTI2_C3EMR2_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI2_C3EMR2_EM_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI2 CPU3 wakeup with event mask register
   type EXTI2_C3EMR2_Register is record
      --  unspecified
      Reserved_0_26  : Interfaces.Bit_Types.UInt27 := 16#0#;
      --  CPU(m) wakeup with event generation mask on event input 59.
      EM             : EXTI2_C3EMR2_EM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C3EMR2_Register use record
      Reserved_0_26  at 0 range 0 .. 26;
      EM             at 0 range 27 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  EXTI2_C3IMR3_IM array
   type EXTI2_C3IMR3_IM_Field_Array is array (64 .. 70) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for EXTI2_C3IMR3_IM
   type EXTI2_C3IMR3_IM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IM as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  IM as an array
            Arr : EXTI2_C3IMR3_IM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for EXTI2_C3IMR3_IM_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  EXTI2 CPU3 wakeup with interrupt mask register
   type EXTI2_C3IMR3_Register is record
      --  CPUm wakeup with interrupt mask on event input 64.
      IM             : EXTI2_C3IMR3_IM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_11  : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  CPUm wakeup with interrupt mask on event input 76. When
      --  EXTI2_SECCFGR3.SEC76 is disabled, IM76 can be accessed with
      --  non-secure and secure access. When EXTI2_SECCFGR3.SEC76 is enabled,
      --  IM76 can only be accessed with secure access. Non-secure write to
      --  this bit is discarded, non-secure read returns 0. When
      --  EXTI2_PRIVCFGR3.PRIV76 is disabled, IM76 can be accessed with
      --  privilege and unprivileged access. When EXTI2_PRIVCFGR3.PRIV76 is
      --  enabled, IM76 can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded and read returns 0. When
      --  CID filtering is disabled in EXTI2_E76CIDCFGR this IM76 can be
      --  accessed by any processor CID. When CID filtering is enabled in
      --  EXTI2_E76CIDCFGR this IM76 can only be accessed by the allowed
      --  processor CID. Dis allowed CID write to this IM76 is discarded and
      --  read returns 0.
      IM76           : Boolean := False;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C3IMR3_Register use record
      IM             at 0 range 0 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      IM76           at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype EXTI2_E0CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E0CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E0CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E0CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E1CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E1CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E1CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E1CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E2CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E2CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E2CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E2CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E3CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E3CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E3CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E3CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E4CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E4CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E4CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E4CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E5CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E5CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E5CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E5CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E6CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E6CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E6CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E6CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E7CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E7CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E7CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E7CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E8CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E8CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E8CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E8CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E9CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E9CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E9CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E9CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E10CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E10CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E10CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E10CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E11CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E11CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E11CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E11CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E12CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E12CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E12CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E12CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E13CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E13CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E13CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E13CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E14CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E14CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E14CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E14CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E15CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E15CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E15CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E15CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E16CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E16CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E16CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E16CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E17CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E17CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E17CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E17CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E18CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E18CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E18CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E18CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E19CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E19CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E19CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E19CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E20CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E20CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E20CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E20CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E21CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E21CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E21CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E21CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E22CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E22CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E22CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E22CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E23CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E23CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E23CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E23CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E24CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E24CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E24CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E24CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E25CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E25CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E25CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E25CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E26CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E26CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E26CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E26CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E27CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E27CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E27CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E27CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E28CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E28CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E28CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E28CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E29CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E29CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E29CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E29CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E30CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E30CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E30CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E30CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E31CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E31CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E31CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E31CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E32CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E32CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E32CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E32CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E33CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E33CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E33CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E33CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E34CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E34CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E34CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E34CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E35CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E35CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E35CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E35CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E36CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E36CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E36CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E36CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E37CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E37CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E37CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E37CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E38CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E38CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E38CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E38CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E39CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E39CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E39CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E39CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E40CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E40CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E40CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E40CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E41CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E41CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E41CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E41CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E42CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E42CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E42CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E42CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E43CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E43CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E43CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E43CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E44CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E44CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E44CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E44CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E45CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E45CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E45CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E45CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E46CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E46CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E46CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E46CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E47CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E47CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E47CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E47CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E48CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E48CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E48CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E48CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E49CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E49CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E49CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E49CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E50CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E50CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E50CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E50CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E51CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E51CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E51CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E51CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E52CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E52CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E52CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E52CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E53CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E53CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E53CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E53CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E54CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E54CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E54CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E54CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E55CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E55CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E55CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E55CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E56CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E56CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E56CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E56CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E57CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E57CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E57CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E57CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E58CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E58CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E58CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E58CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E59CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E59CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E59CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E59CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E60CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E60CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E60CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E60CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E61CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E61CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E61CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E61CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E62CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E62CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E62CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E62CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E63CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E63CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E63CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E63CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E64CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E64CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E64CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E64CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E65CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E65CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E65CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E65CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E66CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E66CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E66CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E66CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E67CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E67CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E67CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E67CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E68CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E68CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E68CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E68CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E69CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E69CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E69CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E69CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E70CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E70CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E70CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E70CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E71CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E71CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E71CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E71CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E72CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E72CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E72CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E72CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E73CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E73CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E73CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E73CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E74CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E74CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E74CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E74CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E75CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E75CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E75CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E75CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_E76CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 event CID Config register
   type EXTI2_E76CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  EXTI event n allowed CID value. If CID filtering is disabled in CFEN,
      --  these bits are ignored, else: EXITI event n allowed processor CID
      --  number.
      CID           : EXTI2_E76CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_E76CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_C1CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 processor 1 CID configuration register
   type EXTI2_C1CIDCFGR_Register is record
      --  CID filtering enabled for CPUm EXTI2_CmIMRn and EXTI2_CmEMRn
      --  registers
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CPUm CID domain identification If CFEN = 0 these bits are ignored and
      --  there is no CPUm CID filtering. Else: CPUm CID domain identification
      --  number
      CID           : EXTI2_C1CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C1CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_C2CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 processor 2 CID configuration register
   type EXTI2_C2CIDCFGR_Register is record
      --  CID filtering enabled for CPUm EXTI2_CmIMRn and EXTI2_CmEMRn
      --  registers
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CPUm CID domain identification If CFEN = 0 these bits are ignored and
      --  there is no CPUm CID filtering. Else: CPUm CID domain identification
      --  number
      CID           : EXTI2_C2CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C2CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_C3CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  EXTI2 processor 3 CID configuration register
   type EXTI2_C3CIDCFGR_Register is record
      --  CID filtering enabled for CPUm EXTI2_CmIMRn and EXTI2_CmEMRn
      --  registers
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  CPUm CID domain identification If CFEN = 0 these bits are ignored and
      --  there is no CPUm CID filtering. Else: CPUm CID domain identification
      --  number
      CID           : EXTI2_C3CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_C3CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI2_HWCFGR1_NBEVENTS_Field is Interfaces.Bit_Types.Byte;
   subtype EXTI2_HWCFGR1_NBCPUS_Field is Interfaces.Bit_Types.UInt4;
   subtype EXTI2_HWCFGR1_CPUEVTEN_Field is Interfaces.Bit_Types.UInt4;
   subtype EXTI2_HWCFGR1_NBIOPORT_Field is Interfaces.Bit_Types.Byte;
   subtype EXTI2_HWCFGR1_CIDWIDTH_Field is Interfaces.Bit_Types.UInt4;

   type EXTI2_HWCFGR1_Register is record
      --  Read-only. HW configuration number of event (n+1)
      NBEVENTS       : EXTI2_HWCFGR1_NBEVENTS_Field;
      --  Read-only. HW configuration number of CPUs (n+1)
      NBCPUS         : EXTI2_HWCFGR1_NBCPUS_Field;
      --  Read-only. HW configuration of CPU(m) event output enable.
      CPUEVTEN       : EXTI2_HWCFGR1_CPUEVTEN_Field;
      --  Read-only. HW configuration of number of IO ports on EXTI. (n+1)
      NBIOPORT       : EXTI2_HWCFGR1_NBIOPORT_Field;
      --  Read-only. CID parameters bit width
      CIDWIDTH       : EXTI2_HWCFGR1_CIDWIDTH_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_HWCFGR1_Register use record
      NBEVENTS       at 0 range 0 .. 7;
      NBCPUS         at 0 range 8 .. 11;
      CPUEVTEN       at 0 range 12 .. 15;
      NBIOPORT       at 0 range 16 .. 23;
      CIDWIDTH       at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype EXTI2_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype EXTI2_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   type EXTI2_VERR_Register is record
      --  Read-only. Minor Revision number
      MINREV        : EXTI2_VERR_MINREV_Field;
      --  Read-only. Major Revision number
      MAJREV        : EXTI2_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI2_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  EXTI2 address block description
   type EXTI_Peripheral is record
      --  EXTI2 rising trigger selection register
      EXTI2_RTSR1      : aliased EXTI2_RTSR1_Register;
      --  EXTI2 falling trigger selection register
      EXTI2_FTSR1      : aliased EXTI2_FTSR1_Register;
      --  EXTI2 software interrupt event register
      EXTI2_SWIER1     : aliased EXTI2_SWIER1_Register;
      --  EXTI2 rising edge pending register
      EXTI2_RPR1       : aliased EXTI2_RPR1_Register;
      --  EXTI2 falling edge pending register
      EXTI2_FPR1       : aliased EXTI2_FPR1_Register;
      --  EXTI2 security configuration register
      EXTI2_SECCFGR1   : aliased EXTI2_SECCFGR1_Register;
      --  EXTI2 Privilege configuration register
      EXTI2_PRIVCFGR1  : aliased EXTI2_PRIVCFGR1_Register;
      --  EXTI2 rising trigger selection register
      EXTI2_RTSR2      : aliased EXTI2_RTSR2_Register;
      --  EXTI2 falling trigger selection register
      EXTI2_FTSR2      : aliased EXTI2_FTSR2_Register;
      --  EXTI2 software interrupt event register
      EXTI2_SWIER2     : aliased EXTI2_SWIER2_Register;
      --  EXTI2 rising edge pending register
      EXTI2_RPR2       : aliased EXTI2_RPR2_Register;
      --  EXTI2 falling edge pending register
      EXTI2_FPR2       : aliased EXTI2_FPR2_Register;
      --  EXTI2 security enable register
      EXTI2_SECCFGR2   : aliased EXTI2_SECCFGR2_Register;
      --  EXTI2 Privilege enable register
      EXTI2_PRIVCFGR2  : aliased EXTI2_PRIVCFGR2_Register;
      --  EXTI2 rising trigger selection register
      EXTI2_RTSR3      : aliased EXTI2_RTSR3_Register;
      --  EXTI2 falling trigger selection register
      EXTI2_FTSR3      : aliased EXTI2_FTSR3_Register;
      --  EXTI2 software interrupt event register
      EXTI2_SWIER3     : aliased EXTI2_SWIER3_Register;
      --  EXTI2 rising edge pending register
      EXTI2_RPR3       : aliased EXTI2_RPR3_Register;
      --  EXTI2 falling edge pending register
      EXTI2_FPR3       : aliased EXTI2_FPR3_Register;
      --  EXTI2 security enable register
      EXTI2_SECCFGR3   : aliased EXTI2_SECCFGR3_Register;
      --  EXTI2 Privilege enable register
      EXTI2_PRIVCFGR3  : aliased EXTI2_PRIVCFGR3_Register;
      EXTI2_EXTICR1    : aliased EXTI2_EXTICR1_Register;
      EXTI2_EXTICR2    : aliased EXTI2_EXTICR2_Register;
      EXTI2_EXTICR3    : aliased EXTI2_EXTICR3_Register;
      EXTI2_EXTICR4    : aliased EXTI2_EXTICR4_Register;
      --  EXTI2 lock register
      EXTI2_LOCKR      : aliased EXTI2_LOCKR_Register;
      --  EXTI2 CPU1 wakeup with interrupt mask register
      EXTI2_C1IMR1     : aliased EXTI2_C1IMR1_Register;
      --  EXTI2 CPU1 wakeup with interrupt mask register
      EXTI2_C1IMR2     : aliased EXTI2_C1IMR2_Register;
      --  EXTI2 CPU1 wakeup with interrupt mask register
      EXTI2_C1IMR3     : aliased EXTI2_C1IMR3_Register;
      --  EXTI2 CPU2 wakeup with interrupt mask register
      EXTI2_C2IMR1     : aliased EXTI2_C2IMR1_Register;
      --  EXTI2 CPU2 wakeup with event mask register
      EXTI2_C2EMR1     : aliased EXTI2_C2EMR1_Register;
      --  EXTI2 CPU2 wakeup with interrupt mask register
      EXTI2_C2IMR2     : aliased EXTI2_C2IMR2_Register;
      --  EXTI2 CPU2 wakeup with event mask register
      EXTI2_C2EMR2     : aliased EXTI2_C2EMR2_Register;
      --  EXTI2 CPU2 wakeup with interrupt mask register
      EXTI2_C2IMR3     : aliased EXTI2_C2IMR3_Register;
      --  EXTI2 CPU3 wakeup with interrupt mask register
      EXTI2_C3IMR1     : aliased EXTI2_C3IMR1_Register;
      --  EXTI2 CPU3 wakeup with event mask register
      EXTI2_C3EMR1     : aliased EXTI2_C3EMR1_Register;
      --  EXTI2 CPU3 wakeup with interrupt mask register
      EXTI2_C3IMR2     : aliased EXTI2_C3IMR2_Register;
      --  EXTI2 CPU3 wakeup with event mask register
      EXTI2_C3EMR2     : aliased EXTI2_C3EMR2_Register;
      --  EXTI2 CPU3 wakeup with interrupt mask register
      EXTI2_C3IMR3     : aliased EXTI2_C3IMR3_Register;
      --  EXTI2 event CID Config register
      EXTI2_E0CIDCFGR  : aliased EXTI2_E0CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E1CIDCFGR  : aliased EXTI2_E1CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E2CIDCFGR  : aliased EXTI2_E2CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E3CIDCFGR  : aliased EXTI2_E3CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E4CIDCFGR  : aliased EXTI2_E4CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E5CIDCFGR  : aliased EXTI2_E5CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E6CIDCFGR  : aliased EXTI2_E6CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E7CIDCFGR  : aliased EXTI2_E7CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E8CIDCFGR  : aliased EXTI2_E8CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E9CIDCFGR  : aliased EXTI2_E9CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E10CIDCFGR : aliased EXTI2_E10CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E11CIDCFGR : aliased EXTI2_E11CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E12CIDCFGR : aliased EXTI2_E12CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E13CIDCFGR : aliased EXTI2_E13CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E14CIDCFGR : aliased EXTI2_E14CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E15CIDCFGR : aliased EXTI2_E15CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E16CIDCFGR : aliased EXTI2_E16CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E17CIDCFGR : aliased EXTI2_E17CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E18CIDCFGR : aliased EXTI2_E18CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E19CIDCFGR : aliased EXTI2_E19CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E20CIDCFGR : aliased EXTI2_E20CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E21CIDCFGR : aliased EXTI2_E21CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E22CIDCFGR : aliased EXTI2_E22CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E23CIDCFGR : aliased EXTI2_E23CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E24CIDCFGR : aliased EXTI2_E24CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E25CIDCFGR : aliased EXTI2_E25CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E26CIDCFGR : aliased EXTI2_E26CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E27CIDCFGR : aliased EXTI2_E27CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E28CIDCFGR : aliased EXTI2_E28CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E29CIDCFGR : aliased EXTI2_E29CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E30CIDCFGR : aliased EXTI2_E30CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E31CIDCFGR : aliased EXTI2_E31CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E32CIDCFGR : aliased EXTI2_E32CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E33CIDCFGR : aliased EXTI2_E33CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E34CIDCFGR : aliased EXTI2_E34CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E35CIDCFGR : aliased EXTI2_E35CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E36CIDCFGR : aliased EXTI2_E36CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E37CIDCFGR : aliased EXTI2_E37CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E38CIDCFGR : aliased EXTI2_E38CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E39CIDCFGR : aliased EXTI2_E39CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E40CIDCFGR : aliased EXTI2_E40CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E41CIDCFGR : aliased EXTI2_E41CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E42CIDCFGR : aliased EXTI2_E42CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E43CIDCFGR : aliased EXTI2_E43CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E44CIDCFGR : aliased EXTI2_E44CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E45CIDCFGR : aliased EXTI2_E45CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E46CIDCFGR : aliased EXTI2_E46CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E47CIDCFGR : aliased EXTI2_E47CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E48CIDCFGR : aliased EXTI2_E48CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E49CIDCFGR : aliased EXTI2_E49CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E50CIDCFGR : aliased EXTI2_E50CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E51CIDCFGR : aliased EXTI2_E51CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E52CIDCFGR : aliased EXTI2_E52CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E53CIDCFGR : aliased EXTI2_E53CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E54CIDCFGR : aliased EXTI2_E54CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E55CIDCFGR : aliased EXTI2_E55CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E56CIDCFGR : aliased EXTI2_E56CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E57CIDCFGR : aliased EXTI2_E57CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E58CIDCFGR : aliased EXTI2_E58CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E59CIDCFGR : aliased EXTI2_E59CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E60CIDCFGR : aliased EXTI2_E60CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E61CIDCFGR : aliased EXTI2_E61CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E62CIDCFGR : aliased EXTI2_E62CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E63CIDCFGR : aliased EXTI2_E63CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E64CIDCFGR : aliased EXTI2_E64CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E65CIDCFGR : aliased EXTI2_E65CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E66CIDCFGR : aliased EXTI2_E66CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E67CIDCFGR : aliased EXTI2_E67CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E68CIDCFGR : aliased EXTI2_E68CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E69CIDCFGR : aliased EXTI2_E69CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E70CIDCFGR : aliased EXTI2_E70CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E71CIDCFGR : aliased EXTI2_E71CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E72CIDCFGR : aliased EXTI2_E72CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E73CIDCFGR : aliased EXTI2_E73CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E74CIDCFGR : aliased EXTI2_E74CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E75CIDCFGR : aliased EXTI2_E75CIDCFGR_Register;
      --  EXTI2 event CID Config register
      EXTI2_E76CIDCFGR : aliased EXTI2_E76CIDCFGR_Register;
      --  EXTI2 processor 1 CID configuration register
      EXTI2_C1CIDCFGR  : aliased EXTI2_C1CIDCFGR_Register;
      --  EXTI2 processor 2 CID configuration register
      EXTI2_C2CIDCFGR  : aliased EXTI2_C2CIDCFGR_Register;
      --  EXTI2 processor 3 CID configuration register
      EXTI2_C3CIDCFGR  : aliased EXTI2_C3CIDCFGR_Register;
      EXTI2_HWCFGR13   : aliased Interfaces.Bit_Types.UInt32;
      EXTI2_HWCFGR12   : aliased Interfaces.Bit_Types.UInt32;
      EXTI2_HWCFGR11   : aliased Interfaces.Bit_Types.UInt32;
      EXTI2_HWCFGR7    : aliased Interfaces.Bit_Types.UInt32;
      EXTI2_HWCFGR6    : aliased Interfaces.Bit_Types.UInt32;
      EXTI2_HWCFGR5    : aliased Interfaces.Bit_Types.UInt32;
      EXTI2_HWCFGR4    : aliased Interfaces.Bit_Types.UInt32;
      EXTI2_HWCFGR3    : aliased Interfaces.Bit_Types.UInt32;
      EXTI2_HWCFGR2    : aliased Interfaces.Bit_Types.UInt32;
      EXTI2_HWCFGR1    : aliased EXTI2_HWCFGR1_Register;
      EXTI2_VERR       : aliased EXTI2_VERR_Register;
      EXTI2_IPIDR      : aliased Interfaces.Bit_Types.UInt32;
      EXTI2_SIDR       : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for EXTI_Peripheral use record
      EXTI2_RTSR1      at 16#0# range 0 .. 31;
      EXTI2_FTSR1      at 16#4# range 0 .. 31;
      EXTI2_SWIER1     at 16#8# range 0 .. 31;
      EXTI2_RPR1       at 16#C# range 0 .. 31;
      EXTI2_FPR1       at 16#10# range 0 .. 31;
      EXTI2_SECCFGR1   at 16#14# range 0 .. 31;
      EXTI2_PRIVCFGR1  at 16#18# range 0 .. 31;
      EXTI2_RTSR2      at 16#20# range 0 .. 31;
      EXTI2_FTSR2      at 16#24# range 0 .. 31;
      EXTI2_SWIER2     at 16#28# range 0 .. 31;
      EXTI2_RPR2       at 16#2C# range 0 .. 31;
      EXTI2_FPR2       at 16#30# range 0 .. 31;
      EXTI2_SECCFGR2   at 16#34# range 0 .. 31;
      EXTI2_PRIVCFGR2  at 16#38# range 0 .. 31;
      EXTI2_RTSR3      at 16#40# range 0 .. 31;
      EXTI2_FTSR3      at 16#44# range 0 .. 31;
      EXTI2_SWIER3     at 16#48# range 0 .. 31;
      EXTI2_RPR3       at 16#4C# range 0 .. 31;
      EXTI2_FPR3       at 16#50# range 0 .. 31;
      EXTI2_SECCFGR3   at 16#54# range 0 .. 31;
      EXTI2_PRIVCFGR3  at 16#58# range 0 .. 31;
      EXTI2_EXTICR1    at 16#60# range 0 .. 31;
      EXTI2_EXTICR2    at 16#64# range 0 .. 31;
      EXTI2_EXTICR3    at 16#68# range 0 .. 31;
      EXTI2_EXTICR4    at 16#6C# range 0 .. 31;
      EXTI2_LOCKR      at 16#70# range 0 .. 31;
      EXTI2_C1IMR1     at 16#80# range 0 .. 31;
      EXTI2_C1IMR2     at 16#90# range 0 .. 31;
      EXTI2_C1IMR3     at 16#A0# range 0 .. 31;
      EXTI2_C2IMR1     at 16#C0# range 0 .. 31;
      EXTI2_C2EMR1     at 16#C4# range 0 .. 31;
      EXTI2_C2IMR2     at 16#D0# range 0 .. 31;
      EXTI2_C2EMR2     at 16#D4# range 0 .. 31;
      EXTI2_C2IMR3     at 16#E0# range 0 .. 31;
      EXTI2_C3IMR1     at 16#100# range 0 .. 31;
      EXTI2_C3EMR1     at 16#104# range 0 .. 31;
      EXTI2_C3IMR2     at 16#110# range 0 .. 31;
      EXTI2_C3EMR2     at 16#114# range 0 .. 31;
      EXTI2_C3IMR3     at 16#120# range 0 .. 31;
      EXTI2_E0CIDCFGR  at 16#180# range 0 .. 31;
      EXTI2_E1CIDCFGR  at 16#184# range 0 .. 31;
      EXTI2_E2CIDCFGR  at 16#188# range 0 .. 31;
      EXTI2_E3CIDCFGR  at 16#18C# range 0 .. 31;
      EXTI2_E4CIDCFGR  at 16#190# range 0 .. 31;
      EXTI2_E5CIDCFGR  at 16#194# range 0 .. 31;
      EXTI2_E6CIDCFGR  at 16#198# range 0 .. 31;
      EXTI2_E7CIDCFGR  at 16#19C# range 0 .. 31;
      EXTI2_E8CIDCFGR  at 16#1A0# range 0 .. 31;
      EXTI2_E9CIDCFGR  at 16#1A4# range 0 .. 31;
      EXTI2_E10CIDCFGR at 16#1A8# range 0 .. 31;
      EXTI2_E11CIDCFGR at 16#1AC# range 0 .. 31;
      EXTI2_E12CIDCFGR at 16#1B0# range 0 .. 31;
      EXTI2_E13CIDCFGR at 16#1B4# range 0 .. 31;
      EXTI2_E14CIDCFGR at 16#1B8# range 0 .. 31;
      EXTI2_E15CIDCFGR at 16#1BC# range 0 .. 31;
      EXTI2_E16CIDCFGR at 16#1C0# range 0 .. 31;
      EXTI2_E17CIDCFGR at 16#1C4# range 0 .. 31;
      EXTI2_E18CIDCFGR at 16#1C8# range 0 .. 31;
      EXTI2_E19CIDCFGR at 16#1CC# range 0 .. 31;
      EXTI2_E20CIDCFGR at 16#1D0# range 0 .. 31;
      EXTI2_E21CIDCFGR at 16#1D4# range 0 .. 31;
      EXTI2_E22CIDCFGR at 16#1D8# range 0 .. 31;
      EXTI2_E23CIDCFGR at 16#1DC# range 0 .. 31;
      EXTI2_E24CIDCFGR at 16#1E0# range 0 .. 31;
      EXTI2_E25CIDCFGR at 16#1E4# range 0 .. 31;
      EXTI2_E26CIDCFGR at 16#1E8# range 0 .. 31;
      EXTI2_E27CIDCFGR at 16#1EC# range 0 .. 31;
      EXTI2_E28CIDCFGR at 16#1F0# range 0 .. 31;
      EXTI2_E29CIDCFGR at 16#1F4# range 0 .. 31;
      EXTI2_E30CIDCFGR at 16#1F8# range 0 .. 31;
      EXTI2_E31CIDCFGR at 16#1FC# range 0 .. 31;
      EXTI2_E32CIDCFGR at 16#200# range 0 .. 31;
      EXTI2_E33CIDCFGR at 16#204# range 0 .. 31;
      EXTI2_E34CIDCFGR at 16#208# range 0 .. 31;
      EXTI2_E35CIDCFGR at 16#20C# range 0 .. 31;
      EXTI2_E36CIDCFGR at 16#210# range 0 .. 31;
      EXTI2_E37CIDCFGR at 16#214# range 0 .. 31;
      EXTI2_E38CIDCFGR at 16#218# range 0 .. 31;
      EXTI2_E39CIDCFGR at 16#21C# range 0 .. 31;
      EXTI2_E40CIDCFGR at 16#220# range 0 .. 31;
      EXTI2_E41CIDCFGR at 16#224# range 0 .. 31;
      EXTI2_E42CIDCFGR at 16#228# range 0 .. 31;
      EXTI2_E43CIDCFGR at 16#22C# range 0 .. 31;
      EXTI2_E44CIDCFGR at 16#230# range 0 .. 31;
      EXTI2_E45CIDCFGR at 16#234# range 0 .. 31;
      EXTI2_E46CIDCFGR at 16#238# range 0 .. 31;
      EXTI2_E47CIDCFGR at 16#23C# range 0 .. 31;
      EXTI2_E48CIDCFGR at 16#240# range 0 .. 31;
      EXTI2_E49CIDCFGR at 16#244# range 0 .. 31;
      EXTI2_E50CIDCFGR at 16#248# range 0 .. 31;
      EXTI2_E51CIDCFGR at 16#24C# range 0 .. 31;
      EXTI2_E52CIDCFGR at 16#250# range 0 .. 31;
      EXTI2_E53CIDCFGR at 16#254# range 0 .. 31;
      EXTI2_E54CIDCFGR at 16#258# range 0 .. 31;
      EXTI2_E55CIDCFGR at 16#25C# range 0 .. 31;
      EXTI2_E56CIDCFGR at 16#260# range 0 .. 31;
      EXTI2_E57CIDCFGR at 16#264# range 0 .. 31;
      EXTI2_E58CIDCFGR at 16#268# range 0 .. 31;
      EXTI2_E59CIDCFGR at 16#26C# range 0 .. 31;
      EXTI2_E60CIDCFGR at 16#270# range 0 .. 31;
      EXTI2_E61CIDCFGR at 16#274# range 0 .. 31;
      EXTI2_E62CIDCFGR at 16#278# range 0 .. 31;
      EXTI2_E63CIDCFGR at 16#27C# range 0 .. 31;
      EXTI2_E64CIDCFGR at 16#280# range 0 .. 31;
      EXTI2_E65CIDCFGR at 16#284# range 0 .. 31;
      EXTI2_E66CIDCFGR at 16#288# range 0 .. 31;
      EXTI2_E67CIDCFGR at 16#28C# range 0 .. 31;
      EXTI2_E68CIDCFGR at 16#290# range 0 .. 31;
      EXTI2_E69CIDCFGR at 16#294# range 0 .. 31;
      EXTI2_E70CIDCFGR at 16#298# range 0 .. 31;
      EXTI2_E71CIDCFGR at 16#29C# range 0 .. 31;
      EXTI2_E72CIDCFGR at 16#2A0# range 0 .. 31;
      EXTI2_E73CIDCFGR at 16#2A4# range 0 .. 31;
      EXTI2_E74CIDCFGR at 16#2A8# range 0 .. 31;
      EXTI2_E75CIDCFGR at 16#2AC# range 0 .. 31;
      EXTI2_E76CIDCFGR at 16#2B0# range 0 .. 31;
      EXTI2_C1CIDCFGR  at 16#300# range 0 .. 31;
      EXTI2_C2CIDCFGR  at 16#304# range 0 .. 31;
      EXTI2_C3CIDCFGR  at 16#308# range 0 .. 31;
      EXTI2_HWCFGR13   at 16#3C0# range 0 .. 31;
      EXTI2_HWCFGR12   at 16#3C4# range 0 .. 31;
      EXTI2_HWCFGR11   at 16#3C8# range 0 .. 31;
      EXTI2_HWCFGR7    at 16#3D8# range 0 .. 31;
      EXTI2_HWCFGR6    at 16#3DC# range 0 .. 31;
      EXTI2_HWCFGR5    at 16#3E0# range 0 .. 31;
      EXTI2_HWCFGR4    at 16#3E4# range 0 .. 31;
      EXTI2_HWCFGR3    at 16#3E8# range 0 .. 31;
      EXTI2_HWCFGR2    at 16#3EC# range 0 .. 31;
      EXTI2_HWCFGR1    at 16#3F0# range 0 .. 31;
      EXTI2_VERR       at 16#3F4# range 0 .. 31;
      EXTI2_IPIDR      at 16#3F8# range 0 .. 31;
      EXTI2_SIDR       at 16#3FC# range 0 .. 31;
   end record;

   --  EXTI2 address block description
   EXTI2_Periph : aliased EXTI_Peripheral
     with Import, Address => EXTI2_Base;

   --  EXTI2 address block description
   EXTI2_S_Periph : aliased EXTI_Peripheral
     with Import, Address => EXTI2_S_Base;

end Interfaces.STM32.EXTI;
