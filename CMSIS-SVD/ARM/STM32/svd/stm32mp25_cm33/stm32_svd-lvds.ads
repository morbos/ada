--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.LVDS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype LVDS_CR_LK1POL_Field is HAL.UInt5;
   subtype LVDS_CR_LK2POL_Field is HAL.UInt5;

   --  LVDS configuration register
   type LVDS_CR_Register is record
      --  LVDS PHY enable
      LVDSEN         : Boolean := False;
      --  Horizontal synchronization polarity
      HSPOL          : Boolean := False;
      --  Vertical synchronization polarity
      VSPOL          : Boolean := False;
      --  Data enable polarity
      DEPOL          : Boolean := False;
      --  Control internal (software controlled bit, that can be inserted among
      --  output data)
      CI             : Boolean := False;
      --  Link mode, for both links, which impacts the clock used The LVDS PHY
      --  generates a clock at double the pixel rate: in Single-link mode, the
      --  pixel generation is set at half the double-pixel-rate clock, while in
      --  Dual-link mode, the pixel generation is done at the
      --  double-pixel-rate, as each PHY receives half the pixel rate
      --  (seeFigure466: Display subsystem clock diagram).
      LKMOD          : Boolean := False;
      --  Link phase, for both links
      LKPHA          : Boolean := False;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Link-1 output polarity, defined per output data/clock lane, from
      --  Lane-[4:0]
      LK1POL         : LVDS_CR_LK1POL_Field := 16#0#;
      --  Link-2 output polarity, defined per output data/clock lane, from
      --  Lane-[4:0]
      LK2POL         : LVDS_CR_LK2POL_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_CR_Register use record
      LVDSEN         at 0 range 0 .. 0;
      HSPOL          at 0 range 1 .. 1;
      VSPOL          at 0 range 2 .. 2;
      DEPOL          at 0 range 3 .. 3;
      CI             at 0 range 4 .. 4;
      LKMOD          at 0 range 5 .. 5;
      LKPHA          at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      LK1POL         at 0 range 16 .. 20;
      LK2POL         at 0 range 21 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  LVDS_DMLCR_MAP array element
   subtype LVDS_DMLCR_MAP_Element is HAL.UInt5;

   --  LVDS_DMLCR_MAP array
   type LVDS_DMLCR_MAP_Field_Array is array (0 .. 3)
     of LVDS_DMLCR_MAP_Element
     with Component_Size => 5, Size => 20;

   --  Type definition for LVDS_DMLCR_MAP
   type LVDS_DMLCR_MAP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MAP as a value
            Val : HAL.UInt20;
         when True =>
            --  MAP as an array
            Arr : LVDS_DMLCR_MAP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for LVDS_DMLCR_MAP_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  LVDS data mapping LSB configuration register 0
   type LVDS_DMLCR_Register is record
      --  Mapping for bit 0 of that data lane
      MAP            : LVDS_DMLCR_MAP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_DMLCR_Register use record
      MAP            at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  LVDS_DMMCR_MAP array element
   subtype LVDS_DMMCR_MAP_Element is HAL.UInt5;

   --  LVDS_DMMCR_MAP array
   type LVDS_DMMCR_MAP_Field_Array is array (4 .. 6)
     of LVDS_DMMCR_MAP_Element
     with Component_Size => 5, Size => 15;

   --  Type definition for LVDS_DMMCR_MAP
   type LVDS_DMMCR_MAP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MAP as a value
            Val : HAL.UInt15;
         when True =>
            --  MAP as an array
            Arr : LVDS_DMMCR_MAP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for LVDS_DMMCR_MAP_Field use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  LVDS data mapping MSB configuration register 0
   type LVDS_DMMCR_Register is record
      --  Mapping for bit 4 of that data lane (same content definition as
      --  LVDS_DMLCR0.MAP0)
      MAP            : LVDS_DMMCR_MAP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_DMMCR_Register use record
      MAP            at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  LVDS_CDL1CR_DISTR array element
   subtype LVDS_CDL1CR_DISTR_Element is HAL.UInt4;

   --  LVDS_CDL1CR_DISTR array
   type LVDS_CDL1CR_DISTR_Field_Array is array (0 .. 4)
     of LVDS_CDL1CR_DISTR_Element
     with Component_Size => 4, Size => 20;

   --  Type definition for LVDS_CDL1CR_DISTR
   type LVDS_CDL1CR_DISTR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DISTR as a value
            Val : HAL.UInt20;
         when True =>
            --  DISTR as an array
            Arr : LVDS_CDL1CR_DISTR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for LVDS_CDL1CR_DISTR_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  LVDS channel distribution link 1configuration register
   type LVDS_CDL1CR_Register is record
      --  channel distribution for Lane 0 Other: Reserved
      DISTR          : LVDS_CDL1CR_DISTR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_CDL1CR_Register use record
      DISTR          at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  LVDS_CDL2CR_DISTR array element
   subtype LVDS_CDL2CR_DISTR_Element is HAL.UInt4;

   --  LVDS_CDL2CR_DISTR array
   type LVDS_CDL2CR_DISTR_Field_Array is array (0 .. 4)
     of LVDS_CDL2CR_DISTR_Element
     with Component_Size => 4, Size => 20;

   --  Type definition for LVDS_CDL2CR_DISTR
   type LVDS_CDL2CR_DISTR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DISTR as a value
            Val : HAL.UInt20;
         when True =>
            --  DISTR as an array
            Arr : LVDS_CDL2CR_DISTR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for LVDS_CDL2CR_DISTR_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   subtype LVDS_CDL2CR_PRBS_Field is HAL.UInt2;

   --  LVDS channel distribution link 2 configuration register
   type LVDS_CDL2CR_Register is record
      --  channel distribution for Lane 0 Other: Reserved
      DISTR          : LVDS_CDL2CR_DISTR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  PRBS polynomial type
      PRBS           : LVDS_CDL2CR_PRBS_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_CDL2CR_Register use record
      DISTR          at 0 range 0 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PRBS           at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  LVDS PHY-Master global control register
   type LVDS_PMGCR_Register is record
      --  Enable LVDS-PHY bit_clk clock
      MST_BIT_CLK_OUT_ENABLE : Boolean := False;
      --  unspecified
      Reserved_1_3           : HAL.UInt3 := 16#0#;
      --  Enable LVDS-PHY ls_clk clock
      MST_LS_CLK_OUT_ENABLE  : Boolean := False;
      --  unspecified
      Reserved_5_7           : HAL.UInt3 := 16#0#;
      --  Enable LVDS-PHY dp_clk clock
      MST_DP_CLK_OUT_ENABLE  : Boolean := False;
      --  unspecified
      Reserved_9_23          : HAL.UInt15 := 16#0#;
      --  When set to 0, this bit places the LVDS-PHY digital section in reset
      --  state.
      MST_RSTZ               : Boolean := False;
      --  Output divider reset
      MST_DIVIDERS_RSTN      : Boolean := False;
      --  unspecified
      Reserved_26_31         : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMGCR_Register use record
      MST_BIT_CLK_OUT_ENABLE at 0 range 0 .. 0;
      Reserved_1_3           at 0 range 1 .. 3;
      MST_LS_CLK_OUT_ENABLE  at 0 range 4 .. 4;
      Reserved_5_7           at 0 range 5 .. 7;
      MST_DP_CLK_OUT_ENABLE  at 0 range 8 .. 8;
      Reserved_9_23          at 0 range 9 .. 23;
      MST_RSTZ               at 0 range 24 .. 24;
      MST_DIVIDERS_RSTN      at 0 range 25 .. 25;
      Reserved_26_31         at 0 range 26 .. 31;
   end record;

   --  LVDS_PMPEACR_MST_PRE_EMPH_AMP_DL array element
   subtype LVDS_PMPEACR_MST_PRE_EMPH_AMP_DL_Element is HAL.UInt4;

   --  LVDS_PMPEACR_MST_PRE_EMPH_AMP_DL array
   type LVDS_PMPEACR_MST_PRE_EMPH_AMP_DL_Field_Array is array (0 .. 4)
     of LVDS_PMPEACR_MST_PRE_EMPH_AMP_DL_Element
     with Component_Size => 4, Size => 20;

   --  Type definition for LVDS_PMPEACR_MST_PRE_EMPH_AMP_DL
   type LVDS_PMPEACR_MST_PRE_EMPH_AMP_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MST_PRE_EMPH_AMP_DL as a value
            Val : HAL.UInt20;
         when True =>
            --  MST_PRE_EMPH_AMP_DL as an array
            Arr : LVDS_PMPEACR_MST_PRE_EMPH_AMP_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for LVDS_PMPEACR_MST_PRE_EMPH_AMP_DL_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  LVDS PHY-Master pre-emphasis amplitude control register
   type LVDS_PMPEACR_Register is record
      --  Amplitude control for pre-mphasis for lane0
      MST_PRE_EMPH_AMP_DL : LVDS_PMPEACR_MST_PRE_EMPH_AMP_DL_Field :=
                             (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31      : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMPEACR_Register use record
      MST_PRE_EMPH_AMP_DL at 0 range 0 .. 19;
      Reserved_20_31      at 0 range 20 .. 31;
   end record;

   subtype LVDS_PMPETCR_MST_PRE_EMPH_TIME_DL0_Field is HAL.UInt2;
   subtype LVDS_PMPETCR_MST_PRE_EMPH_TIME_DL1_Field is HAL.UInt2;
   subtype LVDS_PMPETCR_MST_PRE_EMPH_TIME_DL2_Field is HAL.UInt2;
   subtype LVDS_PMPETCR_MST_PRE_EMPH_TIME_DL3_Field is HAL.UInt2;
   subtype LVDS_PMPETCR_MST_PRE_EMPH_TIME_DL4_Field is HAL.UInt2;

   --  LVDS PHY-Master pre-emphasis time control register
   type LVDS_PMPETCR_Register is record
      --  Time duration control for pre-emphasis for lane0
      MST_PRE_EMPH_TIME_DL0 : LVDS_PMPETCR_MST_PRE_EMPH_TIME_DL0_Field :=
                               16#0#;
      --  unspecified
      Reserved_2_3          : HAL.UInt2 := 16#0#;
      --  Time duration control for pre-emphasis for lane1
      MST_PRE_EMPH_TIME_DL1 : LVDS_PMPETCR_MST_PRE_EMPH_TIME_DL1_Field :=
                               16#0#;
      --  unspecified
      Reserved_6_7          : HAL.UInt2 := 16#0#;
      --  Time duration control for pre-emphasis for lane2
      MST_PRE_EMPH_TIME_DL2 : LVDS_PMPETCR_MST_PRE_EMPH_TIME_DL2_Field :=
                               16#0#;
      --  unspecified
      Reserved_10_11        : HAL.UInt2 := 16#0#;
      --  Time duration control for pre-emphasis for lane3
      MST_PRE_EMPH_TIME_DL3 : LVDS_PMPETCR_MST_PRE_EMPH_TIME_DL3_Field :=
                               16#0#;
      --  unspecified
      Reserved_14_15        : HAL.UInt2 := 16#0#;
      --  Time duration control for pre-emphasis for lane4
      MST_PRE_EMPH_TIME_DL4 : LVDS_PMPETCR_MST_PRE_EMPH_TIME_DL4_Field :=
                               16#0#;
      --  unspecified
      Reserved_18_31        : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMPETCR_Register use record
      MST_PRE_EMPH_TIME_DL0 at 0 range 0 .. 1;
      Reserved_2_3          at 0 range 2 .. 3;
      MST_PRE_EMPH_TIME_DL1 at 0 range 4 .. 5;
      Reserved_6_7          at 0 range 6 .. 7;
      MST_PRE_EMPH_TIME_DL2 at 0 range 8 .. 9;
      Reserved_10_11        at 0 range 10 .. 11;
      MST_PRE_EMPH_TIME_DL3 at 0 range 12 .. 13;
      Reserved_14_15        at 0 range 14 .. 15;
      MST_PRE_EMPH_TIME_DL4 at 0 range 16 .. 17;
      Reserved_18_31        at 0 range 18 .. 31;
   end record;

   subtype LVDS_PMCMCR1_MST_CM_AMP_CTRL_DL0_Field is HAL.UInt4;
   subtype LVDS_PMCMCR1_MST_CM_AMP_CTRL_DL1_Field is HAL.UInt4;
   subtype LVDS_PMCMCR1_MST_CM_AMP_CTRL_DL2_Field is HAL.UInt4;
   subtype LVDS_PMCMCR1_MST_CM_AMP_CTRL_DL3_Field is HAL.UInt4;

   --  LVDS PHY-Master current mode control register 1
   type LVDS_PMCMCR1_Register is record
      --  Amplitude control for current mode driver, data lane0
      MST_CM_AMP_CTRL_DL0    : LVDS_PMCMCR1_MST_CM_AMP_CTRL_DL0_Field :=
                                16#0#;
      --  Enable for current mode driver, data lane0
      MST_CM_EN_DL0          : Boolean := False;
      --  common mode of datalane0 When high, reference is derived from AVDD_IO
      --  voltage.
      MST_CM_USE_VDD_REF_DL0 : Boolean := False;
      --  common mode of data lane0 When high, reference is mid voltage of the
      --  driver levels.
      MST_CM_USE_VM_VMID_DL0 : Boolean := False;
      --  unspecified
      Reserved_7_7           : HAL.Bit := 16#0#;
      --  Amplitude control for current mode driver, data lane1
      MST_CM_AMP_CTRL_DL1    : LVDS_PMCMCR1_MST_CM_AMP_CTRL_DL1_Field :=
                                16#0#;
      --  Enable for current mode driver, data lane1
      MST_CM_EN_DL1          : Boolean := False;
      --  common mode of data lane1 When high, reference is derived from
      --  AVDD_IO voltage.
      MST_CM_USE_VDD_REF_DL1 : Boolean := False;
      --  common mode of data lane1 When high, reference is mid voltage of the
      --  driver levels.
      MST_CM_USE_VM_VMID_DL1 : Boolean := False;
      --  unspecified
      Reserved_15_15         : HAL.Bit := 16#0#;
      --  Amplitude control for current mode driver, data lane2
      MST_CM_AMP_CTRL_DL2    : LVDS_PMCMCR1_MST_CM_AMP_CTRL_DL2_Field :=
                                16#0#;
      --  Enable for current mode driver, data lane2
      MST_CM_EN_DL2          : Boolean := False;
      --  common mode of data lane2 When high, reference is derived from
      --  AVDD_IO voltage.
      MST_CM_USE_VDD_REF_DL2 : Boolean := False;
      --  common mode of data lane2 When high, reference is mid voltage of the
      --  driver levels.
      MST_CM_USE_VM_VMID_DL2 : Boolean := False;
      --  unspecified
      Reserved_23_23         : HAL.Bit := 16#0#;
      --  Amplitude control for current mode driver, data lane3
      MST_CM_AMP_CTRL_DL3    : LVDS_PMCMCR1_MST_CM_AMP_CTRL_DL3_Field :=
                                16#0#;
      --  Enable for current mode driver, data lane3
      MST_CM_EN_DL3          : Boolean := False;
      --  common mode of data lane3 When high, reference is derived from
      --  AVDD_IO voltage.
      MST_CM_USE_VDD_REF_DL3 : Boolean := False;
      --  common mode of datalane3 When high, reference is mid voltage of the
      --  driver levels.
      MST_CM_USE_VM_VMID_DL3 : Boolean := False;
      --  unspecified
      Reserved_31_31         : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMCMCR1_Register use record
      MST_CM_AMP_CTRL_DL0    at 0 range 0 .. 3;
      MST_CM_EN_DL0          at 0 range 4 .. 4;
      MST_CM_USE_VDD_REF_DL0 at 0 range 5 .. 5;
      MST_CM_USE_VM_VMID_DL0 at 0 range 6 .. 6;
      Reserved_7_7           at 0 range 7 .. 7;
      MST_CM_AMP_CTRL_DL1    at 0 range 8 .. 11;
      MST_CM_EN_DL1          at 0 range 12 .. 12;
      MST_CM_USE_VDD_REF_DL1 at 0 range 13 .. 13;
      MST_CM_USE_VM_VMID_DL1 at 0 range 14 .. 14;
      Reserved_15_15         at 0 range 15 .. 15;
      MST_CM_AMP_CTRL_DL2    at 0 range 16 .. 19;
      MST_CM_EN_DL2          at 0 range 20 .. 20;
      MST_CM_USE_VDD_REF_DL2 at 0 range 21 .. 21;
      MST_CM_USE_VM_VMID_DL2 at 0 range 22 .. 22;
      Reserved_23_23         at 0 range 23 .. 23;
      MST_CM_AMP_CTRL_DL3    at 0 range 24 .. 27;
      MST_CM_EN_DL3          at 0 range 28 .. 28;
      MST_CM_USE_VDD_REF_DL3 at 0 range 29 .. 29;
      MST_CM_USE_VM_VMID_DL3 at 0 range 30 .. 30;
      Reserved_31_31         at 0 range 31 .. 31;
   end record;

   subtype LVDS_PMCMCR2_MST_CM_AMP_CTRL_DL4_Field is HAL.UInt4;

   --  LVDS PHY-Master current mode control register 2
   type LVDS_PMCMCR2_Register is record
      --  Amplitude control for current mode driver, data lane4
      MST_CM_AMP_CTRL_DL4    : LVDS_PMCMCR2_MST_CM_AMP_CTRL_DL4_Field :=
                                16#0#;
      --  Enable for current mode driver, data lane4
      MST_CM_EN_DL4          : Boolean := False;
      --  common mode of data lane4 When high, reference is derived from
      --  AVDD_IO voltage.
      MST_CM_USE_VDD_REF_DL4 : Boolean := False;
      --  common mode of data lane4 When high, reference is mid voltage of the
      --  driver level.
      MST_CM_USE_VM_VMID_DL4 : Boolean := False;
      --  unspecified
      Reserved_7_15          : HAL.UInt9 := 16#0#;
      --  AC Coupling Mode.
      MST_AC_COUPLING_MODE   : Boolean := False;
      --  unspecified
      Reserved_17_31         : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMCMCR2_Register use record
      MST_CM_AMP_CTRL_DL4    at 0 range 0 .. 3;
      MST_CM_EN_DL4          at 0 range 4 .. 4;
      MST_CM_USE_VDD_REF_DL4 at 0 range 5 .. 5;
      MST_CM_USE_VM_VMID_DL4 at 0 range 6 .. 6;
      Reserved_7_15          at 0 range 7 .. 15;
      MST_AC_COUPLING_MODE   at 0 range 16 .. 16;
      Reserved_17_31         at 0 range 17 .. 31;
   end record;

   --  LVDS_PMRLPCR_MST_RX_LOOP_BACK_CFG_DL array element
   subtype LVDS_PMRLPCR_MST_RX_LOOP_BACK_CFG_DL_Element is HAL.UInt4;

   --  LVDS_PMRLPCR_MST_RX_LOOP_BACK_CFG_DL array
   type LVDS_PMRLPCR_MST_RX_LOOP_BACK_CFG_DL_Field_Array is array (0 .. 4)
     of LVDS_PMRLPCR_MST_RX_LOOP_BACK_CFG_DL_Element
     with Component_Size => 4, Size => 20;

   --  Type definition for LVDS_PMRLPCR_MST_RX_LOOP_BACK_CFG_DL
   type LVDS_PMRLPCR_MST_RX_LOOP_BACK_CFG_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MST_RX_LOOP_BACK_CFG_DL as a value
            Val : HAL.UInt20;
         when True =>
            --  MST_RX_LOOP_BACK_CFG_DL as an array
            Arr : LVDS_PMRLPCR_MST_RX_LOOP_BACK_CFG_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for LVDS_PMRLPCR_MST_RX_LOOP_BACK_CFG_DL_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  LVDS_PMRLPCR_MST_EN_LOOP_BACK_DL array
   type LVDS_PMRLPCR_MST_EN_LOOP_BACK_DL_Field_Array is array (0 .. 4)
     of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for LVDS_PMRLPCR_MST_EN_LOOP_BACK_DL
   type LVDS_PMRLPCR_MST_EN_LOOP_BACK_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MST_EN_LOOP_BACK_DL as a value
            Val : HAL.UInt5;
         when True =>
            --  MST_EN_LOOP_BACK_DL as an array
            Arr : LVDS_PMRLPCR_MST_EN_LOOP_BACK_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for LVDS_PMRLPCR_MST_EN_LOOP_BACK_DL_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  LVDS PHY-Master Rx loopback control register
   type LVDS_PMRLPCR_Register is record
      --  Rx loop back configuration for data lane0
      MST_RX_LOOP_BACK_CFG_DL : LVDS_PMRLPCR_MST_RX_LOOP_BACK_CFG_DL_Field :=
                                 (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_23          : HAL.UInt4 := 16#0#;
      --  Enable the loop back RX used for continuous monitoring, datalane0
      MST_EN_LOOP_BACK_DL     : LVDS_PMRLPCR_MST_EN_LOOP_BACK_DL_Field :=
                                 (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_29_31          : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMRLPCR_Register use record
      MST_RX_LOOP_BACK_CFG_DL at 0 range 0 .. 19;
      Reserved_20_23          at 0 range 20 .. 23;
      MST_EN_LOOP_BACK_DL     at 0 range 24 .. 28;
      Reserved_29_31          at 0 range 29 .. 31;
   end record;

   --  LVDS PHY-master Rx loopback status register
   type LVDS_PMRLPSR_Register is record
      --  Read-only. Rx loop back output for lane0
      MST_RX_LOOP_BACK_A_DL0 : Boolean;
      --  unspecified
      Reserved_1_3           : HAL.UInt3;
      --  Read-only. Rx loop back output for lane1
      MST_RX_LOOP_BACK_A_DL1 : Boolean;
      --  unspecified
      Reserved_5_7           : HAL.UInt3;
      --  Read-only. Rx loop back output for lane2
      MST_RX_LOOP_BACK_A_DL2 : Boolean;
      --  unspecified
      Reserved_9_11          : HAL.UInt3;
      --  Read-only. Rx loop back output for lane3
      MST_RX_LOOP_BACK_A_DL3 : Boolean;
      --  unspecified
      Reserved_13_15         : HAL.UInt3;
      --  Read-only. Rx loop back output for lane4
      MST_RX_LOOP_BACK_A_DL4 : Boolean;
      --  unspecified
      Reserved_17_31         : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMRLPSR_Register use record
      MST_RX_LOOP_BACK_A_DL0 at 0 range 0 .. 0;
      Reserved_1_3           at 0 range 1 .. 3;
      MST_RX_LOOP_BACK_A_DL1 at 0 range 4 .. 4;
      Reserved_5_7           at 0 range 5 .. 7;
      MST_RX_LOOP_BACK_A_DL2 at 0 range 8 .. 8;
      Reserved_9_11          at 0 range 9 .. 11;
      MST_RX_LOOP_BACK_A_DL3 at 0 range 12 .. 12;
      Reserved_13_15         at 0 range 13 .. 15;
      MST_RX_LOOP_BACK_A_DL4 at 0 range 16 .. 16;
      Reserved_17_31         at 0 range 17 .. 31;
   end record;

   --  LVDS_PMFCR_MST_FLIP_CLK_EDGE_ANA_DL array
   type LVDS_PMFCR_MST_FLIP_CLK_EDGE_ANA_DL_Field_Array is array (0 .. 4)
     of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for LVDS_PMFCR_MST_FLIP_CLK_EDGE_ANA_DL
   type LVDS_PMFCR_MST_FLIP_CLK_EDGE_ANA_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MST_FLIP_CLK_EDGE_ANA_DL as a value
            Val : HAL.UInt5;
         when True =>
            --  MST_FLIP_CLK_EDGE_ANA_DL as an array
            Arr : LVDS_PMFCR_MST_FLIP_CLK_EDGE_ANA_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for LVDS_PMFCR_MST_FLIP_CLK_EDGE_ANA_DL_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  LVDS_PMFCR_MST_FLIP_CLK_EDGE_DL array
   type LVDS_PMFCR_MST_FLIP_CLK_EDGE_DL_Field_Array is array (0 .. 4)
     of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for LVDS_PMFCR_MST_FLIP_CLK_EDGE_DL
   type LVDS_PMFCR_MST_FLIP_CLK_EDGE_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MST_FLIP_CLK_EDGE_DL as a value
            Val : HAL.UInt5;
         when True =>
            --  MST_FLIP_CLK_EDGE_DL as an array
            Arr : LVDS_PMFCR_MST_FLIP_CLK_EDGE_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for LVDS_PMFCR_MST_FLIP_CLK_EDGE_DL_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  LVDS PHY-Master flipedge control register
   type LVDS_PMFCR_Register is record
      --  Flips the clock edge used by the pre-driver, data lane0
      MST_FLIP_CLK_EDGE_ANA_DL : LVDS_PMFCR_MST_FLIP_CLK_EDGE_ANA_DL_Field :=
                                  (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_15            : HAL.UInt11 := 16#0#;
      --  Flips the clock edge used by the first analog stage to resample the
      --  incoming data stream, data lane0
      MST_FLIP_CLK_EDGE_DL     : LVDS_PMFCR_MST_FLIP_CLK_EDGE_DL_Field :=
                                  (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_21_31           : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMFCR_Register use record
      MST_FLIP_CLK_EDGE_ANA_DL at 0 range 0 .. 4;
      Reserved_5_15            at 0 range 5 .. 15;
      MST_FLIP_CLK_EDGE_DL     at 0 range 16 .. 20;
      Reserved_21_31           at 0 range 21 .. 31;
   end record;

   subtype LVDS_PMSCR_MST_SER_SWAP_DPDN_Field is HAL.UInt5;

   --  LVDS PHY-Master serial control register
   type LVDS_PMSCR_Register is record
      --  Inverts output data (1 bit per lane
      MST_SER_SWAP_DPDN : LVDS_PMSCR_MST_SER_SWAP_DPDN_Field := 16#0#;
      --  unspecified
      Reserved_5_15     : HAL.UInt11 := 16#0#;
      --  Indicates transmission of data
      MST_SER_DATA_OK   : Boolean := False;
      --  unspecified
      Reserved_17_31    : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMSCR_Register use record
      MST_SER_SWAP_DPDN at 0 range 0 .. 4;
      Reserved_5_15     at 0 range 5 .. 15;
      MST_SER_DATA_OK   at 0 range 16 .. 16;
      Reserved_17_31    at 0 range 17 .. 31;
   end record;

   subtype LVDS_PMSCR1_MST_DRV_A0_SPARE_Field is HAL.UInt8;
   subtype LVDS_PMSCR1_MST_DRV_A1_SPARE_Field is HAL.UInt8;
   subtype LVDS_PMSCR1_MST_DRV_A2_SPARE_Field is HAL.UInt8;
   subtype LVDS_PMSCR1_MST_DRV_A3_SPARE_Field is HAL.UInt8;

   --  LVDS PHY-Master spare control register 1
   type LVDS_PMSCR1_Register is record
      --  Spare inputs for data lane0
      MST_DRV_A0_SPARE : LVDS_PMSCR1_MST_DRV_A0_SPARE_Field := 16#0#;
      --  Spare inputs for data lane1
      MST_DRV_A1_SPARE : LVDS_PMSCR1_MST_DRV_A1_SPARE_Field := 16#0#;
      --  Spare inputs for data lane2
      MST_DRV_A2_SPARE : LVDS_PMSCR1_MST_DRV_A2_SPARE_Field := 16#0#;
      --  Spare inputs for data lane3
      MST_DRV_A3_SPARE : LVDS_PMSCR1_MST_DRV_A3_SPARE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMSCR1_Register use record
      MST_DRV_A0_SPARE at 0 range 0 .. 7;
      MST_DRV_A1_SPARE at 0 range 8 .. 15;
      MST_DRV_A2_SPARE at 0 range 16 .. 23;
      MST_DRV_A3_SPARE at 0 range 24 .. 31;
   end record;

   subtype LVDS_PMSCR2_MST_DRV_A4_SPARE_Field is HAL.UInt8;

   --  LVDS PHY-Master spare control register 2
   type LVDS_PMSCR2_Register is record
      --  Spare inputs for data lane4
      MST_DRV_A4_SPARE : LVDS_PMSCR2_MST_DRV_A4_SPARE_Field := 16#0#;
      --  unspecified
      Reserved_8_31    : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMSCR2_Register use record
      MST_DRV_A4_SPARE at 0 range 0 .. 7;
      Reserved_8_31    at 0 range 8 .. 31;
   end record;

   --  LVDS PHY-Master bias control register 1
   type LVDS_PMBCR1_Register is record
      --  Enable the local bias at data lane0
      MST_EN_BIAS_DL0 : Boolean := False;
      --  unspecified
      Reserved_1_3    : HAL.UInt3 := 16#0#;
      --  Enable the local bias at data lane1
      MST_EN_BIAS_DL1 : Boolean := False;
      --  unspecified
      Reserved_5_7    : HAL.UInt3 := 16#0#;
      --  Enable the local bias at data lane2
      MST_EN_BIAS_DL2 : Boolean := False;
      --  unspecified
      Reserved_9_11   : HAL.UInt3 := 16#0#;
      --  Enable the local bias at data lane3
      MST_EN_BIAS_DL3 : Boolean := False;
      --  unspecified
      Reserved_13_15  : HAL.UInt3 := 16#0#;
      --  Enable the local bias at data lane4
      MST_EN_BIAS_DL4 : Boolean := False;
      --  unspecified
      Reserved_17_31  : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMBCR1_Register use record
      MST_EN_BIAS_DL0 at 0 range 0 .. 0;
      Reserved_1_3    at 0 range 1 .. 3;
      MST_EN_BIAS_DL1 at 0 range 4 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      MST_EN_BIAS_DL2 at 0 range 8 .. 8;
      Reserved_9_11   at 0 range 9 .. 11;
      MST_EN_BIAS_DL3 at 0 range 12 .. 12;
      Reserved_13_15  at 0 range 13 .. 15;
      MST_EN_BIAS_DL4 at 0 range 16 .. 16;
      Reserved_17_31  at 0 range 17 .. 31;
   end record;

   subtype LVDS_PMBCR2_MST_BIAS_TRIM_Field is HAL.UInt15;
   subtype LVDS_PMBCR2_MST_BIAS_VREFTRIM_Field is HAL.UInt12;

   --  LVDS PHY-Master bias control register 2
   type LVDS_PMBCR2_Register is record
      --  0x0: 27.71 uA
      MST_BIAS_TRIM     : LVDS_PMBCR2_MST_BIAS_TRIM_Field := 16#0#;
      --  unspecified
      Reserved_15_15    : HAL.Bit := 16#0#;
      --  None
      MST_BIAS_VREFTRIM : LVDS_PMBCR2_MST_BIAS_VREFTRIM_Field := 16#0#;
      --  LVDS macro global bias enable
      MST_BIAS_EN       : Boolean := False;
      --  Selection for current generation internal reference
      MST_BIAS_VREF_SEL : Boolean := False;
      --  unspecified
      Reserved_30_31    : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMBCR2_Register use record
      MST_BIAS_TRIM     at 0 range 0 .. 14;
      Reserved_15_15    at 0 range 15 .. 15;
      MST_BIAS_VREFTRIM at 0 range 16 .. 27;
      MST_BIAS_EN       at 0 range 28 .. 28;
      MST_BIAS_VREF_SEL at 0 range 29 .. 29;
      Reserved_30_31    at 0 range 30 .. 31;
   end record;

   --  LVDS PHY-Master bias control register 3
   type LVDS_PMBCR3_Register is record
      --  Enable the voltage mode driver for data lane0
      MST_VM_EN_DL0          : Boolean := False;
      --  Bias booster for the voltage mode driver LDOS, data lane0
      MST_VM_BOOST_BIAS_DL0  : Boolean := False;
      --  Sets the voltage mode driver to use a reference derived from the
      --  power supply, data lane0
      MST_VM_USE_VDD_REF_DL0 : Boolean := False;
      --  unspecified
      Reserved_3_3           : HAL.Bit := 16#0#;
      --  Enable the voltage mode driver for data lane1
      MST_VM_EN_DL1          : Boolean := False;
      --  Bias booster for the voltage mode driver LDOS, data lane1
      MST_VM_BOOST_BIAS_DL1  : Boolean := False;
      --  Sets the voltage mode driver to use a reference derived from the
      --  power supply, data lane1
      MST_VM_USE_VDD_REF_DL1 : Boolean := False;
      --  unspecified
      Reserved_7_7           : HAL.Bit := 16#0#;
      --  Enable the voltage mode driver for data lane2
      MST_VM_EN_DL2          : Boolean := False;
      --  Bias booster for the voltage mode driver LDOS, data lane2
      MST_VM_BOOST_BIAS_DL2  : Boolean := False;
      --  Sets the voltage mode driver to use a reference derived from the
      --  power supply, data lane2
      MST_VM_USE_VDD_REF_DL2 : Boolean := False;
      --  unspecified
      Reserved_11_11         : HAL.Bit := 16#0#;
      --  Enable the voltage mode driver for data lane3
      MST_VM_EN_DL3          : Boolean := False;
      --  Bias booster for the voltage mode driver LDOS, data lane3
      MST_VM_BOOST_BIAS_DL3  : Boolean := False;
      --  Sets the voltage mode driver to use a reference derived from the
      --  power supply, data lane3
      MST_VM_USE_VDD_REF_DL3 : Boolean := False;
      --  unspecified
      Reserved_15_15         : HAL.Bit := 16#0#;
      --  Enable the voltage mode driver for data lane4
      MST_VM_EN_DL4          : Boolean := False;
      --  Bias booster for the voltage mode driver LDOS, data lane4
      MST_VM_BOOST_BIAS_DL4  : Boolean := False;
      --  Sets the voltage mode driver to use a reference derived from the
      --  power supply, data lane4
      MST_VM_USE_VDD_REF_DL4 : Boolean := False;
      --  unspecified
      Reserved_19_31         : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMBCR3_Register use record
      MST_VM_EN_DL0          at 0 range 0 .. 0;
      MST_VM_BOOST_BIAS_DL0  at 0 range 1 .. 1;
      MST_VM_USE_VDD_REF_DL0 at 0 range 2 .. 2;
      Reserved_3_3           at 0 range 3 .. 3;
      MST_VM_EN_DL1          at 0 range 4 .. 4;
      MST_VM_BOOST_BIAS_DL1  at 0 range 5 .. 5;
      MST_VM_USE_VDD_REF_DL1 at 0 range 6 .. 6;
      Reserved_7_7           at 0 range 7 .. 7;
      MST_VM_EN_DL2          at 0 range 8 .. 8;
      MST_VM_BOOST_BIAS_DL2  at 0 range 9 .. 9;
      MST_VM_USE_VDD_REF_DL2 at 0 range 10 .. 10;
      Reserved_11_11         at 0 range 11 .. 11;
      MST_VM_EN_DL3          at 0 range 12 .. 12;
      MST_VM_BOOST_BIAS_DL3  at 0 range 13 .. 13;
      MST_VM_USE_VDD_REF_DL3 at 0 range 14 .. 14;
      Reserved_15_15         at 0 range 15 .. 15;
      MST_VM_EN_DL4          at 0 range 16 .. 16;
      MST_VM_BOOST_BIAS_DL4  at 0 range 17 .. 17;
      MST_VM_USE_VDD_REF_DL4 at 0 range 18 .. 18;
      Reserved_19_31         at 0 range 19 .. 31;
   end record;

   --  LVDS_PMBCR4_MST_VM_VOUT_VOH_CTRL_DL array element
   subtype LVDS_PMBCR4_MST_VM_VOUT_VOH_CTRL_DL_Element is HAL.UInt4;

   --  LVDS_PMBCR4_MST_VM_VOUT_VOH_CTRL_DL array
   type LVDS_PMBCR4_MST_VM_VOUT_VOH_CTRL_DL_Field_Array is array (0 .. 4)
     of LVDS_PMBCR4_MST_VM_VOUT_VOH_CTRL_DL_Element
     with Component_Size => 4, Size => 20;

   --  Type definition for LVDS_PMBCR4_MST_VM_VOUT_VOH_CTRL_DL
   type LVDS_PMBCR4_MST_VM_VOUT_VOH_CTRL_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MST_VM_VOUT_VOH_CTRL_DL as a value
            Val : HAL.UInt20;
         when True =>
            --  MST_VM_VOUT_VOH_CTRL_DL as an array
            Arr : LVDS_PMBCR4_MST_VM_VOUT_VOH_CTRL_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for LVDS_PMBCR4_MST_VM_VOUT_VOH_CTRL_DL_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  LVDS PHY-Master bias control register 4
   type LVDS_PMBCR4_Register is record
      --  Fine tuning for the voltage mode driver VOH, datalane0
      MST_VM_VOUT_VOH_CTRL_DL : LVDS_PMBCR4_MST_VM_VOUT_VOH_CTRL_DL_Field :=
                                 (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31          : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMBCR4_Register use record
      MST_VM_VOUT_VOH_CTRL_DL at 0 range 0 .. 19;
      Reserved_20_31          at 0 range 20 .. 31;
   end record;

   --  LVDS_PMBCR5_MST_VM_VOUT_VOL_CTRL_DL array element
   subtype LVDS_PMBCR5_MST_VM_VOUT_VOL_CTRL_DL_Element is HAL.UInt4;

   --  LVDS_PMBCR5_MST_VM_VOUT_VOL_CTRL_DL array
   type LVDS_PMBCR5_MST_VM_VOUT_VOL_CTRL_DL_Field_Array is array (0 .. 4)
     of LVDS_PMBCR5_MST_VM_VOUT_VOL_CTRL_DL_Element
     with Component_Size => 4, Size => 20;

   --  Type definition for LVDS_PMBCR5_MST_VM_VOUT_VOL_CTRL_DL
   type LVDS_PMBCR5_MST_VM_VOUT_VOL_CTRL_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MST_VM_VOUT_VOL_CTRL_DL as a value
            Val : HAL.UInt20;
         when True =>
            --  MST_VM_VOUT_VOL_CTRL_DL as an array
            Arr : LVDS_PMBCR5_MST_VM_VOUT_VOL_CTRL_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for LVDS_PMBCR5_MST_VM_VOUT_VOL_CTRL_DL_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  LVDS PHY-Master bias control register 5
   type LVDS_PMBCR5_Register is record
      --  Fine tuning for the voltage mode driver VOL, datalane0
      MST_VM_VOUT_VOL_CTRL_DL : LVDS_PMBCR5_MST_VM_VOUT_VOL_CTRL_DL_Field :=
                                 (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31          : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMBCR5_Register use record
      MST_VM_VOUT_VOL_CTRL_DL at 0 range 0 .. 19;
      Reserved_20_31          at 0 range 20 .. 31;
   end record;

   subtype LVDS_PMICR_MST_IMP_CTRL_DL0_Field is HAL.UInt3;
   subtype LVDS_PMICR_MST_IMP_CTRL_DL1_Field is HAL.UInt3;
   subtype LVDS_PMICR_MST_IMP_CTRL_DL2_Field is HAL.UInt3;
   subtype LVDS_PMICR_MST_IMP_CTRL_DL3_Field is HAL.UInt3;
   subtype LVDS_PMICR_MST_IMP_CTRL_DL4_Field is HAL.UInt3;

   --  LVDS PHY-Master impedance control register
   type LVDS_PMICR_Register is record
      --  Impedance control for data lane0
      MST_IMP_CTRL_DL0 : LVDS_PMICR_MST_IMP_CTRL_DL0_Field := 16#0#;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Impedance control for data lane1
      MST_IMP_CTRL_DL1 : LVDS_PMICR_MST_IMP_CTRL_DL1_Field := 16#0#;
      --  unspecified
      Reserved_7_7     : HAL.Bit := 16#0#;
      --  Impedance control for data lane0
      MST_IMP_CTRL_DL2 : LVDS_PMICR_MST_IMP_CTRL_DL2_Field := 16#0#;
      --  unspecified
      Reserved_11_11   : HAL.Bit := 16#0#;
      --  Impedance control for data lane3
      MST_IMP_CTRL_DL3 : LVDS_PMICR_MST_IMP_CTRL_DL3_Field := 16#0#;
      --  unspecified
      Reserved_15_15   : HAL.Bit := 16#0#;
      --  Impedance control for data lane4
      MST_IMP_CTRL_DL4 : LVDS_PMICR_MST_IMP_CTRL_DL4_Field := 16#0#;
      --  unspecified
      Reserved_19_31   : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMICR_Register use record
      MST_IMP_CTRL_DL0 at 0 range 0 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      MST_IMP_CTRL_DL1 at 0 range 4 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      MST_IMP_CTRL_DL2 at 0 range 8 .. 10;
      Reserved_11_11   at 0 range 11 .. 11;
      MST_IMP_CTRL_DL3 at 0 range 12 .. 14;
      Reserved_15_15   at 0 range 15 .. 15;
      MST_IMP_CTRL_DL4 at 0 range 16 .. 18;
      Reserved_19_31   at 0 range 19 .. 31;
   end record;

   subtype LVDS_PMMBCCR_MST_MON_BG_CURR_UNMASK_TUNE_Field is HAL.UInt9;

   --  LVDS PHY-Master monitor bandgap current control register
   type LVDS_PMMBCCR_Register is record
      --  Bandgap current monitor force fault If set high, force the
      --  lvds_monitor_bg_curr_fault_mst and
      --  lvds_monitor_bg_curr_permanent_fault_mst to indicate a fault. This
      --  force is only removed once it goes low again
      MST_MON_BG_CURR_FORCE_FAULT : Boolean := False;
      --  unspecified
      Reserved_1_3                : HAL.UInt3 := 16#0#;
      --  Bandgap current monitor clear fault If set high,
      --  lvds_monitor_bg_curr_fault_mst is cleared. It has to be set low again
      --  in order to continue monitoring the bandgap current.
      MST_MON_BG_CURR_CLEAR_FAULT : Boolean := False;
      --  unspecified
      Reserved_5_15               : HAL.UInt11 := 16#0#;
      --  Bandgap current timing control for the monitor unmask after startup
      MST_MON_BG_CURR_UNMASK_TUNE : LVDS_PMMBCCR_MST_MON_BG_CURR_UNMASK_TUNE_Field :=
                                     16#0#;
      --  unspecified
      Reserved_25_31              : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMBCCR_Register use record
      MST_MON_BG_CURR_FORCE_FAULT at 0 range 0 .. 0;
      Reserved_1_3                at 0 range 1 .. 3;
      MST_MON_BG_CURR_CLEAR_FAULT at 0 range 4 .. 4;
      Reserved_5_15               at 0 range 5 .. 15;
      MST_MON_BG_CURR_UNMASK_TUNE at 0 range 16 .. 24;
      Reserved_25_31              at 0 range 25 .. 31;
   end record;

   --  LVDS PHY-Master monitor bandgap current status register
   type LVDS_PMMBCSR_Register is record
      --  Read-only. Bandgap current monitor permanent fault Indicates that a
      --  fault is occurring when high. If mst_mon_bg_curr_fault_mst is high
      --  and mst_bg_curr_permanent_fault_mst is low, the fault was a glitch
      --  that has since faded. If mst_mon_bg_curr_fault_mst is high and
      --  mst_bg_curr_permanent_fault_mst is high, the fault is still
      --  occurring.
      MST_MON_BG_CURR_PERMANENT_FAULT : Boolean;
      --  unspecified
      Reserved_1_3                    : HAL.UInt3;
      --  Read-only. Bandgap current monitor fault Indicates that a fault has
      --  occurred when high. This signal is latched in the LVDS PHY, so it is
      --  kept high until cleared by mst_mon_bg_curr_clear_fault_mst.
      MST_MON_BG_CURR_FAULT           : Boolean;
      --  unspecified
      Reserved_5_31                   : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMBCSR_Register use record
      MST_MON_BG_CURR_PERMANENT_FAULT at 0 range 0 .. 0;
      Reserved_1_3                    at 0 range 1 .. 3;
      MST_MON_BG_CURR_FAULT           at 0 range 4 .. 4;
      Reserved_5_31                   at 0 range 5 .. 31;
   end record;

   subtype LVDS_PMMBLCR_MST_MON_BG_LOOP_UNMASK_TUNE_Field is HAL.UInt9;

   --  LVDS PHY-Master monitor bandgap loop control register
   type LVDS_PMMBLCR_Register is record
      --  Bandgap loop monitor force fault If set high, force the
      --  lvds_monitor_bg_loop_fault_mst and
      --  lvds_monitor_bg_loop_permanent_fault_mst to indicate a fault. This
      --  force is only removed once it goes low again
      MST_MON_BG_LOOP_FORCE_FAULT : Boolean := False;
      --  unspecified
      Reserved_1_3                : HAL.UInt3 := 16#0#;
      --  Bandgap loop monitor clear fault If set high,
      --  lvds_monitor_bg_loop_fault_mst is cleared. It has to be set low again
      --  in order to continue monitoring the bandgap loop
      MST_MON_BG_LOOP_CLEAR_FAULT : Boolean := False;
      --  unspecified
      Reserved_5_15               : HAL.UInt11 := 16#0#;
      --  Bandgap loop timing control for the monitor unmask after startup
      MST_MON_BG_LOOP_UNMASK_TUNE : LVDS_PMMBLCR_MST_MON_BG_LOOP_UNMASK_TUNE_Field :=
                                     16#0#;
      --  unspecified
      Reserved_25_31              : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMBLCR_Register use record
      MST_MON_BG_LOOP_FORCE_FAULT at 0 range 0 .. 0;
      Reserved_1_3                at 0 range 1 .. 3;
      MST_MON_BG_LOOP_CLEAR_FAULT at 0 range 4 .. 4;
      Reserved_5_15               at 0 range 5 .. 15;
      MST_MON_BG_LOOP_UNMASK_TUNE at 0 range 16 .. 24;
      Reserved_25_31              at 0 range 25 .. 31;
   end record;

   --  LVDS PHY-Master monitor bandgap loop status register
   type LVDS_PMMBLSR_Register is record
      --  Read-only. Bandgap loop monitor permanent fault Indicates that a
      --  fault is occurring when high. If mst_mon_bg_loop_fault_mst is high
      --  and mst_bg_loop_permanent_fault_mst is low, the fault was a glitch
      --  that has since faded. If mst_mon_bg_loop_fault_mst is high and
      --  mst_bg_loop_permanent_fault_mst is high, the fault is still
      --  occurring.
      MST_MON_BG_LOOP_PERMANENT_FAULT : Boolean;
      --  unspecified
      Reserved_1_3                    : HAL.UInt3;
      --  Read-only. Bandgap loop monitor fault Indicates that a fault has
      --  occurred when high. This signal is latched in the LVDS PHY, so it is
      --  kept high until cleared by mst_mon_bg_loop_clear_fault_mst.
      MST_MON_BG_LOOP_FAULT           : Boolean;
      --  unspecified
      Reserved_5_31                   : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMBLSR_Register use record
      MST_MON_BG_LOOP_PERMANENT_FAULT at 0 range 0 .. 0;
      Reserved_1_3                    at 0 range 1 .. 3;
      MST_MON_BG_LOOP_FAULT           at 0 range 4 .. 4;
      Reserved_5_31                   at 0 range 5 .. 31;
   end record;

   subtype LVDS_PMMBOVCR_MST_MON_BG_VOLT_UNMASK_TUNE_Field is HAL.UInt9;

   --  LVDS PHY-Master monitor bandgap output voltage control register
   type LVDS_PMMBOVCR_Register is record
      --  Bandgap output voltage monitor force fault If set high, force the
      --  lvds_monitor_bg_volt_fault_mst and
      --  lvds_monitor_bg_volt_permanent_fault_mst to indicate a fault. This
      --  force is only removed once it goes low again
      MST_MON_BG_VOLT_FORCE_FAULT : Boolean := False;
      --  unspecified
      Reserved_1_3                : HAL.UInt3 := 16#0#;
      --  Bandgap output voltage monitor clear fault If set high,
      --  lvds_monitor_bg_volt_fault_mst is cleared. It has to be set low again
      --  in order to continue monitoring the bandgap output voltage
      MST_MON_BG_VOLT_CLEAR_FAULT : Boolean := False;
      --  unspecified
      Reserved_5_15               : HAL.UInt11 := 16#0#;
      --  Bandgap output voltage timing control for the monitor unmask after
      --  startup
      MST_MON_BG_VOLT_UNMASK_TUNE : LVDS_PMMBOVCR_MST_MON_BG_VOLT_UNMASK_TUNE_Field :=
                                     16#0#;
      --  unspecified
      Reserved_25_31              : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMBOVCR_Register use record
      MST_MON_BG_VOLT_FORCE_FAULT at 0 range 0 .. 0;
      Reserved_1_3                at 0 range 1 .. 3;
      MST_MON_BG_VOLT_CLEAR_FAULT at 0 range 4 .. 4;
      Reserved_5_15               at 0 range 5 .. 15;
      MST_MON_BG_VOLT_UNMASK_TUNE at 0 range 16 .. 24;
      Reserved_25_31              at 0 range 25 .. 31;
   end record;

   --  LVDS PHY-Master monitor bandgap output voltage status register
   type LVDS_PMMBOVSR_Register is record
      --  Read-only. Bandgap output voltage monitor permanent fault Indicates
      --  that a fault is occurring when high. If mst_mon_bg_volt_fault_mst is
      --  high and mst_bg_volt_permanent_fault_mst is low, the fault was a
      --  glitch that has since faded. If mst_mon_bg_volt_fault_mst is high and
      --  mst_bg_volt_permanent_fault_mst is high, the fault is still
      --  occurring.
      MST_MON_BG_VOLT_PERMANENT_FAULT : Boolean;
      --  unspecified
      Reserved_1_3                    : HAL.UInt3;
      --  Read-only. Bandgap output voltage monitor fault Indicates that a
      --  fault has occurred when high. This signal is latched in the LVDS PHY,
      --  so it is kept high until cleared by mst_mon_bg_volt_clear_fault_mst.
      MST_MON_BG_VOLT_FAULT           : Boolean;
      --  unspecified
      Reserved_5_31                   : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMBOVSR_Register use record
      MST_MON_BG_VOLT_PERMANENT_FAULT at 0 range 0 .. 0;
      Reserved_1_3                    at 0 range 1 .. 3;
      MST_MON_BG_VOLT_FAULT           at 0 range 4 .. 4;
      Reserved_5_31                   at 0 range 5 .. 31;
   end record;

   subtype LVDS_PMMPLOVCR_MST_MON_LDO_OK_UNMASK_TUNE_Field is HAL.UInt9;

   --  LVDS PHY-Master monitor PLL LDO output voltage control register
   type LVDS_PMMPLOVCR_Register is record
      --  PLL LDO output voltage monitor force fault If set high, force the
      --  lvds_monitor_ldo_ok_fault_mst and
      --  lvds_monitor_ldo_ok_permanent_fault_mst to indicate a fault. This
      --  force is only removed once it goes low again
      MST_MON_LDO_OK_FORCE_FAULT : Boolean := False;
      --  unspecified
      Reserved_1_3               : HAL.UInt3 := 16#0#;
      --  PLL LDO output voltage monitor clear fault If set high,
      --  lvds_monitor_ldo_ok_fault_mst is cleared. It has to be set low again
      --  in order to continue monitoring the PLL LDO output voltage
      MST_MON_LDO_OK_CLEAR_FAULT : Boolean := False;
      --  unspecified
      Reserved_5_15              : HAL.UInt11 := 16#0#;
      --  PLL LDO output voltage timing control for the monitor unmask after
      --  startup
      MST_MON_LDO_OK_UNMASK_TUNE : LVDS_PMMPLOVCR_MST_MON_LDO_OK_UNMASK_TUNE_Field :=
                                    16#0#;
      --  unspecified
      Reserved_25_31             : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMPLOVCR_Register use record
      MST_MON_LDO_OK_FORCE_FAULT at 0 range 0 .. 0;
      Reserved_1_3               at 0 range 1 .. 3;
      MST_MON_LDO_OK_CLEAR_FAULT at 0 range 4 .. 4;
      Reserved_5_15              at 0 range 5 .. 15;
      MST_MON_LDO_OK_UNMASK_TUNE at 0 range 16 .. 24;
      Reserved_25_31             at 0 range 25 .. 31;
   end record;

   --  LVDS PHY-Master monitor PLL LDO output voltage status register
   type LVDS_PMMPLOVSR_Register is record
      --  Read-only. PLL LDO output voltage monitor permanent fault Indicates
      --  that a fault is occurring when high. If mst_mon_ldo_ok_fault_mst is
      --  high and mst_ldo_ok_permanent_fault_mst is low, the fault was a
      --  glitch that has since faded. If mst_mon_ldo_ok_fault_mst is high and
      --  mst_ldo_ok_permanent_fault_mst is high, the fault is still occurring.
      MST_MON_LDO_OK_PERMANENT_FAULT : Boolean;
      --  unspecified
      Reserved_1_3                   : HAL.UInt3;
      --  Read-only. PLL LDO output voltage monitor fault Indicates that a
      --  fault has occurred when high. This signal is latched in the LVDS PHY,
      --  so it is kept high until cleared by mst_mon_ldo_ok_clear_fault_mst.
      MST_MON_LDO_OK_FAULT           : Boolean;
      --  unspecified
      Reserved_5_31                  : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMPLOVSR_Register use record
      MST_MON_LDO_OK_PERMANENT_FAULT at 0 range 0 .. 0;
      Reserved_1_3                   at 0 range 1 .. 3;
      MST_MON_LDO_OK_FAULT           at 0 range 4 .. 4;
      Reserved_5_31                  at 0 range 5 .. 31;
   end record;

   subtype LVDS_PMMPLCR_MST_MON_PLL_LOCK_UNMASK_TUNE_Field is HAL.UInt9;

   --  LVDS PHY-Master monitor PLL lock control register
   type LVDS_PMMPLCR_Register is record
      --  PLL Lock monitor force fault If set high, force the
      --  lvds_monitor_pll_lock_fault_mst and
      --  lvds_monitor_pll_lock_permanent_fault_mst to indicate a fault. This
      --  force is only removed once it goes low again
      MST_MON_PLL_LOCK_FORCE_FAULT : Boolean := False;
      --  unspecified
      Reserved_1_3                 : HAL.UInt3 := 16#0#;
      --  PLL Lock monitor clear fault If set high,
      --  lvds_monitor_pll_lock_fault_mst is cleared. It has to be set low
      --  again in order to continue monitoring the PLL lock
      MST_MON_PLL_LOCK_CLEAR_FAULT : Boolean := False;
      --  unspecified
      Reserved_5_15                : HAL.UInt11 := 16#0#;
      --  PLL Lock timing control for the monitor unmask after startup
      MST_MON_PLL_LOCK_UNMASK_TUNE : LVDS_PMMPLCR_MST_MON_PLL_LOCK_UNMASK_TUNE_Field :=
                                      16#0#;
      --  unspecified
      Reserved_25_31               : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMPLCR_Register use record
      MST_MON_PLL_LOCK_FORCE_FAULT at 0 range 0 .. 0;
      Reserved_1_3                 at 0 range 1 .. 3;
      MST_MON_PLL_LOCK_CLEAR_FAULT at 0 range 4 .. 4;
      Reserved_5_15                at 0 range 5 .. 15;
      MST_MON_PLL_LOCK_UNMASK_TUNE at 0 range 16 .. 24;
      Reserved_25_31               at 0 range 25 .. 31;
   end record;

   --  LVDS PHY-Master monitor PLL lock status register
   type LVDS_PMMPLSR_Register is record
      --  Read-only. PLL Lock monitor permanent fault Indicates that a fault is
      --  occurring when high. If mst_mon_pll_lock_fault_mst is high and
      --  mst_pll_lock_permanent_fault_mst is low, the fault was a glitch that
      --  has since faded If mst_mon_pll_lock_fault_mst is high and
      --  mst_pll_lock_permanent_fault_mst is high, the fault is still
      --  occurring
      MST_MON_PLL_LOCK_PERMANENT_FAULT : Boolean;
      --  unspecified
      Reserved_1_3                     : HAL.UInt3;
      --  Read-only. PLL Lock monitor fault Indicates that a fault has occurred
      --  when high. This signal is latched in the LVDS PHY, so it is kept high
      --  until cleared by mst_mon_pll_lock_clear_fault_mst
      MST_MON_PLL_LOCK_FAULT           : Boolean;
      --  unspecified
      Reserved_5_31                    : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMPLSR_Register use record
      MST_MON_PLL_LOCK_PERMANENT_FAULT at 0 range 0 .. 0;
      Reserved_1_3                     at 0 range 1 .. 3;
      MST_MON_PLL_LOCK_FAULT           at 0 range 4 .. 4;
      Reserved_5_31                    at 0 range 5 .. 31;
   end record;

   subtype LVDS_PMMPROCR_MST_MON_REF_OK_UNMASK_TUNE_Field is HAL.UInt9;

   --  LVDS PHY-Master monitor PLL reference OK control register
   type LVDS_PMMPROCR_Register is record
      --  PLL Reference monitor force fault If set high, force the
      --  lvds_monitor_ref_ok_fault_mst and
      --  lvds_monitor_ref_ok_permanent_fault_mst to indicate a fault. This
      --  force is only removed once it goes low again
      MST_MON_REF_OK_FORCE_FAULT : Boolean := False;
      --  unspecified
      Reserved_1_3               : HAL.UInt3 := 16#0#;
      --  PLL Reference monitor clear fault If set high,
      --  lvds_monitor_ref_ok_fault_mst is cleared. It has to be set low again
      --  in order to continue monitoring the PLL Reference
      MST_MON_REF_OK_CLEAR_FAULT : Boolean := False;
      --  unspecified
      Reserved_5_15              : HAL.UInt11 := 16#0#;
      --  PLL Reference timing control for the monitor unmask after startup
      MST_MON_REF_OK_UNMASK_TUNE : LVDS_PMMPROCR_MST_MON_REF_OK_UNMASK_TUNE_Field :=
                                    16#0#;
      --  unspecified
      Reserved_25_31             : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMPROCR_Register use record
      MST_MON_REF_OK_FORCE_FAULT at 0 range 0 .. 0;
      Reserved_1_3               at 0 range 1 .. 3;
      MST_MON_REF_OK_CLEAR_FAULT at 0 range 4 .. 4;
      Reserved_5_15              at 0 range 5 .. 15;
      MST_MON_REF_OK_UNMASK_TUNE at 0 range 16 .. 24;
      Reserved_25_31             at 0 range 25 .. 31;
   end record;

   --  LVDS PHY-Master monitor PLL reference OK status register
   type LVDS_PMMPROSR_Register is record
      --  Read-only. PLL Reference OK monitor permanent fault Indicates that a
      --  fault is occurring when high. If mst_mon_ref_ok_fault_mst is high and
      --  mst_ref_ok_permanent_fault_mst is low, the fault was a glitch that
      --  has since faded If mst_mon_ref_ok_fault_mst is high and
      --  mst_ref_ok_permanent_fault_mst is high, the fault is still occurring
      MST_MON_REF_OK_PERMANENT_FAULT : Boolean;
      --  unspecified
      Reserved_1_3                   : HAL.UInt3;
      --  Read-only. PLL Reference OK monitor fault Indicates that a fault has
      --  occurred when high. This signal is latched in the LVDS PHY, so it is
      --  kept high until cleared by mst_mon_ref_ok_clear_fault_mst
      MST_MON_REF_OK_FAULT           : Boolean;
      --  unspecified
      Reserved_5_31                  : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMPROSR_Register use record
      MST_MON_REF_OK_PERMANENT_FAULT at 0 range 0 .. 0;
      Reserved_1_3                   at 0 range 1 .. 3;
      MST_MON_REF_OK_FAULT           at 0 range 4 .. 4;
      Reserved_5_31                  at 0 range 5 .. 31;
   end record;

   --  LVDS PHY-Master monitor serializer clock control register
   type LVDS_PMMSCCR_Register is record
      --  Serializer clock checking error injection
      MST_SER_CLK_ERROR_INJ   : Boolean := False;
      --  unspecified
      Reserved_1_3            : HAL.UInt3 := 16#0#;
      --  Serializer clock checking fault clearing
      MST_SER_CLK_CLEAR_FAULT : Boolean := False;
      --  unspecified
      Reserved_5_31           : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMSCCR_Register use record
      MST_SER_CLK_ERROR_INJ   at 0 range 0 .. 0;
      Reserved_1_3            at 0 range 1 .. 3;
      MST_SER_CLK_CLEAR_FAULT at 0 range 4 .. 4;
      Reserved_5_31           at 0 range 5 .. 31;
   end record;

   --  LVDS PHY-Master monitor serializer clock status register
   type LVDS_PMMSCSR_Register is record
      --  Read-only. Serializer clock checking fault
      MST_SER_CLK_FAULT : Boolean;
      --  unspecified
      Reserved_1_31     : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMSCSR_Register use record
      MST_SER_CLK_FAULT at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   subtype LVDS_PMMSCR_MST_SER_ERROR_INJ_Field is HAL.UInt5;
   subtype LVDS_PMMSCR_MST_SER_FAULT_CLEAR_Field is HAL.UInt5;
   subtype LVDS_PMMSCR_MST_SER_LPBCK_Field is HAL.UInt5;

   --  LVDS PHY-Master monitor serializer control register
   type LVDS_PMMSCR_Register is record
      --  Serializer error injection
      MST_SER_ERROR_INJ   : LVDS_PMMSCR_MST_SER_ERROR_INJ_Field := 16#0#;
      --  unspecified
      Reserved_5_7        : HAL.UInt3 := 16#0#;
      --  Serializer fault clearing
      MST_SER_FAULT_CLEAR : LVDS_PMMSCR_MST_SER_FAULT_CLEAR_Field := 16#0#;
      --  unspecified
      Reserved_13_15      : HAL.UInt3 := 16#0#;
      --  Serializer fault loopback
      MST_SER_LPBCK       : LVDS_PMMSCR_MST_SER_LPBCK_Field := 16#0#;
      --  unspecified
      Reserved_21_31      : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMSCR_Register use record
      MST_SER_ERROR_INJ   at 0 range 0 .. 4;
      Reserved_5_7        at 0 range 5 .. 7;
      MST_SER_FAULT_CLEAR at 0 range 8 .. 12;
      Reserved_13_15      at 0 range 13 .. 15;
      MST_SER_LPBCK       at 0 range 16 .. 20;
      Reserved_21_31      at 0 range 21 .. 31;
   end record;

   subtype LVDS_PMMSSR_MST_SER_FAULT_Field is HAL.UInt5;

   --  LVDS PHY-Master monitor serializer status register
   type LVDS_PMMSSR_Register is record
      --  Read-only. Serializer fault
      MST_SER_FAULT : LVDS_PMMSSR_MST_SER_FAULT_Field;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMMSSR_Register use record
      MST_SER_FAULT at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  LVDS PHY-Master debug control register
   type LVDS_PMDCR_Register is record
      --  When set to 1, this bit masks some functions in the LVDS-PHY This bit
      --  can be used as a work around to functional problems with some of the
      --  monitor blocks
      MST_FORCE_ANALOG_OK  : Boolean := False;
      --  unspecified
      Reserved_1_3         : HAL.UInt3 := 16#0#;
      --  When set to 1, this bit masks some functions in the LVDS-PHY This bit
      --  can be used as a work around to functional problems with some of the
      --  monitor blocks
      MST_PLL_FORCE_LDO_OK : Boolean := False;
      --  unspecified
      Reserved_5_7         : HAL.UInt3 := 16#0#;
      --  When set to 1, this bit masks some functions in the LVDS-PHY This bit
      --  can be used as a work around to functional problems with some of the
      --  monitor blocks
      MST_PLL_FORCE_LOCK   : Boolean := False;
      --  unspecified
      Reserved_9_11        : HAL.UInt3 := 16#0#;
      --  When set to 1, this bit masks some functions in the LVDS-PHY This bit
      --  can be used as a work around to functional problems with some of the
      --  monitor blocks
      MST_POWER_OK         : Boolean := False;
      --  unspecified
      Reserved_13_31       : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMDCR_Register use record
      MST_FORCE_ANALOG_OK  at 0 range 0 .. 0;
      Reserved_1_3         at 0 range 1 .. 3;
      MST_PLL_FORCE_LDO_OK at 0 range 4 .. 4;
      Reserved_5_7         at 0 range 5 .. 7;
      MST_PLL_FORCE_LOCK   at 0 range 8 .. 8;
      Reserved_9_11        at 0 range 9 .. 11;
      MST_POWER_OK         at 0 range 12 .. 12;
      Reserved_13_31       at 0 range 13 .. 31;
   end record;

   subtype LVDS_PMSSR1_MST_DRV_A0_SPARE_RD_Field is HAL.UInt8;
   subtype LVDS_PMSSR1_MST_DRV_A1_SPARE_RD_Field is HAL.UInt8;
   subtype LVDS_PMSSR1_MST_DRV_A2_SPARE_RD_Field is HAL.UInt8;
   subtype LVDS_PMSSR1_MST_DRV_A3_SPARE_RD_Field is HAL.UInt8;

   --  LVDS PHY-Master spare status register 1
   type LVDS_PMSSR1_Register is record
      --  Read-only. Spare outputs for data lane0
      MST_DRV_A0_SPARE_RD : LVDS_PMSSR1_MST_DRV_A0_SPARE_RD_Field;
      --  Read-only. Spare outputs for data lane1
      MST_DRV_A1_SPARE_RD : LVDS_PMSSR1_MST_DRV_A1_SPARE_RD_Field;
      --  Read-only. Spare outputs for data lane2
      MST_DRV_A2_SPARE_RD : LVDS_PMSSR1_MST_DRV_A2_SPARE_RD_Field;
      --  Read-only. Spare outputs for data lane3
      MST_DRV_A3_SPARE_RD : LVDS_PMSSR1_MST_DRV_A3_SPARE_RD_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMSSR1_Register use record
      MST_DRV_A0_SPARE_RD at 0 range 0 .. 7;
      MST_DRV_A1_SPARE_RD at 0 range 8 .. 15;
      MST_DRV_A2_SPARE_RD at 0 range 16 .. 23;
      MST_DRV_A3_SPARE_RD at 0 range 24 .. 31;
   end record;

   subtype LVDS_PMSSR2_MST_DRV_A4_SPARE_RD_Field is HAL.UInt8;

   --  LVDS PHY-Master spare status register 2
   type LVDS_PMSSR2_Register is record
      --  Read-only. Spare outputs for data lane4
      MST_DRV_A4_SPARE_RD : LVDS_PMSSR2_MST_DRV_A4_SPARE_RD_Field;
      --  unspecified
      Reserved_8_31       : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMSSR2_Register use record
      MST_DRV_A4_SPARE_RD at 0 range 0 .. 7;
      Reserved_8_31       at 0 range 8 .. 31;
   end record;

   subtype LVDS_PMCFGCR_MST_EN_DIG_DL_Field is HAL.UInt5;

   --  LVDS PHY-Master configuration control register
   type LVDS_PMCFGCR_Register is record
      --  Enables Digital DataLanes DL4...DL0
      MST_EN_DIG_DL : LVDS_PMCFGCR_MST_EN_DIG_DL_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMCFGCR_Register use record
      MST_EN_DIG_DL at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  LVDS PHY-Master PLL_MODE 1 control register
   type LVDS_PMPLLCR1_Register is record
      --  0x0: LVDS-PHY PLL Disable
      MST_PLL_ENABLE            : Boolean := False;
      --  sigma-delta enable
      MST_PLL_SD_ENABLE         : Boolean := False;
      --  Triangular wave pattern used to modulate MDIV
      MST_PLL_TWG_ENABLE        : Boolean := False;
      --  unspecified
      Reserved_3_3              : HAL.Bit := 16#0#;
      --  0x0: from VCO output
      MST_PLL_BYPASS            : Boolean := False;
      --  unspecified
      Reserved_5_7              : HAL.UInt3 := 16#0#;
      --  0x0: Dividers disabled
      MST_PLL_DIVIDERS_ENABLE   : Boolean := False;
      --  unspecified
      Reserved_9_11             : HAL.UInt3 := 16#0#;
      --  Read-only. Bypass start DECT.
      MST_PLL_BYPASS_START_DECT : Boolean := False;
      --  unspecified
      Reserved_13_31            : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMPLLCR1_Register use record
      MST_PLL_ENABLE            at 0 range 0 .. 0;
      MST_PLL_SD_ENABLE         at 0 range 1 .. 1;
      MST_PLL_TWG_ENABLE        at 0 range 2 .. 2;
      Reserved_3_3              at 0 range 3 .. 3;
      MST_PLL_BYPASS            at 0 range 4 .. 4;
      Reserved_5_7              at 0 range 5 .. 7;
      MST_PLL_DIVIDERS_ENABLE   at 0 range 8 .. 8;
      Reserved_9_11             at 0 range 9 .. 11;
      MST_PLL_BYPASS_START_DECT at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   subtype LVDS_PMPLLCR2_MST_PLL_BIT_DIV_Field is HAL.UInt10;
   subtype LVDS_PMPLLCR2_MST_PLL_INPUT_DIV_Field is HAL.UInt10;

   --  LVDS PHY-Master PLL_MODE 2 control register
   type LVDS_PMPLLCR2_Register is record
      --  PLL Output Clock Divider (BDIV, divides output VCO)
      MST_PLL_BIT_DIV   : LVDS_PMPLLCR2_MST_PLL_BIT_DIV_Field := 16#0#;
      --  unspecified
      Reserved_10_15    : HAL.UInt6 := 16#0#;
      --  PLL Input Clock Divider (NDIV, divides input reference clock)
      MST_PLL_INPUT_DIV : LVDS_PMPLLCR2_MST_PLL_INPUT_DIV_Field := 16#0#;
      --  unspecified
      Reserved_26_31    : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMPLLCR2_Register use record
      MST_PLL_BIT_DIV   at 0 range 0 .. 9;
      Reserved_10_15    at 0 range 10 .. 15;
      MST_PLL_INPUT_DIV at 0 range 16 .. 25;
      Reserved_26_31    at 0 range 26 .. 31;
   end record;

   --  LVDS PHY-Master PLL status register
   type LVDS_PMPLLSR_Register is record
      --  Read-only. PLL lock During a certain number of cycles of reference
      --  clock, pll_lock is asserted high and then goes low waiting for the
      --  LVDS-PHY PLL t0 lock
      MST_PLL_LOCK  : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMPLLSR_Register use record
      MST_PLL_LOCK  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype LVDS_PMPLLSDCR1_MST_PLL_SD_INT_RATIO_Field is HAL.UInt10;

   --  LVDS PHY-Master PLL_SD_1 control register
   type LVDS_PMPLLSDCR1_Register is record
      --  Integer Setting of PLL Feedback Clock Divider (MDIV, divides VCO
      --  clock for feedback) MDIV divider is used for both integer N and
      --  Fractional N PLL modes: - Integer N: MDIV = mst_pll_sd_int_ratio[9:0]
      --  (for integer setting) mst_pll_sd_bypass_vco_mux is not used. -
      --  Fractional N: MDIV = mst_pll_sd_int_ratio[9:0] (for integer setting),
      --  mst_pll_sd_input_code_bypass[22:0] (for fractional setting). MDIV =
      --  mst_pll_sd_int_ratio[9:0] + (mst_pll_sd_input_code_bypass[22:0 -
      --  4194304)/131072
      MST_PLL_SD_INT_RATIO : LVDS_PMPLLSDCR1_MST_PLL_SD_INT_RATIO_Field :=
                              16#0#;
      --  unspecified
      Reserved_10_31       : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMPLLSDCR1_Register use record
      MST_PLL_SD_INT_RATIO at 0 range 0 .. 9;
      Reserved_10_31       at 0 range 10 .. 31;
   end record;

   subtype LVDS_PMPLLSDCR2_MST_PLL_SD_INPUT_CODE_BYPASS_Field is HAL.UInt23;
   subtype LVDS_PMPLLSDCR2_MST_PLL_SD_BYPASS_VCO_MUX_Field is HAL.UInt2;

   --  LVDS PHY-Master PLL_SD_2 control register
   type LVDS_PMPLLSDCR2_Register is record
      --  Fractional Setting of PLL Feedback Clock Divider (MDIV, divides VCO
      --  clock for feedback)
      MST_PLL_SD_INPUT_CODE_BYPASS : LVDS_PMPLLSDCR2_MST_PLL_SD_INPUT_CODE_BYPASS_Field :=
                                      16#F#;
      --  unspecified
      Reserved_23_23               : HAL.Bit := 16#0#;
      --  Bypass control for the PLL sigma delta VCO mux
      MST_PLL_SD_BYPASS_VCO_MUX    : LVDS_PMPLLSDCR2_MST_PLL_SD_BYPASS_VCO_MUX_Field :=
                                      16#0#;
      --  Read-only. Bypass start SD feedback clock.
      MST_PLL_SD_BYPASS_FB_CLK     : Boolean := False;
      --  unspecified
      Reserved_27_27               : HAL.Bit := 16#0#;
      --  Sigma Delta Edge Control.
      MST_PLL_SD_CLK_EDGE_CNTRL    : Boolean := False;
      --  unspecified
      Reserved_29_31               : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMPLLSDCR2_Register use record
      MST_PLL_SD_INPUT_CODE_BYPASS at 0 range 0 .. 22;
      Reserved_23_23               at 0 range 23 .. 23;
      MST_PLL_SD_BYPASS_VCO_MUX    at 0 range 24 .. 25;
      MST_PLL_SD_BYPASS_FB_CLK     at 0 range 26 .. 26;
      Reserved_27_27               at 0 range 27 .. 27;
      MST_PLL_SD_CLK_EDGE_CNTRL    at 0 range 28 .. 28;
      Reserved_29_31               at 0 range 29 .. 31;
   end record;

   subtype LVDS_PMPLLTWGCR1_MST_PLL_TWG_STEP_Field is HAL.UInt20;

   --  LVDS PHY-Master PLL_TWG_1 control register
   type LVDS_PMPLLTWGCR1_Register is record
      --  MDIV divdier used in integer N and Fractional N PLL modes integer N:
      --  mst_pll_sd_bypass_vco_mux is not relevant. MDIV =
      --  mst_pll_sd_int_ratio[9:0] fractional N: MDIV controlled by
      --  mst_pll_sd_int_ratio[9:0] and mst_pll_sd_input_code_bypass[22:0] MDIV
      --  = mst_pll_sd_int_ratio[9:0] + (mst_pll_sd_input_code_bypass[22:0 -
      --  4194304)/131072
      MST_PLL_TWG_STEP        : LVDS_PMPLLTWGCR1_MST_PLL_TWG_STEP_Field :=
                                 16#0#;
      --  TWG pattern spreading
      MST_PLL_TWG_DOWN_SPREAD : Boolean := False;
      --  unspecified
      Reserved_21_31          : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMPLLTWGCR1_Register use record
      MST_PLL_TWG_STEP        at 0 range 0 .. 19;
      MST_PLL_TWG_DOWN_SPREAD at 0 range 20 .. 20;
      Reserved_21_31          at 0 range 21 .. 31;
   end record;

   subtype LVDS_PMPLLTWGCR2_MST_PLL_TWG_THRESHOLD_Field is HAL.UInt23;

   --  LVDS PHY-Master PLL_TWG_2 control register
   type LVDS_PMPLLTWGCR2_Register is record
      --  TWG_THRESHOLD setting
      MST_PLL_TWG_THRESHOLD : LVDS_PMPLLTWGCR2_MST_PLL_TWG_THRESHOLD_Field :=
                               16#0#;
      --  unspecified
      Reserved_23_31        : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMPLLTWGCR2_Register use record
      MST_PLL_TWG_THRESHOLD at 0 range 0 .. 22;
      Reserved_23_31        at 0 range 23 .. 31;
   end record;

   subtype LVDS_PMPLLLDOCR_MST_PLL_LDO_FRREGVTRIM_Field is HAL.UInt3;

   --  LVDS PHY-Master PLL_LDO control register
   type LVDS_PMPLLLDOCR_Register is record
      --  PLL LDO output voltage fine tuning:
      MST_PLL_LDO_FRREGVTRIM : LVDS_PMPLLLDOCR_MST_PLL_LDO_FRREGVTRIM_Field :=
                                16#0#;
      --  unspecified
      Reserved_3_31          : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMPLLLDOCR_Register use record
      MST_PLL_LDO_FRREGVTRIM at 0 range 0 .. 2;
      Reserved_3_31          at 0 range 3 .. 31;
   end record;

   subtype LVDS_PMPLLCPCR_MST_PLL_CPCTRL_Field is HAL.UInt4;

   --  LVDS PHY-Master PLL_CP control register
   type LVDS_PMPLLCPCR_Register is record
      --  PLL charge pump control, default=1.
      MST_PLL_CPCTRL : LVDS_PMPLLCPCR_MST_PLL_CPCTRL_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMPLLCPCR_Register use record
      MST_PLL_CPCTRL at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype LVDS_PMPLLCFGCR_MST_PLL_CFG_Field is HAL.UInt8;

   --  LVDS PHY-Master PLL_CFG control register
   type LVDS_PMPLLCFGCR_Register is record
      --  PLL configuration
      MST_PLL_CFG   : LVDS_PMPLLCFGCR_MST_PLL_CFG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMPLLCFGCR_Register use record
      MST_PLL_CFG   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LVDS_PMPLLTESTCR_MST_PLL_TEST_DIV_SETTINGS_Field is HAL.UInt10;

   --  LVDS PHY-Master PLL_TEST control register
   type LVDS_PMPLLTESTCR_Register is record
      --  lvds_pll_test_clk enable
      MST_PLL_TEST_CLK_EN       : Boolean := False;
      --  unspecified
      Reserved_1_7              : HAL.UInt7 := 16#0#;
      --  lvds_pll_test_clk dividers enable
      MST_PLL_TEST_DIV_EN       : Boolean := False;
      --  unspecified
      Reserved_9_15             : HAL.UInt7 := 16#0#;
      --  lvds_pll_test_clk dividers value
      MST_PLL_TEST_DIV_SETTINGS : LVDS_PMPLLTESTCR_MST_PLL_TEST_DIV_SETTINGS_Field :=
                                   16#1#;
      --  unspecified
      Reserved_26_31            : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMPLLTESTCR_Register use record
      MST_PLL_TEST_CLK_EN       at 0 range 0 .. 0;
      Reserved_1_7              at 0 range 1 .. 7;
      MST_PLL_TEST_DIV_EN       at 0 range 8 .. 8;
      Reserved_9_15             at 0 range 9 .. 15;
      MST_PLL_TEST_DIV_SETTINGS at 0 range 16 .. 25;
      Reserved_26_31            at 0 range 26 .. 31;
   end record;

   --  LVDS PHY-Slave global control register
   type LVDS_PSGCR_Register is record
      --  Enable LVDS-PHY bit_clk clock
      SLV_BIT_CLK_OUT_ENABLE : Boolean := False;
      --  unspecified
      Reserved_1_3           : HAL.UInt3 := 16#0#;
      --  Enable LVDS-PHY ls_clk clock
      SLV_LS_CLK_OUT_ENABLE  : Boolean := False;
      --  unspecified
      Reserved_5_7           : HAL.UInt3 := 16#0#;
      --  Enable LVDS-PHY dp_clk clock
      SLV_DP_CLK_OUT_ENABLE  : Boolean := False;
      --  unspecified
      Reserved_9_23          : HAL.UInt15 := 16#0#;
      --  When set to 0, this bit places the digital section of the LVDS-PHY in
      --  the reset state
      SLV_RSTZ               : Boolean := False;
      --  When set to 0, reset the output dividers
      SLV_DIVIDERS_RSTN      : Boolean := False;
      --  unspecified
      Reserved_26_31         : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSGCR_Register use record
      SLV_BIT_CLK_OUT_ENABLE at 0 range 0 .. 0;
      Reserved_1_3           at 0 range 1 .. 3;
      SLV_LS_CLK_OUT_ENABLE  at 0 range 4 .. 4;
      Reserved_5_7           at 0 range 5 .. 7;
      SLV_DP_CLK_OUT_ENABLE  at 0 range 8 .. 8;
      Reserved_9_23          at 0 range 9 .. 23;
      SLV_RSTZ               at 0 range 24 .. 24;
      SLV_DIVIDERS_RSTN      at 0 range 25 .. 25;
      Reserved_26_31         at 0 range 26 .. 31;
   end record;

   --  LVDS_PSPEACR_SLV_PRE_EMPH_AMP_DL array element
   subtype LVDS_PSPEACR_SLV_PRE_EMPH_AMP_DL_Element is HAL.UInt4;

   --  LVDS_PSPEACR_SLV_PRE_EMPH_AMP_DL array
   type LVDS_PSPEACR_SLV_PRE_EMPH_AMP_DL_Field_Array is array (0 .. 4)
     of LVDS_PSPEACR_SLV_PRE_EMPH_AMP_DL_Element
     with Component_Size => 4, Size => 20;

   --  Type definition for LVDS_PSPEACR_SLV_PRE_EMPH_AMP_DL
   type LVDS_PSPEACR_SLV_PRE_EMPH_AMP_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLV_PRE_EMPH_AMP_DL as a value
            Val : HAL.UInt20;
         when True =>
            --  SLV_PRE_EMPH_AMP_DL as an array
            Arr : LVDS_PSPEACR_SLV_PRE_EMPH_AMP_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for LVDS_PSPEACR_SLV_PRE_EMPH_AMP_DL_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  LVDS PHY-Slave pre-emphasis amplitude control register
   type LVDS_PSPEACR_Register is record
      --  Amplitude control for pre-emphasis for lane0
      SLV_PRE_EMPH_AMP_DL : LVDS_PSPEACR_SLV_PRE_EMPH_AMP_DL_Field :=
                             (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31      : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSPEACR_Register use record
      SLV_PRE_EMPH_AMP_DL at 0 range 0 .. 19;
      Reserved_20_31      at 0 range 20 .. 31;
   end record;

   subtype LVDS_PSPETCR_SLV_PRE_EMPH_TIME_DL0_Field is HAL.UInt2;
   subtype LVDS_PSPETCR_SLV_PRE_EMPH_TIME_DL1_Field is HAL.UInt2;
   subtype LVDS_PSPETCR_SLV_PRE_EMPH_TIME_DL2_Field is HAL.UInt2;
   subtype LVDS_PSPETCR_SLV_PRE_EMPH_TIME_DL3_Field is HAL.UInt2;
   subtype LVDS_PSPETCR_SLV_PRE_EMPH_TIME_DL4_Field is HAL.UInt2;

   --  LVDS PHY-Slave pre-emphasis time control register
   type LVDS_PSPETCR_Register is record
      --  Time duration control for pre-emphasis for lane0
      SLV_PRE_EMPH_TIME_DL0 : LVDS_PSPETCR_SLV_PRE_EMPH_TIME_DL0_Field :=
                               16#0#;
      --  unspecified
      Reserved_2_3          : HAL.UInt2 := 16#0#;
      --  Time duration control for pre-emphasis for lane1
      SLV_PRE_EMPH_TIME_DL1 : LVDS_PSPETCR_SLV_PRE_EMPH_TIME_DL1_Field :=
                               16#0#;
      --  unspecified
      Reserved_6_7          : HAL.UInt2 := 16#0#;
      --  Time duration control for pre-emphasis for lane2
      SLV_PRE_EMPH_TIME_DL2 : LVDS_PSPETCR_SLV_PRE_EMPH_TIME_DL2_Field :=
                               16#0#;
      --  unspecified
      Reserved_10_11        : HAL.UInt2 := 16#0#;
      --  Time duration control for pre-emphasis for lane3
      SLV_PRE_EMPH_TIME_DL3 : LVDS_PSPETCR_SLV_PRE_EMPH_TIME_DL3_Field :=
                               16#0#;
      --  unspecified
      Reserved_14_15        : HAL.UInt2 := 16#0#;
      --  Time duration control for pre-emphasis for lane4
      SLV_PRE_EMPH_TIME_DL4 : LVDS_PSPETCR_SLV_PRE_EMPH_TIME_DL4_Field :=
                               16#0#;
      --  unspecified
      Reserved_18_31        : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSPETCR_Register use record
      SLV_PRE_EMPH_TIME_DL0 at 0 range 0 .. 1;
      Reserved_2_3          at 0 range 2 .. 3;
      SLV_PRE_EMPH_TIME_DL1 at 0 range 4 .. 5;
      Reserved_6_7          at 0 range 6 .. 7;
      SLV_PRE_EMPH_TIME_DL2 at 0 range 8 .. 9;
      Reserved_10_11        at 0 range 10 .. 11;
      SLV_PRE_EMPH_TIME_DL3 at 0 range 12 .. 13;
      Reserved_14_15        at 0 range 14 .. 15;
      SLV_PRE_EMPH_TIME_DL4 at 0 range 16 .. 17;
      Reserved_18_31        at 0 range 18 .. 31;
   end record;

   subtype LVDS_PSCMCR1_SLV_CM_AMP_CTRL_DL0_Field is HAL.UInt4;
   subtype LVDS_PSCMCR1_SLV_CM_AMP_CTRL_DL1_Field is HAL.UInt4;
   subtype LVDS_PSCMCR1_SLV_CM_AMP_CTRL_DL2_Field is HAL.UInt4;
   subtype LVDS_PSCMCR1_SLV_CM_AMP_CTRL_DL3_Field is HAL.UInt4;

   --  LVDS PHY-Slave current mode control register 1
   type LVDS_PSCMCR1_Register is record
      --  Amplitude control for current mode driver, data lane0
      SLV_CM_AMP_CTRL_DL0    : LVDS_PSCMCR1_SLV_CM_AMP_CTRL_DL0_Field :=
                                16#0#;
      --  Enable for current mode driver, data lane0
      SLV_CM_EN_DL0          : Boolean := False;
      --  common mode of datalane0: when high, reference is derived from
      --  AVDD_IO voltage
      SLV_CM_USE_VDD_REF_DL0 : Boolean := False;
      --  common mode of datalane0: when high, reference is mid voltage of the
      --  driver levels
      SLV_CM_USE_VM_VMID_DL0 : Boolean := False;
      --  unspecified
      Reserved_7_7           : HAL.Bit := 16#0#;
      --  Amplitude control for current mode driver, data lane1
      SLV_CM_AMP_CTRL_DL1    : LVDS_PSCMCR1_SLV_CM_AMP_CTRL_DL1_Field :=
                                16#0#;
      --  Enable for current mode driver, data lane1
      SLV_CM_EN_DL1          : Boolean := False;
      --  common mode of datalane1: when high, reference is derived from
      --  AVDD_IO voltage
      SLV_CM_USE_VDD_REF_DL1 : Boolean := False;
      --  common mode of datalane1: when high, reference is mid voltage of the
      --  driver levels
      SLV_CM_USE_VM_VMID_DL1 : Boolean := False;
      --  unspecified
      Reserved_15_15         : HAL.Bit := 16#0#;
      --  Amplitude control for current mode driver, data lane2
      SLV_CM_AMP_CTRL_DL2    : LVDS_PSCMCR1_SLV_CM_AMP_CTRL_DL2_Field :=
                                16#0#;
      --  Enable for current mode driver, data lane2
      SLV_CM_EN_DL2          : Boolean := False;
      --  common mode of datalane2: when high, reference is derived from
      --  AVDD_IO voltage
      SLV_CM_USE_VDD_REF_DL2 : Boolean := False;
      --  common mode of datalane2: when high, reference is mid voltage of the
      --  driver levels
      SLV_CM_USE_VM_VMID_DL2 : Boolean := False;
      --  unspecified
      Reserved_23_23         : HAL.Bit := 16#0#;
      --  Amplitude control for current mode driver, data lane3
      SLV_CM_AMP_CTRL_DL3    : LVDS_PSCMCR1_SLV_CM_AMP_CTRL_DL3_Field :=
                                16#0#;
      --  Enable for current mode driver, data lane3
      SLV_CM_EN_DL3          : Boolean := False;
      --  common mode of datalane3: when high, reference is derived from
      --  AVDD_IO voltage
      SLV_CM_USE_VDD_REF_DL3 : Boolean := False;
      --  common mode of datalane3: when high, reference is mid voltage of the
      --  driver levels
      SLV_CM_USE_VM_VMID_DL3 : Boolean := False;
      --  unspecified
      Reserved_31_31         : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSCMCR1_Register use record
      SLV_CM_AMP_CTRL_DL0    at 0 range 0 .. 3;
      SLV_CM_EN_DL0          at 0 range 4 .. 4;
      SLV_CM_USE_VDD_REF_DL0 at 0 range 5 .. 5;
      SLV_CM_USE_VM_VMID_DL0 at 0 range 6 .. 6;
      Reserved_7_7           at 0 range 7 .. 7;
      SLV_CM_AMP_CTRL_DL1    at 0 range 8 .. 11;
      SLV_CM_EN_DL1          at 0 range 12 .. 12;
      SLV_CM_USE_VDD_REF_DL1 at 0 range 13 .. 13;
      SLV_CM_USE_VM_VMID_DL1 at 0 range 14 .. 14;
      Reserved_15_15         at 0 range 15 .. 15;
      SLV_CM_AMP_CTRL_DL2    at 0 range 16 .. 19;
      SLV_CM_EN_DL2          at 0 range 20 .. 20;
      SLV_CM_USE_VDD_REF_DL2 at 0 range 21 .. 21;
      SLV_CM_USE_VM_VMID_DL2 at 0 range 22 .. 22;
      Reserved_23_23         at 0 range 23 .. 23;
      SLV_CM_AMP_CTRL_DL3    at 0 range 24 .. 27;
      SLV_CM_EN_DL3          at 0 range 28 .. 28;
      SLV_CM_USE_VDD_REF_DL3 at 0 range 29 .. 29;
      SLV_CM_USE_VM_VMID_DL3 at 0 range 30 .. 30;
      Reserved_31_31         at 0 range 31 .. 31;
   end record;

   subtype LVDS_PSCMCR2_SLV_CM_AMP_CTRL_DL4_Field is HAL.UInt4;

   --  LVDS PHY-Slave current mode control register 2
   type LVDS_PSCMCR2_Register is record
      --  Amplitude control for current mode driver, data lane4
      SLV_CM_AMP_CTRL_DL4    : LVDS_PSCMCR2_SLV_CM_AMP_CTRL_DL4_Field :=
                                16#0#;
      --  Enable for current mode driver, data lane4
      SLV_CM_EN_DL4          : Boolean := False;
      --  common mode of datalane4: when high, reference is derived from
      --  AVDD_IO voltage
      SLV_CM_USE_VDD_REF_DL4 : Boolean := False;
      --  common mode of datalane4: when high, reference is mid voltage of the
      --  driver levels
      SLV_CM_USE_VM_VMID_DL4 : Boolean := False;
      --  unspecified
      Reserved_7_15          : HAL.UInt9 := 16#0#;
      --  AC Coupling Mode.
      SLV_AC_COUPLING_MODE   : Boolean := False;
      --  unspecified
      Reserved_17_31         : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSCMCR2_Register use record
      SLV_CM_AMP_CTRL_DL4    at 0 range 0 .. 3;
      SLV_CM_EN_DL4          at 0 range 4 .. 4;
      SLV_CM_USE_VDD_REF_DL4 at 0 range 5 .. 5;
      SLV_CM_USE_VM_VMID_DL4 at 0 range 6 .. 6;
      Reserved_7_15          at 0 range 7 .. 15;
      SLV_AC_COUPLING_MODE   at 0 range 16 .. 16;
      Reserved_17_31         at 0 range 17 .. 31;
   end record;

   --  LVDS_PSRLPCR_SLV_RX_LOOP_BACK_CFG_DL array element
   subtype LVDS_PSRLPCR_SLV_RX_LOOP_BACK_CFG_DL_Element is HAL.UInt4;

   --  LVDS_PSRLPCR_SLV_RX_LOOP_BACK_CFG_DL array
   type LVDS_PSRLPCR_SLV_RX_LOOP_BACK_CFG_DL_Field_Array is array (0 .. 4)
     of LVDS_PSRLPCR_SLV_RX_LOOP_BACK_CFG_DL_Element
     with Component_Size => 4, Size => 20;

   --  Type definition for LVDS_PSRLPCR_SLV_RX_LOOP_BACK_CFG_DL
   type LVDS_PSRLPCR_SLV_RX_LOOP_BACK_CFG_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLV_RX_LOOP_BACK_CFG_DL as a value
            Val : HAL.UInt20;
         when True =>
            --  SLV_RX_LOOP_BACK_CFG_DL as an array
            Arr : LVDS_PSRLPCR_SLV_RX_LOOP_BACK_CFG_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for LVDS_PSRLPCR_SLV_RX_LOOP_BACK_CFG_DL_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  LVDS_PSRLPCR_SLV_EN_LOOP_BACK_DL array
   type LVDS_PSRLPCR_SLV_EN_LOOP_BACK_DL_Field_Array is array (0 .. 4)
     of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for LVDS_PSRLPCR_SLV_EN_LOOP_BACK_DL
   type LVDS_PSRLPCR_SLV_EN_LOOP_BACK_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLV_EN_LOOP_BACK_DL as a value
            Val : HAL.UInt5;
         when True =>
            --  SLV_EN_LOOP_BACK_DL as an array
            Arr : LVDS_PSRLPCR_SLV_EN_LOOP_BACK_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for LVDS_PSRLPCR_SLV_EN_LOOP_BACK_DL_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  LVDS PHY-Slave Rx loopback control register
   type LVDS_PSRLPCR_Register is record
      --  Rx loop back configuration for datalane0 Other: reserved
      SLV_RX_LOOP_BACK_CFG_DL : LVDS_PSRLPCR_SLV_RX_LOOP_BACK_CFG_DL_Field :=
                                 (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_23          : HAL.UInt4 := 16#0#;
      --  Enable the loop back RX used for continuous monitoring, data lane0
      SLV_EN_LOOP_BACK_DL     : LVDS_PSRLPCR_SLV_EN_LOOP_BACK_DL_Field :=
                                 (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_29_31          : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSRLPCR_Register use record
      SLV_RX_LOOP_BACK_CFG_DL at 0 range 0 .. 19;
      Reserved_20_23          at 0 range 20 .. 23;
      SLV_EN_LOOP_BACK_DL     at 0 range 24 .. 28;
      Reserved_29_31          at 0 range 29 .. 31;
   end record;

   --  LVDS PHY-slave Rx loopback status register
   type LVDS_PSRLPSR_Register is record
      --  Read-only. Rx loop back output for lane4
      SLV_RX_LOOP_BACK_A_DL0 : Boolean;
      --  unspecified
      Reserved_1_3           : HAL.UInt3;
      --  Read-only. Rx loop back output for lane3
      SLV_RX_LOOP_BACK_A_DL1 : Boolean;
      --  unspecified
      Reserved_5_7           : HAL.UInt3;
      --  Read-only. Rx loop back output for lane2
      SLV_RX_LOOP_BACK_A_DL2 : Boolean;
      --  unspecified
      Reserved_9_11          : HAL.UInt3;
      --  Read-only. Rx loop back output for lane1
      SLV_RX_LOOP_BACK_A_DL3 : Boolean;
      --  unspecified
      Reserved_13_15         : HAL.UInt3;
      --  Read-only. Rx loop back output for lane0
      SLV_RX_LOOP_BACK_A_DL4 : Boolean;
      --  unspecified
      Reserved_17_31         : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSRLPSR_Register use record
      SLV_RX_LOOP_BACK_A_DL0 at 0 range 0 .. 0;
      Reserved_1_3           at 0 range 1 .. 3;
      SLV_RX_LOOP_BACK_A_DL1 at 0 range 4 .. 4;
      Reserved_5_7           at 0 range 5 .. 7;
      SLV_RX_LOOP_BACK_A_DL2 at 0 range 8 .. 8;
      Reserved_9_11          at 0 range 9 .. 11;
      SLV_RX_LOOP_BACK_A_DL3 at 0 range 12 .. 12;
      Reserved_13_15         at 0 range 13 .. 15;
      SLV_RX_LOOP_BACK_A_DL4 at 0 range 16 .. 16;
      Reserved_17_31         at 0 range 17 .. 31;
   end record;

   --  LVDS_PSFCR_SLV_FLIP_CLK_EDGE_ANA_DL array
   type LVDS_PSFCR_SLV_FLIP_CLK_EDGE_ANA_DL_Field_Array is array (0 .. 4)
     of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for LVDS_PSFCR_SLV_FLIP_CLK_EDGE_ANA_DL
   type LVDS_PSFCR_SLV_FLIP_CLK_EDGE_ANA_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLV_FLIP_CLK_EDGE_ANA_DL as a value
            Val : HAL.UInt5;
         when True =>
            --  SLV_FLIP_CLK_EDGE_ANA_DL as an array
            Arr : LVDS_PSFCR_SLV_FLIP_CLK_EDGE_ANA_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for LVDS_PSFCR_SLV_FLIP_CLK_EDGE_ANA_DL_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  LVDS_PSFCR_SLV_FLIP_CLK_EDGE_DL array
   type LVDS_PSFCR_SLV_FLIP_CLK_EDGE_DL_Field_Array is array (0 .. 4)
     of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for LVDS_PSFCR_SLV_FLIP_CLK_EDGE_DL
   type LVDS_PSFCR_SLV_FLIP_CLK_EDGE_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLV_FLIP_CLK_EDGE_DL as a value
            Val : HAL.UInt5;
         when True =>
            --  SLV_FLIP_CLK_EDGE_DL as an array
            Arr : LVDS_PSFCR_SLV_FLIP_CLK_EDGE_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for LVDS_PSFCR_SLV_FLIP_CLK_EDGE_DL_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  LVDS PHY-Slave flipedge control register
   type LVDS_PSFCR_Register is record
      --  Flips the clock edge used by the pre-driver, data lane0
      SLV_FLIP_CLK_EDGE_ANA_DL : LVDS_PSFCR_SLV_FLIP_CLK_EDGE_ANA_DL_Field :=
                                  (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_15            : HAL.UInt11 := 16#0#;
      --  Flips the clock edge used by the first analog stage to resample the
      --  incoming data stream, data lane0
      SLV_FLIP_CLK_EDGE_DL     : LVDS_PSFCR_SLV_FLIP_CLK_EDGE_DL_Field :=
                                  (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_21_31           : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSFCR_Register use record
      SLV_FLIP_CLK_EDGE_ANA_DL at 0 range 0 .. 4;
      Reserved_5_15            at 0 range 5 .. 15;
      SLV_FLIP_CLK_EDGE_DL     at 0 range 16 .. 20;
      Reserved_21_31           at 0 range 21 .. 31;
   end record;

   subtype LVDS_PSSCR_SLV_SER_SWAP_DPDN_Field is HAL.UInt5;

   --  LVDS PHY-Slave serial control register
   type LVDS_PSSCR_Register is record
      --  Inverts output data 1 bit per lane
      SLV_SER_SWAP_DPDN : LVDS_PSSCR_SLV_SER_SWAP_DPDN_Field := 16#0#;
      --  unspecified
      Reserved_5_15     : HAL.UInt11 := 16#0#;
      --  Indicates transmission of data
      SLV_SER_DATA_OK   : Boolean := False;
      --  unspecified
      Reserved_17_31    : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSSCR_Register use record
      SLV_SER_SWAP_DPDN at 0 range 0 .. 4;
      Reserved_5_15     at 0 range 5 .. 15;
      SLV_SER_DATA_OK   at 0 range 16 .. 16;
      Reserved_17_31    at 0 range 17 .. 31;
   end record;

   subtype LVDS_PSSCR1_SLV_DRV_A0_SPARE_Field is HAL.UInt8;
   subtype LVDS_PSSCR1_SLV_DRV_A1_SPARE_Field is HAL.UInt8;
   subtype LVDS_PSSCR1_SLV_DRV_A2_SPARE_Field is HAL.UInt8;
   subtype LVDS_PSSCR1_SLV_DRV_A3_SPARE_Field is HAL.UInt8;

   --  LVDS PHY-Slave spare control register 1
   type LVDS_PSSCR1_Register is record
      --  Spare inputs for data lane0
      SLV_DRV_A0_SPARE : LVDS_PSSCR1_SLV_DRV_A0_SPARE_Field := 16#0#;
      --  Spare inputs for data lane1
      SLV_DRV_A1_SPARE : LVDS_PSSCR1_SLV_DRV_A1_SPARE_Field := 16#0#;
      --  Spare inputs for data lane2
      SLV_DRV_A2_SPARE : LVDS_PSSCR1_SLV_DRV_A2_SPARE_Field := 16#0#;
      --  Spare inputs for data lane3
      SLV_DRV_A3_SPARE : LVDS_PSSCR1_SLV_DRV_A3_SPARE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSSCR1_Register use record
      SLV_DRV_A0_SPARE at 0 range 0 .. 7;
      SLV_DRV_A1_SPARE at 0 range 8 .. 15;
      SLV_DRV_A2_SPARE at 0 range 16 .. 23;
      SLV_DRV_A3_SPARE at 0 range 24 .. 31;
   end record;

   subtype LVDS_PSSCR2_SLV_DRV_A4_SPARE_Field is HAL.UInt8;

   --  LVDS PHY-Slave spare control register 2
   type LVDS_PSSCR2_Register is record
      --  Spare inputs for data lane4
      SLV_DRV_A4_SPARE : LVDS_PSSCR2_SLV_DRV_A4_SPARE_Field := 16#0#;
      --  unspecified
      Reserved_8_31    : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSSCR2_Register use record
      SLV_DRV_A4_SPARE at 0 range 0 .. 7;
      Reserved_8_31    at 0 range 8 .. 31;
   end record;

   --  LVDS PHY-Slave bias control register 1
   type LVDS_PSBCR1_Register is record
      --  Enable the local bias at data lane0
      SLV_EN_BIAS_DL0 : Boolean := False;
      --  unspecified
      Reserved_1_3    : HAL.UInt3 := 16#0#;
      --  Enable the local bias at data lane1
      SLV_EN_BIAS_DL1 : Boolean := False;
      --  unspecified
      Reserved_5_7    : HAL.UInt3 := 16#0#;
      --  Enable the local bias at data lane2
      SLV_EN_BIAS_DL2 : Boolean := False;
      --  unspecified
      Reserved_9_11   : HAL.UInt3 := 16#0#;
      --  Enable the local bias at data lane3
      SLV_EN_BIAS_DL3 : Boolean := False;
      --  unspecified
      Reserved_13_15  : HAL.UInt3 := 16#0#;
      --  Enable the local bias at data lane4
      SLV_EN_BIAS_DL4 : Boolean := False;
      --  unspecified
      Reserved_17_31  : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSBCR1_Register use record
      SLV_EN_BIAS_DL0 at 0 range 0 .. 0;
      Reserved_1_3    at 0 range 1 .. 3;
      SLV_EN_BIAS_DL1 at 0 range 4 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      SLV_EN_BIAS_DL2 at 0 range 8 .. 8;
      Reserved_9_11   at 0 range 9 .. 11;
      SLV_EN_BIAS_DL3 at 0 range 12 .. 12;
      Reserved_13_15  at 0 range 13 .. 15;
      SLV_EN_BIAS_DL4 at 0 range 16 .. 16;
      Reserved_17_31  at 0 range 17 .. 31;
   end record;

   subtype LVDS_PSBCR2_SLV_BIAS_TRIM_Field is HAL.UInt15;
   subtype LVDS_PSBCR2_SLV_BIAS_VREFTRIM_Field is HAL.UInt12;

   --  LVDS PHY-Slave bias control register 2
   type LVDS_PSBCR2_Register is record
      --  None
      SLV_BIAS_TRIM     : LVDS_PSBCR2_SLV_BIAS_TRIM_Field := 16#0#;
      --  unspecified
      Reserved_15_15    : HAL.Bit := 16#0#;
      --  None
      SLV_BIAS_VREFTRIM : LVDS_PSBCR2_SLV_BIAS_VREFTRIM_Field := 16#0#;
      --  lvds macro global bias enable
      SLV_BIAS_EN       : Boolean := False;
      --  Selection for current generation internal reference
      SLV_BIAS_VREF_SEL : Boolean := False;
      --  unspecified
      Reserved_30_31    : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSBCR2_Register use record
      SLV_BIAS_TRIM     at 0 range 0 .. 14;
      Reserved_15_15    at 0 range 15 .. 15;
      SLV_BIAS_VREFTRIM at 0 range 16 .. 27;
      SLV_BIAS_EN       at 0 range 28 .. 28;
      SLV_BIAS_VREF_SEL at 0 range 29 .. 29;
      Reserved_30_31    at 0 range 30 .. 31;
   end record;

   --  LVDS PHY-Slave bias control register 3
   type LVDS_PSBCR3_Register is record
      --  Enable the voltage mode driver for data lane0
      SLV_VM_EN_DL0          : Boolean := False;
      --  Bias booster for the voltage mode driver LDOS, data lane0
      SLV_VM_BOOST_BIAS_DL0  : Boolean := False;
      --  Sets the voltage mode driver to use a reference derived from the
      --  power supply, data lane0
      SLV_VM_USE_VDD_REF_DL0 : Boolean := False;
      --  unspecified
      Reserved_3_3           : HAL.Bit := 16#0#;
      --  Enable the voltage mode driver for data lane1
      SLV_VM_EN_DL1          : Boolean := False;
      --  Bias booster for the voltage mode driver LDOS, data lane1
      SLV_VM_BOOST_BIAS_DL1  : Boolean := False;
      --  Sets the voltage mode driver to use a reference derived from the
      --  power supply, data lane1
      SLV_VM_USE_VDD_REF_DL1 : Boolean := False;
      --  unspecified
      Reserved_7_7           : HAL.Bit := 16#0#;
      --  Enable the voltage mode driver for data lane2
      SLV_VM_EN_DL2          : Boolean := False;
      --  Bias booster for the voltage mode driver LDOS, data lane2
      SLV_VM_BOOST_BIAS_DL2  : Boolean := False;
      --  Sets the voltage mode driver to use a reference derived from the
      --  power supply, data lane2
      SLV_VM_USE_VDD_REF_DL2 : Boolean := False;
      --  unspecified
      Reserved_11_11         : HAL.Bit := 16#0#;
      --  Enable the voltage mode driver for data lane3
      SLV_VM_EN_DL3          : Boolean := False;
      --  Bias booster for the voltage mode driver LDOS, data lane3
      SLV_VM_BOOST_BIAS_DL3  : Boolean := False;
      --  Sets the voltage mode driver to use a reference derived from the
      --  power supply, data lane3
      SLV_VM_USE_VDD_REF_DL3 : Boolean := False;
      --  unspecified
      Reserved_15_15         : HAL.Bit := 16#0#;
      --  Enable the voltage mode driver for data lane4
      SLV_VM_EN_DL4          : Boolean := False;
      --  Bias booster for the voltage mode driver LDOS, data lane4
      SLV_VM_BOOST_BIAS_DL4  : Boolean := False;
      --  Sets the voltage mode driver to use a reference derived from the
      --  power supply, data lane4
      SLV_VM_USE_VDD_REF_DL4 : Boolean := False;
      --  unspecified
      Reserved_19_31         : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSBCR3_Register use record
      SLV_VM_EN_DL0          at 0 range 0 .. 0;
      SLV_VM_BOOST_BIAS_DL0  at 0 range 1 .. 1;
      SLV_VM_USE_VDD_REF_DL0 at 0 range 2 .. 2;
      Reserved_3_3           at 0 range 3 .. 3;
      SLV_VM_EN_DL1          at 0 range 4 .. 4;
      SLV_VM_BOOST_BIAS_DL1  at 0 range 5 .. 5;
      SLV_VM_USE_VDD_REF_DL1 at 0 range 6 .. 6;
      Reserved_7_7           at 0 range 7 .. 7;
      SLV_VM_EN_DL2          at 0 range 8 .. 8;
      SLV_VM_BOOST_BIAS_DL2  at 0 range 9 .. 9;
      SLV_VM_USE_VDD_REF_DL2 at 0 range 10 .. 10;
      Reserved_11_11         at 0 range 11 .. 11;
      SLV_VM_EN_DL3          at 0 range 12 .. 12;
      SLV_VM_BOOST_BIAS_DL3  at 0 range 13 .. 13;
      SLV_VM_USE_VDD_REF_DL3 at 0 range 14 .. 14;
      Reserved_15_15         at 0 range 15 .. 15;
      SLV_VM_EN_DL4          at 0 range 16 .. 16;
      SLV_VM_BOOST_BIAS_DL4  at 0 range 17 .. 17;
      SLV_VM_USE_VDD_REF_DL4 at 0 range 18 .. 18;
      Reserved_19_31         at 0 range 19 .. 31;
   end record;

   --  LVDS_PSBCR4_SLV_VM_VOUT_VOH_CTRL_DL array element
   subtype LVDS_PSBCR4_SLV_VM_VOUT_VOH_CTRL_DL_Element is HAL.UInt4;

   --  LVDS_PSBCR4_SLV_VM_VOUT_VOH_CTRL_DL array
   type LVDS_PSBCR4_SLV_VM_VOUT_VOH_CTRL_DL_Field_Array is array (0 .. 4)
     of LVDS_PSBCR4_SLV_VM_VOUT_VOH_CTRL_DL_Element
     with Component_Size => 4, Size => 20;

   --  Type definition for LVDS_PSBCR4_SLV_VM_VOUT_VOH_CTRL_DL
   type LVDS_PSBCR4_SLV_VM_VOUT_VOH_CTRL_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLV_VM_VOUT_VOH_CTRL_DL as a value
            Val : HAL.UInt20;
         when True =>
            --  SLV_VM_VOUT_VOH_CTRL_DL as an array
            Arr : LVDS_PSBCR4_SLV_VM_VOUT_VOH_CTRL_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for LVDS_PSBCR4_SLV_VM_VOUT_VOH_CTRL_DL_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  LVDS PHY-Slave bias control register 4
   type LVDS_PSBCR4_Register is record
      --  Fine tuning for the voltage mode driver VOH, data lane0
      SLV_VM_VOUT_VOH_CTRL_DL : LVDS_PSBCR4_SLV_VM_VOUT_VOH_CTRL_DL_Field :=
                                 (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31          : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSBCR4_Register use record
      SLV_VM_VOUT_VOH_CTRL_DL at 0 range 0 .. 19;
      Reserved_20_31          at 0 range 20 .. 31;
   end record;

   --  LVDS_PSBCR5_SLV_VM_VOUT_VOL_CTRL_DL array element
   subtype LVDS_PSBCR5_SLV_VM_VOUT_VOL_CTRL_DL_Element is HAL.UInt4;

   --  LVDS_PSBCR5_SLV_VM_VOUT_VOL_CTRL_DL array
   type LVDS_PSBCR5_SLV_VM_VOUT_VOL_CTRL_DL_Field_Array is array (0 .. 4)
     of LVDS_PSBCR5_SLV_VM_VOUT_VOL_CTRL_DL_Element
     with Component_Size => 4, Size => 20;

   --  Type definition for LVDS_PSBCR5_SLV_VM_VOUT_VOL_CTRL_DL
   type LVDS_PSBCR5_SLV_VM_VOUT_VOL_CTRL_DL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SLV_VM_VOUT_VOL_CTRL_DL as a value
            Val : HAL.UInt20;
         when True =>
            --  SLV_VM_VOUT_VOL_CTRL_DL as an array
            Arr : LVDS_PSBCR5_SLV_VM_VOUT_VOL_CTRL_DL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for LVDS_PSBCR5_SLV_VM_VOUT_VOL_CTRL_DL_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  LVDS PHY-Slave bias control register 5
   type LVDS_PSBCR5_Register is record
      --  Fine tuning for the voltage mode driver VOL, data lane0
      SLV_VM_VOUT_VOL_CTRL_DL : LVDS_PSBCR5_SLV_VM_VOUT_VOL_CTRL_DL_Field :=
                                 (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31          : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSBCR5_Register use record
      SLV_VM_VOUT_VOL_CTRL_DL at 0 range 0 .. 19;
      Reserved_20_31          at 0 range 20 .. 31;
   end record;

   subtype LVDS_PSICR_SLV_IMP_CTRL_DL0_Field is HAL.UInt3;
   subtype LVDS_PSICR_SLV_IMP_CTRL_DL1_Field is HAL.UInt3;
   subtype LVDS_PSICR_SLV_IMP_CTRL_DL2_Field is HAL.UInt3;
   subtype LVDS_PSICR_SLV_IMP_CTRL_DL3_Field is HAL.UInt3;
   subtype LVDS_PSICR_SLV_IMP_CTRL_DL4_Field is HAL.UInt3;

   --  LVDS PHY-Slave impedance control register
   type LVDS_PSICR_Register is record
      --  Impedance control for data lane0
      SLV_IMP_CTRL_DL0 : LVDS_PSICR_SLV_IMP_CTRL_DL0_Field := 16#0#;
      --  unspecified
      Reserved_3_3     : HAL.Bit := 16#0#;
      --  Impedance control for data lane1
      SLV_IMP_CTRL_DL1 : LVDS_PSICR_SLV_IMP_CTRL_DL1_Field := 16#0#;
      --  unspecified
      Reserved_7_7     : HAL.Bit := 16#0#;
      --  Impedance control for data lane0
      SLV_IMP_CTRL_DL2 : LVDS_PSICR_SLV_IMP_CTRL_DL2_Field := 16#0#;
      --  unspecified
      Reserved_11_11   : HAL.Bit := 16#0#;
      --  Impedance control for data lane3
      SLV_IMP_CTRL_DL3 : LVDS_PSICR_SLV_IMP_CTRL_DL3_Field := 16#0#;
      --  unspecified
      Reserved_15_15   : HAL.Bit := 16#0#;
      --  Impedance control for data lane4
      SLV_IMP_CTRL_DL4 : LVDS_PSICR_SLV_IMP_CTRL_DL4_Field := 16#0#;
      --  unspecified
      Reserved_19_31   : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSICR_Register use record
      SLV_IMP_CTRL_DL0 at 0 range 0 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      SLV_IMP_CTRL_DL1 at 0 range 4 .. 6;
      Reserved_7_7     at 0 range 7 .. 7;
      SLV_IMP_CTRL_DL2 at 0 range 8 .. 10;
      Reserved_11_11   at 0 range 11 .. 11;
      SLV_IMP_CTRL_DL3 at 0 range 12 .. 14;
      Reserved_15_15   at 0 range 15 .. 15;
      SLV_IMP_CTRL_DL4 at 0 range 16 .. 18;
      Reserved_19_31   at 0 range 19 .. 31;
   end record;

   subtype LVDS_PSMBCCR_SLV_MON_BG_CURR_UNMASK_TUNE_Field is HAL.UInt9;

   --  LVDS PHY-Slave monitor bandgap current control register
   type LVDS_PSMBCCR_Register is record
      --  Bandgap current monitor force fault If set high, force the
      --  lvds_monitor_bg_curr_fault_mst and
      --  lvds_monitor_bg_curr_permanent_fault_mst to indicate a fault. This
      --  force is only removed once it goes low again
      SLV_MON_BG_CURR_FORCE_FAULT : Boolean := False;
      --  unspecified
      Reserved_1_3                : HAL.UInt3 := 16#0#;
      --  Bandgap current monitor clear fault If set high,
      --  lvds_monitor_bg_curr_fault_mst is cleared. It has to be set low again
      --  in order to continue monitoring the bandgap current
      SLV_MON_BG_CURR_CLEAR_FAULT : Boolean := False;
      --  unspecified
      Reserved_5_15               : HAL.UInt11 := 16#0#;
      --  Bandgap current timing control for the monitor unmask after startup
      SLV_MON_BG_CURR_UNMASK_TUNE : LVDS_PSMBCCR_SLV_MON_BG_CURR_UNMASK_TUNE_Field :=
                                     16#0#;
      --  unspecified
      Reserved_25_31              : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSMBCCR_Register use record
      SLV_MON_BG_CURR_FORCE_FAULT at 0 range 0 .. 0;
      Reserved_1_3                at 0 range 1 .. 3;
      SLV_MON_BG_CURR_CLEAR_FAULT at 0 range 4 .. 4;
      Reserved_5_15               at 0 range 5 .. 15;
      SLV_MON_BG_CURR_UNMASK_TUNE at 0 range 16 .. 24;
      Reserved_25_31              at 0 range 25 .. 31;
   end record;

   --  LVDS PHY-Slave monitor bandgap current status register
   type LVDS_PSMBCSR_Register is record
      --  Read-only. Bandgap current monitor permanent fault Indicates that a
      --  fault is occurring when high. If slv_mon_bg_curr_fault_mst is high
      --  and slv_bg_curr_permanent_fault_mst is low, the fault was a glitch
      --  that has since faded If slv_mon_bg_curr_fault_mst is high and
      --  slv_bg_curr_permanent_fault_mst is high, the fault is still occurring
      SLV_MON_BG_CURR_PERMANENT_FAULT : Boolean;
      --  unspecified
      Reserved_1_3                    : HAL.UInt3;
      --  Read-only. Bandgap current monitor fault Indicates that a fault has
      --  occurred when high. This signal is latched in the LVDS PHY, so it is
      --  kept high until cleared by slv_mon_bg_curr_clear_fault_mst
      SLV_MON_BG_CURR_FAULT           : Boolean;
      --  unspecified
      Reserved_5_31                   : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSMBCSR_Register use record
      SLV_MON_BG_CURR_PERMANENT_FAULT at 0 range 0 .. 0;
      Reserved_1_3                    at 0 range 1 .. 3;
      SLV_MON_BG_CURR_FAULT           at 0 range 4 .. 4;
      Reserved_5_31                   at 0 range 5 .. 31;
   end record;

   subtype LVDS_PSMBLCR_SLV_MON_BG_LOOP_UNMASK_TUNE_Field is HAL.UInt9;

   --  LVDS PHY-Slave monitor bandgap loop control register
   type LVDS_PSMBLCR_Register is record
      --  Bandgap loop monitor force fault If set high, force the
      --  lvds_monitor_bg_loop_fault_mst and
      --  lvds_monitor_bg_loop_permanent_fault_mst to indicate a fault. This
      --  force is only removed once it goes low again
      SLV_MON_BG_LOOP_FORCE_FAULT : Boolean := False;
      --  unspecified
      Reserved_1_3                : HAL.UInt3 := 16#0#;
      --  Bandgap loop monitor clear fault If set high,
      --  lvds_monitor_bg_loop_fault_mst is cleared. It has to be set low again
      --  in order to continue monitoring the bandgap loop
      SLV_MON_BG_LOOP_CLEAR_FAULT : Boolean := False;
      --  unspecified
      Reserved_5_15               : HAL.UInt11 := 16#0#;
      --  Bandgap loop timing control for the monitor unmask after startup
      SLV_MON_BG_LOOP_UNMASK_TUNE : LVDS_PSMBLCR_SLV_MON_BG_LOOP_UNMASK_TUNE_Field :=
                                     16#0#;
      --  unspecified
      Reserved_25_31              : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSMBLCR_Register use record
      SLV_MON_BG_LOOP_FORCE_FAULT at 0 range 0 .. 0;
      Reserved_1_3                at 0 range 1 .. 3;
      SLV_MON_BG_LOOP_CLEAR_FAULT at 0 range 4 .. 4;
      Reserved_5_15               at 0 range 5 .. 15;
      SLV_MON_BG_LOOP_UNMASK_TUNE at 0 range 16 .. 24;
      Reserved_25_31              at 0 range 25 .. 31;
   end record;

   --  LVDS PHY-Slave monitor bandgap loop status register
   type LVDS_PSMBLSR_Register is record
      --  Read-only. Bandgap loop monitor permanent fault Indicates that a
      --  fault is occurring when high. If slv_mon_bg_loop_fault_mst is high
      --  and slv_bg_loop_permanent_fault_mst is low, the fault was a glitch
      --  that has since faded If slv_mon_bg_loop_fault_mst is high and
      --  slv_bg_loop_permanent_fault_mst is high, the fault is still occurring
      SLV_MON_BG_LOOP_PERMANENT_FAULT : Boolean;
      --  unspecified
      Reserved_1_3                    : HAL.UInt3;
      --  Read-only. Bandgap loop monitor fault Indicates that a fault has
      --  occurred when high. This signal is latched in the LVDS PHY, so it is
      --  kept high until cleared by slv_mon_bg_loop_clear_fault_mst
      SLV_MON_BG_LOOP_FAULT           : Boolean;
      --  unspecified
      Reserved_5_31                   : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSMBLSR_Register use record
      SLV_MON_BG_LOOP_PERMANENT_FAULT at 0 range 0 .. 0;
      Reserved_1_3                    at 0 range 1 .. 3;
      SLV_MON_BG_LOOP_FAULT           at 0 range 4 .. 4;
      Reserved_5_31                   at 0 range 5 .. 31;
   end record;

   subtype LVDS_PSMBOVCR_SLV_MON_BG_VOLT_UNMASK_TUNE_Field is HAL.UInt9;

   --  LVDS PHY-Slave monitor bandgap output voltage control register
   type LVDS_PSMBOVCR_Register is record
      --  Bandgap output voltage monitor force fault If set high, force the
      --  lvds_monitor_bg_volt_fault_mst and
      --  lvds_monitor_bg_volt_permanent_fault_mst to indicate a fault. This
      --  force is only removed once it goes low again
      SLV_MON_BG_VOLT_FORCE_FAULT : Boolean := False;
      --  unspecified
      Reserved_1_3                : HAL.UInt3 := 16#0#;
      --  Bandgap output voltage monitor clear fault If set high,
      --  lvds_monitor_bg_volt_fault_mst is cleared. It has to be set low again
      --  in order to continue monitoring the bandgap output voltage
      SLV_MON_BG_VOLT_CLEAR_FAULT : Boolean := False;
      --  unspecified
      Reserved_5_15               : HAL.UInt11 := 16#0#;
      --  Bandgap output voltage timing control for the monitor unmask after
      --  startup
      SLV_MON_BG_VOLT_UNMASK_TUNE : LVDS_PSMBOVCR_SLV_MON_BG_VOLT_UNMASK_TUNE_Field :=
                                     16#0#;
      --  unspecified
      Reserved_25_31              : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSMBOVCR_Register use record
      SLV_MON_BG_VOLT_FORCE_FAULT at 0 range 0 .. 0;
      Reserved_1_3                at 0 range 1 .. 3;
      SLV_MON_BG_VOLT_CLEAR_FAULT at 0 range 4 .. 4;
      Reserved_5_15               at 0 range 5 .. 15;
      SLV_MON_BG_VOLT_UNMASK_TUNE at 0 range 16 .. 24;
      Reserved_25_31              at 0 range 25 .. 31;
   end record;

   --  LVDS PHY-Slave monitor bandgap output voltage status register
   type LVDS_PSMBOVSR_Register is record
      --  Read-only. Bandgap output voltage monitor permanent fault Indicates
      --  that a fault is occurring when high. If slv_mon_bg_volt_fault_mst is
      --  high and slv_bg_volt_permanent_fault_mst is low, the fault was a
      --  glitch that has since faded If slv_mon_bg_volt_fault_mst is high and
      --  slv_bg_volt_permanent_fault_mst is high, the fault is still occurring
      SLV_MON_BG_VOLT_PERMANENT_FAULT : Boolean;
      --  unspecified
      Reserved_1_3                    : HAL.UInt3;
      --  Read-only. Bandgap output voltage monitor fault Indicates that a
      --  fault has occurred when high. This signal is latched in the LVDS PHY,
      --  so it is kept high until cleared by slv_mon_bg_volt_clear_fault_mst
      SLV_MON_BG_VOLT_FAULT           : Boolean;
      --  unspecified
      Reserved_5_31                   : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSMBOVSR_Register use record
      SLV_MON_BG_VOLT_PERMANENT_FAULT at 0 range 0 .. 0;
      Reserved_1_3                    at 0 range 1 .. 3;
      SLV_MON_BG_VOLT_FAULT           at 0 range 4 .. 4;
      Reserved_5_31                   at 0 range 5 .. 31;
   end record;

   --  LVDS PHY-Slave monitor serializer clock control register
   type LVDS_PSMSCCR_Register is record
      --  Serializer clock checking error injection
      SLV_SER_CLK_ERROR_INJ   : Boolean := False;
      --  unspecified
      Reserved_1_3            : HAL.UInt3 := 16#0#;
      --  Serializer clock checking fault clearing
      SLV_SER_CLK_CLEAR_FAULT : Boolean := False;
      --  unspecified
      Reserved_5_31           : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSMSCCR_Register use record
      SLV_SER_CLK_ERROR_INJ   at 0 range 0 .. 0;
      Reserved_1_3            at 0 range 1 .. 3;
      SLV_SER_CLK_CLEAR_FAULT at 0 range 4 .. 4;
      Reserved_5_31           at 0 range 5 .. 31;
   end record;

   --  LVDS PHY-Slave monitor serializer clock status register
   type LVDS_PSMSCSR_Register is record
      --  Read-only. Serializer clock checking fault
      SLV_SER_CLK_FAULT : Boolean;
      --  unspecified
      Reserved_1_31     : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSMSCSR_Register use record
      SLV_SER_CLK_FAULT at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   subtype LVDS_PSMSCR_SLV_SER_ERROR_INJ_Field is HAL.UInt5;
   subtype LVDS_PSMSCR_SLV_SER_FAULT_CLEAR_Field is HAL.UInt5;
   subtype LVDS_PSMSCR_SLV_SER_LPBCK_Field is HAL.UInt5;

   --  LVDS PHY-Slave monitor serializer control register
   type LVDS_PSMSCR_Register is record
      --  Serializer error injection
      SLV_SER_ERROR_INJ   : LVDS_PSMSCR_SLV_SER_ERROR_INJ_Field := 16#0#;
      --  unspecified
      Reserved_5_7        : HAL.UInt3 := 16#0#;
      --  Serializer fault clearing
      SLV_SER_FAULT_CLEAR : LVDS_PSMSCR_SLV_SER_FAULT_CLEAR_Field := 16#0#;
      --  unspecified
      Reserved_13_15      : HAL.UInt3 := 16#0#;
      --  Serializer fault loopback
      SLV_SER_LPBCK       : LVDS_PSMSCR_SLV_SER_LPBCK_Field := 16#0#;
      --  unspecified
      Reserved_21_31      : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSMSCR_Register use record
      SLV_SER_ERROR_INJ   at 0 range 0 .. 4;
      Reserved_5_7        at 0 range 5 .. 7;
      SLV_SER_FAULT_CLEAR at 0 range 8 .. 12;
      Reserved_13_15      at 0 range 13 .. 15;
      SLV_SER_LPBCK       at 0 range 16 .. 20;
      Reserved_21_31      at 0 range 21 .. 31;
   end record;

   subtype LVDS_PSMSSR_SLV_SER_FAULT_Field is HAL.UInt5;

   --  LVDS PHY-Slave monitor serializer status register
   type LVDS_PSMSSR_Register is record
      --  Read-only. Serializer fault
      SLV_SER_FAULT : LVDS_PSMSSR_SLV_SER_FAULT_Field;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSMSSR_Register use record
      SLV_SER_FAULT at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  LVDS PHY-Slave debug control register
   type LVDS_PSDCR_Register is record
      --  When set to 1, this bit masks some functions in the LVDS-PHY. This
      --  bit can be used as a work around to functional problems with some of
      --  the monitor blocks
      SLV_FORCE_ANALOG_OK : Boolean := False;
      --  unspecified
      Reserved_1_11       : HAL.UInt11 := 16#0#;
      --  When set to 1, this bit masks some functions in the LVDS-PHY. This
      --  bit can be used as a work around to functional problems with some of
      --  the monitor blocks
      SLV_POWER_OK        : Boolean := False;
      --  unspecified
      Reserved_13_31      : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSDCR_Register use record
      SLV_FORCE_ANALOG_OK at 0 range 0 .. 0;
      Reserved_1_11       at 0 range 1 .. 11;
      SLV_POWER_OK        at 0 range 12 .. 12;
      Reserved_13_31      at 0 range 13 .. 31;
   end record;

   subtype LVDS_PSSSR1_SLV_DRV_A0_SPARE_RD_Field is HAL.UInt8;
   subtype LVDS_PSSSR1_SLV_DRV_A1_SPARE_RD_Field is HAL.UInt8;
   subtype LVDS_PSSSR1_SLV_DRV_A2_SPARE_RD_Field is HAL.UInt8;
   subtype LVDS_PSSSR1_SLV_DRV_A3_SPARE_RD_Field is HAL.UInt8;

   --  LVDS PHY-Slave spare status register 1
   type LVDS_PSSSR1_Register is record
      --  Read-only. Spare outputs for data lane0
      SLV_DRV_A0_SPARE_RD : LVDS_PSSSR1_SLV_DRV_A0_SPARE_RD_Field;
      --  Read-only. Spare outputs for data lane1
      SLV_DRV_A1_SPARE_RD : LVDS_PSSSR1_SLV_DRV_A1_SPARE_RD_Field;
      --  Read-only. Spare outputs for data lane2
      SLV_DRV_A2_SPARE_RD : LVDS_PSSSR1_SLV_DRV_A2_SPARE_RD_Field;
      --  Read-only. Spare outputs for data lane3
      SLV_DRV_A3_SPARE_RD : LVDS_PSSSR1_SLV_DRV_A3_SPARE_RD_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSSSR1_Register use record
      SLV_DRV_A0_SPARE_RD at 0 range 0 .. 7;
      SLV_DRV_A1_SPARE_RD at 0 range 8 .. 15;
      SLV_DRV_A2_SPARE_RD at 0 range 16 .. 23;
      SLV_DRV_A3_SPARE_RD at 0 range 24 .. 31;
   end record;

   subtype LVDS_PSSSR2_SLV_DRV_A4_SPARE_RD_Field is HAL.UInt8;

   --  LVDS PHY-Slave spare status register 2
   type LVDS_PSSSR2_Register is record
      --  Read-only. Spare outputs for data lane4
      SLV_DRV_A4_SPARE_RD : LVDS_PSSSR2_SLV_DRV_A4_SPARE_RD_Field;
      --  unspecified
      Reserved_8_31       : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSSSR2_Register use record
      SLV_DRV_A4_SPARE_RD at 0 range 0 .. 7;
      Reserved_8_31       at 0 range 8 .. 31;
   end record;

   subtype LVDS_PSCFGCR_SLV_EN_DIG_DL_Field is HAL.UInt5;

   --  LVDS PHY-Slave configuration control register
   type LVDS_PSCFGCR_Register is record
      --  Enables Digital DataLanes DL4...DL0
      SLV_EN_DIG_DL : LVDS_PSCFGCR_SLV_EN_DIG_DL_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSCFGCR_Register use record
      SLV_EN_DIG_DL at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  LVDS PHY-Slave PLL_MODE 1 control register
   type LVDS_PSPLLCR1_Register is record
      --  0x0: LVDS-PHY PLL Disable
      SLV_PLL_ENABLE            : Boolean := False;
      --  sigma-delta enable
      SLV_PLL_SD_ENABLE         : Boolean := False;
      --  Triangular wave pattern used to modulate MDIV
      SLV_PLL_TWG_ENABLE        : Boolean := False;
      --  unspecified
      Reserved_3_3              : HAL.Bit := 16#0#;
      --  0x0: from VCO output
      SLV_PLL_BYPASS            : Boolean := False;
      --  unspecified
      Reserved_5_7              : HAL.UInt3 := 16#0#;
      --  0x0: Dividers disabled
      SLV_PLL_DIVIDERS_ENABLE   : Boolean := False;
      --  unspecified
      Reserved_9_11             : HAL.UInt3 := 16#0#;
      --  Read-only. Bypass start DECT.
      SLV_PLL_BYPASS_START_DECT : Boolean := False;
      --  unspecified
      Reserved_13_31            : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSPLLCR1_Register use record
      SLV_PLL_ENABLE            at 0 range 0 .. 0;
      SLV_PLL_SD_ENABLE         at 0 range 1 .. 1;
      SLV_PLL_TWG_ENABLE        at 0 range 2 .. 2;
      Reserved_3_3              at 0 range 3 .. 3;
      SLV_PLL_BYPASS            at 0 range 4 .. 4;
      Reserved_5_7              at 0 range 5 .. 7;
      SLV_PLL_DIVIDERS_ENABLE   at 0 range 8 .. 8;
      Reserved_9_11             at 0 range 9 .. 11;
      SLV_PLL_BYPASS_START_DECT at 0 range 12 .. 12;
      Reserved_13_31            at 0 range 13 .. 31;
   end record;

   --  LVDS wrapper clock control register
   type LVDS_WCLKCR_Register is record
      --  Pixel clock selection:
      SLV_CLKPIX_SEL : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Source Selection for the Pixel Clock, between master and slave PHY:
      --  Note: Both the double-pixel clock and the lock are selected from the
      --  relevant PHY and its PLL.
      SRCSEL         : Boolean := False;
      --  unspecified
      Reserved_9_31  : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_WCLKCR_Register use record
      SLV_CLKPIX_SEL at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      SRCSEL         at 0 range 8 .. 8;
      Reserved_9_31  at 0 range 9 .. 31;
   end record;

   subtype LVDS_PSPLLCR2_SLV_PLL_BIT_DIV_Field is HAL.UInt10;
   subtype LVDS_PSPLLCR2_SLV_PLL_INPUT_DIV_Field is HAL.UInt10;

   --  LVDS PHY-Slave PLL_MODE 2 control register
   type LVDS_PSPLLCR2_Register is record
      --  PLL Output Clock Divider (BDIV, divides output VCO)
      SLV_PLL_BIT_DIV   : LVDS_PSPLLCR2_SLV_PLL_BIT_DIV_Field := 16#0#;
      --  unspecified
      Reserved_10_15    : HAL.UInt6 := 16#0#;
      --  PLL Input Clock Divider (NDIV, divides input reference clock)
      SLV_PLL_INPUT_DIV : LVDS_PSPLLCR2_SLV_PLL_INPUT_DIV_Field := 16#0#;
      --  unspecified
      Reserved_26_31    : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSPLLCR2_Register use record
      SLV_PLL_BIT_DIV   at 0 range 0 .. 9;
      Reserved_10_15    at 0 range 10 .. 15;
      SLV_PLL_INPUT_DIV at 0 range 16 .. 25;
      Reserved_26_31    at 0 range 26 .. 31;
   end record;

   --  LVDS PHY-Slave PLL status register
   type LVDS_PSPLLSR_Register is record
      --  Read-only. PLL lock During a certain number of cycles of reference
      --  clock, pll_lock is asserted high and then goes low waiting for the
      --  LVDS-PHY PLL t0 lock
      SLV_PLL_LOCK  : Boolean;
      --  unspecified
      Reserved_1_31 : HAL.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSPLLSR_Register use record
      SLV_PLL_LOCK  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype LVDS_PSPLLSDCR1_SLV_PLL_SD_INT_RATIO_Field is HAL.UInt10;

   --  LVDS PHY-Slave PLL_SD_1 control register
   type LVDS_PSPLLSDCR1_Register is record
      --  Integer Setting of PLL Feedback Clock Divider (MDIV, divides VCO
      --  clock for feedback). MDIV divider is used for both integer N and
      --  Fractional N PLL modes: - Integer N: MDIV = SLV_PLL_sd_int_ratio[9:0]
      --  (for integer setting) SLV_PLL_sd_bypass_vco_mux is not used. -
      --  Fractional N: MDIV = SLV_PLL_sd_int_ratio[9:0] (for integer setting),
      --  SLV_PLL_sd_input_code_bypass[22:0] (for fractional setting). MDIV =
      --  SLV_PLL_sd_int_ratio[9:0] + (SLV_PLL_sd_input_code_bypass[22:0 -
      --  4194304)/131072
      SLV_PLL_SD_INT_RATIO : LVDS_PSPLLSDCR1_SLV_PLL_SD_INT_RATIO_Field :=
                              16#0#;
      --  unspecified
      Reserved_10_31       : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSPLLSDCR1_Register use record
      SLV_PLL_SD_INT_RATIO at 0 range 0 .. 9;
      Reserved_10_31       at 0 range 10 .. 31;
   end record;

   subtype LVDS_PSPLLSDCR2_SLV_PLL_SD_INPUT_CODE_BYPASS_Field is HAL.UInt23;
   subtype LVDS_PSPLLSDCR2_SLV_PLL_SD_BYPASS_VCO_MUX_Field is HAL.UInt2;

   --  LVDS PHY-Slave PLL_SD_2 control register
   type LVDS_PSPLLSDCR2_Register is record
      --  Fractional Setting of PLL feedback clock Divider (MDIV, divides VCO
      --  clock for feedback)
      SLV_PLL_SD_INPUT_CODE_BYPASS : LVDS_PSPLLSDCR2_SLV_PLL_SD_INPUT_CODE_BYPASS_Field :=
                                      16#F#;
      --  unspecified
      Reserved_23_23               : HAL.Bit := 16#0#;
      --  Bypass control for the PLL sigma delta VCO mux
      SLV_PLL_SD_BYPASS_VCO_MUX    : LVDS_PSPLLSDCR2_SLV_PLL_SD_BYPASS_VCO_MUX_Field :=
                                      16#0#;
      --  Read-only. Bypass start SD feedback clock.
      SLV_PLL_SD_BYPASS_FB_CLK     : Boolean := False;
      --  unspecified
      Reserved_27_27               : HAL.Bit := 16#0#;
      --  Sigma--delta edge control.
      SLV_PLL_SD_CLK_EDGE_CNTRL    : Boolean := False;
      --  unspecified
      Reserved_29_31               : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSPLLSDCR2_Register use record
      SLV_PLL_SD_INPUT_CODE_BYPASS at 0 range 0 .. 22;
      Reserved_23_23               at 0 range 23 .. 23;
      SLV_PLL_SD_BYPASS_VCO_MUX    at 0 range 24 .. 25;
      SLV_PLL_SD_BYPASS_FB_CLK     at 0 range 26 .. 26;
      Reserved_27_27               at 0 range 27 .. 27;
      SLV_PLL_SD_CLK_EDGE_CNTRL    at 0 range 28 .. 28;
      Reserved_29_31               at 0 range 29 .. 31;
   end record;

   subtype LVDS_PSPLLTWGCR1_SLV_PLL_TWG_STEP_Field is HAL.UInt20;

   --  LVDS PHY-Slave PLL_TWG_1 control register
   type LVDS_PSPLLTWGCR1_Register is record
      --  MDIV divdier used in integer N and Fractional N PLL modes integer N:
      --  SLV_PLL_sd_bypass_vco_mux is not relevant. MDIV =
      --  SLV_PLL_sd_int_ratio[9:0] fractional N: MDIV controlled by
      --  SLV_PLL_sd_int_ratio[9:0] and SLV_PLL_sd_input_code_bypass[22:0] MDIV
      --  = SLV_PLL_sd_int_ratio[9:0] + (SLV_PLL_sd_input_code_bypass[22:0 -
      --  4194304)/131072
      SLV_PLL_TWG_STEP        : LVDS_PSPLLTWGCR1_SLV_PLL_TWG_STEP_Field :=
                                 16#0#;
      --  TWG pattern spreading
      SLV_PLL_TWG_DOWN_SPREAD : Boolean := False;
      --  unspecified
      Reserved_21_31          : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSPLLTWGCR1_Register use record
      SLV_PLL_TWG_STEP        at 0 range 0 .. 19;
      SLV_PLL_TWG_DOWN_SPREAD at 0 range 20 .. 20;
      Reserved_21_31          at 0 range 21 .. 31;
   end record;

   subtype LVDS_PSPLLTWGCR2_SLV_PLL_TWG_THRESHOLD_Field is HAL.UInt23;

   --  LVDS PHY-Slave PLL_TWG_2 control register
   type LVDS_PSPLLTWGCR2_Register is record
      --  TWG_THRESHOLD setting
      SLV_PLL_TWG_THRESHOLD : LVDS_PSPLLTWGCR2_SLV_PLL_TWG_THRESHOLD_Field :=
                               16#0#;
      --  unspecified
      Reserved_23_31        : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSPLLTWGCR2_Register use record
      SLV_PLL_TWG_THRESHOLD at 0 range 0 .. 22;
      Reserved_23_31        at 0 range 23 .. 31;
   end record;

   subtype LVDS_PSPLLLDOCR_SLV_PLL_LDO_FRREGVTRIM_Field is HAL.UInt3;

   --  LVDS PHY-Slave PLL_LDO control register
   type LVDS_PSPLLLDOCR_Register is record
      --  PLL LDO output voltage fine tuning:
      SLV_PLL_LDO_FRREGVTRIM : LVDS_PSPLLLDOCR_SLV_PLL_LDO_FRREGVTRIM_Field :=
                                16#0#;
      --  unspecified
      Reserved_3_31          : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSPLLLDOCR_Register use record
      SLV_PLL_LDO_FRREGVTRIM at 0 range 0 .. 2;
      Reserved_3_31          at 0 range 3 .. 31;
   end record;

   subtype LVDS_PSPLLCPCR_SLV_PLL_CPCTRL_Field is HAL.UInt4;

   --  LVDS PHY-Slave PLL_CP control register
   type LVDS_PSPLLCPCR_Register is record
      --  PLL charge pump control, default=1.
      SLV_PLL_CPCTRL : LVDS_PSPLLCPCR_SLV_PLL_CPCTRL_Field := 16#0#;
      --  unspecified
      Reserved_4_31  : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSPLLCPCR_Register use record
      SLV_PLL_CPCTRL at 0 range 0 .. 3;
      Reserved_4_31  at 0 range 4 .. 31;
   end record;

   subtype LVDS_PSPLLCFGCR_SLV_PLL_CFG_Field is HAL.UInt8;

   --  LVDS PHY-Slave PLL_CFG control register
   type LVDS_PSPLLCFGCR_Register is record
      --  PLL configuration
      SLV_PLL_CFG   : LVDS_PSPLLCFGCR_SLV_PLL_CFG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSPLLCFGCR_Register use record
      SLV_PLL_CFG   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype LVDS_PSPLLTESTCR_SLV_PLL_TEST_DIV_SETTINGS_Field is HAL.UInt10;

   --  LVDS PHY-Slave PLL_TEST control register
   type LVDS_PSPLLTESTCR_Register is record
      --  lvds_pll_test_clk enable
      SLV_PLL_TEST_CLK_EN       : Boolean := False;
      --  unspecified
      Reserved_1_7              : HAL.UInt7 := 16#0#;
      --  lvds_pll_test_clk dividers enable
      SLV_PLL_TEST_DIV_EN       : Boolean := False;
      --  unspecified
      Reserved_9_15             : HAL.UInt7 := 16#0#;
      --  lvds_pll_test_clk dividers value
      SLV_PLL_TEST_DIV_SETTINGS : LVDS_PSPLLTESTCR_SLV_PLL_TEST_DIV_SETTINGS_Field :=
                                   16#1#;
      --  unspecified
      Reserved_26_31            : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSPLLTESTCR_Register use record
      SLV_PLL_TEST_CLK_EN       at 0 range 0 .. 0;
      Reserved_1_7              at 0 range 1 .. 7;
      SLV_PLL_TEST_DIV_EN       at 0 range 8 .. 8;
      Reserved_9_15             at 0 range 9 .. 15;
      SLV_PLL_TEST_DIV_SETTINGS at 0 range 16 .. 25;
      Reserved_26_31            at 0 range 26 .. 31;
   end record;

   --  LVDS_PMATCR1_PMATDL array element
   subtype LVDS_PMATCR1_PMATDL_Element is HAL.UInt8;

   --  LVDS_PMATCR1_PMATDL array
   type LVDS_PMATCR1_PMATDL_Field_Array is array (0 .. 3)
     of LVDS_PMATCR1_PMATDL_Element
     with Component_Size => 8, Size => 32;

   --  LVDS PHY-Master analog test control register 1
   type LVDS_PMATCR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PMATDL as a value
            Val : HAL.UInt32;
         when True =>
            --  PMATDL as an array
            Arr : LVDS_PMATCR1_PMATDL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMATCR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype LVDS_PMATCR2_PMATDL4_Field is HAL.UInt8;
   subtype LVDS_PMATCR2_PMATB_Field is HAL.UInt8;
   subtype LVDS_PMATCR2_PMATPC_Field is HAL.UInt7;

   --  LVDS PHY-Master analog test control register 2
   type LVDS_PMATCR2_Register is record
      --  PHY-Master analog test data lane 4 Analog test mux control for
      --  mst_lvds_ana_test output, for data lane 4.
      PMATDL4        : LVDS_PMATCR2_PMATDL4_Field := 16#0#;
      --  Phy-Master analog test bias Bias analog test mux control for
      --  mst_lvds_ana_test output.
      PMATB          : LVDS_PMATCR2_PMATB_Field := 16#0#;
      --  Phy-Master analog test PLL control PLL master analog test miux
      --  control for mst_lvds_ana_test output.
      PMATPC         : LVDS_PMATCR2_PMATPC_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMATCR2_Register use record
      PMATDL4        at 0 range 0 .. 7;
      PMATB          at 0 range 8 .. 15;
      PMATPC         at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  LVDS_PMDTCR1_PMDTDL array element
   subtype LVDS_PMDTCR1_PMDTDL_Element is HAL.UInt8;

   --  LVDS_PMDTCR1_PMDTDL array
   type LVDS_PMDTCR1_PMDTDL_Field_Array is array (0 .. 3)
     of LVDS_PMDTCR1_PMDTDL_Element
     with Component_Size => 8, Size => 32;

   --  LVDS PHY-Master digital test control register 1
   type LVDS_PMDTCR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PMDTDL as a value
            Val : HAL.UInt32;
         when True =>
            --  PMDTDL as an array
            Arr : LVDS_PMDTCR1_PMDTDL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMDTCR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype LVDS_PMDTCR2_PMDTDL4_Field is HAL.UInt8;
   subtype LVDS_PMDTCR2_PMDTMC_Field is HAL.UInt7;

   --  LVDS PHY-Master digital test control register 2
   type LVDS_PMDTCR2_Register is record
      --  PHY-Master digital test data lane 4 Data lane 4 digital test mux
      --  control for mst_lvds_dig_test_dl4.
      PMDTDL4        : LVDS_PMDTCR2_PMDTDL4_Field := 16#0#;
      --  Phy-Master digital test mux control PLL master digital test mux
      --  control for o_lvds_pll_dig_test.
      PMDTMC         : LVDS_PMDTCR2_PMDTMC_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMDTCR2_Register use record
      PMDTDL4        at 0 range 0 .. 7;
      PMDTMC         at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  LVDS_PMDTSR_PMDTDLS array
   type LVDS_PMDTSR_PMDTDLS_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for LVDS_PMDTSR_PMDTDLS
   type LVDS_PMDTSR_PMDTDLS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PMDTDLS as a value
            Val : HAL.UInt5;
         when True =>
            --  PMDTDLS as an array
            Arr : LVDS_PMDTSR_PMDTDLS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for LVDS_PMDTSR_PMDTDLS_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  LVDS PHY-Master digital test status register
   type LVDS_PMDTSR_Register is record
      --  Read-only. Phy-Master digital test data lane status 0
      PMDTDLS       : LVDS_PMDTSR_PMDTDLS_Field;
      --  Read-only. Phy-Master digital test PLL status
      PMDTPS        : Boolean;
      --  unspecified
      Reserved_6_31 : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PMDTSR_Register use record
      PMDTDLS       at 0 range 0 .. 4;
      PMDTPS        at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  LVDS_PSATCR1_PSATDL array element
   subtype LVDS_PSATCR1_PSATDL_Element is HAL.UInt8;

   --  LVDS_PSATCR1_PSATDL array
   type LVDS_PSATCR1_PSATDL_Field_Array is array (0 .. 3)
     of LVDS_PSATCR1_PSATDL_Element
     with Component_Size => 8, Size => 32;

   --  LVDS PHY-Slave analog test control register 1
   type LVDS_PSATCR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PSATDL as a value
            Val : HAL.UInt32;
         when True =>
            --  PSATDL as an array
            Arr : LVDS_PSATCR1_PSATDL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSATCR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype LVDS_PSATCR2_PSATDL4_Field is HAL.UInt8;
   subtype LVDS_PSATCR2_PSATB_Field is HAL.UInt8;
   subtype LVDS_PSATCR2_PSATPC_Field is HAL.UInt7;

   --  LVDS PHY-Slave analog test control register 2
   type LVDS_PSATCR2_Register is record
      --  PHY-Slave analog test data lane 4 Analog test mux control for
      --  mst_lvds_ana_test output, for data lane 4.
      PSATDL4        : LVDS_PSATCR2_PSATDL4_Field := 16#0#;
      --  Phy-Slave analog test bias Bias analog test mux control for
      --  mst_lvds_ana_test output
      PSATB          : LVDS_PSATCR2_PSATB_Field := 16#0#;
      --  Phy-Slave analog test PLL control PLL slave analog test miux control
      --  for mst_lvds_ana_test output
      PSATPC         : LVDS_PSATCR2_PSATPC_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSATCR2_Register use record
      PSATDL4        at 0 range 0 .. 7;
      PSATB          at 0 range 8 .. 15;
      PSATPC         at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  LVDS_PSDTCR1_PSDTDL array element
   subtype LVDS_PSDTCR1_PSDTDL_Element is HAL.UInt8;

   --  LVDS_PSDTCR1_PSDTDL array
   type LVDS_PSDTCR1_PSDTDL_Field_Array is array (0 .. 3)
     of LVDS_PSDTCR1_PSDTDL_Element
     with Component_Size => 8, Size => 32;

   --  LVDS PHY-Slave digital test control register 1
   type LVDS_PSDTCR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PSDTDL as a value
            Val : HAL.UInt32;
         when True =>
            --  PSDTDL as an array
            Arr : LVDS_PSDTCR1_PSDTDL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSDTCR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype LVDS_PSDTCR2_PSDTDL4_Field is HAL.UInt8;
   subtype LVDS_PSDTCR2_PSDTMC_Field is HAL.UInt7;

   --  LVDS PHY-Slave digital test control register 2
   type LVDS_PSDTCR2_Register is record
      --  PHY-Slave digital test data lane 4 Data lane 4 digital test mux
      --  control for slv_lvds_dig_test_dl4:
      PSDTDL4        : LVDS_PSDTCR2_PSDTDL4_Field := 16#0#;
      --  PHY-Slave digital test PLL master digital test mux control for
      --  o_lvds_pll_dig_test. Other: reserved
      PSDTMC         : LVDS_PSDTCR2_PSDTMC_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSDTCR2_Register use record
      PSDTDL4        at 0 range 0 .. 7;
      PSDTMC         at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  LVDS_PSDTSR_PSDTDLS array
   type LVDS_PSDTSR_PSDTDLS_Field_Array is array (0 .. 4) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for LVDS_PSDTSR_PSDTDLS
   type LVDS_PSDTSR_PSDTDLS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PSDTDLS as a value
            Val : HAL.UInt5;
         when True =>
            --  PSDTDLS as an array
            Arr : LVDS_PSDTSR_PSDTDLS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for LVDS_PSDTSR_PSDTDLS_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  LVDS PHY-Slave digital test status register
   type LVDS_PSDTSR_Register is record
      --  Phy-Slave digital test data lane status 0
      PSDTDLS       : LVDS_PSDTSR_PSDTDLS_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Phy-Slave digital test PLL status
      PSDTPS        : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_PSDTSR_Register use record
      PSDTDLS       at 0 range 0 .. 4;
      PSDTPS        at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype LVDS_HWCFGR_TECHNO_Field is HAL.UInt4;
   subtype LVDS_HWCFGR_LANES_Field is HAL.UInt4;
   subtype LVDS_HWCFGR_LINKS_Field is HAL.UInt4;

   --  LVDS hardware configuration register
   type LVDS_HWCFGR_Register is record
      --  Read-only. PHY technology (and version)
      TECHNO         : LVDS_HWCFGR_TECHNO_Field;
      --  Read-only. amount of LVDS PHY Lanes (including the LVDS PHY clock
      --  lane) in one link
      LANES          : LVDS_HWCFGR_LANES_Field;
      --  Read-only. amount of LVDS PHY links
      LINKS          : LVDS_HWCFGR_LINKS_Field;
      --  unspecified
      Reserved_12_31 : HAL.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_HWCFGR_Register use record
      TECHNO         at 0 range 0 .. 3;
      LANES          at 0 range 4 .. 7;
      LINKS          at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype LVDS_VERR_MINREV_Field is HAL.UInt4;
   subtype LVDS_VERR_MAJREV_Field is HAL.UInt4;

   --  LVDS version register
   type LVDS_VERR_Register is record
      --  Read-only. LVDS PHY host minor revision
      MINREV        : LVDS_VERR_MINREV_Field;
      --  Read-only. LVDS PHY host major revision
      MAJREV        : LVDS_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LVDS_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type LVDS_Disc is
     (Wclkcr,
      Pspllcr2);

   --  LVDS address block description
   type LVDS_Peripheral
     (Discriminent : LVDS_Disc := Wclkcr)
   is record
      --  LVDS configuration register
      LVDS_CR          : aliased LVDS_CR_Register;
      --  LVDS data mapping LSB configuration register 0
      LVDS_DMLCR0      : aliased LVDS_DMLCR_Register;
      --  LVDS data mapping MSB configuration register 0
      LVDS_DMMCR0      : aliased LVDS_DMMCR_Register;
      --  LVDS data mapping LSB configuration register 1
      LVDS_DMLCR1      : aliased LVDS_DMLCR_Register;
      --  LVDS data mapping MSB configuration register 1
      LVDS_DMMCR1      : aliased LVDS_DMMCR_Register;
      --  LVDS data mapping LSB configuration register 2
      LVDS_DMLCR2      : aliased LVDS_DMLCR_Register;
      --  LVDS data mapping MSB configuration register 2
      LVDS_DMMCR2      : aliased LVDS_DMMCR_Register;
      --  LVDS data mapping LSB configuration register 3
      LVDS_DMLCR3      : aliased LVDS_DMLCR_Register;
      --  LVDS data mapping MSB configuration register 3
      LVDS_DMMCR3      : aliased LVDS_DMMCR_Register;
      --  LVDS data mapping LSB configuration register 4
      LVDS_DMLCR4      : aliased LVDS_DMLCR_Register;
      --  LVDS data mapping MSB configuration register 4
      LVDS_DMMCR4      : aliased LVDS_DMMCR_Register;
      --  LVDS channel distribution link 1configuration register
      LVDS_CDL1CR      : aliased LVDS_CDL1CR_Register;
      --  LVDS channel distribution link 2 configuration register
      LVDS_CDL2CR      : aliased LVDS_CDL2CR_Register;
      --  LVDS PHY-Master global control register
      LVDS_PMGCR       : aliased LVDS_PMGCR_Register;
      --  LVDS PHY-Master pre-emphasis amplitude control register
      LVDS_PMPEACR     : aliased LVDS_PMPEACR_Register;
      --  LVDS PHY-Master pre-emphasis time control register
      LVDS_PMPETCR     : aliased LVDS_PMPETCR_Register;
      --  LVDS PHY-Master current mode control register 1
      LVDS_PMCMCR1     : aliased LVDS_PMCMCR1_Register;
      --  LVDS PHY-Master current mode control register 2
      LVDS_PMCMCR2     : aliased LVDS_PMCMCR2_Register;
      --  LVDS PHY-Master Rx loopback control register
      LVDS_PMRLPCR     : aliased LVDS_PMRLPCR_Register;
      --  LVDS PHY-master Rx loopback status register
      LVDS_PMRLPSR     : aliased LVDS_PMRLPSR_Register;
      --  LVDS PHY-Master flipedge control register
      LVDS_PMFCR       : aliased LVDS_PMFCR_Register;
      --  LVDS PHY-Master serial control register
      LVDS_PMSCR       : aliased LVDS_PMSCR_Register;
      --  LVDS PHY-Master spare control register 1
      LVDS_PMSCR1      : aliased LVDS_PMSCR1_Register;
      --  LVDS PHY-Master spare control register 2
      LVDS_PMSCR2      : aliased LVDS_PMSCR2_Register;
      --  LVDS PHY-Master bias control register 1
      LVDS_PMBCR1      : aliased LVDS_PMBCR1_Register;
      --  LVDS PHY-Master bias control register 2
      LVDS_PMBCR2      : aliased LVDS_PMBCR2_Register;
      --  LVDS PHY-Master bias control register 3
      LVDS_PMBCR3      : aliased LVDS_PMBCR3_Register;
      --  LVDS PHY-Master bias control register 4
      LVDS_PMBCR4      : aliased LVDS_PMBCR4_Register;
      --  LVDS PHY-Master bias control register 5
      LVDS_PMBCR5      : aliased LVDS_PMBCR5_Register;
      --  LVDS PHY-Master impedance control register
      LVDS_PMICR       : aliased LVDS_PMICR_Register;
      --  LVDS PHY-Master monitor bandgap current control register
      LVDS_PMMBCCR     : aliased LVDS_PMMBCCR_Register;
      --  LVDS PHY-Master monitor bandgap current status register
      LVDS_PMMBCSR     : aliased LVDS_PMMBCSR_Register;
      --  LVDS PHY-Master monitor bandgap loop control register
      LVDS_PMMBLCR     : aliased LVDS_PMMBLCR_Register;
      --  LVDS PHY-Master monitor bandgap loop status register
      LVDS_PMMBLSR     : aliased LVDS_PMMBLSR_Register;
      --  LVDS PHY-Master monitor bandgap output voltage control register
      LVDS_PMMBOVCR    : aliased LVDS_PMMBOVCR_Register;
      --  LVDS PHY-Master monitor bandgap output voltage status register
      LVDS_PMMBOVSR    : aliased LVDS_PMMBOVSR_Register;
      --  LVDS PHY-Master monitor PLL LDO output voltage control register
      LVDS_PMMPLOVCR   : aliased LVDS_PMMPLOVCR_Register;
      --  LVDS PHY-Master monitor PLL LDO output voltage status register
      LVDS_PMMPLOVSR   : aliased LVDS_PMMPLOVSR_Register;
      --  LVDS PHY-Master monitor PLL lock control register
      LVDS_PMMPLCR     : aliased LVDS_PMMPLCR_Register;
      --  LVDS PHY-Master monitor PLL lock status register
      LVDS_PMMPLSR     : aliased LVDS_PMMPLSR_Register;
      --  LVDS PHY-Master monitor PLL reference OK control register
      LVDS_PMMPROCR    : aliased LVDS_PMMPROCR_Register;
      --  LVDS PHY-Master monitor PLL reference OK status register
      LVDS_PMMPROSR    : aliased LVDS_PMMPROSR_Register;
      --  LVDS PHY-Master monitor serializer clock control register
      LVDS_PMMSCCR     : aliased LVDS_PMMSCCR_Register;
      --  LVDS PHY-Master monitor serializer clock status register
      LVDS_PMMSCSR     : aliased LVDS_PMMSCSR_Register;
      --  LVDS PHY-Master monitor serializer control register
      LVDS_PMMSCR      : aliased LVDS_PMMSCR_Register;
      --  LVDS PHY-Master monitor serializer status register
      LVDS_PMMSSR      : aliased LVDS_PMMSSR_Register;
      --  LVDS PHY-Master debug control register
      LVDS_PMDCR       : aliased LVDS_PMDCR_Register;
      --  LVDS PHY-Master spare status register 1
      LVDS_PMSSR1      : aliased LVDS_PMSSR1_Register;
      --  LVDS PHY-Master spare status register 2
      LVDS_PMSSR2      : aliased LVDS_PMSSR2_Register;
      --  LVDS PHY-Master configuration control register
      LVDS_PMCFGCR     : aliased LVDS_PMCFGCR_Register;
      --  LVDS PHY-Master PLL_MODE 1 control register
      LVDS_PMPLLCR1    : aliased LVDS_PMPLLCR1_Register;
      --  LVDS PHY-Master PLL_MODE 2 control register
      LVDS_PMPLLCR2    : aliased LVDS_PMPLLCR2_Register;
      --  LVDS PHY-Master PLL status register
      LVDS_PMPLLSR     : aliased LVDS_PMPLLSR_Register;
      --  LVDS PHY-Master PLL_SD_1 control register
      LVDS_PMPLLSDCR1  : aliased LVDS_PMPLLSDCR1_Register;
      --  LVDS PHY-Master PLL_SD_2 control register
      LVDS_PMPLLSDCR2  : aliased LVDS_PMPLLSDCR2_Register;
      --  LVDS PHY-Master PLL_TWG_1 control register
      LVDS_PMPLLTWGCR1 : aliased LVDS_PMPLLTWGCR1_Register;
      --  LVDS PHY-Master PLL_TWG_2 control register
      LVDS_PMPLLTWGCR2 : aliased LVDS_PMPLLTWGCR2_Register;
      --  LVDS PHY-Master PLL_LDO control register
      LVDS_PMPLLLDOCR  : aliased LVDS_PMPLLLDOCR_Register;
      --  LVDS PHY-Master PLL_CP control register
      LVDS_PMPLLCPCR   : aliased LVDS_PMPLLCPCR_Register;
      --  LVDS PHY-Master PLL_CFG control register
      LVDS_PMPLLCFGCR  : aliased LVDS_PMPLLCFGCR_Register;
      --  LVDS PHY-Master PLL_TEST control register
      LVDS_PMPLLTESTCR : aliased LVDS_PMPLLTESTCR_Register;
      --  LVDS PHY-Slave global control register
      LVDS_PSGCR       : aliased LVDS_PSGCR_Register;
      --  LVDS PHY-Slave pre-emphasis amplitude control register
      LVDS_PSPEACR     : aliased LVDS_PSPEACR_Register;
      --  LVDS PHY-Slave pre-emphasis time control register
      LVDS_PSPETCR     : aliased LVDS_PSPETCR_Register;
      --  LVDS PHY-Slave current mode control register 1
      LVDS_PSCMCR1     : aliased LVDS_PSCMCR1_Register;
      --  LVDS PHY-Slave current mode control register 2
      LVDS_PSCMCR2     : aliased LVDS_PSCMCR2_Register;
      --  LVDS PHY-Slave Rx loopback control register
      LVDS_PSRLPCR     : aliased LVDS_PSRLPCR_Register;
      --  LVDS PHY-slave Rx loopback status register
      LVDS_PSRLPSR     : aliased LVDS_PSRLPSR_Register;
      --  LVDS PHY-Slave flipedge control register
      LVDS_PSFCR       : aliased LVDS_PSFCR_Register;
      --  LVDS PHY-Slave serial control register
      LVDS_PSSCR       : aliased LVDS_PSSCR_Register;
      --  LVDS PHY-Slave spare control register 1
      LVDS_PSSCR1      : aliased LVDS_PSSCR1_Register;
      --  LVDS PHY-Slave spare control register 2
      LVDS_PSSCR2      : aliased LVDS_PSSCR2_Register;
      --  LVDS PHY-Slave bias control register 1
      LVDS_PSBCR1      : aliased LVDS_PSBCR1_Register;
      --  LVDS PHY-Slave bias control register 2
      LVDS_PSBCR2      : aliased LVDS_PSBCR2_Register;
      --  LVDS PHY-Slave bias control register 3
      LVDS_PSBCR3      : aliased LVDS_PSBCR3_Register;
      --  LVDS PHY-Slave bias control register 4
      LVDS_PSBCR4      : aliased LVDS_PSBCR4_Register;
      --  LVDS PHY-Slave bias control register 5
      LVDS_PSBCR5      : aliased LVDS_PSBCR5_Register;
      --  LVDS PHY-Slave impedance control register
      LVDS_PSICR       : aliased LVDS_PSICR_Register;
      --  LVDS PHY-Slave monitor bandgap current control register
      LVDS_PSMBCCR     : aliased LVDS_PSMBCCR_Register;
      --  LVDS PHY-Slave monitor bandgap current status register
      LVDS_PSMBCSR     : aliased LVDS_PSMBCSR_Register;
      --  LVDS PHY-Slave monitor bandgap loop control register
      LVDS_PSMBLCR     : aliased LVDS_PSMBLCR_Register;
      --  LVDS PHY-Slave monitor bandgap loop status register
      LVDS_PSMBLSR     : aliased LVDS_PSMBLSR_Register;
      --  LVDS PHY-Slave monitor bandgap output voltage control register
      LVDS_PSMBOVCR    : aliased LVDS_PSMBOVCR_Register;
      --  LVDS PHY-Slave monitor bandgap output voltage status register
      LVDS_PSMBOVSR    : aliased LVDS_PSMBOVSR_Register;
      --  LVDS PHY-Slave monitor serializer clock control register
      LVDS_PSMSCCR     : aliased LVDS_PSMSCCR_Register;
      --  LVDS PHY-Slave monitor serializer clock status register
      LVDS_PSMSCSR     : aliased LVDS_PSMSCSR_Register;
      --  LVDS PHY-Slave monitor serializer control register
      LVDS_PSMSCR      : aliased LVDS_PSMSCR_Register;
      --  LVDS PHY-Slave monitor serializer status register
      LVDS_PSMSSR      : aliased LVDS_PSMSSR_Register;
      --  LVDS PHY-Slave debug control register
      LVDS_PSDCR       : aliased LVDS_PSDCR_Register;
      --  LVDS PHY-Slave spare status register 1
      LVDS_PSSSR1      : aliased LVDS_PSSSR1_Register;
      --  LVDS PHY-Slave spare status register 2
      LVDS_PSSSR2      : aliased LVDS_PSSSR2_Register;
      --  LVDS PHY-Slave configuration control register
      LVDS_PSCFGCR     : aliased LVDS_PSCFGCR_Register;
      --  LVDS PHY-Slave PLL_MODE 1 control register
      LVDS_PSPLLCR1    : aliased LVDS_PSPLLCR1_Register;
      --  LVDS PHY-Slave PLL status register
      LVDS_PSPLLSR     : aliased LVDS_PSPLLSR_Register;
      --  LVDS PHY-Slave PLL_SD_1 control register
      LVDS_PSPLLSDCR1  : aliased LVDS_PSPLLSDCR1_Register;
      --  LVDS PHY-Slave PLL_SD_2 control register
      LVDS_PSPLLSDCR2  : aliased LVDS_PSPLLSDCR2_Register;
      --  LVDS PHY-Slave PLL_TWG_1 control register
      LVDS_PSPLLTWGCR1 : aliased LVDS_PSPLLTWGCR1_Register;
      --  LVDS PHY-Slave PLL_TWG_2 control register
      LVDS_PSPLLTWGCR2 : aliased LVDS_PSPLLTWGCR2_Register;
      --  LVDS PHY-Slave PLL_LDO control register
      LVDS_PSPLLLDOCR  : aliased LVDS_PSPLLLDOCR_Register;
      --  LVDS PHY-Slave PLL_CP control register
      LVDS_PSPLLCPCR   : aliased LVDS_PSPLLCPCR_Register;
      --  LVDS PHY-Slave PLL_CFG control register
      LVDS_PSPLLCFGCR  : aliased LVDS_PSPLLCFGCR_Register;
      --  LVDS PHY-Slave PLL_TEST control register
      LVDS_PSPLLTESTCR : aliased LVDS_PSPLLTESTCR_Register;
      --  LVDS PHY-Master analog test control register 1
      LVDS_PMATCR1     : aliased LVDS_PMATCR1_Register;
      --  LVDS PHY-Master analog test control register 2
      LVDS_PMATCR2     : aliased LVDS_PMATCR2_Register;
      --  LVDS PHY-Master digital test control register 1
      LVDS_PMDTCR1     : aliased LVDS_PMDTCR1_Register;
      --  LVDS PHY-Master digital test control register 2
      LVDS_PMDTCR2     : aliased LVDS_PMDTCR2_Register;
      --  LVDS PHY-Master digital test status register
      LVDS_PMDTSR      : aliased LVDS_PMDTSR_Register;
      --  LVDS PHY-Slave analog test control register 1
      LVDS_PSATCR1     : aliased LVDS_PSATCR1_Register;
      --  LVDS PHY-Slave analog test control register 2
      LVDS_PSATCR2     : aliased LVDS_PSATCR2_Register;
      --  LVDS PHY-Slave digital test control register 1
      LVDS_PSDTCR1     : aliased LVDS_PSDTCR1_Register;
      --  LVDS PHY-Slave digital test control register 2
      LVDS_PSDTCR2     : aliased LVDS_PSDTCR2_Register;
      --  LVDS PHY-Slave digital test status register
      LVDS_PSDTSR      : aliased LVDS_PSDTSR_Register;
      --  LVDS hardware configuration register
      LVDS_HWCFGR      : aliased LVDS_HWCFGR_Register;
      --  LVDS version register
      LVDS_VERR        : aliased LVDS_VERR_Register;
      --  LVDS identification register
      LVDS_IPIDR       : aliased HAL.UInt32;
      --  LVDS size register
      LVDS_SIDR        : aliased HAL.UInt32;
      case Discriminent is
         when Wclkcr =>
            --  LVDS wrapper clock control register
            LVDS_WCLKCR : aliased LVDS_WCLKCR_Register;
         when Pspllcr2 =>
            --  LVDS PHY-Slave PLL_MODE 2 control register
            LVDS_PSPLLCR2 : aliased LVDS_PSPLLCR2_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for LVDS_Peripheral use record
      LVDS_CR          at 16#0# range 0 .. 31;
      LVDS_DMLCR0      at 16#4# range 0 .. 31;
      LVDS_DMMCR0      at 16#8# range 0 .. 31;
      LVDS_DMLCR1      at 16#C# range 0 .. 31;
      LVDS_DMMCR1      at 16#10# range 0 .. 31;
      LVDS_DMLCR2      at 16#14# range 0 .. 31;
      LVDS_DMMCR2      at 16#18# range 0 .. 31;
      LVDS_DMLCR3      at 16#1C# range 0 .. 31;
      LVDS_DMMCR3      at 16#20# range 0 .. 31;
      LVDS_DMLCR4      at 16#24# range 0 .. 31;
      LVDS_DMMCR4      at 16#28# range 0 .. 31;
      LVDS_CDL1CR      at 16#2C# range 0 .. 31;
      LVDS_CDL2CR      at 16#30# range 0 .. 31;
      LVDS_PMGCR       at 16#1000# range 0 .. 31;
      LVDS_PMPEACR     at 16#1004# range 0 .. 31;
      LVDS_PMPETCR     at 16#1008# range 0 .. 31;
      LVDS_PMCMCR1     at 16#100C# range 0 .. 31;
      LVDS_PMCMCR2     at 16#1010# range 0 .. 31;
      LVDS_PMRLPCR     at 16#1014# range 0 .. 31;
      LVDS_PMRLPSR     at 16#1018# range 0 .. 31;
      LVDS_PMFCR       at 16#101C# range 0 .. 31;
      LVDS_PMSCR       at 16#1020# range 0 .. 31;
      LVDS_PMSCR1      at 16#1024# range 0 .. 31;
      LVDS_PMSCR2      at 16#1028# range 0 .. 31;
      LVDS_PMBCR1      at 16#102C# range 0 .. 31;
      LVDS_PMBCR2      at 16#1030# range 0 .. 31;
      LVDS_PMBCR3      at 16#1034# range 0 .. 31;
      LVDS_PMBCR4      at 16#1038# range 0 .. 31;
      LVDS_PMBCR5      at 16#103C# range 0 .. 31;
      LVDS_PMICR       at 16#1040# range 0 .. 31;
      LVDS_PMMBCCR     at 16#1044# range 0 .. 31;
      LVDS_PMMBCSR     at 16#1048# range 0 .. 31;
      LVDS_PMMBLCR     at 16#104C# range 0 .. 31;
      LVDS_PMMBLSR     at 16#1050# range 0 .. 31;
      LVDS_PMMBOVCR    at 16#1054# range 0 .. 31;
      LVDS_PMMBOVSR    at 16#1058# range 0 .. 31;
      LVDS_PMMPLOVCR   at 16#105C# range 0 .. 31;
      LVDS_PMMPLOVSR   at 16#1060# range 0 .. 31;
      LVDS_PMMPLCR     at 16#1064# range 0 .. 31;
      LVDS_PMMPLSR     at 16#1068# range 0 .. 31;
      LVDS_PMMPROCR    at 16#106C# range 0 .. 31;
      LVDS_PMMPROSR    at 16#1070# range 0 .. 31;
      LVDS_PMMSCCR     at 16#1074# range 0 .. 31;
      LVDS_PMMSCSR     at 16#1078# range 0 .. 31;
      LVDS_PMMSCR      at 16#107C# range 0 .. 31;
      LVDS_PMMSSR      at 16#1080# range 0 .. 31;
      LVDS_PMDCR       at 16#1084# range 0 .. 31;
      LVDS_PMSSR1      at 16#1088# range 0 .. 31;
      LVDS_PMSSR2      at 16#108C# range 0 .. 31;
      LVDS_PMCFGCR     at 16#10A0# range 0 .. 31;
      LVDS_PMPLLCR1    at 16#10C0# range 0 .. 31;
      LVDS_PMPLLCR2    at 16#10C4# range 0 .. 31;
      LVDS_PMPLLSR     at 16#10C8# range 0 .. 31;
      LVDS_PMPLLSDCR1  at 16#10CC# range 0 .. 31;
      LVDS_PMPLLSDCR2  at 16#10D0# range 0 .. 31;
      LVDS_PMPLLTWGCR1 at 16#10D4# range 0 .. 31;
      LVDS_PMPLLTWGCR2 at 16#10D8# range 0 .. 31;
      LVDS_PMPLLLDOCR  at 16#10DC# range 0 .. 31;
      LVDS_PMPLLCPCR   at 16#10E0# range 0 .. 31;
      LVDS_PMPLLCFGCR  at 16#10E4# range 0 .. 31;
      LVDS_PMPLLTESTCR at 16#10E8# range 0 .. 31;
      LVDS_PSGCR       at 16#1100# range 0 .. 31;
      LVDS_PSPEACR     at 16#1104# range 0 .. 31;
      LVDS_PSPETCR     at 16#1108# range 0 .. 31;
      LVDS_PSCMCR1     at 16#110C# range 0 .. 31;
      LVDS_PSCMCR2     at 16#1110# range 0 .. 31;
      LVDS_PSRLPCR     at 16#1114# range 0 .. 31;
      LVDS_PSRLPSR     at 16#1118# range 0 .. 31;
      LVDS_PSFCR       at 16#111C# range 0 .. 31;
      LVDS_PSSCR       at 16#1120# range 0 .. 31;
      LVDS_PSSCR1      at 16#1124# range 0 .. 31;
      LVDS_PSSCR2      at 16#1128# range 0 .. 31;
      LVDS_PSBCR1      at 16#112C# range 0 .. 31;
      LVDS_PSBCR2      at 16#1130# range 0 .. 31;
      LVDS_PSBCR3      at 16#1134# range 0 .. 31;
      LVDS_PSBCR4      at 16#1138# range 0 .. 31;
      LVDS_PSBCR5      at 16#113C# range 0 .. 31;
      LVDS_PSICR       at 16#1140# range 0 .. 31;
      LVDS_PSMBCCR     at 16#1144# range 0 .. 31;
      LVDS_PSMBCSR     at 16#1148# range 0 .. 31;
      LVDS_PSMBLCR     at 16#114C# range 0 .. 31;
      LVDS_PSMBLSR     at 16#1150# range 0 .. 31;
      LVDS_PSMBOVCR    at 16#1154# range 0 .. 31;
      LVDS_PSMBOVSR    at 16#1158# range 0 .. 31;
      LVDS_PSMSCCR     at 16#1174# range 0 .. 31;
      LVDS_PSMSCSR     at 16#1178# range 0 .. 31;
      LVDS_PSMSCR      at 16#117C# range 0 .. 31;
      LVDS_PSMSSR      at 16#1180# range 0 .. 31;
      LVDS_PSDCR       at 16#1184# range 0 .. 31;
      LVDS_PSSSR1      at 16#1188# range 0 .. 31;
      LVDS_PSSSR2      at 16#118C# range 0 .. 31;
      LVDS_PSCFGCR     at 16#11A0# range 0 .. 31;
      LVDS_PSPLLCR1    at 16#11C0# range 0 .. 31;
      LVDS_PSPLLSR     at 16#11C8# range 0 .. 31;
      LVDS_PSPLLSDCR1  at 16#11CC# range 0 .. 31;
      LVDS_PSPLLSDCR2  at 16#11D0# range 0 .. 31;
      LVDS_PSPLLTWGCR1 at 16#11D4# range 0 .. 31;
      LVDS_PSPLLTWGCR2 at 16#11D8# range 0 .. 31;
      LVDS_PSPLLLDOCR  at 16#11DC# range 0 .. 31;
      LVDS_PSPLLCPCR   at 16#11E0# range 0 .. 31;
      LVDS_PSPLLCFGCR  at 16#11E4# range 0 .. 31;
      LVDS_PSPLLTESTCR at 16#11E8# range 0 .. 31;
      LVDS_PMATCR1     at 16#1200# range 0 .. 31;
      LVDS_PMATCR2     at 16#1204# range 0 .. 31;
      LVDS_PMDTCR1     at 16#1208# range 0 .. 31;
      LVDS_PMDTCR2     at 16#120C# range 0 .. 31;
      LVDS_PMDTSR      at 16#1210# range 0 .. 31;
      LVDS_PSATCR1     at 16#1220# range 0 .. 31;
      LVDS_PSATCR2     at 16#1224# range 0 .. 31;
      LVDS_PSDTCR1     at 16#1228# range 0 .. 31;
      LVDS_PSDTCR2     at 16#122C# range 0 .. 31;
      LVDS_PSDTSR      at 16#1230# range 0 .. 31;
      LVDS_HWCFGR      at 16#1FF0# range 0 .. 31;
      LVDS_VERR        at 16#1FF4# range 0 .. 31;
      LVDS_IPIDR       at 16#1FF8# range 0 .. 31;
      LVDS_SIDR        at 16#1FFC# range 0 .. 31;
      LVDS_WCLKCR      at 16#11C4# range 0 .. 31;
      LVDS_PSPLLCR2    at 16#11C4# range 0 .. 31;
   end record;

   --  LVDS address block description
   LVDS_Periph : aliased LVDS_Peripheral
     with Import, Address => LVDS_Base;

   --  LVDS address block description
   LVDS_S_Periph : aliased LVDS_Peripheral
     with Import, Address => LVDS_S_Base;

end STM32_SVD.LVDS;
