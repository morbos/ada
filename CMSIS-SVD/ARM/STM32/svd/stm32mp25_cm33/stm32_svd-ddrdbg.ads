--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DDRDBG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DDRDBG low-power disable register
   type DDRDBG_LP_DISABLE_Register is record
      --  None
      LPI_XPI_DISABLE  : Boolean := False;
      --  unspecified
      Reserved_1_7     : HAL.UInt7 := 16#0#;
      --  None
      LPI_DDRC_DISABLE : Boolean := False;
      --  unspecified
      Reserved_9_31    : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_LP_DISABLE_Register use record
      LPI_XPI_DISABLE  at 0 range 0 .. 0;
      Reserved_1_7     at 0 range 1 .. 7;
      LPI_DDRC_DISABLE at 0 range 8 .. 8;
      Reserved_9_31    at 0 range 9 .. 31;
   end record;

   --  DDRDBG bypass PCLKEN register
   type DDRDBG_BYPASS_PCLKEN_Register is record
      --  None
      ENABLE        : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_BYPASS_PCLKEN_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRDBG_DDRC_AUTO_SR_DELAY_DELAY_CYCLES_Field is HAL.UInt8;

   --  DDRDBG DDRC auto SR delay register
   type DDRDBG_DDRC_AUTO_SR_DELAY_Register is record
      --  Number of delay cycles to wait before to gate down the DDRC clock
      --  when in auto self-refresh This delay allows any ongoing register
      --  access to be completed before gating the DDRC clock.
      DELAY_CYCLES  : DDRDBG_DDRC_AUTO_SR_DELAY_DELAY_CYCLES_Field := 16#20#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_DDRC_AUTO_SR_DELAY_Register use record
      DELAY_CYCLES  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DDRDBG_OBSP_CTRL_OBSP0_SEL_Field is HAL.UInt5;
   subtype DDRDBG_OBSP_CTRL_OBSP1_SEL_Field is HAL.UInt5;
   subtype DDRDBG_OBSP_CTRL_OBSP2_SEL_Field is HAL.UInt5;
   subtype DDRDBG_OBSP_CTRL_OBSP3_SEL_Field is HAL.UInt5;

   --  DDRDBG OBSP control register
   type DDRDBG_OBSP_CTRL_Register is record
      --  Selects which of the input observable signal is forwarded to the HDP
      --  on selectable observability line 0.
      OBSP0_SEL      : DDRDBG_OBSP_CTRL_OBSP0_SEL_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Selects which of the input observable signal is forwarded to the HDP
      --  on selectable observability line 1.
      OBSP1_SEL      : DDRDBG_OBSP_CTRL_OBSP1_SEL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Selects which of the input observable signal is forwarded to the HDP
      --  on selectable observability line 2.
      OBSP2_SEL      : DDRDBG_OBSP_CTRL_OBSP2_SEL_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Selects which of the input observable signal is forwarded to the HDP
      --  on selectable observability line 3.
      OBSP3_SEL      : DDRDBG_OBSP_CTRL_OBSP3_SEL_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_OBSP_CTRL_Register use record
      OBSP0_SEL      at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      OBSP1_SEL      at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      OBSP2_SEL      at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      OBSP3_SEL      at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  DDRDBG FRAC PLL lock register
   type DDRDBG_FRAC_PLL_LOCK_Register is record
      --  None
      LOCK          : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_FRAC_PLL_LOCK_Register use record
      LOCK          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DDRDBG DTO output register
   type DDRDBG_DTO_OUTPUT_Register is record
      --  the DDRPHYC PLL lock can be observed in this register.
      DTO           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_DTO_OUTPUT_Register use record
      DTO           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DDRDBG DFI error control register
   type DDRDBG_DFI_ERRORS_CTRL_Register is record
      --  None
      DFI_ERROR0_CLEAR : Boolean := False;
      --  None
      DFI_ERROR0_SET   : Boolean := False;
      --  unspecified
      Reserved_2_7     : HAL.UInt6 := 16#0#;
      --  None
      DFI_ERROR1_CLEAR : Boolean := False;
      --  None
      DFI_ERROR1_SET   : Boolean := False;
      --  unspecified
      Reserved_10_31   : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_DFI_ERRORS_CTRL_Register use record
      DFI_ERROR0_CLEAR at 0 range 0 .. 0;
      DFI_ERROR0_SET   at 0 range 1 .. 1;
      Reserved_2_7     at 0 range 2 .. 7;
      DFI_ERROR1_CLEAR at 0 range 8 .. 8;
      DFI_ERROR1_SET   at 0 range 9 .. 9;
      Reserved_10_31   at 0 range 10 .. 31;
   end record;

   --  DDRDBG DFI error status register
   type DDRDBG_DFI_ERROR_STATUS_Register is record
      --  Status bit for dfi_error0
      DFI_ERROR0_STATUS : Boolean := False;
      --  unspecified
      Reserved_1_7      : HAL.UInt7 := 16#0#;
      --  Status bit for dfi_error1
      DFI_ERROR1_STATUS : Boolean := False;
      --  unspecified
      Reserved_9_31     : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_DFI_ERROR_STATUS_Register use record
      DFI_ERROR0_STATUS at 0 range 0 .. 0;
      Reserved_1_7      at 0 range 1 .. 7;
      DFI_ERROR1_STATUS at 0 range 8 .. 8;
      Reserved_9_31     at 0 range 9 .. 31;
   end record;

   --  DDRDBG DFI error mask register
   type DDRDBG_DFI_ERROR_MSK_Register is record
      --  None
      DFI_ERROR0_MASK : Boolean := False;
      --  unspecified
      Reserved_1_7    : HAL.UInt7 := 16#0#;
      --  None
      DFI_ERROR1_MASK : Boolean := False;
      --  unspecified
      Reserved_9_31   : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_DFI_ERROR_MSK_Register use record
      DFI_ERROR0_MASK at 0 range 0 .. 0;
      Reserved_1_7    at 0 range 1 .. 7;
      DFI_ERROR1_MASK at 0 range 8 .. 8;
      Reserved_9_31   at 0 range 9 .. 31;
   end record;

   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD3_0_DDR34_AC_SWIZZLING_ADD0_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD3_0_DDR34_AC_SWIZZLING_ADD1_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD3_0_DDR34_AC_SWIZZLING_ADD2_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD3_0_DDR34_AC_SWIZZLING_ADD3_Field is
     HAL.UInt5;

   --  DDRDBG DDR34 AC swizzle ADD3_0 register
   type DDRDBG_DDR34_AC_SWIZZLE_ADD3_0_Register is record
      --  Remapping input bit on add0 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD0 : DDRDBG_DDR34_AC_SWIZZLE_ADD3_0_DDR34_AC_SWIZZLING_ADD0_Field :=
                                 16#0#;
      --  unspecified
      Reserved_5_7            : HAL.UInt3 := 16#0#;
      --  Remapping input bit on add1 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD1 : DDRDBG_DDR34_AC_SWIZZLE_ADD3_0_DDR34_AC_SWIZZLING_ADD1_Field :=
                                 16#0#;
      --  unspecified
      Reserved_13_15          : HAL.UInt3 := 16#0#;
      --  Remapping input bit on add2 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD2 : DDRDBG_DDR34_AC_SWIZZLE_ADD3_0_DDR34_AC_SWIZZLING_ADD2_Field :=
                                 16#0#;
      --  unspecified
      Reserved_21_23          : HAL.UInt3 := 16#0#;
      --  Remapping input bit on add3 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD3 : DDRDBG_DDR34_AC_SWIZZLE_ADD3_0_DDR34_AC_SWIZZLING_ADD3_Field :=
                                 16#0#;
      --  unspecified
      Reserved_29_31          : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_DDR34_AC_SWIZZLE_ADD3_0_Register use record
      DDR34_AC_SWIZZLING_ADD0 at 0 range 0 .. 4;
      Reserved_5_7            at 0 range 5 .. 7;
      DDR34_AC_SWIZZLING_ADD1 at 0 range 8 .. 12;
      Reserved_13_15          at 0 range 13 .. 15;
      DDR34_AC_SWIZZLING_ADD2 at 0 range 16 .. 20;
      Reserved_21_23          at 0 range 21 .. 23;
      DDR34_AC_SWIZZLING_ADD3 at 0 range 24 .. 28;
      Reserved_29_31          at 0 range 29 .. 31;
   end record;

   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD7_4_DDR34_AC_SWIZZLING_ADD4_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD7_4_DDR34_AC_SWIZZLING_ADD5_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD7_4_DDR34_AC_SWIZZLING_ADD6_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD7_4_DDR34_AC_SWIZZLING_ADD7_Field is
     HAL.UInt5;

   --  DDRDBG DDR34 AC swizzle ADD7_4 register
   type DDRDBG_DDR34_AC_SWIZZLE_ADD7_4_Register is record
      --  Remapping input bit on add4 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD4 : DDRDBG_DDR34_AC_SWIZZLE_ADD7_4_DDR34_AC_SWIZZLING_ADD4_Field :=
                                 16#0#;
      --  unspecified
      Reserved_5_7            : HAL.UInt3 := 16#0#;
      --  Remapping input bit on add5 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD5 : DDRDBG_DDR34_AC_SWIZZLE_ADD7_4_DDR34_AC_SWIZZLING_ADD5_Field :=
                                 16#0#;
      --  unspecified
      Reserved_13_15          : HAL.UInt3 := 16#0#;
      --  Remapping input bit on add6 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD6 : DDRDBG_DDR34_AC_SWIZZLE_ADD7_4_DDR34_AC_SWIZZLING_ADD6_Field :=
                                 16#0#;
      --  unspecified
      Reserved_21_23          : HAL.UInt3 := 16#0#;
      --  Remapping input bit on add7 DDRPHYC input at the DFI interface
      --  (remapping is defined in Table63)
      DDR34_AC_SWIZZLING_ADD7 : DDRDBG_DDR34_AC_SWIZZLE_ADD7_4_DDR34_AC_SWIZZLING_ADD7_Field :=
                                 16#0#;
      --  unspecified
      Reserved_29_31          : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_DDR34_AC_SWIZZLE_ADD7_4_Register use record
      DDR34_AC_SWIZZLING_ADD4 at 0 range 0 .. 4;
      Reserved_5_7            at 0 range 5 .. 7;
      DDR34_AC_SWIZZLING_ADD5 at 0 range 8 .. 12;
      Reserved_13_15          at 0 range 13 .. 15;
      DDR34_AC_SWIZZLING_ADD6 at 0 range 16 .. 20;
      Reserved_21_23          at 0 range 21 .. 23;
      DDR34_AC_SWIZZLING_ADD7 at 0 range 24 .. 28;
      Reserved_29_31          at 0 range 29 .. 31;
   end record;

   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD11_8_DDR34_AC_SWIZZLING_ADD8_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD11_8_DDR34_AC_SWIZZLING_ADD9_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD11_8_DDR34_AC_SWIZZLING_ADD10_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD11_8_DDR34_AC_SWIZZLING_ADD11_Field is
     HAL.UInt5;

   --  DDRDBG DDR34 AC swizzle ADD11_8 register
   type DDRDBG_DDR34_AC_SWIZZLE_ADD11_8_Register is record
      --  Remapping input bit on add8 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD8  : DDRDBG_DDR34_AC_SWIZZLE_ADD11_8_DDR34_AC_SWIZZLING_ADD8_Field :=
                                  16#0#;
      --  unspecified
      Reserved_5_7             : HAL.UInt3 := 16#0#;
      --  Remapping input bit on add9 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD9  : DDRDBG_DDR34_AC_SWIZZLE_ADD11_8_DDR34_AC_SWIZZLING_ADD9_Field :=
                                  16#0#;
      --  unspecified
      Reserved_13_15           : HAL.UInt3 := 16#0#;
      --  Remapping input bit on add10 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD10 : DDRDBG_DDR34_AC_SWIZZLE_ADD11_8_DDR34_AC_SWIZZLING_ADD10_Field :=
                                  16#0#;
      --  unspecified
      Reserved_21_23           : HAL.UInt3 := 16#0#;
      --  Remapping input bit on add11 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD11 : DDRDBG_DDR34_AC_SWIZZLE_ADD11_8_DDR34_AC_SWIZZLING_ADD11_Field :=
                                  16#0#;
      --  unspecified
      Reserved_29_31           : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_DDR34_AC_SWIZZLE_ADD11_8_Register use record
      DDR34_AC_SWIZZLING_ADD8  at 0 range 0 .. 4;
      Reserved_5_7             at 0 range 5 .. 7;
      DDR34_AC_SWIZZLING_ADD9  at 0 range 8 .. 12;
      Reserved_13_15           at 0 range 13 .. 15;
      DDR34_AC_SWIZZLING_ADD10 at 0 range 16 .. 20;
      Reserved_21_23           at 0 range 21 .. 23;
      DDR34_AC_SWIZZLING_ADD11 at 0 range 24 .. 28;
      Reserved_29_31           at 0 range 29 .. 31;
   end record;

   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD15_12_DDR34_AC_SWIZZLING_ADD12_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD15_12_DDR34_AC_SWIZZLING_ADD13_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD15_12_DDR34_AC_SWIZZLING_ADD14_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_ADD15_12_DDR34_AC_SWIZZLING_ADD15_Field is
     HAL.UInt5;

   --  DDRDBG DDR34 AC swizzle ADD15_12 register
   type DDRDBG_DDR34_AC_SWIZZLE_ADD15_12_Register is record
      --  Remapping input bit on add12 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD12 : DDRDBG_DDR34_AC_SWIZZLE_ADD15_12_DDR34_AC_SWIZZLING_ADD12_Field :=
                                  16#0#;
      --  unspecified
      Reserved_5_7             : HAL.UInt3 := 16#0#;
      --  Remapping input bit on add13 DDRPHYC input at he DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD13 : DDRDBG_DDR34_AC_SWIZZLE_ADD15_12_DDR34_AC_SWIZZLING_ADD13_Field :=
                                  16#0#;
      --  unspecified
      Reserved_13_15           : HAL.UInt3 := 16#0#;
      --  Remapping input bit on add14 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD14 : DDRDBG_DDR34_AC_SWIZZLE_ADD15_12_DDR34_AC_SWIZZLING_ADD14_Field :=
                                  16#0#;
      --  unspecified
      Reserved_21_23           : HAL.UInt3 := 16#0#;
      --  Remapping input bit on add15 DDRPHYC input at he DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ADD15 : DDRDBG_DDR34_AC_SWIZZLE_ADD15_12_DDR34_AC_SWIZZLING_ADD15_Field :=
                                  16#0#;
      --  unspecified
      Reserved_29_31           : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_DDR34_AC_SWIZZLE_ADD15_12_Register use record
      DDR34_AC_SWIZZLING_ADD12 at 0 range 0 .. 4;
      Reserved_5_7             at 0 range 5 .. 7;
      DDR34_AC_SWIZZLING_ADD13 at 0 range 8 .. 12;
      Reserved_13_15           at 0 range 13 .. 15;
      DDR34_AC_SWIZZLING_ADD14 at 0 range 16 .. 20;
      Reserved_21_23           at 0 range 21 .. 23;
      DDR34_AC_SWIZZLING_ADD15 at 0 range 24 .. 28;
      Reserved_29_31           at 0 range 29 .. 31;
   end record;

   subtype DDRDBG_DDR34_AC_SWIZZLE_BK2_0_ACTN_DDR34_AC_SWIZZLING_ACTN_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_BK2_0_ACTN_DDR34_AC_SWIZZLING_BK1_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_BK2_0_ACTN_DDR34_AC_SWIZZLING_BK2_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_BK2_0_ACTN_DDR34_AC_SWIZZLING_BK3_Field is
     HAL.UInt5;

   --  DDRDBG DDR34 AC swizzle BK2 0 ACTN register
   type DDRDBG_DDR34_AC_SWIZZLE_BK2_0_ACTN_Register is record
      --  Remapping input bit on actn DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_ACTN : DDRDBG_DDR34_AC_SWIZZLE_BK2_0_ACTN_DDR34_AC_SWIZZLING_ACTN_Field :=
                                 16#0#;
      --  unspecified
      Reserved_5_7            : HAL.UInt3 := 16#0#;
      --  Remapping input bit on bk1 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_BK1  : DDRDBG_DDR34_AC_SWIZZLE_BK2_0_ACTN_DDR34_AC_SWIZZLING_BK1_Field :=
                                 16#0#;
      --  unspecified
      Reserved_13_15          : HAL.UInt3 := 16#0#;
      --  Remapping input bit on bk2 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_BK2  : DDRDBG_DDR34_AC_SWIZZLE_BK2_0_ACTN_DDR34_AC_SWIZZLING_BK2_Field :=
                                 16#0#;
      --  unspecified
      Reserved_21_23          : HAL.UInt3 := 16#0#;
      --  Remapping input bit on bk3 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_BK3  : DDRDBG_DDR34_AC_SWIZZLE_BK2_0_ACTN_DDR34_AC_SWIZZLING_BK3_Field :=
                                 16#0#;
      --  unspecified
      Reserved_29_31          : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_DDR34_AC_SWIZZLE_BK2_0_ACTN_Register use record
      DDR34_AC_SWIZZLING_ACTN at 0 range 0 .. 4;
      Reserved_5_7            at 0 range 5 .. 7;
      DDR34_AC_SWIZZLING_BK1  at 0 range 8 .. 12;
      Reserved_13_15          at 0 range 13 .. 15;
      DDR34_AC_SWIZZLING_BK2  at 0 range 16 .. 20;
      Reserved_21_23          at 0 range 21 .. 23;
      DDR34_AC_SWIZZLING_BK3  at 0 range 24 .. 28;
      Reserved_29_31          at 0 range 29 .. 31;
   end record;

   subtype DDRDBG_DDR34_AC_SWIZZLE_RASN_CASN_BG1_0_DDR34_AC_SWIZZLING_BG0_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_RASN_CASN_BG1_0_DDR34_AC_SWIZZLING_BG1_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_RASN_CASN_BG1_0_DDR34_AC_SWIZZLING_CASN_Field is
     HAL.UInt5;
   subtype DDRDBG_DDR34_AC_SWIZZLE_RASN_CASN_BG1_0_DDR34_AC_SWIZZLING_RASN_Field is
     HAL.UInt5;

   --  DDRDBG DDR34 AC swizzle RASN CASN BG1_0 register
   type DDRDBG_DDR34_AC_SWIZZLE_RASN_CASN_BG1_0_Register is record
      --  Remapping input bit on bg0 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63
      DDR34_AC_SWIZZLING_BG0  : DDRDBG_DDR34_AC_SWIZZLE_RASN_CASN_BG1_0_DDR34_AC_SWIZZLING_BG0_Field :=
                                 16#0#;
      --  unspecified
      Reserved_5_7            : HAL.UInt3 := 16#0#;
      --  Remapping input bit on bg1 DDRPHYC input at the DFI interface
      --  (remapping defined in Table63
      DDR34_AC_SWIZZLING_BG1  : DDRDBG_DDR34_AC_SWIZZLE_RASN_CASN_BG1_0_DDR34_AC_SWIZZLING_BG1_Field :=
                                 16#0#;
      --  unspecified
      Reserved_13_15          : HAL.UInt3 := 16#0#;
      --  Remapping input bit on casn DDRPHYC input at the DFI interface
      --  (remapping defined in Table63
      DDR34_AC_SWIZZLING_CASN : DDRDBG_DDR34_AC_SWIZZLE_RASN_CASN_BG1_0_DDR34_AC_SWIZZLING_CASN_Field :=
                                 16#0#;
      --  unspecified
      Reserved_21_23          : HAL.UInt3 := 16#0#;
      --  Remapping input bit on rasn DDRPHYC input at the DFI interface
      --  (remapping defined in Table63)
      DDR34_AC_SWIZZLING_RASN : DDRDBG_DDR34_AC_SWIZZLE_RASN_CASN_BG1_0_DDR34_AC_SWIZZLING_RASN_Field :=
                                 16#0#;
      --  unspecified
      Reserved_29_31          : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_DDR34_AC_SWIZZLE_RASN_CASN_BG1_0_Register use record
      DDR34_AC_SWIZZLING_BG0  at 0 range 0 .. 4;
      Reserved_5_7            at 0 range 5 .. 7;
      DDR34_AC_SWIZZLING_BG1  at 0 range 8 .. 12;
      Reserved_13_15          at 0 range 13 .. 15;
      DDR34_AC_SWIZZLING_CASN at 0 range 16 .. 20;
      Reserved_21_23          at 0 range 21 .. 23;
      DDR34_AC_SWIZZLING_RASN at 0 range 24 .. 28;
      Reserved_29_31          at 0 range 29 .. 31;
   end record;

   subtype DDRDBG_DDR34_AC_SWIZZLE_WEN_DDR34_AC_SWIZZLING_WEN_Field is
     HAL.UInt5;

   --  DDRDBG DDR34 AC swizzle WEN register
   type DDRDBG_DDR34_AC_SWIZZLE_WEN_Register is record
      --  Remapping input bit on wen DDRPHYC input at the DFI interface
      --  (remapping defined in Table63
      DDR34_AC_SWIZZLING_WEN : DDRDBG_DDR34_AC_SWIZZLE_WEN_DDR34_AC_SWIZZLING_WEN_Field :=
                                16#0#;
      --  unspecified
      Reserved_5_31          : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRDBG_DDR34_AC_SWIZZLE_WEN_Register use record
      DDR34_AC_SWIZZLING_WEN at 0 range 0 .. 4;
      Reserved_5_31          at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DDRDBG address block description
   type DDRDBG_Peripheral is record
      --  DDRDBG low-power disable register
      DDRDBG_LP_DISABLE                       : aliased DDRDBG_LP_DISABLE_Register;
      --  DDRDBG bypass PCLKEN register
      DDRDBG_BYPASS_PCLKEN                    : aliased DDRDBG_BYPASS_PCLKEN_Register;
      --  DDRDBG DDRC auto SR delay register
      DDRDBG_DDRC_AUTO_SR_DELAY               : aliased DDRDBG_DDRC_AUTO_SR_DELAY_Register;
      --  DDRDBG OBSP control register
      DDRDBG_OBSP_CTRL                        : aliased DDRDBG_OBSP_CTRL_Register;
      --  DDRDBG FRAC PLL lock register
      DDRDBG_FRAC_PLL_LOCK                    : aliased DDRDBG_FRAC_PLL_LOCK_Register;
      --  DDRDBG DTO output register
      DDRDBG_DTO_OUTPUT                       : aliased DDRDBG_DTO_OUTPUT_Register;
      --  DDRDBG DFI error control register
      DDRDBG_DFI_ERRORS_CTRL                  : aliased DDRDBG_DFI_ERRORS_CTRL_Register;
      --  DDRDBG DFI error status register
      DDRDBG_DFI_ERROR_STATUS                 : aliased DDRDBG_DFI_ERROR_STATUS_Register;
      --  DDRDBG DFI error mask register
      DDRDBG_DFI_ERROR_MSK                    : aliased DDRDBG_DFI_ERROR_MSK_Register;
      --  DDRDBG DDR34 AC swizzle ADD3_0 register
      DDRDBG_DDR34_AC_SWIZZLE_ADD3_0          : aliased DDRDBG_DDR34_AC_SWIZZLE_ADD3_0_Register;
      --  DDRDBG DDR34 AC swizzle ADD7_4 register
      DDRDBG_DDR34_AC_SWIZZLE_ADD7_4          : aliased DDRDBG_DDR34_AC_SWIZZLE_ADD7_4_Register;
      --  DDRDBG DDR34 AC swizzle ADD11_8 register
      DDRDBG_DDR34_AC_SWIZZLE_ADD11_8         : aliased DDRDBG_DDR34_AC_SWIZZLE_ADD11_8_Register;
      --  DDRDBG DDR34 AC swizzle ADD15_12 register
      DDRDBG_DDR34_AC_SWIZZLE_ADD15_12        : aliased DDRDBG_DDR34_AC_SWIZZLE_ADD15_12_Register;
      --  DDRDBG DDR34 AC swizzle BK2 0 ACTN register
      DDRDBG_DDR34_AC_SWIZZLE_BK2_0_ACTN      : aliased DDRDBG_DDR34_AC_SWIZZLE_BK2_0_ACTN_Register;
      --  DDRDBG DDR34 AC swizzle RASN CASN BG1_0 register
      DDRDBG_DDR34_AC_SWIZZLE_RASN_CASN_BG1_0 : aliased DDRDBG_DDR34_AC_SWIZZLE_RASN_CASN_BG1_0_Register;
      --  DDRDBG DDR34 AC swizzle WEN register
      DDRDBG_DDR34_AC_SWIZZLE_WEN             : aliased DDRDBG_DDR34_AC_SWIZZLE_WEN_Register;
   end record
     with Volatile;

   for DDRDBG_Peripheral use record
      DDRDBG_LP_DISABLE                       at 16#0# range 0 .. 31;
      DDRDBG_BYPASS_PCLKEN                    at 16#4# range 0 .. 31;
      DDRDBG_DDRC_AUTO_SR_DELAY               at 16#8# range 0 .. 31;
      DDRDBG_OBSP_CTRL                        at 16#C# range 0 .. 31;
      DDRDBG_FRAC_PLL_LOCK                    at 16#10# range 0 .. 31;
      DDRDBG_DTO_OUTPUT                       at 16#14# range 0 .. 31;
      DDRDBG_DFI_ERRORS_CTRL                  at 16#30# range 0 .. 31;
      DDRDBG_DFI_ERROR_STATUS                 at 16#34# range 0 .. 31;
      DDRDBG_DFI_ERROR_MSK                    at 16#38# range 0 .. 31;
      DDRDBG_DDR34_AC_SWIZZLE_ADD3_0          at 16#100# range 0 .. 31;
      DDRDBG_DDR34_AC_SWIZZLE_ADD7_4          at 16#104# range 0 .. 31;
      DDRDBG_DDR34_AC_SWIZZLE_ADD11_8         at 16#108# range 0 .. 31;
      DDRDBG_DDR34_AC_SWIZZLE_ADD15_12        at 16#10C# range 0 .. 31;
      DDRDBG_DDR34_AC_SWIZZLE_BK2_0_ACTN      at 16#110# range 0 .. 31;
      DDRDBG_DDR34_AC_SWIZZLE_RASN_CASN_BG1_0 at 16#114# range 0 .. 31;
      DDRDBG_DDR34_AC_SWIZZLE_WEN             at 16#118# range 0 .. 31;
   end record;

   --  DDRDBG address block description
   DDRDBG_Periph : aliased DDRDBG_Peripheral
     with Import, Address => DDRDBG_Base;

   --  DDRDBG address block description
   DDRDBG_S_Periph : aliased DDRDBG_Peripheral
     with Import, Address => DDRDBG_S_Base;

end STM32_SVD.DDRDBG;
