--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.CA35SS is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  CA35SS SSC CHGCLKREQ register
   type CA35SS_SSC_CHGCLKREQ_Register is record
      --  Selects clock source.
      ARM_CHGCLKREQ  : Boolean := True;
      --  Read-only. Indicates clock source.
      ARM_CHGCLKACK  : Boolean := True;
      --  unspecified
      Reserved_2_15  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Selects divider by 2 for ck_cpu1_ext2f clock.
      ARM_DIVSEL     : Boolean := True;
      --  Read-only. Defines if ck_cpu_ext2f clock is divided by 2 or not.
      ARM_DIVSELACK  : Boolean := True;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_CHGCLKREQ_Register use record
      ARM_CHGCLKREQ  at 0 range 0 .. 0;
      ARM_CHGCLKACK  at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      ARM_DIVSEL     at 0 range 16 .. 16;
      ARM_DIVSELACK  at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype CA35SS_SSC_BRM_BRM_RATE_Field is Interfaces.Bit_Types.UInt6;
   subtype CA35SS_SSC_BRM_BRM_IDLEDIV_Field is Interfaces.Bit_Types.UInt2;

   --  CA35SS SSC BRM register
   type CA35SS_SSC_BRM_Register is record
      --  BRM_RATE operation
      BRM_RATEVAL    : Boolean := False;
      --  Read-only. BRM_RATE status
      BRM_RATEACK    : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  BRM rate in normal or idle mode when BRM_IDLEDIVEN = 0 1XXXXX: CPU
      --  clock = BRM input clock (default reset value) 0YYYYY: CPU clock = BRM
      --  input clock * (YYYYY / 32). YYYYY = 00000 is forbidden.
      BRM_RATE       : CA35SS_SSC_BRM_BRM_RATE_Field := 16#20#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Defines BRM_RATE behaviour in idle mode.
      BRM_IDLEDIVEN  : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  BRM rate when idle mode is entered Must not be modified when
      --  BRM_IDLEDIVEN = 1.
      BRM_IDLEDIV    : CA35SS_SSC_BRM_BRM_IDLEDIV_Field := 16#3#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_BRM_Register use record
      BRM_RATEVAL    at 0 range 0 .. 0;
      BRM_RATEACK    at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      BRM_RATE       at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      BRM_IDLEDIVEN  at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      BRM_IDLEDIV    at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype CA35SS_SSC_PLL_FREQ1_0_FBDIV_Field is Interfaces.Bit_Types.UInt12;
   subtype CA35SS_SSC_PLL_FREQ1_0_FREFDIV_Field is Interfaces.Bit_Types.UInt6;

   --  CA35SS SSC PLL FREQ1 register
   type CA35SS_SSC_PLL_FREQ1_0_Register is record
      --  Feedback divide value
      FBDIV          : CA35SS_SSC_PLL_FREQ1_0_FBDIV_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Reference divide value
      FREFDIV        : CA35SS_SSC_PLL_FREQ1_0_FREFDIV_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_PLL_FREQ1_0_Register use record
      FBDIV          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FREFDIV        at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CA35SS_SSC_PLL_FREQ1_1_FBDIV_Field is Interfaces.Bit_Types.UInt12;
   subtype CA35SS_SSC_PLL_FREQ1_1_FREFDIV_Field is Interfaces.Bit_Types.UInt6;

   --  CA35SS SSC PLL FREQ1 register
   type CA35SS_SSC_PLL_FREQ1_1_Register is record
      --  Feedback divide value
      FBDIV          : CA35SS_SSC_PLL_FREQ1_1_FBDIV_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Reference divide value
      FREFDIV        : CA35SS_SSC_PLL_FREQ1_1_FREFDIV_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_PLL_FREQ1_1_Register use record
      FBDIV          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FREFDIV        at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CA35SS_SSC_PLL_FREQ1_2_FBDIV_Field is Interfaces.Bit_Types.UInt12;
   subtype CA35SS_SSC_PLL_FREQ1_2_FREFDIV_Field is Interfaces.Bit_Types.UInt6;

   --  CA35SS SSC PLL FREQ1 register
   type CA35SS_SSC_PLL_FREQ1_2_Register is record
      --  Feedback divide value
      FBDIV          : CA35SS_SSC_PLL_FREQ1_2_FBDIV_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Reference divide value
      FREFDIV        : CA35SS_SSC_PLL_FREQ1_2_FREFDIV_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_PLL_FREQ1_2_Register use record
      FBDIV          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FREFDIV        at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CA35SS_SSC_PLL_FREQ1_3_FBDIV_Field is Interfaces.Bit_Types.UInt12;
   subtype CA35SS_SSC_PLL_FREQ1_3_FREFDIV_Field is Interfaces.Bit_Types.UInt6;

   --  CA35SS SSC PLL FREQ1 register
   type CA35SS_SSC_PLL_FREQ1_3_Register is record
      --  Feedback divide value
      FBDIV          : CA35SS_SSC_PLL_FREQ1_3_FBDIV_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Reference divide value
      FREFDIV        : CA35SS_SSC_PLL_FREQ1_3_FREFDIV_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_PLL_FREQ1_3_Register use record
      FBDIV          at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FREFDIV        at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  CA35SS_SSC_PLL_FREQ2_0_POSTDIV array element
   subtype CA35SS_SSC_PLL_FREQ2_0_POSTDIV_Element is
     Interfaces.Bit_Types.UInt3;

   --  CA35SS_SSC_PLL_FREQ2_0_POSTDIV array
   type CA35SS_SSC_PLL_FREQ2_0_POSTDIV_Field_Array is array (1 .. 2)
     of CA35SS_SSC_PLL_FREQ2_0_POSTDIV_Element
     with Component_Size => 3, Size => 6;

   --  Type definition for CA35SS_SSC_PLL_FREQ2_0_POSTDIV
   type CA35SS_SSC_PLL_FREQ2_0_POSTDIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  POSTDIV as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  POSTDIV as an array
            Arr : CA35SS_SSC_PLL_FREQ2_0_POSTDIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CA35SS_SSC_PLL_FREQ2_0_POSTDIV_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  CA35SS SSC PLL FREQ2 register
   type CA35SS_SSC_PLL_FREQ2_0_Register is record
      --  PLL post divide 1 setting (1 to 7) POSTDIV1 = 0 is unused.
      POSTDIV       : CA35SS_SSC_PLL_FREQ2_0_POSTDIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_PLL_FREQ2_0_Register use record
      POSTDIV       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  CA35SS_SSC_PLL_FREQ2_1_POSTDIV array element
   subtype CA35SS_SSC_PLL_FREQ2_1_POSTDIV_Element is
     Interfaces.Bit_Types.UInt3;

   --  CA35SS_SSC_PLL_FREQ2_1_POSTDIV array
   type CA35SS_SSC_PLL_FREQ2_1_POSTDIV_Field_Array is array (1 .. 2)
     of CA35SS_SSC_PLL_FREQ2_1_POSTDIV_Element
     with Component_Size => 3, Size => 6;

   --  Type definition for CA35SS_SSC_PLL_FREQ2_1_POSTDIV
   type CA35SS_SSC_PLL_FREQ2_1_POSTDIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  POSTDIV as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  POSTDIV as an array
            Arr : CA35SS_SSC_PLL_FREQ2_1_POSTDIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CA35SS_SSC_PLL_FREQ2_1_POSTDIV_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  CA35SS SSC PLL FREQ2 register
   type CA35SS_SSC_PLL_FREQ2_1_Register is record
      --  PLL post divide 1 setting (1 to 7) POSTDIV1 = 0 is unused.
      POSTDIV       : CA35SS_SSC_PLL_FREQ2_1_POSTDIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_PLL_FREQ2_1_Register use record
      POSTDIV       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  CA35SS_SSC_PLL_FREQ2_2_POSTDIV array element
   subtype CA35SS_SSC_PLL_FREQ2_2_POSTDIV_Element is
     Interfaces.Bit_Types.UInt3;

   --  CA35SS_SSC_PLL_FREQ2_2_POSTDIV array
   type CA35SS_SSC_PLL_FREQ2_2_POSTDIV_Field_Array is array (1 .. 2)
     of CA35SS_SSC_PLL_FREQ2_2_POSTDIV_Element
     with Component_Size => 3, Size => 6;

   --  Type definition for CA35SS_SSC_PLL_FREQ2_2_POSTDIV
   type CA35SS_SSC_PLL_FREQ2_2_POSTDIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  POSTDIV as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  POSTDIV as an array
            Arr : CA35SS_SSC_PLL_FREQ2_2_POSTDIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CA35SS_SSC_PLL_FREQ2_2_POSTDIV_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  CA35SS SSC PLL FREQ2 register
   type CA35SS_SSC_PLL_FREQ2_2_Register is record
      --  PLL post divide 1 setting (1 to 7) POSTDIV1 = 0 is unused.
      POSTDIV       : CA35SS_SSC_PLL_FREQ2_2_POSTDIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_PLL_FREQ2_2_Register use record
      POSTDIV       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  CA35SS_SSC_PLL_FREQ2_3_POSTDIV array element
   subtype CA35SS_SSC_PLL_FREQ2_3_POSTDIV_Element is
     Interfaces.Bit_Types.UInt3;

   --  CA35SS_SSC_PLL_FREQ2_3_POSTDIV array
   type CA35SS_SSC_PLL_FREQ2_3_POSTDIV_Field_Array is array (1 .. 2)
     of CA35SS_SSC_PLL_FREQ2_3_POSTDIV_Element
     with Component_Size => 3, Size => 6;

   --  Type definition for CA35SS_SSC_PLL_FREQ2_3_POSTDIV
   type CA35SS_SSC_PLL_FREQ2_3_POSTDIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  POSTDIV as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  POSTDIV as an array
            Arr : CA35SS_SSC_PLL_FREQ2_3_POSTDIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CA35SS_SSC_PLL_FREQ2_3_POSTDIV_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  CA35SS SSC PLL FREQ2 register
   type CA35SS_SSC_PLL_FREQ2_3_Register is record
      --  PLL post divide 1 setting (1 to 7) POSTDIV1 = 0 is unused.
      POSTDIV       : CA35SS_SSC_PLL_FREQ2_3_POSTDIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_PLL_FREQ2_3_Register use record
      POSTDIV       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  CA35SS SSC PLL enable register
   type CA35SS_SSC_PLL_EN_Register is record
      --  PLL enable for Cortex-A35
      PLL_EN        : Boolean := False;
      --  Read-only. PLLL lock state
      LOCKP         : Boolean := False;
      --  Clock switcher reset state
      NRESET_SWPLL  : Boolean := True;
      --  unspecified
      Reserved_3_30 : Interfaces.Bit_Types.UInt28 := 16#0#;
      --  PLL observation output status
      EN_PLL_OBS    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_PLL_EN_Register use record
      PLL_EN        at 0 range 0 .. 0;
      LOCKP         at 0 range 1 .. 1;
      NRESET_SWPLL  at 0 range 2 .. 2;
      Reserved_3_30 at 0 range 3 .. 30;
      EN_PLL_OBS    at 0 range 31 .. 31;
   end record;

   --  CA35SS SSC LPI TSGEN NTS CR register
   type CA35SS_SSC_LPI_TSGEN_NTS_CR_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.Bit_Types.Byte := 16#0#;
      --  Timestamp asynchronous bridge power request
      TS_CSYSREQ     : Boolean := True;
      --  Read-only. Timestamp asynchronous bridge power status
      TS_CSYSACK     : Boolean := True;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_LPI_TSGEN_NTS_CR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      TS_CSYSREQ     at 0 range 8 .. 8;
      TS_CSYSACK     at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  CA35SS SSC core 0 SMP register
   type CA35SS_SSC_C0_SMP_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. Indicates whether core 0 takes part in coherency.
      SMPEN          : Boolean;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_C0_SMP_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      SMPEN          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  CA35SS SSC core 1 SMP register
   type CA35SS_SSC_C1_SMP_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16;
      --  Read-only. Indicates whether core 1 takes part in coherency.
      SMPEN          : Boolean;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_C1_SMP_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      SMPEN          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  CA35SS SSC LPI STGEN NTS CR register
   type CA35SS_SSC_LPI_STGEN_NTS_CR_Register is record
      --  unspecified
      Reserved_0_23  : Interfaces.Bit_Types.UInt24 := 16#0#;
      --  STGEN asynchronous bridge power request
      STGEN_CSYSREQ  : Boolean := True;
      --  Read-only. STGEN asynchronous bridge power status
      STGEN_CSYSACK  : Boolean := True;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_LPI_STGEN_NTS_CR_Register use record
      Reserved_0_23  at 0 range 0 .. 23;
      STGEN_CSYSREQ  at 0 range 24 .. 24;
      STGEN_CSYSACK  at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  CA35SS_SSC_NS_E0R_ALLOW_NONSEC array
   type CA35SS_SSC_NS_E0R_ALLOW_NONSEC_Field_Array is array (0 .. 31)
     of Boolean
     with Component_Size => 1, Size => 32;

   --  CA35SS SSC NS enable 0 register
   type CA35SS_SSC_NS_E0R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ALLOW_NONSEC as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  ALLOW_NONSEC as an array
            Arr : CA35SS_SSC_NS_E0R_ALLOW_NONSEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_NS_E0R_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  CA35SS_SSC_NS_ENABLE_1_ALLOW_NONSEC_RO array
   type CA35SS_SSC_NS_ENABLE_1_ALLOW_NONSEC_RO_Field_Array is array (0 .. 3)
     of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for CA35SS_SSC_NS_ENABLE_1_ALLOW_NONSEC_RO
   type CA35SS_SSC_NS_ENABLE_1_ALLOW_NONSEC_RO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ALLOW_NONSEC_RO as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  ALLOW_NONSEC_RO as an array
            Arr : CA35SS_SSC_NS_ENABLE_1_ALLOW_NONSEC_RO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CA35SS_SSC_NS_ENABLE_1_ALLOW_NONSEC_RO_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  CA35SS SSC NS enable 1 register
   type CA35SS_SSC_NS_ENABLE_1_Register is record
      --  unspecified
      Reserved_0_27   : Interfaces.Bit_Types.UInt28;
      --  Read-only. SSC register security settings Bit[n] indicates the
      --  security settings of the SSC register from 0x3C0 (bit 28) up to 0x3F0
      --  (bit 31).
      ALLOW_NONSEC_RO : CA35SS_SSC_NS_ENABLE_1_ALLOW_NONSEC_RO_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SSC_NS_ENABLE_1_Register use record
      Reserved_0_27   at 0 range 0 .. 27;
      ALLOW_NONSEC_RO at 0 range 28 .. 31;
   end record;

   --  CA35SS ETR low-power interface control register
   type CA35SS_SYSCFG_ETR_LPI_CR_Register is record
      --  None
      ETR_CSYSREQ   : Boolean := True;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_ETR_LPI_CR_Register use record
      ETR_CSYSREQ   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  CA35SS ETR low-power interface status register
   type CA35SS_SYSCFG_ETR_LPI_SR_Register is record
      --  Read-only. None
      ETR_CSYSACK   : Boolean;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_ETR_LPI_SR_Register use record
      ETR_CSYSACK   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  CA35SS STM non-secure guaranteed access register
   type CA35SS_SYSCFG_STM_NSGUAREN_CR_Register is record
      --  None
      STM_NSGUAREN  : Boolean := True;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_STM_NSGUAREN_CR_Register use record
      STM_NSGUAREN  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CA35SS_SYSCFG_TRACE_CLK_DIV_CR_TRACE_CLK_DIV_VALUE_Field is
     Interfaces.Bit_Types.UInt6;

   --  CA35SS TPIU export clock divider register
   type CA35SS_SYSCFG_TRACE_CLK_DIV_CR_Register is record
      --  0x1 to 0x3F: Divider ratio from 2 to 64
      TRACE_CLK_DIV_VALUE : CA35SS_SYSCFG_TRACE_CLK_DIV_CR_TRACE_CLK_DIV_VALUE_Field :=
                             16#0#;
      --  unspecified
      Reserved_6_31       : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_TRACE_CLK_DIV_CR_Register use record
      TRACE_CLK_DIV_VALUE at 0 range 0 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  CA35SS_SYSCFG_DBGPWR_CR_DBGPWRUP array
   type CA35SS_SYSCFG_DBGPWR_CR_DBGPWRUP_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CA35SS_SYSCFG_DBGPWR_CR_DBGPWRUP
   type CA35SS_SYSCFG_DBGPWR_CR_DBGPWRUP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DBGPWRUP as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  DBGPWRUP as an array
            Arr : CA35SS_SYSCFG_DBGPWR_CR_DBGPWRUP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CA35SS_SYSCFG_DBGPWR_CR_DBGPWRUP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CA35SS Cortex-A35 core debug power mode register
   type CA35SS_SYSCFG_DBGPWR_CR_Register is record
      --  None
      DBGPWRUP      : CA35SS_SYSCFG_DBGPWR_CR_DBGPWRUP_Field :=
                       (As_Array => False, Val => 16#1#);
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_DBGPWR_CR_Register use record
      DBGPWRUP      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  CA35SS Cortex-A35 L1 data cache register
   type CA35SS_SYSCFG_DBGL1RSTDISABLE_CR_Register is record
      --  None
      DBGL1RSTDIS   : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_DBGL1RSTDISABLE_CR_Register use record
      DBGL1RSTDIS   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  CA35SS_SYSCFG_DBGPWR_SR_DBGNOPWRDWN array
   type CA35SS_SYSCFG_DBGPWR_SR_DBGNOPWRDWN_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CA35SS_SYSCFG_DBGPWR_SR_DBGNOPWRDWN
   type CA35SS_SYSCFG_DBGPWR_SR_DBGNOPWRDWN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DBGNOPWRDWN as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  DBGNOPWRDWN as an array
            Arr : CA35SS_SYSCFG_DBGPWR_SR_DBGNOPWRDWN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CA35SS_SYSCFG_DBGPWR_SR_DBGNOPWRDWN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CA35SS_SYSCFG_DBGPWR_SR_DBGPWRUPREQ array
   type CA35SS_SYSCFG_DBGPWR_SR_DBGPWRUPREQ_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CA35SS_SYSCFG_DBGPWR_SR_DBGPWRUPREQ
   type CA35SS_SYSCFG_DBGPWR_SR_DBGPWRUPREQ_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DBGPWRUPREQ as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  DBGPWRUPREQ as an array
            Arr : CA35SS_SYSCFG_DBGPWR_SR_DBGPWRUPREQ_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CA35SS_SYSCFG_DBGPWR_SR_DBGPWRUPREQ_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CA35SS Cortex-A35 debug power register
   type CA35SS_SYSCFG_DBGPWR_SR_Register is record
      --  Read-only. None
      DBGNOPWRDWN   : CA35SS_SYSCFG_DBGPWR_SR_DBGNOPWRDWN_Field;
      --  Read-only. None
      DBGPWRUPREQ   : CA35SS_SYSCFG_DBGPWR_SR_DBGPWRUPREQ_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_DBGPWR_SR_Register use record
      DBGNOPWRDWN   at 0 range 0 .. 1;
      DBGPWRUPREQ   at 0 range 2 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  CA35SS_SYSCFG_EDBGACK_SR_DBGACK_C array
   type CA35SS_SYSCFG_EDBGACK_SR_DBGACK_C_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for CA35SS_SYSCFG_EDBGACK_SR_DBGACK_C
   type CA35SS_SYSCFG_EDBGACK_SR_DBGACK_C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DBGACK_C as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  DBGACK_C as an array
            Arr : CA35SS_SYSCFG_EDBGACK_SR_DBGACK_C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CA35SS_SYSCFG_EDBGACK_SR_DBGACK_C_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  CA35SS Cortex-A35 debug mode status register
   type CA35SS_SYSCFG_EDBGACK_SR_Register is record
      --  Read-only. None
      DBGACK_C      : CA35SS_SYSCFG_EDBGACK_SR_DBGACK_C_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_EDBGACK_SR_Register use record
      DBGACK_C      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  GIC configuration register
   type CA35SS_SYSCFG_GIC_CFGR_Register is record
      --  None
      GIC_4KNOT64K  : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_GIC_CFGR_Register use record
      GIC_4KNOT64K  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Cortex-A35 low-power status register
   type CA35SS_SYSCFG_LP_SR_Register is record
      --  Read-only. None
      STANDBYWFE_0  : Boolean;
      --  Read-only. None
      STANDBYWFE_1  : Boolean;
      --  Read-only. None
      STANDBYWFI_0  : Boolean;
      --  Read-only. None
      STANDBYWFI_1  : Boolean;
      --  Read-only. None
      STANDBYWFIL2  : Boolean;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_LP_SR_Register use record
      STANDBYWFE_0  at 0 range 0 .. 0;
      STANDBYWFE_1  at 0 range 1 .. 1;
      STANDBYWFI_0  at 0 range 2 .. 2;
      STANDBYWFI_1  at 0 range 3 .. 3;
      STANDBYWFIL2  at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Cortex-A35 reset status register
   type CA35SS_SYSCFG_RSTACK_SR_Register is record
      --  Read-only. None
      NRESET_DBG_ACK : Boolean;
      --  Read-only. None
      NRESET_FCT_ACK : Boolean;
      --  unspecified
      Reserved_2_31  : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_RSTACK_SR_Register use record
      NRESET_DBG_ACK at 0 range 0 .. 0;
      NRESET_FCT_ACK at 0 range 1 .. 1;
      Reserved_2_31  at 0 range 2 .. 31;
   end record;

   --  CA35SS architecture mode register
   type CA35SS_SYSCFG_AARCH_MODE_CR_Register is record
      --  None
      AA64NAA32     : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_AARCH_MODE_CR_Register use record
      AA64NAA32     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CA35SS_SYSCFG_VBAR_CR_RVBARADDRL_Field is
     Interfaces.Bit_Types.UInt30;

   --  CA35SS reset vector register
   type CA35SS_SYSCFG_VBAR_CR_Register is record
      --  unspecified
      Reserved_0_1 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Set the value of reset vector at the boundaries of the Cortex-A35
      --  cores.
      RVBARADDRL   : CA35SS_SYSCFG_VBAR_CR_RVBARADDRL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_VBAR_CR_Register use record
      Reserved_0_1 at 0 range 0 .. 1;
      RVBARADDRL   at 0 range 2 .. 31;
   end record;

   --  Cortex-M33 boot register access rights register
   type CA35SS_SYSCFG_M33_ACCESS_CR_Register is record
      --  None
      M33CFG_SEC    : Boolean := True;
      --  None
      M33CFG_PRIV   : Boolean := True;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_M33_ACCESS_CR_Register use record
      M33CFG_SEC    at 0 range 0 .. 0;
      M33CFG_PRIV   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Cortex-M33 secure extension enable register
   type CA35SS_SYSCFG_M33_TZEN_CR_Register is record
      --  None
      CFG_SECEXT    : Boolean := True;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_M33_TZEN_CR_Register use record
      CFG_SECEXT    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CA35SS_SYSCFG_M33_INITSVTOR_CR_INITSVTOR_Field is
     Interfaces.Bit_Types.UInt25;

   --  Cortex-M33 secure vector address register
   type CA35SS_SYSCFG_M33_INITSVTOR_CR_Register is record
      --  unspecified
      Reserved_0_6 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Secure vector table offset
      INITSVTOR    : CA35SS_SYSCFG_M33_INITSVTOR_CR_INITSVTOR_Field :=
                      16#1C1000#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_M33_INITSVTOR_CR_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      INITSVTOR    at 0 range 7 .. 31;
   end record;

   subtype CA35SS_SYSCFG_M33_INITNSVTOR_CR_INITNSVTOR_Field is
     Interfaces.Bit_Types.UInt25;

   --  Cortex-M33 non-secure vector address register
   type CA35SS_SYSCFG_M33_INITNSVTOR_CR_Register is record
      --  unspecified
      Reserved_0_6 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Non-secure vector table offset
      INITNSVTOR   : CA35SS_SYSCFG_M33_INITNSVTOR_CR_INITNSVTOR_Field :=
                      16#141000#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CA35SS_SYSCFG_M33_INITNSVTOR_CR_Register use record
      Reserved_0_6 at 0 range 0 .. 6;
      INITNSVTOR   at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CA35SS register block
   type CA35SS_Peripheral is record
      --  CA35SS SSC CHGCLKREQ register
      CA35SS_SSC_CHGCLKREQ0            : aliased CA35SS_SSC_CHGCLKREQ_Register;
      --  CA35SS SSC CHGCLKREQ register
      CA35SS_SSC_CHGCLKREQ1            : aliased CA35SS_SSC_CHGCLKREQ_Register;
      --  CA35SS SSC CHGCLKREQ register
      CA35SS_SSC_CHGCLKREQ2            : aliased CA35SS_SSC_CHGCLKREQ_Register;
      --  CA35SS SSC CHGCLKREQ register
      CA35SS_SSC_CHGCLKREQ3            : aliased CA35SS_SSC_CHGCLKREQ_Register;
      --  CA35SS SSC BRM register
      CA35SS_SSC_BRM0                  : aliased CA35SS_SSC_BRM_Register;
      --  CA35SS SSC BRM register
      CA35SS_SSC_BRM1                  : aliased CA35SS_SSC_BRM_Register;
      --  CA35SS SSC BRM register
      CA35SS_SSC_BRM2                  : aliased CA35SS_SSC_BRM_Register;
      --  CA35SS SSC BRM register
      CA35SS_SSC_BRM3                  : aliased CA35SS_SSC_BRM_Register;
      --  CA35SS SSC PLL FREQ1 register
      CA35SS_SSC_PLL_FREQ1_0           : aliased CA35SS_SSC_PLL_FREQ1_0_Register;
      --  CA35SS SSC PLL FREQ1 register
      CA35SS_SSC_PLL_FREQ1_1           : aliased CA35SS_SSC_PLL_FREQ1_1_Register;
      --  CA35SS SSC PLL FREQ1 register
      CA35SS_SSC_PLL_FREQ1_2           : aliased CA35SS_SSC_PLL_FREQ1_2_Register;
      --  CA35SS SSC PLL FREQ1 register
      CA35SS_SSC_PLL_FREQ1_3           : aliased CA35SS_SSC_PLL_FREQ1_3_Register;
      --  CA35SS SSC PLL FREQ2 register
      CA35SS_SSC_PLL_FREQ2_0           : aliased CA35SS_SSC_PLL_FREQ2_0_Register;
      --  CA35SS SSC PLL FREQ2 register
      CA35SS_SSC_PLL_FREQ2_1           : aliased CA35SS_SSC_PLL_FREQ2_1_Register;
      --  CA35SS SSC PLL FREQ2 register
      CA35SS_SSC_PLL_FREQ2_2           : aliased CA35SS_SSC_PLL_FREQ2_2_Register;
      --  CA35SS SSC PLL FREQ2 register
      CA35SS_SSC_PLL_FREQ2_3           : aliased CA35SS_SSC_PLL_FREQ2_3_Register;
      --  CA35SS SSC PLL enable register
      CA35SS_SSC_PLL_EN0               : aliased CA35SS_SSC_PLL_EN_Register;
      --  CA35SS SSC PLL enable register
      CA35SS_SSC_PLL_EN1               : aliased CA35SS_SSC_PLL_EN_Register;
      --  CA35SS SSC PLL enable register
      CA35SS_SSC_PLL_EN2               : aliased CA35SS_SSC_PLL_EN_Register;
      --  CA35SS SSC PLL enable register
      CA35SS_SSC_PLL_EN3               : aliased CA35SS_SSC_PLL_EN_Register;
      --  CA35SS SSC LPI TSGEN NTS CR register
      CA35SS_SSC_LPI_TSGEN_NTS_CR0     : aliased CA35SS_SSC_LPI_TSGEN_NTS_CR_Register;
      --  CA35SS SSC LPI TSGEN NTS CR register
      CA35SS_SSC_LPI_TSGEN_NTS_CR1     : aliased CA35SS_SSC_LPI_TSGEN_NTS_CR_Register;
      --  CA35SS SSC LPI TSGEN NTS CR register
      CA35SS_SSC_LPI_TSGEN_NTS_CR2     : aliased CA35SS_SSC_LPI_TSGEN_NTS_CR_Register;
      --  CA35SS SSC LPI TSGEN NTS CR register
      CA35SS_SSC_LPI_TSGEN_NTS_CR3     : aliased CA35SS_SSC_LPI_TSGEN_NTS_CR_Register;
      --  CA35SS SSC core 0 SMP register
      CA35SS_SSC_C0_SMP                : aliased CA35SS_SSC_C0_SMP_Register;
      --  CA35SS SSC core 1 SMP register
      CA35SS_SSC_C1_SMP                : aliased CA35SS_SSC_C1_SMP_Register;
      --  CA35SS SSC LPI STGEN NTS CR register
      CA35SS_SSC_LPI_STGEN_NTS_CR0     : aliased CA35SS_SSC_LPI_STGEN_NTS_CR_Register;
      --  CA35SS SSC LPI STGEN NTS CR register
      CA35SS_SSC_LPI_STGEN_NTS_CR1     : aliased CA35SS_SSC_LPI_STGEN_NTS_CR_Register;
      --  CA35SS SSC LPI STGEN NTS CR register
      CA35SS_SSC_LPI_STGEN_NTS_CR2     : aliased CA35SS_SSC_LPI_STGEN_NTS_CR_Register;
      --  CA35SS SSC LPI STGEN NTS CR register
      CA35SS_SSC_LPI_STGEN_NTS_CR3     : aliased CA35SS_SSC_LPI_STGEN_NTS_CR_Register;
      --  CA35SS SSC NS enable 0 register
      CA35SS_SSC_NS_E0R0               : aliased CA35SS_SSC_NS_E0R_Register;
      --  CA35SS SSC NS enable 0 register
      CA35SS_SSC_NS_E0R1               : aliased CA35SS_SSC_NS_E0R_Register;
      --  CA35SS SSC NS enable 0 register
      CA35SS_SSC_NS_E0R2               : aliased CA35SS_SSC_NS_E0R_Register;
      --  CA35SS SSC NS enable 0 register
      CA35SS_SSC_NS_E0R3               : aliased CA35SS_SSC_NS_E0R_Register;
      --  CA35SS SSC NS enable 1 register
      CA35SS_SSC_NS_ENABLE_1           : aliased CA35SS_SSC_NS_ENABLE_1_Register;
      --  CA35SS ETR low-power interface control register
      CA35SS_SYSCFG_ETR_LPI_CR         : aliased CA35SS_SYSCFG_ETR_LPI_CR_Register;
      --  CA35SS ETR low-power interface status register
      CA35SS_SYSCFG_ETR_LPI_SR         : aliased CA35SS_SYSCFG_ETR_LPI_SR_Register;
      --  CA35SS STM non-secure guaranteed access register
      CA35SS_SYSCFG_STM_NSGUAREN_CR    : aliased CA35SS_SYSCFG_STM_NSGUAREN_CR_Register;
      --  CA35SS TPIU export clock divider register
      CA35SS_SYSCFG_TRACE_CLK_DIV_CR   : aliased CA35SS_SYSCFG_TRACE_CLK_DIV_CR_Register;
      --  CA35SS Cortex-A35 core debug power mode register
      CA35SS_SYSCFG_DBGPWR_CR          : aliased CA35SS_SYSCFG_DBGPWR_CR_Register;
      --  CA35SS Cortex-A35 L1 data cache register
      CA35SS_SYSCFG_DBGL1RSTDISABLE_CR : aliased CA35SS_SYSCFG_DBGL1RSTDISABLE_CR_Register;
      --  CA35SS Cortex-A35 debug power register
      CA35SS_SYSCFG_DBGPWR_SR          : aliased CA35SS_SYSCFG_DBGPWR_SR_Register;
      --  CA35SS Cortex-A35 debug mode status register
      CA35SS_SYSCFG_EDBGACK_SR         : aliased CA35SS_SYSCFG_EDBGACK_SR_Register;
      --  GIC configuration register
      CA35SS_SYSCFG_GIC_CFGR           : aliased CA35SS_SYSCFG_GIC_CFGR_Register;
      --  Cortex-A35 low-power status register
      CA35SS_SYSCFG_LP_SR              : aliased CA35SS_SYSCFG_LP_SR_Register;
      --  Cortex-A35 reset status register
      CA35SS_SYSCFG_RSTACK_SR          : aliased CA35SS_SYSCFG_RSTACK_SR_Register;
      --  CA35SS architecture mode register
      CA35SS_SYSCFG_AARCH_MODE_CR      : aliased CA35SS_SYSCFG_AARCH_MODE_CR_Register;
      --  CA35SS reset vector register
      CA35SS_SYSCFG_VBAR_CR            : aliased CA35SS_SYSCFG_VBAR_CR_Register;
      --  Cortex-M33 boot register access rights register
      CA35SS_SYSCFG_M33_ACCESS_CR      : aliased CA35SS_SYSCFG_M33_ACCESS_CR_Register;
      --  Cortex-M33 secure extension enable register
      CA35SS_SYSCFG_M33_TZEN_CR        : aliased CA35SS_SYSCFG_M33_TZEN_CR_Register;
      --  Cortex-M33 secure vector address register
      CA35SS_SYSCFG_M33_INITSVTOR_CR   : aliased CA35SS_SYSCFG_M33_INITSVTOR_CR_Register;
      --  Cortex-M33 non-secure vector address register
      CA35SS_SYSCFG_M33_INITNSVTOR_CR  : aliased CA35SS_SYSCFG_M33_INITNSVTOR_CR_Register;
   end record
     with Volatile;

   for CA35SS_Peripheral use record
      CA35SS_SSC_CHGCLKREQ0            at 16#0# range 0 .. 31;
      CA35SS_SSC_CHGCLKREQ1            at 16#4# range 0 .. 31;
      CA35SS_SSC_CHGCLKREQ2            at 16#8# range 0 .. 31;
      CA35SS_SSC_CHGCLKREQ3            at 16#C# range 0 .. 31;
      CA35SS_SSC_BRM0                  at 16#10# range 0 .. 31;
      CA35SS_SSC_BRM1                  at 16#14# range 0 .. 31;
      CA35SS_SSC_BRM2                  at 16#18# range 0 .. 31;
      CA35SS_SSC_BRM3                  at 16#1C# range 0 .. 31;
      CA35SS_SSC_PLL_FREQ1_0           at 16#80# range 0 .. 31;
      CA35SS_SSC_PLL_FREQ1_1           at 16#84# range 0 .. 31;
      CA35SS_SSC_PLL_FREQ1_2           at 16#88# range 0 .. 31;
      CA35SS_SSC_PLL_FREQ1_3           at 16#8C# range 0 .. 31;
      CA35SS_SSC_PLL_FREQ2_0           at 16#90# range 0 .. 31;
      CA35SS_SSC_PLL_FREQ2_1           at 16#94# range 0 .. 31;
      CA35SS_SSC_PLL_FREQ2_2           at 16#98# range 0 .. 31;
      CA35SS_SSC_PLL_FREQ2_3           at 16#9C# range 0 .. 31;
      CA35SS_SSC_PLL_EN0               at 16#A0# range 0 .. 31;
      CA35SS_SSC_PLL_EN1               at 16#A4# range 0 .. 31;
      CA35SS_SSC_PLL_EN2               at 16#A8# range 0 .. 31;
      CA35SS_SSC_PLL_EN3               at 16#AC# range 0 .. 31;
      CA35SS_SSC_LPI_TSGEN_NTS_CR0     at 16#D0# range 0 .. 31;
      CA35SS_SSC_LPI_TSGEN_NTS_CR1     at 16#D4# range 0 .. 31;
      CA35SS_SSC_LPI_TSGEN_NTS_CR2     at 16#D8# range 0 .. 31;
      CA35SS_SSC_LPI_TSGEN_NTS_CR3     at 16#DC# range 0 .. 31;
      CA35SS_SSC_C0_SMP                at 16#100# range 0 .. 31;
      CA35SS_SSC_C1_SMP                at 16#110# range 0 .. 31;
      CA35SS_SSC_LPI_STGEN_NTS_CR0     at 16#140# range 0 .. 31;
      CA35SS_SSC_LPI_STGEN_NTS_CR1     at 16#144# range 0 .. 31;
      CA35SS_SSC_LPI_STGEN_NTS_CR2     at 16#148# range 0 .. 31;
      CA35SS_SSC_LPI_STGEN_NTS_CR3     at 16#14C# range 0 .. 31;
      CA35SS_SSC_NS_E0R0               at 16#3C0# range 0 .. 31;
      CA35SS_SSC_NS_E0R1               at 16#3C4# range 0 .. 31;
      CA35SS_SSC_NS_E0R2               at 16#3C8# range 0 .. 31;
      CA35SS_SSC_NS_E0R3               at 16#3CC# range 0 .. 31;
      CA35SS_SSC_NS_ENABLE_1           at 16#3D0# range 0 .. 31;
      CA35SS_SYSCFG_ETR_LPI_CR         at 16#2000# range 0 .. 31;
      CA35SS_SYSCFG_ETR_LPI_SR         at 16#2004# range 0 .. 31;
      CA35SS_SYSCFG_STM_NSGUAREN_CR    at 16#2008# range 0 .. 31;
      CA35SS_SYSCFG_TRACE_CLK_DIV_CR   at 16#200C# range 0 .. 31;
      CA35SS_SYSCFG_DBGPWR_CR          at 16#2010# range 0 .. 31;
      CA35SS_SYSCFG_DBGL1RSTDISABLE_CR at 16#2014# range 0 .. 31;
      CA35SS_SYSCFG_DBGPWR_SR          at 16#2018# range 0 .. 31;
      CA35SS_SYSCFG_EDBGACK_SR         at 16#201C# range 0 .. 31;
      CA35SS_SYSCFG_GIC_CFGR           at 16#2020# range 0 .. 31;
      CA35SS_SYSCFG_LP_SR              at 16#2024# range 0 .. 31;
      CA35SS_SYSCFG_RSTACK_SR          at 16#2028# range 0 .. 31;
      CA35SS_SYSCFG_AARCH_MODE_CR      at 16#2080# range 0 .. 31;
      CA35SS_SYSCFG_VBAR_CR            at 16#2084# range 0 .. 31;
      CA35SS_SYSCFG_M33_ACCESS_CR      at 16#2088# range 0 .. 31;
      CA35SS_SYSCFG_M33_TZEN_CR        at 16#20A0# range 0 .. 31;
      CA35SS_SYSCFG_M33_INITSVTOR_CR   at 16#20A4# range 0 .. 31;
      CA35SS_SYSCFG_M33_INITNSVTOR_CR  at 16#20A8# range 0 .. 31;
   end record;

   --  CA35SS register block
   CA35SS_Periph : aliased CA35SS_Peripheral
     with Import, Address => CA35SS_Base;

   --  CA35SS register block
   CA35SS_S_Periph : aliased CA35SS_Peripheral
     with Import, Address => CA35SS_S_Base;

end Interfaces.STM32.CA35SS;
