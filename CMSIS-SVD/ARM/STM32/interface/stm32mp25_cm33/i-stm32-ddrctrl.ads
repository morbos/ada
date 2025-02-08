--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.DDRCTRL is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype DDRCTRL_REGS_MSTR_DATA_BUS_WIDTH_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_REGS_MSTR_BURST_RDWR_Field is Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_MSTR_ACTIVE_RANKS_Field is Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_REGS_MSTR_DEVICE_CONFIG_Field is Interfaces.Bit_Types.UInt2;

   --  DDRCTRL master0 register
   type DDRCTRL_REGS_MSTR_Register is record
      --  Selects DDR3L SDRAM
      DDR3L             : Boolean := True;
      --  unspecified
      Reserved_1_3      : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Selects DDR4 SDRAM
      DDR4              : Boolean := False;
      --  Selects LPDDR4 SDRAM
      LPDDR4            : Boolean := False;
      --  unspecified
      Reserved_6_8      : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Burst chop (BC4 or 8 on-the-fly) enable in DDR3L/DDR4
      BURSTCHOP         : Boolean := False;
      --  In 2T timing, all command signals (except chip select) are held for
      --  two clocks on the SDRAM bus.
      EN_2T_TIMING_MODE : Boolean := False;
      --  unspecified
      Reserved_11_11    : Interfaces.Bit_Types.Bit := 16#0#;
      --  Proportion of DQ bus width that is used by the SDRAM
      DATA_BUS_WIDTH    : DDRCTRL_REGS_MSTR_DATA_BUS_WIDTH_Field := 16#0#;
      --  unspecified
      Reserved_14_14    : Interfaces.Bit_Types.Bit := 16#0#;
      --  Note: Programming mode: Quasi-dynamic Group 2.
      DLL_OFF_MODE      : Boolean := False;
      --  SDRAM burst length
      BURST_RDWR        : DDRCTRL_REGS_MSTR_BURST_RDWR_Field := 16#4#;
      --  unspecified
      Reserved_20_23    : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Only present for multi-rank configurations
      ACTIVE_RANKS      : DDRCTRL_REGS_MSTR_ACTIVE_RANKS_Field := 16#3#;
      --  unspecified
      Reserved_26_29    : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Device configuration
      DEVICE_CONFIG     : DDRCTRL_REGS_MSTR_DEVICE_CONFIG_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_MSTR_Register use record
      DDR3L             at 0 range 0 .. 0;
      Reserved_1_3      at 0 range 1 .. 3;
      DDR4              at 0 range 4 .. 4;
      LPDDR4            at 0 range 5 .. 5;
      Reserved_6_8      at 0 range 6 .. 8;
      BURSTCHOP         at 0 range 9 .. 9;
      EN_2T_TIMING_MODE at 0 range 10 .. 10;
      Reserved_11_11    at 0 range 11 .. 11;
      DATA_BUS_WIDTH    at 0 range 12 .. 13;
      Reserved_14_14    at 0 range 14 .. 14;
      DLL_OFF_MODE      at 0 range 15 .. 15;
      BURST_RDWR        at 0 range 16 .. 19;
      Reserved_20_23    at 0 range 20 .. 23;
      ACTIVE_RANKS      at 0 range 24 .. 25;
      Reserved_26_29    at 0 range 26 .. 29;
      DEVICE_CONFIG     at 0 range 30 .. 31;
   end record;

   subtype DDRCTRL_REGS_STAT_OPERATING_MODE_Field is
     Interfaces.Bit_Types.UInt3;
   subtype DDRCTRL_REGS_STAT_SELFREF_TYPE_Field is Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_REGS_STAT_SELFREF_STATE_Field is Interfaces.Bit_Types.UInt2;

   --  DDRCTRL operating mode status register
   type DDRCTRL_REGS_STAT_Register is record
      --  Read-only. DDR3L design:
      OPERATING_MODE        : DDRCTRL_REGS_STAT_OPERATING_MODE_Field;
      --  unspecified
      Reserved_3_3          : Interfaces.Bit_Types.Bit;
      --  Read-only. Flags if SR (except LPDDR4), or SRPD (LPDDR4) is entered,
      --  and if it is under automatic SR control only or not
      SELFREF_TYPE          : DDRCTRL_REGS_STAT_SELFREF_TYPE_Field;
      --  unspecified
      Reserved_6_7          : Interfaces.Bit_Types.UInt2;
      --  Read-only. SR or SRPD (SR power-down) for LPDDR4
      SELFREF_STATE         : DDRCTRL_REGS_STAT_SELFREF_STATE_Field;
      --  unspecified
      Reserved_10_11        : Interfaces.Bit_Types.UInt2;
      --  Read-only. Self-refresh (SR) with CAMs not empty
      SELFREF_CAM_NOT_EMPTY : Boolean;
      --  unspecified
      Reserved_13_31        : Interfaces.Bit_Types.UInt19;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_STAT_Register use record
      OPERATING_MODE        at 0 range 0 .. 2;
      Reserved_3_3          at 0 range 3 .. 3;
      SELFREF_TYPE          at 0 range 4 .. 5;
      Reserved_6_7          at 0 range 6 .. 7;
      SELFREF_STATE         at 0 range 8 .. 9;
      Reserved_10_11        at 0 range 10 .. 11;
      SELFREF_CAM_NOT_EMPTY at 0 range 12 .. 12;
      Reserved_13_31        at 0 range 13 .. 31;
   end record;

   subtype DDRCTRL_REGS_MRCTRL0_MR_RANK_Field is Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_REGS_MRCTRL0_MR_ADDR_Field is Interfaces.Bit_Types.UInt4;

   --  DDRCTRL mode read/write control 0 register
   type DDRCTRL_REGS_MRCTRL0_Register is record
      --  Mode register operation is read or write (only for LPDDR4/DDR4)
      MR_TYPE        : Boolean := False;
      --  Mode register operation is MRS or WR/RD for MPR (only supported for
      --  DDR4)
      MPR_EN         : Boolean := False;
      --  Mode register operation is MRS in PDA mode or not
      PDA_EN         : Boolean := False;
      --  Software intervention enable
      SW_INIT_INT    : Boolean := False;
      --  Rank accessed by MR_WR in this register
      MR_RANK        : DDRCTRL_REGS_MRCTRL0_MR_RANK_Field := 16#3#;
      --  unspecified
      Reserved_6_11  : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Read-only. MR address to be written to
      MR_ADDR        : DDRCTRL_REGS_MRCTRL0_MR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_16_29 : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  PBA access execution
      PBA_MODE       : Boolean := False;
      --  Mode register (MR) read or write
      MR_WR          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_MRCTRL0_Register use record
      MR_TYPE        at 0 range 0 .. 0;
      MPR_EN         at 0 range 1 .. 1;
      PDA_EN         at 0 range 2 .. 2;
      SW_INIT_INT    at 0 range 3 .. 3;
      MR_RANK        at 0 range 4 .. 5;
      Reserved_6_11  at 0 range 6 .. 11;
      MR_ADDR        at 0 range 12 .. 15;
      Reserved_16_29 at 0 range 16 .. 29;
      PBA_MODE       at 0 range 30 .. 30;
      MR_WR          at 0 range 31 .. 31;
   end record;

   subtype DDRCTRL_REGS_MRCTRL1_MR_DATA_Field is Interfaces.Bit_Types.UInt18;

   --  DDRCTRL mode read/write control 1 register
   type DDRCTRL_REGS_MRCTRL1_Register is record
      --  Mode register write data for all non-LPDDR4 modes
      MR_DATA        : DDRCTRL_REGS_MRCTRL1_MR_DATA_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_MRCTRL1_Register use record
      MR_DATA        at 0 range 0 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  DDRCTRL mode register read/write status register
   type DDRCTRL_REGS_MRSTAT_Register is record
      --  Read-only. Initiate an MR write operation only if this bit is low
      MR_WR_BUSY    : Boolean;
      --  unspecified
      Reserved_1_7  : Interfaces.Bit_Types.UInt7;
      --  Read-only. Initiate an MR write operation in PDA/PBA mode only if
      --  this bit is low
      PDA_DONE      : Boolean;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_MRSTAT_Register use record
      MR_WR_BUSY    at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      PDA_DONE      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DDRCTRL_REGS_DERATEEN_DERATE_VALUE_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_REGS_DERATEEN_DERATE_BYTE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_DERATEEN_RC_DERATE_VALUE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRCTRL temperature derate enable register
   type DDRCTRL_REGS_DERATEEN_Register is record
      --  Enables derating
      DERATE_ENABLE       : Boolean := False;
      --  Derate value
      DERATE_VALUE        : DDRCTRL_REGS_DERATEEN_DERATE_VALUE_Field := 16#0#;
      --  unspecified
      Reserved_3_3        : Interfaces.Bit_Types.Bit := 16#0#;
      --  MRR data used for derating
      DERATE_BYTE         : DDRCTRL_REGS_DERATEEN_DERATE_BYTE_Field := 16#0#;
      --  Derate value of tless thansub>RCless than/sub> for LPDDR4
      RC_DERATE_VALUE     : DDRCTRL_REGS_DERATEEN_RC_DERATE_VALUE_Field :=
                             16#0#;
      --  unspecified
      Reserved_11_11      : Interfaces.Bit_Types.Bit := 16#0#;
      --  Disables use of MR4 TUF flag (MR4[7])
      DERATE_MR4_TUF_DIS  : Boolean := False;
      --  Pauses MR4 reads
      DERATE_MR4_PAUSE_FC : Boolean := False;
      --  unspecified
      Reserved_14_31      : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DERATEEN_Register use record
      DERATE_ENABLE       at 0 range 0 .. 0;
      DERATE_VALUE        at 0 range 1 .. 2;
      Reserved_3_3        at 0 range 3 .. 3;
      DERATE_BYTE         at 0 range 4 .. 7;
      RC_DERATE_VALUE     at 0 range 8 .. 10;
      Reserved_11_11      at 0 range 11 .. 11;
      DERATE_MR4_TUF_DIS  at 0 range 12 .. 12;
      DERATE_MR4_PAUSE_FC at 0 range 13 .. 13;
      Reserved_14_31      at 0 range 14 .. 31;
   end record;

   --  DDRCTRL temperature derate control register
   type DDRCTRL_REGS_DERATECTL_Register is record
      --  Interrupt enable bit for DERATE_TEMP_LIMIT_INTR
      DERATE_TEMP_LIMIT_INTR_EN    : Boolean := True;
      --  Interrupt clear bit for DERATE_TEMP_LIMIT_INTR
      DERATE_TEMP_LIMIT_INTR_CLR   : Boolean := False;
      --  Interrupt force bit for DERATE_TEMP_LIMIT_INTR
      DERATE_TEMP_LIMIT_INTR_FORCE : Boolean := False;
      --  unspecified
      Reserved_3_31                : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DERATECTL_Register use record
      DERATE_TEMP_LIMIT_INTR_EN    at 0 range 0 .. 0;
      DERATE_TEMP_LIMIT_INTR_CLR   at 0 range 1 .. 1;
      DERATE_TEMP_LIMIT_INTR_FORCE at 0 range 2 .. 2;
      Reserved_3_31                at 0 range 3 .. 31;
   end record;

   --  DDRCTRL low-power control register
   type DDRCTRL_REGS_PWRCTL_Register is record
      --  SDRAM into SR enable
      SELFREF_EN              : Boolean := False;
      --  PDN enable
      POWERDOWN_EN            : Boolean := False;
      --  unspecified
      Reserved_2_2            : Interfaces.Bit_Types.Bit := 16#0#;
      --  dfi_dram_clk_disable enable
      EN_DFI_DRAM_CLK_DISABLE : Boolean := False;
      --  unspecified
      Reserved_4_4            : Interfaces.Bit_Types.Bit := 16#0#;
      --  SR state entry
      SELFREF_SW              : Boolean := False;
      --  SR state transition
      STAY_IN_SELFREF         : Boolean := False;
      --  Skipping CAM draining allowed when entering SR
      DIS_CAM_DRAIN_SELFREF   : Boolean := False;
      --  Transition from SRPD to SR, and back to SRPD allowed
      LPDDR4_SR_ALLOWED       : Boolean := False;
      --  unspecified
      Reserved_9_31           : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_PWRCTL_Register use record
      SELFREF_EN              at 0 range 0 .. 0;
      POWERDOWN_EN            at 0 range 1 .. 1;
      Reserved_2_2            at 0 range 2 .. 2;
      EN_DFI_DRAM_CLK_DISABLE at 0 range 3 .. 3;
      Reserved_4_4            at 0 range 4 .. 4;
      SELFREF_SW              at 0 range 5 .. 5;
      STAY_IN_SELFREF         at 0 range 6 .. 6;
      DIS_CAM_DRAIN_SELFREF   at 0 range 7 .. 7;
      LPDDR4_SR_ALLOWED       at 0 range 8 .. 8;
      Reserved_9_31           at 0 range 9 .. 31;
   end record;

   subtype DDRCTRL_REGS_PWRTMG_POWERDOWN_TO_X32_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_PWRTMG_SELFREF_TO_X32_Field is
     Interfaces.Bit_Types.Byte;

   --  DDRCTRL low-power timing register
   type DDRCTRL_REGS_PWRTMG_Register is record
      --  Maximum idle clocks before PDN
      POWERDOWN_TO_X32 : DDRCTRL_REGS_PWRTMG_POWERDOWN_TO_X32_Field := 16#10#;
      --  unspecified
      Reserved_5_15    : Interfaces.Bit_Types.UInt11 := 16#100#;
      --  Maximum idle clocks before SR
      SELFREF_TO_X32   : DDRCTRL_REGS_PWRTMG_SELFREF_TO_X32_Field := 16#40#;
      --  unspecified
      Reserved_24_31   : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_PWRTMG_Register use record
      POWERDOWN_TO_X32 at 0 range 0 .. 4;
      Reserved_5_15    at 0 range 5 .. 15;
      SELFREF_TO_X32   at 0 range 16 .. 23;
      Reserved_24_31   at 0 range 24 .. 31;
   end record;

   subtype DDRCTRL_REGS_HWLPCTL_HW_LP_IDLE_X32_Field is
     Interfaces.Bit_Types.UInt12;

   --  DDRCTRL hardware low-power control register
   type DDRCTRL_REGS_HWLPCTL_Register is record
      --  Hardware low-power interface enable
      HW_LP_EN           : Boolean := True;
      --  CACTIVE_IN_DDRC pin enable
      HW_LP_EXIT_IDLE_EN : Boolean := True;
      --  unspecified
      Reserved_2_15      : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Hardware idle period
      HW_LP_IDLE_X32     : DDRCTRL_REGS_HWLPCTL_HW_LP_IDLE_X32_Field := 16#0#;
      --  unspecified
      Reserved_28_31     : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_HWLPCTL_Register use record
      HW_LP_EN           at 0 range 0 .. 0;
      HW_LP_EXIT_IDLE_EN at 0 range 1 .. 1;
      Reserved_2_15      at 0 range 2 .. 15;
      HW_LP_IDLE_X32     at 0 range 16 .. 27;
      Reserved_28_31     at 0 range 28 .. 31;
   end record;

   subtype DDRCTRL_REGS_RFSHCTL0_AUTO_REFAB_EN_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_REGS_RFSHCTL0_REFRESH_BURST_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_RFSHCTL0_REFRESH_TO_X1_X32_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_RFSHCTL0_REFRESH_MARGIN_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_RFSHCTL0_REFRESH_TO_AB_X32_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRCTRL refresh control 0 register
   type DDRCTRL_REGS_RFSHCTL0_Register is record
      --  Enables automatic switching from per-bank to all-bank refresh when
      --  the derated refresh period is small.
      AUTO_REFAB_EN     : DDRCTRL_REGS_RFSHCTL0_AUTO_REFAB_EN_Field := 16#0#;
      --  Per bank refresh allows traffic to flow to other banks (supported by
      --  all LPDDR4 devices).
      PER_BANK_REFRESH  : Boolean := False;
      --  unspecified
      Reserved_3_3      : Interfaces.Bit_Types.Bit := 16#0#;
      --  This bit field + 1 is the number of refresh timeouts that can be
      --  accumulated before traffic is blocked, and refreshes are forced to
      --  execute.
      REFRESH_BURST     : DDRCTRL_REGS_RFSHCTL0_REFRESH_BURST_Field := 16#0#;
      --  unspecified
      Reserved_10_11    : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  If the refresh timer (tless thansub>RFCnomless than/sub>, also known
      --  as tless thansub>REFIless than/sub>) has expired at least once, a
      --  speculative refresh can be performed.
      REFRESH_TO_X1_X32 : DDRCTRL_REGS_RFSHCTL0_REFRESH_TO_X1_X32_Field :=
                           16#10#;
      --  unspecified
      Reserved_17_19    : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DFI clock cycles before the critical refresh or page timer expires
      REFRESH_MARGIN    : DDRCTRL_REGS_RFSHCTL0_REFRESH_MARGIN_Field := 16#2#;
      --  unspecified
      Reserved_24_26    : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  When the DDRCTRL switches automatically from per-bank to all-bank
      --  refresh (if enabled by AUTO_REFAB_EN[1:0]), it will use this register
      --  to determine when to perform speculative all-bank refreshes.
      REFRESH_TO_AB_X32 : DDRCTRL_REGS_RFSHCTL0_REFRESH_TO_AB_X32_Field :=
                           16#10#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_RFSHCTL0_Register use record
      AUTO_REFAB_EN     at 0 range 0 .. 1;
      PER_BANK_REFRESH  at 0 range 2 .. 2;
      Reserved_3_3      at 0 range 3 .. 3;
      REFRESH_BURST     at 0 range 4 .. 9;
      Reserved_10_11    at 0 range 10 .. 11;
      REFRESH_TO_X1_X32 at 0 range 12 .. 16;
      Reserved_17_19    at 0 range 17 .. 19;
      REFRESH_MARGIN    at 0 range 20 .. 23;
      Reserved_24_26    at 0 range 24 .. 26;
      REFRESH_TO_AB_X32 at 0 range 27 .. 31;
   end record;

   subtype DDRCTRL_REGS_RFSHCTL1_REFRESH_TIMER0_START_VALUE_X32_Field is
     Interfaces.Bit_Types.UInt12;
   subtype DDRCTRL_REGS_RFSHCTL1_REFRESH_TIMER1_START_VALUE_X32_Field is
     Interfaces.Bit_Types.UInt12;

   --  DDRCTRL refresh control 1 register
   type DDRCTRL_REGS_RFSHCTL1_Register is record
      --  Refresh timer start for rank 0 (only present in multirank
      --  configurations)
      REFRESH_TIMER0_START_VALUE_X32 : DDRCTRL_REGS_RFSHCTL1_REFRESH_TIMER0_START_VALUE_X32_Field :=
                                        16#0#;
      --  unspecified
      Reserved_12_15                 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Refresh timer start for rank 1 (only present in multirank
      --  configurations)
      REFRESH_TIMER1_START_VALUE_X32 : DDRCTRL_REGS_RFSHCTL1_REFRESH_TIMER1_START_VALUE_X32_Field :=
                                        16#0#;
      --  unspecified
      Reserved_28_31                 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_RFSHCTL1_Register use record
      REFRESH_TIMER0_START_VALUE_X32 at 0 range 0 .. 11;
      Reserved_12_15                 at 0 range 12 .. 15;
      REFRESH_TIMER1_START_VALUE_X32 at 0 range 16 .. 27;
      Reserved_28_31                 at 0 range 28 .. 31;
   end record;

   subtype DDRCTRL_REGS_RFSHCTL3_REFRESH_MODE_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRCTRL refresh control 3 register
   type DDRCTRL_REGS_RFSHCTL3_Register is record
      --  Auto-refresh disable
      DIS_AUTO_REFRESH     : Boolean := False;
      --  Refresh register update
      REFRESH_UPDATE_LEVEL : Boolean := False;
      --  unspecified
      Reserved_2_3         : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Fine granularity refresh mode
      REFRESH_MODE         : DDRCTRL_REGS_RFSHCTL3_REFRESH_MODE_Field :=
                              16#0#;
      --  unspecified
      Reserved_7_31        : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_RFSHCTL3_Register use record
      DIS_AUTO_REFRESH     at 0 range 0 .. 0;
      REFRESH_UPDATE_LEVEL at 0 range 1 .. 1;
      Reserved_2_3         at 0 range 2 .. 3;
      REFRESH_MODE         at 0 range 4 .. 6;
      Reserved_7_31        at 0 range 7 .. 31;
   end record;

   subtype DDRCTRL_REGS_RFSHTMG_T_RFC_MIN_Field is Interfaces.Bit_Types.UInt10;
   subtype DDRCTRL_REGS_RFSHTMG_T_RFC_NOM_X1_X32_Field is
     Interfaces.Bit_Types.UInt12;

   --  DDRCTRL refresh timing register
   type DDRCTRL_REGS_RFSHTMG_Register is record
      --  tless thansub>RFCminless than/sub>, minimum time from refresh to
      --  refresh or activate
      T_RFC_MIN        : DDRCTRL_REGS_RFSHTMG_T_RFC_MIN_Field := 16#8C#;
      --  unspecified
      Reserved_10_15   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Average time interval between refreshes per rank
      T_RFC_NOM_X1_X32 : DDRCTRL_REGS_RFSHTMG_T_RFC_NOM_X1_X32_Field :=
                          16#62#;
      --  unspecified
      Reserved_28_30   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  This bit specifies whether values of T_RFC_NOM_X1_X32 in this
      --  register and REFRESH_TO_X1_X32 in DDRCTRL_REGS_RFSHCTL0 are x1 or
      --  x32.
      T_RFC_NOM_X1_SEL : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_RFSHTMG_Register use record
      T_RFC_MIN        at 0 range 0 .. 9;
      Reserved_10_15   at 0 range 10 .. 15;
      T_RFC_NOM_X1_X32 at 0 range 16 .. 27;
      Reserved_28_30   at 0 range 28 .. 30;
      T_RFC_NOM_X1_SEL at 0 range 31 .. 31;
   end record;

   subtype DDRCTRL_REGS_RFSHTMG1_T_PBR2PBR_Field is Interfaces.Bit_Types.Byte;

   --  DDRCTRL refresh timing1 register
   type DDRCTRL_REGS_RFSHTMG1_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  tless thansub>pbR2pbRless than/sub> for LPDDR4
      T_PBR2PBR      : DDRCTRL_REGS_RFSHTMG1_T_PBR2PBR_Field := 16#8C#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_RFSHTMG1_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      T_PBR2PBR      at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DDRCTRL_REGS_INIT0_PRE_CKE_X1024_Field is
     Interfaces.Bit_Types.UInt12;
   subtype DDRCTRL_REGS_INIT0_POST_CKE_X1024_Field is
     Interfaces.Bit_Types.UInt10;
   subtype DDRCTRL_REGS_INIT0_SKIP_DRAM_INIT_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRCTRL SDRAM initialization 0 register
   type DDRCTRL_REGS_INIT0_Register is record
      --  Number of cycles to wait after reset before driving CKE high to start
      --  the SDRAM initialization sequence
      PRE_CKE_X1024  : DDRCTRL_REGS_INIT0_PRE_CKE_X1024_Field := 16#4E#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Number of cycles to wait after driving CKE high to start the SDRAM
      --  initialization sequence
      POST_CKE_X1024 : DDRCTRL_REGS_INIT0_POST_CKE_X1024_Field := 16#2#;
      --  unspecified
      Reserved_26_29 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  SDRAM initialization routine
      SKIP_DRAM_INIT : DDRCTRL_REGS_INIT0_SKIP_DRAM_INIT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_INIT0_Register use record
      PRE_CKE_X1024  at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      POST_CKE_X1024 at 0 range 16 .. 25;
      Reserved_26_29 at 0 range 26 .. 29;
      SKIP_DRAM_INIT at 0 range 30 .. 31;
   end record;

   subtype DDRCTRL_REGS_INIT1_PRE_OCD_X32_Field is Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_INIT1_DRAM_RSTN_X1024_Field is
     Interfaces.Bit_Types.UInt9;

   --  DDRCTRL SDRAM initialization 1 register
   type DDRCTRL_REGS_INIT1_Register is record
      --  Wait period before driving the OCD complete command to SDRAM
      PRE_OCD_X32     : DDRCTRL_REGS_INIT1_PRE_OCD_X32_Field := 16#0#;
      --  unspecified
      Reserved_4_15   : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Number of cycles to assert SDRAM reset signal during
      DRAM_RSTN_X1024 : DDRCTRL_REGS_INIT1_DRAM_RSTN_X1024_Field := 16#0#;
      --  unspecified
      Reserved_25_31  : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_INIT1_Register use record
      PRE_OCD_X32     at 0 range 0 .. 3;
      Reserved_4_15   at 0 range 4 .. 15;
      DRAM_RSTN_X1024 at 0 range 16 .. 24;
      Reserved_25_31  at 0 range 25 .. 31;
   end record;

   subtype DDRCTRL_REGS_INIT3_EMR_Field is Interfaces.Bit_Types.UInt16;
   subtype DDRCTRL_REGS_INIT3_MR_Field is Interfaces.Bit_Types.UInt16;

   --  DDRCTRL SDRAM initialization 3 register
   type DDRCTRL_REGS_INIT3_Register is record
      --  DDR3L/DDR4: Value to write to MR1 register (set bit 7 to 0)
      EMR : DDRCTRL_REGS_INIT3_EMR_Field := 16#510#;
      --  DDR3L/DDR4: Value loaded into MR0 register
      MR  : DDRCTRL_REGS_INIT3_MR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_INIT3_Register use record
      EMR at 0 range 0 .. 15;
      MR  at 0 range 16 .. 31;
   end record;

   subtype DDRCTRL_REGS_INIT4_EMR3_Field is Interfaces.Bit_Types.UInt16;
   subtype DDRCTRL_REGS_INIT4_EMR2_Field is Interfaces.Bit_Types.UInt16;

   --  DDRCTRL SDRAM initialization 4 register
   type DDRCTRL_REGS_INIT4_Register is record
      --  DDR3L/DDR4: Value to write to MR3 register
      EMR3 : DDRCTRL_REGS_INIT4_EMR3_Field := 16#0#;
      --  DDR3L/DDR4: Value to write to MR2 register
      EMR2 : DDRCTRL_REGS_INIT4_EMR2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_INIT4_Register use record
      EMR3 at 0 range 0 .. 15;
      EMR2 at 0 range 16 .. 31;
   end record;

   subtype DDRCTRL_REGS_INIT5_DEV_ZQINIT_X32_Field is
     Interfaces.Bit_Types.Byte;

   --  DDRCTRL SDRAM initialization 5 register
   type DDRCTRL_REGS_INIT5_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.Bit_Types.UInt16 := 16#4#;
      --  tless thansub>ZQINITless than/sub>, ZQ initial calibration
      DEV_ZQINIT_X32 : DDRCTRL_REGS_INIT5_DEV_ZQINIT_X32_Field := 16#10#;
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_INIT5_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      DEV_ZQINIT_X32 at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DDRCTRL_REGS_INIT6_MR5_Field is Interfaces.Bit_Types.UInt16;
   subtype DDRCTRL_REGS_INIT6_MR4_Field is Interfaces.Bit_Types.UInt16;

   --  DDRCTRL SDRAM initialization 6 register
   type DDRCTRL_REGS_INIT6_Register is record
      --  DDR4: Value to be loaded into SDRAM MR5 registers
      MR5 : DDRCTRL_REGS_INIT6_MR5_Field := 16#0#;
      --  DDR4: Value to be loaded into SDRAM MR4 registers
      MR4 : DDRCTRL_REGS_INIT6_MR4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_INIT6_Register use record
      MR5 at 0 range 0 .. 15;
      MR4 at 0 range 16 .. 31;
   end record;

   --  DDRCTRL_REGS_INIT7_MR array element
   subtype DDRCTRL_REGS_INIT7_MR_Element is Interfaces.Bit_Types.UInt16;

   --  DDRCTRL_REGS_INIT7_MR array
   type DDRCTRL_REGS_INIT7_MR_Field_Array is array (6 .. 7)
     of DDRCTRL_REGS_INIT7_MR_Element
     with Component_Size => 16, Size => 32;

   --  DDRCTRL SDRAM initialization 7 register
   type DDRCTRL_REGS_INIT7_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MR as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  MR as an array
            Arr : DDRCTRL_REGS_INIT7_MR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_INIT7_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype DDRCTRL_REGS_RANKCTL_MAX_RANK_RD_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_RANKCTL_DIFF_RANK_RD_GAP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_RANKCTL_DIFF_RANK_WR_GAP_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_RANKCTL_MAX_RANK_WR_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRCTRL rank control register
   type DDRCTRL_REGS_RANKCTL_Register is record
      --  Maximum number of reads that can be scheduled consecutively
      MAX_RANK_RD          : DDRCTRL_REGS_RANKCTL_MAX_RANK_RD_Field := 16#F#;
      --  Number of clocks of gap in data responses when performing consecutive
      --  reads to different ranks (only present for multi-rank configurations)
      DIFF_RANK_RD_GAP     : DDRCTRL_REGS_RANKCTL_DIFF_RANK_RD_GAP_Field :=
                              16#6#;
      --  Number of clocks of gap in data responses when performing consecutive
      --  writes to different ranks (only present for multirank configurations)
      DIFF_RANK_WR_GAP     : DDRCTRL_REGS_RANKCTL_DIFF_RANK_WR_GAP_Field :=
                              16#6#;
      --  Maximum number of writes that can be scheduled consecutively
      MAX_RANK_WR          : DDRCTRL_REGS_RANKCTL_MAX_RANK_WR_Field := 16#0#;
      --  unspecified
      Reserved_16_23       : Interfaces.Bit_Types.Byte := 16#0#;
      --  1-bit extension to be used when DIFF_RANK_RD_GAP in this register
      --  needs to be set
      DIFF_RANK_RD_GAP_MSB : Boolean := False;
      --  unspecified
      Reserved_25_25       : Interfaces.Bit_Types.Bit := 16#0#;
      --  1-bit extension to be used when DIFF_RANK_WR_GAP in this register
      --  needs to be set
      DIFF_RANK_WR_GAP_MSB : Boolean := False;
      --  unspecified
      Reserved_27_31       : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_RANKCTL_Register use record
      MAX_RANK_RD          at 0 range 0 .. 3;
      DIFF_RANK_RD_GAP     at 0 range 4 .. 7;
      DIFF_RANK_WR_GAP     at 0 range 8 .. 11;
      MAX_RANK_WR          at 0 range 12 .. 15;
      Reserved_16_23       at 0 range 16 .. 23;
      DIFF_RANK_RD_GAP_MSB at 0 range 24 .. 24;
      Reserved_25_25       at 0 range 25 .. 25;
      DIFF_RANK_WR_GAP_MSB at 0 range 26 .. 26;
      Reserved_27_31       at 0 range 27 .. 31;
   end record;

   subtype DDRCTRL_REGS_RANKCTL1_WR2RD_DR_Field is Interfaces.Bit_Types.UInt6;

   --  Rank control 1 register
   type DDRCTRL_REGS_RANKCTL1_Register is record
      --  Minimum time from write command to read command on different physical
      --  ranks.
      WR2RD_DR      : DDRCTRL_REGS_RANKCTL1_WR2RD_DR_Field := 16#8#;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_RANKCTL1_Register use record
      WR2RD_DR      at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG0_T_RAS_MIN_Field is Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DRAMTMG0_T_RAS_MAX_Field is Interfaces.Bit_Types.UInt7;
   subtype DDRCTRL_REGS_DRAMTMG0_T_FAW_Field is Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DRAMTMG0_WR2PRE_Field is Interfaces.Bit_Types.UInt7;

   --  DDRCTRL SDRAM timing 0 register
   type DDRCTRL_REGS_DRAMTMG0_Register is record
      --  tless thansub>RASminless than/sub>, minimum time between activate and
      --  precharge to same bank
      T_RAS_MIN      : DDRCTRL_REGS_DRAMTMG0_T_RAS_MIN_Field := 16#F#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  tless thansub>RASmaxless than/sub>, max time between activate and
      --  precharge to same bank
      T_RAS_MAX      : DDRCTRL_REGS_DRAMTMG0_T_RAS_MAX_Field := 16#1B#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  tless thansub>FAWless than/sub>, valid only when 8 or more banks (or
      --  banks x bank groups) are present
      T_FAW          : DDRCTRL_REGS_DRAMTMG0_T_FAW_Field := 16#10#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Minimum time between write and precharge to same bank
      WR2PRE         : DDRCTRL_REGS_DRAMTMG0_WR2PRE_Field := 16#F#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG0_Register use record
      T_RAS_MIN      at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      T_RAS_MAX      at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      T_FAW          at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      WR2PRE         at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG1_T_RC_Field is Interfaces.Bit_Types.UInt7;
   subtype DDRCTRL_REGS_DRAMTMG1_RD2PRE_Field is Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DRAMTMG1_T_XP_Field is Interfaces.Bit_Types.UInt5;

   --  DDRCTRL SDRAM timing 1 register
   type DDRCTRL_REGS_DRAMTMG1_Register is record
      --  tless thansub>RCless than/sub>, minimum time between activates to
      --  same bank
      T_RC           : DDRCTRL_REGS_DRAMTMG1_T_RC_Field := 16#14#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  tless thansub>RTPless than/sub>, minimum time from read to precharge
      --  of same bank
      RD2PRE         : DDRCTRL_REGS_DRAMTMG1_RD2PRE_Field := 16#4#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  tless thansub>XPless than/sub>, minimum time after PDN exit to any
      --  operation
      T_XP           : DDRCTRL_REGS_DRAMTMG1_T_XP_Field := 16#8#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG1_Register use record
      T_RC           at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RD2PRE         at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      T_XP           at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG2_WR2RD_Field is Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DRAMTMG2_RD2WR_Field is Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DRAMTMG2_READ_LATENCY_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DRAMTMG2_WRITE_LATENCY_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRCTRL SDRAM timing 2 register
   type DDRCTRL_REGS_DRAMTMG2_Register is record
      --  In DDR4, minimum time from write command to read command for same
      --  bank group.
      WR2RD          : DDRCTRL_REGS_DRAMTMG2_WR2RD_Field := 16#D#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Minimum time from read command to write command
      RD2WR          : DDRCTRL_REGS_DRAMTMG2_RD2WR_Field := 16#6#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Time from read command to read data on SDRAM interface
      READ_LATENCY   : DDRCTRL_REGS_DRAMTMG2_READ_LATENCY_Field := 16#5#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Time from write command to write data on SDRAM interface
      WRITE_LATENCY  : DDRCTRL_REGS_DRAMTMG2_WRITE_LATENCY_Field := 16#3#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG2_Register use record
      WR2RD          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RD2WR          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      READ_LATENCY   at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      WRITE_LATENCY  at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG3_T_MOD_Field is Interfaces.Bit_Types.UInt10;
   subtype DDRCTRL_REGS_DRAMTMG3_T_MRD_Field is Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DRAMTMG3_T_MRW_Field is Interfaces.Bit_Types.UInt10;

   --  DDRCTRL SDRAM timing 3 register
   type DDRCTRL_REGS_DRAMTMG3_Register is record
      --  tless thansub>MODless than/sub>, number of cycles between load mode
      --  command and following non-load mode command (only in DDR3L and DDR4)
      T_MOD          : DDRCTRL_REGS_DRAMTMG3_T_MOD_Field := 16#C#;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  tless thansub>MRDless than/sub>, number of cycles to wait after a
      --  mode register write or read
      T_MRD          : DDRCTRL_REGS_DRAMTMG3_T_MRD_Field := 16#4#;
      --  unspecified
      Reserved_18_19 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Time to wait after a mode register write or read (MRW or MRR)
      T_MRW          : DDRCTRL_REGS_DRAMTMG3_T_MRW_Field := 16#5#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG3_Register use record
      T_MOD          at 0 range 0 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      T_MRD          at 0 range 12 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      T_MRW          at 0 range 20 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG4_T_RP_Field is Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_DRAMTMG4_T_RRD_Field is Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_DRAMTMG4_T_CCD_Field is Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_DRAMTMG4_T_RCD_Field is Interfaces.Bit_Types.UInt5;

   --  DDRCTRL SDRAM timing 4 register
   type DDRCTRL_REGS_DRAMTMG4_Register is record
      --  tless thansub>RPless than/sub>, minimum time from single-bank
      --  precharge to activate of same bank
      T_RP           : DDRCTRL_REGS_DRAMTMG4_T_RP_Field := 16#5#;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  For DDR4, tless thansub>RRD_Lless than/sub>, minimum time between
      --  activates from bank a to bank b for same bank.
      T_RRD          : DDRCTRL_REGS_DRAMTMG4_T_RRD_Field := 16#4#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  For DDR4, tless thansub>CCD_Lless than/sub>, minimum time between two
      --  reads or two writes for same bank group.
      T_CCD          : DDRCTRL_REGS_DRAMTMG4_T_CCD_Field := 16#4#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  tless thansub>RCDless than/sub> - tless thansub>ALless than/sub>,
      --  minimum time from activate to read or write command to same bank
      T_RCD          : DDRCTRL_REGS_DRAMTMG4_T_RCD_Field := 16#5#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG4_Register use record
      T_RP           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      T_RRD          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      T_CCD          at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      T_RCD          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG5_T_CKE_Field is Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_DRAMTMG5_T_CKESR_Field is Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DRAMTMG5_T_CKSRE_Field is Interfaces.Bit_Types.UInt7;
   subtype DDRCTRL_REGS_DRAMTMG5_T_CKSRX_Field is Interfaces.Bit_Types.UInt4;

   --  DDRCTRL SDRAM timing 5 register
   type DDRCTRL_REGS_DRAMTMG5_Register is record
      --  Minimum number of cycles of CKE high/low during PDN and SR
      T_CKE          : DDRCTRL_REGS_DRAMTMG5_T_CKE_Field := 16#3#;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Minimum CKE low width for SR or SRPD entry to exit timing
      T_CKESR        : DDRCTRL_REGS_DRAMTMG5_T_CKESR_Field := 16#4#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Time after SR entry that CK is maintained as a valid clock
      T_CKSRE        : DDRCTRL_REGS_DRAMTMG5_T_CKSRE_Field := 16#5#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Time before SR exit that CK is maintained as a valid clock before
      --  issuing SRX
      T_CKSRX        : DDRCTRL_REGS_DRAMTMG5_T_CKSRX_Field := 16#5#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG5_Register use record
      T_CKE          at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      T_CKESR        at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      T_CKSRE        at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      T_CKSRX        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG6_T_CKCSX_Field is Interfaces.Bit_Types.UInt4;

   --  DDRCTRL SDRAM timing 6 register
   type DDRCTRL_REGS_DRAMTMG6_Register is record
      --  time before clock Stop exit that CK is maintained as a valid clock
      --  before issuing clock Stop exit
      T_CKCSX       : DDRCTRL_REGS_DRAMTMG6_T_CKCSX_Field := 16#5#;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#202000#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG6_Register use record
      T_CKCSX       at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG7_T_CKPDX_Field is Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_DRAMTMG7_T_CKPDE_Field is Interfaces.Bit_Types.UInt4;

   --  DDRCTRL SDRAM timing 7 register
   type DDRCTRL_REGS_DRAMTMG7_Register is record
      --  Time before PDN exit that CK is maintained as a valid clock
      T_CKPDX        : DDRCTRL_REGS_DRAMTMG7_T_CKPDX_Field := 16#2#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Time after PDN entry that CK is maintained as a valid clock
      T_CKPDE        : DDRCTRL_REGS_DRAMTMG7_T_CKPDE_Field := 16#2#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG7_Register use record
      T_CKPDX        at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      T_CKPDE        at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG8_T_XS_X32_Field is Interfaces.Bit_Types.UInt7;
   subtype DDRCTRL_REGS_DRAMTMG8_T_XS_DLL_X32_Field is
     Interfaces.Bit_Types.UInt7;
   subtype DDRCTRL_REGS_DRAMTMG8_T_XS_ABORT_X32_Field is
     Interfaces.Bit_Types.UInt7;
   subtype DDRCTRL_REGS_DRAMTMG8_T_XS_FAST_X32_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRCTRL SDRAM timing 8 register
   type DDRCTRL_REGS_DRAMTMG8_Register is record
      --  tless thansub>XSless than/sub>, exit SR to commands not requiring a
      --  locked DLL (only for DDR3L and DDR4 SDRAMs)
      T_XS_X32       : DDRCTRL_REGS_DRAMTMG8_T_XS_X32_Field := 16#5#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  tless thansub>XSDLLless than/sub>, exit SR to commands requiring a
      --  locked DLL (only for DDR3L and DDR4 SDRAMs)
      T_XS_DLL_X32   : DDRCTRL_REGS_DRAMTMG8_T_XS_DLL_X32_Field := 16#44#;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  tless thansub>XS_ABORTless than/sub>, exit SR to commands not
      --  requiring a locked DLL
      T_XS_ABORT_X32 : DDRCTRL_REGS_DRAMTMG8_T_XS_ABORT_X32_Field := 16#3#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  tless thansub>XS_FASTless than/sub>, exit SR to ZQCL, ZQCS and MRS
      --  (only CL, WR, RTP mode)
      T_XS_FAST_X32  : DDRCTRL_REGS_DRAMTMG8_T_XS_FAST_X32_Field := 16#3#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG8_Register use record
      T_XS_X32       at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      T_XS_DLL_X32   at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      T_XS_ABORT_X32 at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      T_XS_FAST_X32  at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG9_WR2RD_S_Field is Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DRAMTMG9_T_RRD_S_Field is Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_DRAMTMG9_T_CCD_S_Field is Interfaces.Bit_Types.UInt3;

   --  DDRCTRL SDRAM timing 9 register
   type DDRCTRL_REGS_DRAMTMG9_Register is record
      --  Minimum time from write command to read command for different bank
      --  group
      WR2RD_S          : DDRCTRL_REGS_DRAMTMG9_WR2RD_S_Field := 16#D#;
      --  unspecified
      Reserved_6_7     : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  tless thansub>RRD_Sless than/sub>, minimum time between activates for
      --  different bank group
      T_RRD_S          : DDRCTRL_REGS_DRAMTMG9_T_RRD_S_Field := 16#4#;
      --  unspecified
      Reserved_12_15   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  tless thansub>CCD_Sless than/sub>, minimum time between two
      --  reads/writes for different bank group
      T_CCD_S          : DDRCTRL_REGS_DRAMTMG9_T_CCD_S_Field := 16#4#;
      --  unspecified
      Reserved_19_29   : Interfaces.Bit_Types.UInt11 := 16#0#;
      --  DDR4 write preamble mode
      DDR4_WR_PREAMBLE : Boolean := False;
      --  unspecified
      Reserved_31_31   : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG9_Register use record
      WR2RD_S          at 0 range 0 .. 5;
      Reserved_6_7     at 0 range 6 .. 7;
      T_RRD_S          at 0 range 8 .. 11;
      Reserved_12_15   at 0 range 12 .. 15;
      T_CCD_S          at 0 range 16 .. 18;
      Reserved_19_29   at 0 range 19 .. 29;
      DDR4_WR_PREAMBLE at 0 range 30 .. 30;
      Reserved_31_31   at 0 range 31 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG10_T_GEAR_HOLD_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_REGS_DRAMTMG10_T_GEAR_SETUP_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_REGS_DRAMTMG10_T_CMD_GEAR_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_DRAMTMG10_T_SYNC_GEAR_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRCTRL SDRAM timing 10 register
   type DDRCTRL_REGS_DRAMTMG10_Register is record
      --  Geardown hold time
      T_GEAR_HOLD    : DDRCTRL_REGS_DRAMTMG10_T_GEAR_HOLD_Field := 16#2#;
      --  Geardown setup time
      T_GEAR_SETUP   : DDRCTRL_REGS_DRAMTMG10_T_GEAR_SETUP_Field := 16#2#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  sync pulse to first valid command
      T_CMD_GEAR     : DDRCTRL_REGS_DRAMTMG10_T_CMD_GEAR_Field := 16#18#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Time between MRS command and the sync pulse time
      T_SYNC_GEAR    : DDRCTRL_REGS_DRAMTMG10_T_SYNC_GEAR_Field := 16#1C#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG10_Register use record
      T_GEAR_HOLD    at 0 range 0 .. 1;
      T_GEAR_SETUP   at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      T_CMD_GEAR     at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      T_SYNC_GEAR    at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG11_T_CKMPE_Field is Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_DRAMTMG11_T_MPX_S_Field is Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_REGS_DRAMTMG11_T_MPX_LH_Field is Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_DRAMTMG11_POST_MPSM_GAP_X32_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRCTRL SDRAM timing 11 register
   type DDRCTRL_REGS_DRAMTMG11_Register is record
      --  tless thansub>CKMPEless than/sub>, minimum valid clock requirement
      --  after MPSM entry
      T_CKMPE           : DDRCTRL_REGS_DRAMTMG11_T_CKMPE_Field := 16#1C#;
      --  unspecified
      Reserved_5_7      : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  tless thansub>MPX_Sless than/sub>, minimum time CS setup time to CKE
      T_MPX_S           : DDRCTRL_REGS_DRAMTMG11_T_MPX_S_Field := 16#2#;
      --  unspecified
      Reserved_10_15    : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  tless thansub>MPX_LHless than/sub>, minimum CS_n low hold time to CKE
      --  rising edge
      T_MPX_LH          : DDRCTRL_REGS_DRAMTMG11_T_MPX_LH_Field := 16#C#;
      --  unspecified
      Reserved_21_23    : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  tless thansub>XMPDLLless than/sub>, minimum exit MPSM to commands
      --  requiring
      POST_MPSM_GAP_X32 : DDRCTRL_REGS_DRAMTMG11_POST_MPSM_GAP_X32_Field :=
                           16#44#;
      --  unspecified
      Reserved_31_31    : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG11_Register use record
      T_CKMPE           at 0 range 0 .. 4;
      Reserved_5_7      at 0 range 5 .. 7;
      T_MPX_S           at 0 range 8 .. 9;
      Reserved_10_15    at 0 range 10 .. 15;
      T_MPX_LH          at 0 range 16 .. 20;
      Reserved_21_23    at 0 range 21 .. 23;
      POST_MPSM_GAP_X32 at 0 range 24 .. 30;
      Reserved_31_31    at 0 range 31 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG12_T_MRD_PDA_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_DRAMTMG12_T_CMDCKE_Field is Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_REGS_DRAMTMG12_T_WR_MPR_Field is Interfaces.Bit_Types.UInt6;

   --  DDRCTRL SDRAM timing 12 register
   type DDRCTRL_REGS_DRAMTMG12_Register is record
      --  tless thansub>MRD_PDAless than/sub>, cycle time of mode register set
      --  command in PDA mode
      T_MRD_PDA      : DDRCTRL_REGS_DRAMTMG12_T_MRD_PDA_Field := 16#10#;
      --  unspecified
      Reserved_5_15  : Interfaces.Bit_Types.UInt11 := 16#0#;
      --  tless thansub>CMDCKEless than/sub>, delay from valid command to CKE
      --  input low
      T_CMDCKE       : DDRCTRL_REGS_DRAMTMG12_T_CMDCKE_Field := 16#2#;
      --  unspecified
      Reserved_18_23 : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Cycles between MPR write and other commands (DDR4 only)
      T_WR_MPR       : DDRCTRL_REGS_DRAMTMG12_T_WR_MPR_Field := 16#1A#;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG12_Register use record
      T_MRD_PDA      at 0 range 0 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      T_CMDCKE       at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      T_WR_MPR       at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG13_T_PPD_Field is Interfaces.Bit_Types.UInt3;
   subtype DDRCTRL_REGS_DRAMTMG13_T_CCD_MW_Field is Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DRAMTMG13_ODTLOFF_Field is Interfaces.Bit_Types.UInt7;

   --  DDRCTRL SDRAM timing 13 register
   type DDRCTRL_REGS_DRAMTMG13_Register is record
      --  tless thansub>PPDless than/sub>, minimum time from precharge to
      --  precharge command (only LPDDR4)
      T_PPD          : DDRCTRL_REGS_DRAMTMG13_T_PPD_Field := 16#4#;
      --  unspecified
      Reserved_3_15  : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  tless thansub>CCDMWless than/sub>, minimum time from write or masked
      --  write to masked write command for same bank (only LPDDR4)
      T_CCD_MW       : DDRCTRL_REGS_DRAMTMG13_T_CCD_MW_Field := 16#20#;
      --  unspecified
      Reserved_22_23 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ODTLoff, latency from CAS-2 command to ODToff reference (only LPDDR4)
      ODTLOFF        : DDRCTRL_REGS_DRAMTMG13_ODTLOFF_Field := 16#1C#;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG13_Register use record
      T_PPD          at 0 range 0 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
      T_CCD_MW       at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ODTLOFF        at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG14_T_XSR_Field is Interfaces.Bit_Types.UInt12;

   --  DDRCTRL SDRAM timing 14 register
   type DDRCTRL_REGS_DRAMTMG14_Register is record
      --  tless thansub>XSRless than/sub>, exit SR time to any command (only
      --  LPDDR4)
      T_XSR          : DDRCTRL_REGS_DRAMTMG14_T_XSR_Field := 16#A0#;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG14_Register use record
      T_XSR          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DDRCTRL_REGS_DRAMTMG15_T_STAB_X32_Field is
     Interfaces.Bit_Types.Byte;

   --  DDRCTRL SDRAM timing 15 register
   type DDRCTRL_REGS_DRAMTMG15_Register is record
      --  tless thansub>STABless than/sub>, stabilization time
      T_STAB_X32       : DDRCTRL_REGS_DRAMTMG15_T_STAB_X32_Field := 16#0#;
      --  unspecified
      Reserved_8_30    : Interfaces.Bit_Types.UInt23 := 16#0#;
      --  Note: Programming mode: Quasi-dynamic Group 2, Group 4.
      EN_DFI_LP_T_STAB : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DRAMTMG15_Register use record
      T_STAB_X32       at 0 range 0 .. 7;
      Reserved_8_30    at 0 range 8 .. 30;
      EN_DFI_LP_T_STAB at 0 range 31 .. 31;
   end record;

   subtype DDRCTRL_REGS_ZQCTL0_T_ZQ_SHORT_NOP_Field is
     Interfaces.Bit_Types.UInt10;
   subtype DDRCTRL_REGS_ZQCTL0_T_ZQ_LONG_NOP_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRCTRL ZQ control 0 register
   type DDRCTRL_REGS_ZQCTL0_Register is record
      --  DFI clock cycles of NOP required after ZQCS (ZQ calibration short)
      T_ZQ_SHORT_NOP     : DDRCTRL_REGS_ZQCTL0_T_ZQ_SHORT_NOP_Field := 16#40#;
      --  unspecified
      Reserved_10_15     : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  DFI clock cycles of NOP required after ZQCL (ZQcalibration long)
      T_ZQ_LONG_NOP      : DDRCTRL_REGS_ZQCTL0_T_ZQ_LONG_NOP_Field := 16#200#;
      --  unspecified
      Reserved_27_27     : Interfaces.Bit_Types.Bit := 16#0#;
      --  Only for DDR4
      DIS_MPSMX_ZQCL     : Boolean := False;
      --  ZQinit/ZQCL/ZQCS/MPC(ZQ calibration) commands are sent to one rank at
      --  a time with tless thansub>ZQinitless than/sub>, tless
      --  thansub>ZQCLless than/sub>, tless thansub>ZQCSless than/sub>, tless
      --  thansub>ZQCALless than/sub>, and tless thansub>ZQLATless than/sub>
      --  met between commands (so that commands to different ranks do not
      --  overlap).
      ZQ_RESISTOR_SHARED : Boolean := False;
      --  Note: Programming mode: Quasi-dynamic Group 2, Group 4.
      DIS_SRX_ZQCL       : Boolean := False;
      --  Note: Programming mode: Dynamic.
      DIS_AUTO_ZQ        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ZQCTL0_Register use record
      T_ZQ_SHORT_NOP     at 0 range 0 .. 9;
      Reserved_10_15     at 0 range 10 .. 15;
      T_ZQ_LONG_NOP      at 0 range 16 .. 26;
      Reserved_27_27     at 0 range 27 .. 27;
      DIS_MPSMX_ZQCL     at 0 range 28 .. 28;
      ZQ_RESISTOR_SHARED at 0 range 29 .. 29;
      DIS_SRX_ZQCL       at 0 range 30 .. 30;
      DIS_AUTO_ZQ        at 0 range 31 .. 31;
   end record;

   subtype DDRCTRL_REGS_ZQCTL1_T_ZQ_SHORT_INTERVAL_X1024_Field is
     Interfaces.Bit_Types.UInt20;
   subtype DDRCTRL_REGS_ZQCTL1_T_ZQ_RESET_NOP_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRCTRL ZQ control 1 register
   type DDRCTRL_REGS_ZQCTL1_Register is record
      --  Average interval to wait between automatically issuing ZQCS (ZQ
      --  calibration short) and MPC(ZQ calibration) commands
      T_ZQ_SHORT_INTERVAL_X1024 : DDRCTRL_REGS_ZQCTL1_T_ZQ_SHORT_INTERVAL_X1024_Field :=
                                   16#100#;
      --  tless thansub>ZQResetless than/sub>, DFI clock cycles of NOP required
      --  after ZQReset
      T_ZQ_RESET_NOP            : DDRCTRL_REGS_ZQCTL1_T_ZQ_RESET_NOP_Field :=
                                   16#20#;
      --  unspecified
      Reserved_30_31            : Interfaces.Bit_Types.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ZQCTL1_Register use record
      T_ZQ_SHORT_INTERVAL_X1024 at 0 range 0 .. 19;
      T_ZQ_RESET_NOP            at 0 range 20 .. 29;
      Reserved_30_31            at 0 range 30 .. 31;
   end record;

   --  DDRCTRL ZQ control 2 register
   type DDRCTRL_REGS_ZQCTL2_Register is record
      --  ZQ Reset operation
      ZQ_RESET      : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ZQCTL2_Register use record
      ZQ_RESET      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DDRCTRL ZQ status register
   type DDRCTRL_REGS_ZQSTAT_Register is record
      --  Read-only. ZQ Reset operation possible only if this bit is low
      ZQ_RESET_BUSY : Boolean;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ZQSTAT_Register use record
      ZQ_RESET_BUSY at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRCTRL_REGS_DFITMG0_DFI_TPHY_WRLAT_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DFITMG0_DFI_TPHY_WRDATA_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DFITMG0_DFI_T_RDDATA_EN_Field is
     Interfaces.Bit_Types.UInt7;
   subtype DDRCTRL_REGS_DFITMG0_DFI_T_CTRL_DELAY_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRCTRL DFI timing 0 register
   type DDRCTRL_REGS_DFITMG0_Register is record
      --  tless thansub>PHY_WRLATless than/sub>, write latency
      DFI_TPHY_WRLAT             : DDRCTRL_REGS_DFITMG0_DFI_TPHY_WRLAT_Field :=
                                    16#2#;
      --  unspecified
      Reserved_6_7               : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  tless thansub>PHY_WRDATA, less than/sub>number of clock cycles
      --  between dfi_wrdata_en assertion and associated write data driven on
      --  dfi_wrdata
      DFI_TPHY_WRDATA            : DDRCTRL_REGS_DFITMG0_DFI_TPHY_WRDATA_Field :=
                                    16#0#;
      --  unspecified
      Reserved_14_14             : Interfaces.Bit_Types.Bit := 16#0#;
      --  dfi_wrdata_en, dfi_wrdata, or dfi_wrdata_mask generated
      DFI_WRDATA_USE_DFI_PHY_CLK : Boolean := False;
      --  Time from the assertion of a read command on the DFI interface
      DFI_T_RDDATA_EN            : DDRCTRL_REGS_DFITMG0_DFI_T_RDDATA_EN_Field :=
                                    16#2#;
      --  dfi_rddata_en, dfi_rddata, or dfi_rddata_valid generated
      DFI_RDDATA_USE_DFI_PHY_CLK : Boolean := False;
      --  DFI clock cycles after an assertion or deassertion
      DFI_T_CTRL_DELAY           : DDRCTRL_REGS_DFITMG0_DFI_T_CTRL_DELAY_Field :=
                                    16#7#;
      --  unspecified
      Reserved_29_31             : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DFITMG0_Register use record
      DFI_TPHY_WRLAT             at 0 range 0 .. 5;
      Reserved_6_7               at 0 range 6 .. 7;
      DFI_TPHY_WRDATA            at 0 range 8 .. 13;
      Reserved_14_14             at 0 range 14 .. 14;
      DFI_WRDATA_USE_DFI_PHY_CLK at 0 range 15 .. 15;
      DFI_T_RDDATA_EN            at 0 range 16 .. 22;
      DFI_RDDATA_USE_DFI_PHY_CLK at 0 range 23 .. 23;
      DFI_T_CTRL_DELAY           at 0 range 24 .. 28;
      Reserved_29_31             at 0 range 29 .. 31;
   end record;

   subtype DDRCTRL_REGS_DFITMG1_DFI_T_DRAM_CLK_ENABLE_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_DFITMG1_DFI_T_DRAM_CLK_DISABLE_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_DFITMG1_DFI_T_WRDATA_DELAY_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_DFITMG1_DFI_T_CMD_LAT_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRCTRL DFI timing 1 register
   type DDRCTRL_REGS_DFITMG1_Register is record
      --  DFI clock cycles from dfi_dram_clk_disable deassertion on the DFI
      --  until the first valid rising edge of the clock to the DRAM memory
      --  devices,
      DFI_T_DRAM_CLK_ENABLE  : DDRCTRL_REGS_DFITMG1_DFI_T_DRAM_CLK_ENABLE_Field :=
                                16#4#;
      --  unspecified
      Reserved_5_7           : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DFI clock cycles from dfi_dram_clk_disable assertion on the DFI until
      --  the clock to the DRAM memory devices, at the PHY-DRAM boundary
      DFI_T_DRAM_CLK_DISABLE : DDRCTRL_REGS_DFITMG1_DFI_T_DRAM_CLK_DISABLE_Field :=
                                16#4#;
      --  unspecified
      Reserved_13_15         : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  tless thansub>WRDATA_DELAYless than/sub>, DFI clock cycles between
      --  dfi_wrdata_en assertion, and when the corresponding write data
      --  transfer is completed on the DRAM bus
      DFI_T_WRDATA_DELAY     : DDRCTRL_REGS_DFITMG1_DFI_T_WRDATA_DELAY_Field :=
                                16#0#;
      --  unspecified
      Reserved_21_27         : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Number of DFI PHY clock cycles between when dfi_cs assertion and when
      --  the associated command is driven
      DFI_T_CMD_LAT          : DDRCTRL_REGS_DFITMG1_DFI_T_CMD_LAT_Field :=
                                16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DFITMG1_Register use record
      DFI_T_DRAM_CLK_ENABLE  at 0 range 0 .. 4;
      Reserved_5_7           at 0 range 5 .. 7;
      DFI_T_DRAM_CLK_DISABLE at 0 range 8 .. 12;
      Reserved_13_15         at 0 range 13 .. 15;
      DFI_T_WRDATA_DELAY     at 0 range 16 .. 20;
      Reserved_21_27         at 0 range 21 .. 27;
      DFI_T_CMD_LAT          at 0 range 28 .. 31;
   end record;

   subtype DDRCTRL_REGS_DFILPCFG0_DFI_LP_WAKEUP_PD_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_DFILPCFG0_DFI_LP_WAKEUP_SR_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_DFILPCFG0_DFI_TLP_RESP_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRCTRL DFI low-power configuration 0 register
   type DDRCTRL_REGS_DFILPCFG0_Register is record
      --  DFI low-power interface handshaking during PDN entry/exit
      DFI_LP_EN_PD     : Boolean := False;
      --  unspecified
      Reserved_1_3     : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  tless thansub>LP_WAKEUPless than/sub>, DFI clock cycles to drive on
      --  dfi_lp_wakeup signal when PDN is entered
      DFI_LP_WAKEUP_PD : DDRCTRL_REGS_DFILPCFG0_DFI_LP_WAKEUP_PD_Field :=
                          16#0#;
      --  DFI low-power interface handshaking during SR entry/exit
      DFI_LP_EN_SR     : Boolean := False;
      --  unspecified
      Reserved_9_11    : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  tless thansub>LP_WAKEUPless than/sub>, DFI clock cycles to drive on
      --  dfi_lp_wakeup signal
      DFI_LP_WAKEUP_SR : DDRCTRL_REGS_DFILPCFG0_DFI_LP_WAKEUP_SR_Field :=
                          16#0#;
      --  unspecified
      Reserved_16_23   : Interfaces.Bit_Types.Byte := 16#0#;
      --  tless thansub>LP_RESPless than/sub>, DFI clock cycles setting for DFI
      DFI_TLP_RESP     : DDRCTRL_REGS_DFILPCFG0_DFI_TLP_RESP_Field := 16#7#;
      --  unspecified
      Reserved_29_31   : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DFILPCFG0_Register use record
      DFI_LP_EN_PD     at 0 range 0 .. 0;
      Reserved_1_3     at 0 range 1 .. 3;
      DFI_LP_WAKEUP_PD at 0 range 4 .. 7;
      DFI_LP_EN_SR     at 0 range 8 .. 8;
      Reserved_9_11    at 0 range 9 .. 11;
      DFI_LP_WAKEUP_SR at 0 range 12 .. 15;
      Reserved_16_23   at 0 range 16 .. 23;
      DFI_TLP_RESP     at 0 range 24 .. 28;
      Reserved_29_31   at 0 range 29 .. 31;
   end record;

   subtype DDRCTRL_REGS_DFIUPD0_DFI_T_CTRLUP_MIN_Field is
     Interfaces.Bit_Types.UInt10;
   subtype DDRCTRL_REGS_DFIUPD0_DFI_T_CTRLUP_MAX_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRCTRL DFI update 0 register
   type DDRCTRL_REGS_DFIUPD0_Register is record
      --  Minimum number of DFI clock cycles to which
      DFI_T_CTRLUP_MIN     : DDRCTRL_REGS_DFIUPD0_DFI_T_CTRLUP_MIN_Field :=
                              16#3#;
      --  unspecified
      Reserved_10_15       : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Maximum number of DFI clock cycles that
      DFI_T_CTRLUP_MAX     : DDRCTRL_REGS_DFIUPD0_DFI_T_CTRLUP_MAX_Field :=
                              16#40#;
      --  unspecified
      Reserved_26_28       : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DFI_CTRLUPD_REQ requirements at SRX
      CTRLUPD_PRE_SRX      : Boolean := False;
      --  Note: Programming mode: Static.
      DIS_AUTO_CTRLUPD_SRX : Boolean := False;
      --  Note: Programming mode: Quasi-dynamic Group 3.
      DIS_AUTO_CTRLUPD     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DFIUPD0_Register use record
      DFI_T_CTRLUP_MIN     at 0 range 0 .. 9;
      Reserved_10_15       at 0 range 10 .. 15;
      DFI_T_CTRLUP_MAX     at 0 range 16 .. 25;
      Reserved_26_28       at 0 range 26 .. 28;
      CTRLUPD_PRE_SRX      at 0 range 29 .. 29;
      DIS_AUTO_CTRLUPD_SRX at 0 range 30 .. 30;
      DIS_AUTO_CTRLUPD     at 0 range 31 .. 31;
   end record;

   subtype DDRCTRL_REGS_DFIUPD1_DFI_T_CTRLUPD_INTERVAL_MAX_X1024_Field is
     Interfaces.Bit_Types.Byte;
   subtype DDRCTRL_REGS_DFIUPD1_DFI_T_CTRLUPD_INTERVAL_MIN_X1024_Field is
     Interfaces.Bit_Types.Byte;

   --  DDRCTRL DFI update 1 register
   type DDRCTRL_REGS_DFIUPD1_Register is record
      --  Maximum amount of time between DDRCTRL initiated DFI update requests
      DFI_T_CTRLUPD_INTERVAL_MAX_X1024 : DDRCTRL_REGS_DFIUPD1_DFI_T_CTRLUPD_INTERVAL_MAX_X1024_Field :=
                                          16#1#;
      --  unspecified
      Reserved_8_15                    : Interfaces.Bit_Types.Byte := 16#0#;
      --  Minimum amount of time between DDRCTRL initiated DFI update requests
      --  (which is executed whenever the DDRCTRL is idle)
      DFI_T_CTRLUPD_INTERVAL_MIN_X1024 : DDRCTRL_REGS_DFIUPD1_DFI_T_CTRLUPD_INTERVAL_MIN_X1024_Field :=
                                          16#1#;
      --  unspecified
      Reserved_24_31                   : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DFIUPD1_Register use record
      DFI_T_CTRLUPD_INTERVAL_MAX_X1024 at 0 range 0 .. 7;
      Reserved_8_15                    at 0 range 8 .. 15;
      DFI_T_CTRLUPD_INTERVAL_MIN_X1024 at 0 range 16 .. 23;
      Reserved_24_31                   at 0 range 24 .. 31;
   end record;

   --  DDRCTRL DFI update 2 register
   type DDRCTRL_REGS_DFIUPD2_Register is record
      --  unspecified
      Reserved_0_30 : Interfaces.Bit_Types.UInt31 := 16#0#;
      --  Enables the support for acknowledging PHY-initiated updates
      DFI_PHYUPD_EN : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DFIUPD2_Register use record
      Reserved_0_30 at 0 range 0 .. 30;
      DFI_PHYUPD_EN at 0 range 31 .. 31;
   end record;

   subtype DDRCTRL_REGS_DFIMISC_DFI_FREQUENCY_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRCTRL DFI miscellaneous control register
   type DDRCTRL_REGS_DFIMISC_Register is record
      --  PHY initialization complete enable
      DFI_INIT_COMPLETE_EN : Boolean := True;
      --  DBI implemented in DDRC or PHY
      PHY_DBI_MODE         : Boolean := False;
      --  Polarity of dfi_wrdata_cs and dfi_rddata_cs signals
      DFI_DATA_CS_POLARITY : Boolean := False;
      --  unspecified
      Reserved_3_3         : Interfaces.Bit_Types.Bit := 16#0#;
      --  Enables support of ctl_idle signal (non-DFI related pin specific to
      --  certain Synopsys PHYs)
      CTL_IDLE_EN          : Boolean := False;
      --  PHY init start request
      DFI_INIT_START       : Boolean := False;
      --  the PHY can detect it to turn the command/address bus Hi-Z.
      DIS_DYN_ADR_TRI      : Boolean := True;
      --  Note: Programming mode: Quasi-dynamic Group 3
      LP_OPTIMIZED_WRITE   : Boolean := False;
      --  System operating frequency
      DFI_FREQUENCY        : DDRCTRL_REGS_DFIMISC_DFI_FREQUENCY_Field :=
                              16#0#;
      --  unspecified
      Reserved_13_31       : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DFIMISC_Register use record
      DFI_INIT_COMPLETE_EN at 0 range 0 .. 0;
      PHY_DBI_MODE         at 0 range 1 .. 1;
      DFI_DATA_CS_POLARITY at 0 range 2 .. 2;
      Reserved_3_3         at 0 range 3 .. 3;
      CTL_IDLE_EN          at 0 range 4 .. 4;
      DFI_INIT_START       at 0 range 5 .. 5;
      DIS_DYN_ADR_TRI      at 0 range 6 .. 6;
      LP_OPTIMIZED_WRITE   at 0 range 7 .. 7;
      DFI_FREQUENCY        at 0 range 8 .. 12;
      Reserved_13_31       at 0 range 13 .. 31;
   end record;

   subtype DDRCTRL_REGS_DFITMG2_DFI_TPHY_WRCSLAT_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DFITMG2_DFI_TPHY_RDCSLAT_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRCTRL DFI timing 2 register
   type DDRCTRL_REGS_DFITMG2_Register is record
      --  tless thansub>PHY_WRCSLATless than/sub>, DFI PHY clock cycles between
      --  write command sent on the DFI control interface, and associated
      --  dfi_wrdata_cs signal asserted.
      DFI_TPHY_WRCSLAT : DDRCTRL_REGS_DFITMG2_DFI_TPHY_WRCSLAT_Field := 16#2#;
      --  unspecified
      Reserved_6_7     : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  tless thansub>PHY_RDCSLAT, less than/sub>DFI PHY clock cycles between
      --  read command sent on the DFI control interface, and associated
      --  dfi_rddata_cs signal asserted
      DFI_TPHY_RDCSLAT : DDRCTRL_REGS_DFITMG2_DFI_TPHY_RDCSLAT_Field := 16#2#;
      --  unspecified
      Reserved_15_31   : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DFITMG2_Register use record
      DFI_TPHY_WRCSLAT at 0 range 0 .. 5;
      Reserved_6_7     at 0 range 6 .. 7;
      DFI_TPHY_RDCSLAT at 0 range 8 .. 14;
      Reserved_15_31   at 0 range 15 .. 31;
   end record;

   subtype DDRCTRL_REGS_DFITMG3_DFI_T_GEARDOWN_DELAY_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRCTRL DFI timing 3 register
   type DDRCTRL_REGS_DFITMG3_Register is record
      --  Delay from dfi_geardown_en assertion to the time of t
      DFI_T_GEARDOWN_DELAY : DDRCTRL_REGS_DFITMG3_DFI_T_GEARDOWN_DELAY_Field :=
                              16#0#;
      --  unspecified
      Reserved_5_31        : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DFITMG3_Register use record
      DFI_T_GEARDOWN_DELAY at 0 range 0 .. 4;
      Reserved_5_31        at 0 range 5 .. 31;
   end record;

   --  DDRCTRL DFI status register
   type DDRCTRL_REGS_DFISTAT_Register is record
      --  Read-only. Status flag that announces when DFI initialization is
      --  completed
      DFI_INIT_COMPLETE : Boolean;
      --  Read-only. Stores the value of dfi_lp_ack input to the controller
      DFI_LP_ACK        : Boolean;
      --  unspecified
      Reserved_2_31     : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DFISTAT_Register use record
      DFI_INIT_COMPLETE at 0 range 0 .. 0;
      DFI_LP_ACK        at 0 range 1 .. 1;
      Reserved_2_31     at 0 range 2 .. 31;
   end record;

   --  DDRCTRL DM/DBI control register
   type DDRCTRL_REGS_DBICTL_Register is record
      --  DM enable signal in DDRC
      DM_EN         : Boolean := True;
      --  Write DBI enable signal in DDRC
      WR_DBI_EN     : Boolean := False;
      --  Read DBI enable signal in DDRC
      RD_DBI_EN     : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.Bit_Types.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DBICTL_Register use record
      DM_EN         at 0 range 0 .. 0;
      WR_DBI_EN     at 0 range 1 .. 1;
      RD_DBI_EN     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DDRCTRL_REGS_DFIPHYMSTR_DFI_PHYMSTR_BLK_REF_X32_Field is
     Interfaces.Bit_Types.Byte;

   --  DDRCTRL DFI PHY master register
   type DDRCTRL_REGS_DFIPHYMSTR_Register is record
      --  PHY master interface enable
      DFI_PHYMSTR_EN          : Boolean := True;
      --  unspecified
      Reserved_1_23           : Interfaces.Bit_Types.UInt23 := 16#0#;
      --  Maximum number of DFI clock cycles that are needed to send pending
      --  refreshes before starting SR entry process
      DFI_PHYMSTR_BLK_REF_X32 : DDRCTRL_REGS_DFIPHYMSTR_DFI_PHYMSTR_BLK_REF_X32_Field :=
                                 16#80#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DFIPHYMSTR_Register use record
      DFI_PHYMSTR_EN          at 0 range 0 .. 0;
      Reserved_1_23           at 0 range 1 .. 23;
      DFI_PHYMSTR_BLK_REF_X32 at 0 range 24 .. 31;
   end record;

   subtype DDRCTRL_REGS_ADDRMAP0_ADDRMAP_CS_BIT0_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRCTRL address map 0 register
   type DDRCTRL_REGS_ADDRMAP0_Register is record
      --  This bit field selects the HIF address bit used as rank address bit
      --  0.
      ADDRMAP_CS_BIT0 : DDRCTRL_REGS_ADDRMAP0_ADDRMAP_CS_BIT0_Field := 16#0#;
      --  unspecified
      Reserved_5_31   : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ADDRMAP0_Register use record
      ADDRMAP_CS_BIT0 at 0 range 0 .. 4;
      Reserved_5_31   at 0 range 5 .. 31;
   end record;

   subtype DDRCTRL_REGS_ADDRMAP1_ADDRMAP_BANK_B0_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_ADDRMAP1_ADDRMAP_BANK_B1_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_ADDRMAP1_ADDRMAP_BANK_B2_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRCTRL address map 1 register
   type DDRCTRL_REGS_ADDRMAP1_Register is record
      --  This bit field selects the HIF address bits used as bank address bit
      --  0.
      ADDRMAP_BANK_B0 : DDRCTRL_REGS_ADDRMAP1_ADDRMAP_BANK_B0_Field := 16#0#;
      --  unspecified
      Reserved_6_7    : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  This bit field selects the HIF address bits used as bank address bit
      --  1.
      ADDRMAP_BANK_B1 : DDRCTRL_REGS_ADDRMAP1_ADDRMAP_BANK_B1_Field := 16#0#;
      --  unspecified
      Reserved_14_15  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  This bit field selects the HIF address bit used as bank address bit
      --  2.
      ADDRMAP_BANK_B2 : DDRCTRL_REGS_ADDRMAP1_ADDRMAP_BANK_B2_Field := 16#0#;
      --  unspecified
      Reserved_22_31  : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ADDRMAP1_Register use record
      ADDRMAP_BANK_B0 at 0 range 0 .. 5;
      Reserved_6_7    at 0 range 6 .. 7;
      ADDRMAP_BANK_B1 at 0 range 8 .. 13;
      Reserved_14_15  at 0 range 14 .. 15;
      ADDRMAP_BANK_B2 at 0 range 16 .. 21;
      Reserved_22_31  at 0 range 22 .. 31;
   end record;

   subtype DDRCTRL_REGS_ADDRMAP2_ADDRMAP_COL_B2_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP2_ADDRMAP_COL_B3_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_ADDRMAP2_ADDRMAP_COL_B4_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP2_ADDRMAP_COL_B5_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRCTRL address map 2 register
   type DDRCTRL_REGS_ADDRMAP2_Register is record
      --  Full bus width mode: selects the HIF address bit used as column
      --  address bit 2.
      ADDRMAP_COL_B2 : DDRCTRL_REGS_ADDRMAP2_ADDRMAP_COL_B2_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Full bus width mode: selects the HIF address bit used as column
      --  address bit 3.
      ADDRMAP_COL_B3 : DDRCTRL_REGS_ADDRMAP2_ADDRMAP_COL_B3_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Full bus width mode: selects the HIF address bit used as column
      --  address bit 4.
      ADDRMAP_COL_B4 : DDRCTRL_REGS_ADDRMAP2_ADDRMAP_COL_B4_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Full bus width mode: selects the HIF address bit used as
      --  columnaddress bit 5.
      ADDRMAP_COL_B5 : DDRCTRL_REGS_ADDRMAP2_ADDRMAP_COL_B5_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ADDRMAP2_Register use record
      ADDRMAP_COL_B2 at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      ADDRMAP_COL_B3 at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      ADDRMAP_COL_B4 at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ADDRMAP_COL_B5 at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DDRCTRL_REGS_ADDRMAP3_ADDRMAP_COL_B6_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_ADDRMAP3_ADDRMAP_COL_B7_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_ADDRMAP3_ADDRMAP_COL_B8_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_ADDRMAP3_ADDRMAP_COL_B9_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRCTRL address map 3 register
   type DDRCTRL_REGS_ADDRMAP3_Register is record
      --  Full bus width mode: selects the HIF address bit used as column
      --  address bit 6.
      ADDRMAP_COL_B6 : DDRCTRL_REGS_ADDRMAP3_ADDRMAP_COL_B6_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Full bus width mode: selects the HIF address bit used as column
      --  address bit 7.
      ADDRMAP_COL_B7 : DDRCTRL_REGS_ADDRMAP3_ADDRMAP_COL_B7_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Full bus width mode: selects the HIF address bit used as column
      --  address bit 8.
      ADDRMAP_COL_B8 : DDRCTRL_REGS_ADDRMAP3_ADDRMAP_COL_B8_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Full bus width mode: selects the HIF address bit used as column
      --  address bit 9.
      ADDRMAP_COL_B9 : DDRCTRL_REGS_ADDRMAP3_ADDRMAP_COL_B9_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ADDRMAP3_Register use record
      ADDRMAP_COL_B6 at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      ADDRMAP_COL_B7 at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      ADDRMAP_COL_B8 at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      ADDRMAP_COL_B9 at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DDRCTRL_REGS_ADDRMAP4_ADDRMAP_COL_B10_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_ADDRMAP4_ADDRMAP_COL_B11_Field is
     Interfaces.Bit_Types.UInt5;

   --  DDRCTRL address map 4 register
   type DDRCTRL_REGS_ADDRMAP4_Register is record
      --  Full bus width mode: selects the HIF address bit used as column
      --  address bit 11.
      ADDRMAP_COL_B10 : DDRCTRL_REGS_ADDRMAP4_ADDRMAP_COL_B10_Field := 16#0#;
      --  unspecified
      Reserved_5_7    : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Full bus width mode: selects the HIF address bit used as column
      --  address bit 13.
      ADDRMAP_COL_B11 : DDRCTRL_REGS_ADDRMAP4_ADDRMAP_COL_B11_Field := 16#0#;
      --  unspecified
      Reserved_13_31  : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ADDRMAP4_Register use record
      ADDRMAP_COL_B10 at 0 range 0 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      ADDRMAP_COL_B11 at 0 range 8 .. 12;
      Reserved_13_31  at 0 range 13 .. 31;
   end record;

   subtype DDRCTRL_REGS_ADDRMAP5_ADDRMAP_ROW_B0_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP5_ADDRMAP_ROW_B1_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP5_ADDRMAP_ROW_B2_10_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP5_ADDRMAP_ROW_B11_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRCTRL address map 5 register
   type DDRCTRL_REGS_ADDRMAP5_Register is record
      --  This bit field selects the HIF address bits used as row address bit
      --  0.
      ADDRMAP_ROW_B0    : DDRCTRL_REGS_ADDRMAP5_ADDRMAP_ROW_B0_Field := 16#0#;
      --  unspecified
      Reserved_4_7      : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  This bit field selects the HIF address bits used as row address bit
      --  1.
      ADDRMAP_ROW_B1    : DDRCTRL_REGS_ADDRMAP5_ADDRMAP_ROW_B1_Field := 16#0#;
      --  unspecified
      Reserved_12_15    : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  This bit field selects the HIF address bits used as row address bits
      --  2 to 10.
      ADDRMAP_ROW_B2_10 : DDRCTRL_REGS_ADDRMAP5_ADDRMAP_ROW_B2_10_Field :=
                           16#0#;
      --  unspecified
      Reserved_20_23    : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  This bit field selects the HIF address bit used as row address bit
      --  11.
      ADDRMAP_ROW_B11   : DDRCTRL_REGS_ADDRMAP5_ADDRMAP_ROW_B11_Field :=
                           16#0#;
      --  unspecified
      Reserved_28_31    : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ADDRMAP5_Register use record
      ADDRMAP_ROW_B0    at 0 range 0 .. 3;
      Reserved_4_7      at 0 range 4 .. 7;
      ADDRMAP_ROW_B1    at 0 range 8 .. 11;
      Reserved_12_15    at 0 range 12 .. 15;
      ADDRMAP_ROW_B2_10 at 0 range 16 .. 19;
      Reserved_20_23    at 0 range 20 .. 23;
      ADDRMAP_ROW_B11   at 0 range 24 .. 27;
      Reserved_28_31    at 0 range 28 .. 31;
   end record;

   subtype DDRCTRL_REGS_ADDRMAP6_ADDRMAP_ROW_B12_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP6_ADDRMAP_ROW_B13_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP6_ADDRMAP_ROW_B14_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP6_ADDRMAP_ROW_B15_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP6_LPDDR34_3GB_6GB_12GB_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRCTRL address map 6 register
   type DDRCTRL_REGS_ADDRMAP6_Register is record
      --  This bit field selects the HIF address bit used as row address bit 12
      ADDRMAP_ROW_B12      : DDRCTRL_REGS_ADDRMAP6_ADDRMAP_ROW_B12_Field :=
                              16#0#;
      --  unspecified
      Reserved_4_7         : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  This bit field selects the HIF address bit used as row address bit
      --  13.
      ADDRMAP_ROW_B13      : DDRCTRL_REGS_ADDRMAP6_ADDRMAP_ROW_B13_Field :=
                              16#0#;
      --  unspecified
      Reserved_12_15       : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  This bit field selects the HIF address bit used as row address bit
      --  14.
      ADDRMAP_ROW_B14      : DDRCTRL_REGS_ADDRMAP6_ADDRMAP_ROW_B14_Field :=
                              16#0#;
      --  unspecified
      Reserved_20_23       : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  This bit field selects the HIF address bit used as row address bit
      --  15.
      ADDRMAP_ROW_B15      : DDRCTRL_REGS_ADDRMAP6_ADDRMAP_ROW_B15_Field :=
                              16#0#;
      --  unspecified
      Reserved_28_28       : Interfaces.Bit_Types.Bit := 16#0#;
      --  Density size/channel for LPDDR4 SDRAM device in use
      LPDDR34_3GB_6GB_12GB : DDRCTRL_REGS_ADDRMAP6_LPDDR34_3GB_6GB_12GB_Field :=
                              16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ADDRMAP6_Register use record
      ADDRMAP_ROW_B12      at 0 range 0 .. 3;
      Reserved_4_7         at 0 range 4 .. 7;
      ADDRMAP_ROW_B13      at 0 range 8 .. 11;
      Reserved_12_15       at 0 range 12 .. 15;
      ADDRMAP_ROW_B14      at 0 range 16 .. 19;
      Reserved_20_23       at 0 range 20 .. 23;
      ADDRMAP_ROW_B15      at 0 range 24 .. 27;
      Reserved_28_28       at 0 range 28 .. 28;
      LPDDR34_3GB_6GB_12GB at 0 range 29 .. 31;
   end record;

   subtype DDRCTRL_REGS_ADDRMAP7_ADDRMAP_ROW_B16_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP7_ADDRMAP_ROW_B17_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRCTRL address map 7 register
   type DDRCTRL_REGS_ADDRMAP7_Register is record
      --  This bit field selects the HIF address bit used as row address bit
      --  16.
      ADDRMAP_ROW_B16 : DDRCTRL_REGS_ADDRMAP7_ADDRMAP_ROW_B16_Field := 16#0#;
      --  unspecified
      Reserved_4_7    : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  This bit field selects the HIF address bit used as row address bit
      --  17.
      ADDRMAP_ROW_B17 : DDRCTRL_REGS_ADDRMAP7_ADDRMAP_ROW_B17_Field := 16#0#;
      --  unspecified
      Reserved_12_31  : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ADDRMAP7_Register use record
      ADDRMAP_ROW_B16 at 0 range 0 .. 3;
      Reserved_4_7    at 0 range 4 .. 7;
      ADDRMAP_ROW_B17 at 0 range 8 .. 11;
      Reserved_12_31  at 0 range 12 .. 31;
   end record;

   subtype DDRCTRL_REGS_ADDRMAP8_ADDRMAP_BG_B0_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_ADDRMAP8_ADDRMAP_BG_B1_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRCTRL address map 8 register
   type DDRCTRL_REGS_ADDRMAP8_Register is record
      --  This bit field selects the HIF address bits used as bank group
      --  address bit 0
      ADDRMAP_BG_B0  : DDRCTRL_REGS_ADDRMAP8_ADDRMAP_BG_B0_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  This bit field selects the HIF address bits used as bank group
      --  address bit 1.
      ADDRMAP_BG_B1  : DDRCTRL_REGS_ADDRMAP8_ADDRMAP_BG_B1_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ADDRMAP8_Register use record
      ADDRMAP_BG_B0  at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADDRMAP_BG_B1  at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DDRCTRL_REGS_ADDRMAP9_ADDRMAP_ROW_B2_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP9_ADDRMAP_ROW_B3_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP9_ADDRMAP_ROW_B4_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP9_ADDRMAP_ROW_B5_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRCTRL address map 9 register
   type DDRCTRL_REGS_ADDRMAP9_Register is record
      --  This bit field selects the HIF address bits used as row address bit 2
      ADDRMAP_ROW_B2 : DDRCTRL_REGS_ADDRMAP9_ADDRMAP_ROW_B2_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  This bit field selects the HIF address bits used as row address bit 3
      ADDRMAP_ROW_B3 : DDRCTRL_REGS_ADDRMAP9_ADDRMAP_ROW_B3_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  This bit field selects the HIF address bits used as row address bit 4
      ADDRMAP_ROW_B4 : DDRCTRL_REGS_ADDRMAP9_ADDRMAP_ROW_B4_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  This bit field selects the HIF address bits used as row address bit
      --  5.
      ADDRMAP_ROW_B5 : DDRCTRL_REGS_ADDRMAP9_ADDRMAP_ROW_B5_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ADDRMAP9_Register use record
      ADDRMAP_ROW_B2 at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      ADDRMAP_ROW_B3 at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      ADDRMAP_ROW_B4 at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ADDRMAP_ROW_B5 at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DDRCTRL_REGS_ADDRMAP10_ADDRMAP_ROW_B6_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP10_ADDRMAP_ROW_B7_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP10_ADDRMAP_ROW_B8_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ADDRMAP10_ADDRMAP_ROW_B9_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRCTRL address map 10 register
   type DDRCTRL_REGS_ADDRMAP10_Register is record
      --  This bit field selects the HIF address bits used as row address bit 6
      ADDRMAP_ROW_B6 : DDRCTRL_REGS_ADDRMAP10_ADDRMAP_ROW_B6_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  This bit field selects the HIF address bits used as row address bit 7
      ADDRMAP_ROW_B7 : DDRCTRL_REGS_ADDRMAP10_ADDRMAP_ROW_B7_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  This bit field selects the HIF address bits used as row address bit 8
      ADDRMAP_ROW_B8 : DDRCTRL_REGS_ADDRMAP10_ADDRMAP_ROW_B8_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  This bit field selects the HIF address bits used as row address bit 9
      ADDRMAP_ROW_B9 : DDRCTRL_REGS_ADDRMAP10_ADDRMAP_ROW_B9_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ADDRMAP10_Register use record
      ADDRMAP_ROW_B6 at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      ADDRMAP_ROW_B7 at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      ADDRMAP_ROW_B8 at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ADDRMAP_ROW_B9 at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DDRCTRL_REGS_ADDRMAP11_ADDRMAP_ROW_B10_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRCTRL address map 11 register
   type DDRCTRL_REGS_ADDRMAP11_Register is record
      --  This bit field selects the HIF address bits used as row address bit
      --  10
      ADDRMAP_ROW_B10 : DDRCTRL_REGS_ADDRMAP11_ADDRMAP_ROW_B10_Field := 16#0#;
      --  unspecified
      Reserved_4_31   : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ADDRMAP11_Register use record
      ADDRMAP_ROW_B10 at 0 range 0 .. 3;
      Reserved_4_31   at 0 range 4 .. 31;
   end record;

   subtype DDRCTRL_REGS_ODTCFG_RD_ODT_DELAY_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_ODTCFG_RD_ODT_HOLD_Field is Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_ODTCFG_WR_ODT_DELAY_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_ODTCFG_WR_ODT_HOLD_Field is Interfaces.Bit_Types.UInt4;

   --  DDRCTRL ODT configuration register
   type DDRCTRL_REGS_ODTCFG_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  DFI PHY clock cycles, from issuing a read command to setting ODT
      --  values associated with that command
      RD_ODT_DELAY   : DDRCTRL_REGS_ODTCFG_RD_ODT_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  DFI PHY clock cycles to hold ODT for a read command
      RD_ODT_HOLD    : DDRCTRL_REGS_ODTCFG_RD_ODT_HOLD_Field := 16#4#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  DFI PHY clock cycles, from issuing a write command to setting ODT
      --  values associated with this command
      WR_ODT_DELAY   : DDRCTRL_REGS_ODTCFG_WR_ODT_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  DFI PHY clock cycles to hold ODT for a write command
      WR_ODT_HOLD    : DDRCTRL_REGS_ODTCFG_WR_ODT_HOLD_Field := 16#4#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ODTCFG_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RD_ODT_DELAY   at 0 range 2 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RD_ODT_HOLD    at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WR_ODT_DELAY   at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      WR_ODT_HOLD    at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DDRCTRL_REGS_ODTMAP_RANK0_WR_ODT_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_REGS_ODTMAP_RANK0_RD_ODT_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_REGS_ODTMAP_RANK1_WR_ODT_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_REGS_ODTMAP_RANK1_RD_ODT_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRCTRL ODT/rank map register
   type DDRCTRL_REGS_ODTMAP_Register is record
      --  Remote ODTs to turn on during a write to rank 0
      RANK0_WR_ODT   : DDRCTRL_REGS_ODTMAP_RANK0_WR_ODT_Field := 16#1#;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Remote ODTs to turn on during a read from rank 0
      RANK0_RD_ODT   : DDRCTRL_REGS_ODTMAP_RANK0_RD_ODT_Field := 16#1#;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Remote ODTs to turn on during a write to rank 1
      RANK1_WR_ODT   : DDRCTRL_REGS_ODTMAP_RANK1_WR_ODT_Field := 16#2#;
      --  unspecified
      Reserved_10_11 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Remote ODTs to turn on during a read from rank 1
      RANK1_RD_ODT   : DDRCTRL_REGS_ODTMAP_RANK1_RD_ODT_Field := 16#2#;
      --  unspecified
      Reserved_14_31 : Interfaces.Bit_Types.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_ODTMAP_Register use record
      RANK0_WR_ODT   at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RANK0_RD_ODT   at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RANK1_WR_ODT   at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      RANK1_RD_ODT   at 0 range 12 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DDRCTRL_REGS_SCHED_LPR_NUM_ENTRIES_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_SCHED_GO2CRITICAL_HYSTERESIS_Field is
     Interfaces.Bit_Types.Byte;
   subtype DDRCTRL_REGS_SCHED_RDWR_IDLE_GAP_Field is
     Interfaces.Bit_Types.UInt7;

   --  DDRCTRL scheduler control register
   type DDRCTRL_REGS_SCHED_Register is record
      --  unspecified
      Reserved_0_0           : Interfaces.Bit_Types.Bit := 16#0#;
      --  If this bit is set, the bank selector prefers writes over reads.
      PREFER_WRITE           : Boolean := False;
      --  to this bank.
      PAGECLOSE              : Boolean := True;
      --  Selects read write switching policy.
      RDWR_SWITCH_POLICY_SEL : Boolean := True;
      --  Enable the feature of optimized write CAM fill level by switching to
      --  write when write CAM reaches certain fill level set in
      --  DDRCTRL_REGS_SCHED3.
      OPT_WRCAM_FILL_LEVEL   : Boolean := True;
      --  unspecified
      Reserved_5_6           : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Selection of the hif_cmd_autopre behavior if a RMW is received on HIF
      AUTOPRE_RMW            : Boolean := False;
      --  Number of entries in the low-priority transaction store
      LPR_NUM_ENTRIES        : DDRCTRL_REGS_SCHED_LPR_NUM_ENTRIES_Field :=
                                16#10#;
      --  unspecified
      Reserved_13_14         : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Optimized ACT timing control for LPDDR4
      LPDDR4_OPT_ACT_TIMING  : Boolean := False;
      --  Not used
      GO2CRITICAL_HYSTERESIS : DDRCTRL_REGS_SCHED_GO2CRITICAL_HYSTERESIS_Field :=
                                16#0#;
      --  When the preferred transaction store is empty for these many clock
      --  cycles, switch to the alternate transaction store if it is non-empty.
      RDWR_IDLE_GAP          : DDRCTRL_REGS_SCHED_RDWR_IDLE_GAP_Field :=
                                16#0#;
      --  Optimize exVPR/exVPW scheduling.
      OPT_VPRW_SCH           : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_SCHED_Register use record
      Reserved_0_0           at 0 range 0 .. 0;
      PREFER_WRITE           at 0 range 1 .. 1;
      PAGECLOSE              at 0 range 2 .. 2;
      RDWR_SWITCH_POLICY_SEL at 0 range 3 .. 3;
      OPT_WRCAM_FILL_LEVEL   at 0 range 4 .. 4;
      Reserved_5_6           at 0 range 5 .. 6;
      AUTOPRE_RMW            at 0 range 7 .. 7;
      LPR_NUM_ENTRIES        at 0 range 8 .. 12;
      Reserved_13_14         at 0 range 13 .. 14;
      LPDDR4_OPT_ACT_TIMING  at 0 range 15 .. 15;
      GO2CRITICAL_HYSTERESIS at 0 range 16 .. 23;
      RDWR_IDLE_GAP          at 0 range 24 .. 30;
      OPT_VPRW_SCH           at 0 range 31 .. 31;
   end record;

   subtype DDRCTRL_REGS_SCHED1_PAGECLOSE_TIMER_Field is
     Interfaces.Bit_Types.Byte;
   subtype DDRCTRL_REGS_SCHED1_DELAY_SWITCH_WRITE_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_REGS_SCHED1_VISIBLE_WINDOW_LIMIT_WR_Field is
     Interfaces.Bit_Types.UInt3;
   subtype DDRCTRL_REGS_SCHED1_VISIBLE_WINDOW_LIMIT_RD_Field is
     Interfaces.Bit_Types.UInt3;
   subtype DDRCTRL_REGS_SCHED1_PAGE_HIT_LIMIT_WR_Field is
     Interfaces.Bit_Types.UInt3;
   subtype DDRCTRL_REGS_SCHED1_PAGE_HIT_LIMIT_RD_Field is
     Interfaces.Bit_Types.UInt3;

   --  DDRCTRL scheduler control 1 register
   type DDRCTRL_REGS_SCHED1_Register is record
      --  This bit field works in conjunction with PAGECLOSE in
      --  DDRCTRL_REGS_SCHED.
      PAGECLOSE_TIMER         : DDRCTRL_REGS_SCHED1_PAGECLOSE_TIMER_Field :=
                                 16#0#;
      --  unspecified
      Reserved_8_11           : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Indicates the number of cycles to delay switching read to write mode
      --  when write page-hit request is there and no read page-hit request is
      --  there.
      DELAY_SWITCH_WRITE      : DDRCTRL_REGS_SCHED1_DELAY_SWITCH_WRITE_Field :=
                                 16#2#;
      --  Visible window limiter for write.
      VISIBLE_WINDOW_LIMIT_WR : DDRCTRL_REGS_SCHED1_VISIBLE_WINDOW_LIMIT_WR_Field :=
                                 16#0#;
      --  unspecified
      Reserved_19_19          : Interfaces.Bit_Types.Bit := 16#0#;
      --  Visible window limiter for read.
      VISIBLE_WINDOW_LIMIT_RD : DDRCTRL_REGS_SCHED1_VISIBLE_WINDOW_LIMIT_RD_Field :=
                                 16#0#;
      --  unspecified
      Reserved_23_23          : Interfaces.Bit_Types.Bit := 16#0#;
      --  Page-hit limiter for write.
      PAGE_HIT_LIMIT_WR       : DDRCTRL_REGS_SCHED1_PAGE_HIT_LIMIT_WR_Field :=
                                 16#0#;
      --  unspecified
      Reserved_27_27          : Interfaces.Bit_Types.Bit := 16#0#;
      --  Page-hit limiter for read.
      PAGE_HIT_LIMIT_RD       : DDRCTRL_REGS_SCHED1_PAGE_HIT_LIMIT_RD_Field :=
                                 16#0#;
      --  Optimize the priority between page-hit LPR and page-miss HPR.
      OPT_HIT_GT_HPR          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_SCHED1_Register use record
      PAGECLOSE_TIMER         at 0 range 0 .. 7;
      Reserved_8_11           at 0 range 8 .. 11;
      DELAY_SWITCH_WRITE      at 0 range 12 .. 15;
      VISIBLE_WINDOW_LIMIT_WR at 0 range 16 .. 18;
      Reserved_19_19          at 0 range 19 .. 19;
      VISIBLE_WINDOW_LIMIT_RD at 0 range 20 .. 22;
      Reserved_23_23          at 0 range 23 .. 23;
      PAGE_HIT_LIMIT_WR       at 0 range 24 .. 26;
      Reserved_27_27          at 0 range 27 .. 27;
      PAGE_HIT_LIMIT_RD       at 0 range 28 .. 30;
      OPT_HIT_GT_HPR          at 0 range 31 .. 31;
   end record;

   subtype DDRCTRL_REGS_PERFHPR1_HPR_MAX_STARVE_Field is
     Interfaces.Bit_Types.UInt16;
   subtype DDRCTRL_REGS_PERFHPR1_HPR_XACT_RUN_LENGTH_Field is
     Interfaces.Bit_Types.Byte;

   --  DDRCTRL high priority read CAM 1 register
   type DDRCTRL_REGS_PERFHPR1_Register is record
      --  DFI clocks that HPR queue can be starved before it goes critical
      HPR_MAX_STARVE      : DDRCTRL_REGS_PERFHPR1_HPR_MAX_STARVE_Field :=
                             16#1#;
      --  unspecified
      Reserved_16_23      : Interfaces.Bit_Types.Byte := 16#0#;
      --  Transactions serviced once HPR queue goes critical
      HPR_XACT_RUN_LENGTH : DDRCTRL_REGS_PERFHPR1_HPR_XACT_RUN_LENGTH_Field :=
                             16#F#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_PERFHPR1_Register use record
      HPR_MAX_STARVE      at 0 range 0 .. 15;
      Reserved_16_23      at 0 range 16 .. 23;
      HPR_XACT_RUN_LENGTH at 0 range 24 .. 31;
   end record;

   subtype DDRCTRL_REGS_PERFLPR1_LPR_MAX_STARVE_Field is
     Interfaces.Bit_Types.UInt16;
   subtype DDRCTRL_REGS_PERFLPR1_LPR_XACT_RUN_LENGTH_Field is
     Interfaces.Bit_Types.Byte;

   --  DDRCTRL low-priority read CAM 1 register
   type DDRCTRL_REGS_PERFLPR1_Register is record
      --  DFI clocks that LPR queue can be starved before it goes critical
      LPR_MAX_STARVE      : DDRCTRL_REGS_PERFLPR1_LPR_MAX_STARVE_Field :=
                             16#7F#;
      --  unspecified
      Reserved_16_23      : Interfaces.Bit_Types.Byte := 16#0#;
      --  Transactions serviced once LPR queue goes critical
      LPR_XACT_RUN_LENGTH : DDRCTRL_REGS_PERFLPR1_LPR_XACT_RUN_LENGTH_Field :=
                             16#F#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_PERFLPR1_Register use record
      LPR_MAX_STARVE      at 0 range 0 .. 15;
      Reserved_16_23      at 0 range 16 .. 23;
      LPR_XACT_RUN_LENGTH at 0 range 24 .. 31;
   end record;

   subtype DDRCTRL_REGS_PERFWR1_W_MAX_STARVE_Field is
     Interfaces.Bit_Types.UInt16;
   subtype DDRCTRL_REGS_PERFWR1_W_XACT_RUN_LENGTH_Field is
     Interfaces.Bit_Types.Byte;

   --  DDRCTRL write CAM 1 register
   type DDRCTRL_REGS_PERFWR1_Register is record
      --  DFI clocks that the WR queue can be starved before it goes critical
      W_MAX_STARVE      : DDRCTRL_REGS_PERFWR1_W_MAX_STARVE_Field := 16#7F#;
      --  unspecified
      Reserved_16_23    : Interfaces.Bit_Types.Byte := 16#0#;
      --  Transactions serviced once the WR queue goes critical
      W_XACT_RUN_LENGTH : DDRCTRL_REGS_PERFWR1_W_XACT_RUN_LENGTH_Field :=
                           16#F#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_PERFWR1_Register use record
      W_MAX_STARVE      at 0 range 0 .. 15;
      Reserved_16_23    at 0 range 16 .. 23;
      W_XACT_RUN_LENGTH at 0 range 24 .. 31;
   end record;

   subtype DDRCTRL_REGS_SCHED3_WRCAM_LOWTHRESH_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_SCHED3_WRCAM_HIGHTHRESH_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_SCHED3_WR_PGHIT_NUM_THRESH_Field is
     Interfaces.Bit_Types.UInt5;
   subtype DDRCTRL_REGS_SCHED3_RD_PGHIT_NUM_THRESH_Field is
     Interfaces.Bit_Types.UInt5;

   --  Scheduler control 3 register
   type DDRCTRL_REGS_SCHED3_Register is record
      --  The low threshold used in optimized write CAM fill level.
      WRCAM_LOWTHRESH     : DDRCTRL_REGS_SCHED3_WRCAM_LOWTHRESH_Field :=
                             16#8#;
      --  unspecified
      Reserved_5_7        : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  The high threshold used in optimized write CAM fill level.
      WRCAM_HIGHTHRESH    : DDRCTRL_REGS_SCHED3_WRCAM_HIGHTHRESH_Field :=
                             16#2#;
      --  unspecified
      Reserved_13_15      : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Switch to write mode once number of write page-hit request exceeds
      --  threshold set in this register during waiting delay_switch_write
      --  timeout.
      WR_PGHIT_NUM_THRESH : DDRCTRL_REGS_SCHED3_WR_PGHIT_NUM_THRESH_Field :=
                             16#4#;
      --  unspecified
      Reserved_21_23      : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Switch to read mode once number of read page-hit request exceeds the
      --  threshold set in the register during waiting tless thansub>W2Rless
      --  than/sub>.
      RD_PGHIT_NUM_THRESH : DDRCTRL_REGS_SCHED3_RD_PGHIT_NUM_THRESH_Field :=
                             16#4#;
      --  unspecified
      Reserved_29_31      : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_SCHED3_Register use record
      WRCAM_LOWTHRESH     at 0 range 0 .. 4;
      Reserved_5_7        at 0 range 5 .. 7;
      WRCAM_HIGHTHRESH    at 0 range 8 .. 12;
      Reserved_13_15      at 0 range 13 .. 15;
      WR_PGHIT_NUM_THRESH at 0 range 16 .. 20;
      Reserved_21_23      at 0 range 21 .. 23;
      RD_PGHIT_NUM_THRESH at 0 range 24 .. 28;
      Reserved_29_31      at 0 range 29 .. 31;
   end record;

   subtype DDRCTRL_REGS_SCHED4_RD_ACT_IDLE_GAP_Field is
     Interfaces.Bit_Types.Byte;
   subtype DDRCTRL_REGS_SCHED4_WR_ACT_IDLE_GAP_Field is
     Interfaces.Bit_Types.Byte;
   subtype DDRCTRL_REGS_SCHED4_RD_PAGE_EXP_CYCLES_Field is
     Interfaces.Bit_Types.Byte;
   subtype DDRCTRL_REGS_SCHED4_WR_PAGE_EXP_CYCLES_Field is
     Interfaces.Bit_Types.Byte;

   --  Scheduler control 4 register
   type DDRCTRL_REGS_SCHED4_Register is record
      --  Indicates the number of cycles when read direction has no request to
      --  start preparing bank for write direction.
      RD_ACT_IDLE_GAP    : DDRCTRL_REGS_SCHED4_RD_ACT_IDLE_GAP_Field :=
                            16#10#;
      --  Indicates the number of cycles when write direction has no request to
      --  start preparing bank for read direction.
      WR_ACT_IDLE_GAP    : DDRCTRL_REGS_SCHED4_WR_ACT_IDLE_GAP_Field := 16#8#;
      --  Indicates the number of cycles to keep the bank opened for read
      --  direction in write mode when both directions has request to the bank.
      RD_PAGE_EXP_CYCLES : DDRCTRL_REGS_SCHED4_RD_PAGE_EXP_CYCLES_Field :=
                            16#40#;
      --  Indicates the number of cycles to keep the bank opened for write
      --  direction in read mode when both directions has request to the bank.
      WR_PAGE_EXP_CYCLES : DDRCTRL_REGS_SCHED4_WR_PAGE_EXP_CYCLES_Field :=
                            16#8#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_SCHED4_Register use record
      RD_ACT_IDLE_GAP    at 0 range 0 .. 7;
      WR_ACT_IDLE_GAP    at 0 range 8 .. 15;
      RD_PAGE_EXP_CYCLES at 0 range 16 .. 23;
      WR_PAGE_EXP_CYCLES at 0 range 24 .. 31;
   end record;

   --  DDRCTRL debug 0 register
   type DDRCTRL_REGS_DBG0_Register is record
      --  For debug purpose only.
      DIS_WC                 : Boolean := False;
      --  Only present in designs supporting read bypass.
      DIS_RD_BYPASS          : Boolean := False;
      --  Only present in designs supporting activate bypass.
      DIS_ACT_BYPASS         : Boolean := False;
      --  unspecified
      Reserved_3_3           : Interfaces.Bit_Types.Bit := 16#0#;
      --  Collision cases are write followed by read to the same address, read
      --  followed by write to the same address, or write followed by write to
      --  same address with DIS_WC = 1 in this register (where same address
      --  comparisons exclude the two address bits representing critical word).
      DIS_COLLISION_PAGE_OPT : Boolean := False;
      --  unspecified
      Reserved_5_5           : Interfaces.Bit_Types.Bit := 16#0#;
      --  Disable optimized max_rank_rd and max_logical_rank_rd.
      DIS_MAX_RANK_RD_OPT    : Boolean := False;
      --  Disable optimized max_rank_wr and max_logical_rank_wr
      DIS_MAX_RANK_WR_OPT    : Boolean := False;
      --  unspecified
      Reserved_8_31          : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DBG0_Register use record
      DIS_WC                 at 0 range 0 .. 0;
      DIS_RD_BYPASS          at 0 range 1 .. 1;
      DIS_ACT_BYPASS         at 0 range 2 .. 2;
      Reserved_3_3           at 0 range 3 .. 3;
      DIS_COLLISION_PAGE_OPT at 0 range 4 .. 4;
      Reserved_5_5           at 0 range 5 .. 5;
      DIS_MAX_RANK_RD_OPT    at 0 range 6 .. 6;
      DIS_MAX_RANK_WR_OPT    at 0 range 7 .. 7;
      Reserved_8_31          at 0 range 8 .. 31;
   end record;

   --  DDRCTRL debug 1 register
   type DDRCTRL_REGS_DBG1_Register is record
      --  All transactions are queued in the CAM.
      DIS_DQ        : Boolean := False;
      --  This bit is intended to be switched on-the-fly.
      DIS_HIF       : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DBG1_Register use record
      DIS_DQ        at 0 range 0 .. 0;
      DIS_HIF       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DDRCTRL_REGS_DBGCAM_DBG_HPR_Q_DEPTH_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DBGCAM_DBG_LPR_Q_DEPTH_Field is
     Interfaces.Bit_Types.UInt6;
   subtype DDRCTRL_REGS_DBGCAM_DBG_W_Q_DEPTH_Field is
     Interfaces.Bit_Types.UInt6;

   --  DDRCTRL CAM debug register
   type DDRCTRL_REGS_DBGCAM_Register is record
      --  Read-only. High-priority read queue depth (for debug purpose only)
      DBG_HPR_Q_DEPTH        : DDRCTRL_REGS_DBGCAM_DBG_HPR_Q_DEPTH_Field;
      --  unspecified
      Reserved_6_7           : Interfaces.Bit_Types.UInt2;
      --  Read-only. Low-priority read queue depth (for debug purpose only)
      DBG_LPR_Q_DEPTH        : DDRCTRL_REGS_DBGCAM_DBG_LPR_Q_DEPTH_Field;
      --  unspecified
      Reserved_14_15         : Interfaces.Bit_Types.UInt2;
      --  Read-only. Write queue depth (for debug purpose only)
      DBG_W_Q_DEPTH          : DDRCTRL_REGS_DBGCAM_DBG_W_Q_DEPTH_Field;
      --  unspecified
      Reserved_22_23         : Interfaces.Bit_Types.UInt2;
      --  Read-only. Stall (for debug purpose only)
      DBG_STALL              : Boolean;
      --  Read-only. Use-case: When the DDRCTRL enters SR using the low-power
      --  entry sequence, the following is expected:
      DBG_RD_Q_EMPTY         : Boolean;
      --  Read-only. Use-case: When the DDRCTRL enters SR using the low-power
      --  entry sequence, the following is expected:
      DBG_WR_Q_EMPTY         : Boolean;
      --  unspecified
      Reserved_27_27         : Interfaces.Bit_Types.Bit;
      --  Read-only. Empty read data pipeline on the DFI interface
      RD_DATA_PIPELINE_EMPTY : Boolean;
      --  Read-only. Empty write data pipeline on the DFI interface
      WR_DATA_PIPELINE_EMPTY : Boolean;
      --  unspecified
      Reserved_30_31         : Interfaces.Bit_Types.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DBGCAM_Register use record
      DBG_HPR_Q_DEPTH        at 0 range 0 .. 5;
      Reserved_6_7           at 0 range 6 .. 7;
      DBG_LPR_Q_DEPTH        at 0 range 8 .. 13;
      Reserved_14_15         at 0 range 14 .. 15;
      DBG_W_Q_DEPTH          at 0 range 16 .. 21;
      Reserved_22_23         at 0 range 22 .. 23;
      DBG_STALL              at 0 range 24 .. 24;
      DBG_RD_Q_EMPTY         at 0 range 25 .. 25;
      DBG_WR_Q_EMPTY         at 0 range 26 .. 26;
      Reserved_27_27         at 0 range 27 .. 27;
      RD_DATA_PIPELINE_EMPTY at 0 range 28 .. 28;
      WR_DATA_PIPELINE_EMPTY at 0 range 29 .. 29;
      Reserved_30_31         at 0 range 30 .. 31;
   end record;

   --  DDRCTRL command debug register
   type DDRCTRL_REGS_DBGCMD_Register is record
      --  Refresh to rank 0
      RANK0_REFRESH  : Boolean := False;
      --  Refresh to rank 1
      RANK1_REFRESH  : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  ZQCS/MPC command to the SDRAM
      ZQ_CALIB_SHORT : Boolean := False;
      --  dfi_ctrlupd_req to the PHY
      CTRLUPD        : Boolean := False;
      --  unspecified
      Reserved_6_31  : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DBGCMD_Register use record
      RANK0_REFRESH  at 0 range 0 .. 0;
      RANK1_REFRESH  at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ZQ_CALIB_SHORT at 0 range 4 .. 4;
      CTRLUPD        at 0 range 5 .. 5;
      Reserved_6_31  at 0 range 6 .. 31;
   end record;

   --  DDRCTRL status debug register
   type DDRCTRL_REGS_DBGSTAT_Register is record
      --  Read-only. rank0_refresh operation
      RANK0_REFRESH_BUSY  : Boolean;
      --  Read-only. rank1_refresh operation
      RANK1_REFRESH_BUSY  : Boolean;
      --  unspecified
      Reserved_2_3        : Interfaces.Bit_Types.UInt2;
      --  Read-only. ZQCS operation
      ZQ_CALIB_SHORT_BUSY : Boolean;
      --  Read-only. CTRLUPD operation
      CTRLUPD_BUSY        : Boolean;
      --  unspecified
      Reserved_6_31       : Interfaces.Bit_Types.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DBGSTAT_Register use record
      RANK0_REFRESH_BUSY  at 0 range 0 .. 0;
      RANK1_REFRESH_BUSY  at 0 range 1 .. 1;
      Reserved_2_3        at 0 range 2 .. 3;
      ZQ_CALIB_SHORT_BUSY at 0 range 4 .. 4;
      CTRLUPD_BUSY        at 0 range 5 .. 5;
      Reserved_6_31       at 0 range 6 .. 31;
   end record;

   --  DDRCTRL software programming control enable register
   type DDRCTRL_REGS_SWCTL_Register is record
      --  Enable quasi-dynamic register programming outside reset
      SW_DONE       : Boolean := True;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_SWCTL_Register use record
      SW_DONE       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DDRCTRL software programming control status register
   type DDRCTRL_REGS_SWSTAT_Register is record
      --  Read-only. Register programming done
      SW_DONE_ACK   : Boolean;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_SWSTAT_Register use record
      SW_DONE_ACK   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DDRCTRL statics write enable register
   type DDRCTRL_REGS_SWCTLSTATIC_Register is record
      --  Enables static register programming outside reset
      SW_STATIC_UNLOCK : Boolean := False;
      --  unspecified
      Reserved_1_31    : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_SWCTLSTATIC_Register use record
      SW_STATIC_UNLOCK at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  DDRCTRL AXI poison configuration register
   type DDRCTRL_REGS_POISONCFG_Register is record
      --  SLVERR response for write transaction poisoning enable
      WR_POISON_SLVERR_EN : Boolean := True;
      --  unspecified
      Reserved_1_3        : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Interrupts for write transaction poisoning enable
      WR_POISON_INTR_EN   : Boolean := True;
      --  unspecified
      Reserved_5_7        : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Interrupt clear for write transaction poisoning
      WR_POISON_INTR_CLR  : Boolean := False;
      --  unspecified
      Reserved_9_15       : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  SLVERR response for read transaction poisoning enable
      RD_POISON_SLVERR_EN : Boolean := True;
      --  unspecified
      Reserved_17_19      : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Interrupts for read transaction poisoning enable
      RD_POISON_INTR_EN   : Boolean := True;
      --  unspecified
      Reserved_21_23      : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Interrupt clear for read transaction poisoning
      RD_POISON_INTR_CLR  : Boolean := False;
      --  unspecified
      Reserved_25_31      : Interfaces.Bit_Types.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_POISONCFG_Register use record
      WR_POISON_SLVERR_EN at 0 range 0 .. 0;
      Reserved_1_3        at 0 range 1 .. 3;
      WR_POISON_INTR_EN   at 0 range 4 .. 4;
      Reserved_5_7        at 0 range 5 .. 7;
      WR_POISON_INTR_CLR  at 0 range 8 .. 8;
      Reserved_9_15       at 0 range 9 .. 15;
      RD_POISON_SLVERR_EN at 0 range 16 .. 16;
      Reserved_17_19      at 0 range 17 .. 19;
      RD_POISON_INTR_EN   at 0 range 20 .. 20;
      Reserved_21_23      at 0 range 21 .. 23;
      RD_POISON_INTR_CLR  at 0 range 24 .. 24;
      Reserved_25_31      at 0 range 25 .. 31;
   end record;

   --  DDRCTRL AXI poison status register
   type DDRCTRL_REGS_POISONSTAT_Register is record
      --  Read-only. Write transaction poisoning error interrupt for port 0
      WR_POISON_INTR_0 : Boolean;
      --  Read-only. Write transaction poisoning error interrupt for port 1
      WR_POISON_INTR_1 : Boolean;
      --  unspecified
      Reserved_2_15    : Interfaces.Bit_Types.UInt14;
      --  Read-only. Read transaction poisoning error interrupt for port 0
      RD_POISON_INTR_0 : Boolean;
      --  Read-only. Read transaction poisoning error interrupt for port 1
      RD_POISON_INTR_1 : Boolean;
      --  unspecified
      Reserved_18_31   : Interfaces.Bit_Types.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_POISONSTAT_Register use record
      WR_POISON_INTR_0 at 0 range 0 .. 0;
      WR_POISON_INTR_1 at 0 range 1 .. 1;
      Reserved_2_15    at 0 range 2 .. 15;
      RD_POISON_INTR_0 at 0 range 16 .. 16;
      RD_POISON_INTR_1 at 0 range 17 .. 17;
      Reserved_18_31   at 0 range 18 .. 31;
   end record;

   --  DDRCTRL temperature derate status register
   type DDRCTRL_REGS_DERATESTAT_Register is record
      --  Read-only. Derate temperature interrupt
      DERATE_TEMP_LIMIT_INTR : Boolean;
      --  unspecified
      Reserved_1_31          : Interfaces.Bit_Types.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_REGS_DERATESTAT_Register use record
      DERATE_TEMP_LIMIT_INTR at 0 range 0 .. 0;
      Reserved_1_31          at 0 range 1 .. 31;
   end record;

   --  DDRCTRL port status register
   type DDRCTRL_MP_PSTAT_Register is record
      --  Read-only. Indicates if there are outstanding reads for AXI port 0.
      RD_PORT_BUSY_0 : Boolean;
      --  Read-only. Indicates if there are outstanding reads for AXI port 1.
      RD_PORT_BUSY_1 : Boolean;
      --  unspecified
      Reserved_2_15  : Interfaces.Bit_Types.UInt14;
      --  Read-only. Indicates if there are outstanding writes for AXI port 0.
      WR_PORT_BUSY_0 : Boolean;
      --  Read-only. Indicates if there are outstanding writes for AXI port 1.
      WR_PORT_BUSY_1 : Boolean;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PSTAT_Register use record
      RD_PORT_BUSY_0 at 0 range 0 .. 0;
      RD_PORT_BUSY_1 at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      WR_PORT_BUSY_0 at 0 range 16 .. 16;
      WR_PORT_BUSY_1 at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  DDRCTRL port common configuration register
   type DDRCTRL_MP_PCCFG_Register is record
      --  Note: Programming mode: Static.
      GO2CRITICAL_EN  : Boolean := False;
      --  unspecified
      Reserved_1_3    : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Page match four limit
      PAGEMATCH_LIMIT : Boolean := False;
      --  unspecified
      Reserved_5_7    : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Burst length expansion mode
      BL_EXP_MODE     : Boolean := False;
      --  unspecified
      Reserved_9_31   : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCCFG_Register use record
      GO2CRITICAL_EN  at 0 range 0 .. 0;
      Reserved_1_3    at 0 range 1 .. 3;
      PAGEMATCH_LIMIT at 0 range 4 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      BL_EXP_MODE     at 0 range 8 .. 8;
      Reserved_9_31   at 0 range 9 .. 31;
   end record;

   subtype DDRCTRL_MP_PCFGR_0_RD_PORT_PRIORITY_Field is
     Interfaces.Bit_Types.UInt10;
   subtype DDRCTRL_MP_PCFGR_0_RRB_LOCK_THRESHOLD_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRCTRL port 0 configuration read register
   type DDRCTRL_MP_PCFGR_0_Register is record
      --  Initial load value of read aging counters
      RD_PORT_PRIORITY     : DDRCTRL_MP_PCFGR_0_RD_PORT_PRIORITY_Field :=
                              16#0#;
      --  unspecified
      Reserved_10_11       : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Aging function for the read channel enable
      RD_PORT_AGING_EN     : Boolean := False;
      --  AXI urgent sideband signal (arurgent) enable
      RD_PORT_URGENT_EN    : Boolean := False;
      --  Page match feature enable
      RD_PORT_PAGEMATCH_EN : Boolean := False;
      --  unspecified
      Reserved_15_19       : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Specifies the RRB lock threshold in configurations that disable read
      --  data interleaving.
      RRB_LOCK_THRESHOLD   : DDRCTRL_MP_PCFGR_0_RRB_LOCK_THRESHOLD_Field :=
                              16#0#;
      --  unspecified
      Reserved_24_31       : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCFGR_0_Register use record
      RD_PORT_PRIORITY     at 0 range 0 .. 9;
      Reserved_10_11       at 0 range 10 .. 11;
      RD_PORT_AGING_EN     at 0 range 12 .. 12;
      RD_PORT_URGENT_EN    at 0 range 13 .. 13;
      RD_PORT_PAGEMATCH_EN at 0 range 14 .. 14;
      Reserved_15_19       at 0 range 15 .. 19;
      RRB_LOCK_THRESHOLD   at 0 range 20 .. 23;
      Reserved_24_31       at 0 range 24 .. 31;
   end record;

   subtype DDRCTRL_MP_PCFGW_0_WR_PORT_PRIORITY_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRCTRL port 0 configuration write register
   type DDRCTRL_MP_PCFGW_0_Register is record
      --  Initial load value of write aging counters
      WR_PORT_PRIORITY     : DDRCTRL_MP_PCFGW_0_WR_PORT_PRIORITY_Field :=
                              16#0#;
      --  unspecified
      Reserved_10_11       : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Aging function enable for the write channel
      WR_PORT_AGING_EN     : Boolean := False;
      --  AXI urgent sideband signal (awurgent) enable
      WR_PORT_URGENT_EN    : Boolean := False;
      --  Page match feature enable
      WR_PORT_PAGEMATCH_EN : Boolean := True;
      --  unspecified
      Reserved_15_31       : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCFGW_0_Register use record
      WR_PORT_PRIORITY     at 0 range 0 .. 9;
      Reserved_10_11       at 0 range 10 .. 11;
      WR_PORT_AGING_EN     at 0 range 12 .. 12;
      WR_PORT_URGENT_EN    at 0 range 13 .. 13;
      WR_PORT_PAGEMATCH_EN at 0 range 14 .. 14;
      Reserved_15_31       at 0 range 15 .. 31;
   end record;

   --  DDRCTRL port 0 control register
   type DDRCTRL_MP_PCTRL_0_Register is record
      --  Enable the AXI port x.
      PORT_EN       : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCTRL_0_Register use record
      PORT_EN       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRCTRL_MP_PCFGQOS0_0_RQOS_MAP_LEVEL1_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_MP_PCFGQOS0_0_RQOS_MAP_REGION0_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_MP_PCFGQOS0_0_RQOS_MAP_REGION1_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRCTRL port 0 read QoS configuration 0 register
   type DDRCTRL_MP_PCFGQOS0_0_Register is record
      --  Separation level1 that gives the end of region 0 mapping
      RQOS_MAP_LEVEL1  : DDRCTRL_MP_PCFGQOS0_0_RQOS_MAP_LEVEL1_Field := 16#0#;
      --  unspecified
      Reserved_4_15    : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Traffic class of region 0
      RQOS_MAP_REGION0 : DDRCTRL_MP_PCFGQOS0_0_RQOS_MAP_REGION0_Field :=
                          16#0#;
      --  unspecified
      Reserved_18_19   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Traffic class of region 1
      RQOS_MAP_REGION1 : DDRCTRL_MP_PCFGQOS0_0_RQOS_MAP_REGION1_Field :=
                          16#0#;
      --  unspecified
      Reserved_22_31   : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCFGQOS0_0_Register use record
      RQOS_MAP_LEVEL1  at 0 range 0 .. 3;
      Reserved_4_15    at 0 range 4 .. 15;
      RQOS_MAP_REGION0 at 0 range 16 .. 17;
      Reserved_18_19   at 0 range 18 .. 19;
      RQOS_MAP_REGION1 at 0 range 20 .. 21;
      Reserved_22_31   at 0 range 22 .. 31;
   end record;

   subtype DDRCTRL_MP_PCFGQOS1_0_RQOS_MAP_TIMEOUTB_Field is
     Interfaces.Bit_Types.UInt11;
   subtype DDRCTRL_MP_PCFGQOS1_0_RQOS_MAP_TIMEOUTR_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRCTRL port 0 read QoS configuration 1 register
   type DDRCTRL_MP_PCFGQOS1_0_Register is record
      --  Timeout value for transactions mapped to blue address queue
      RQOS_MAP_TIMEOUTB : DDRCTRL_MP_PCFGQOS1_0_RQOS_MAP_TIMEOUTB_Field :=
                           16#0#;
      --  unspecified
      Reserved_11_15    : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Timeout value for transactions mapped to red address queue
      RQOS_MAP_TIMEOUTR : DDRCTRL_MP_PCFGQOS1_0_RQOS_MAP_TIMEOUTR_Field :=
                           16#0#;
      --  unspecified
      Reserved_27_31    : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCFGQOS1_0_Register use record
      RQOS_MAP_TIMEOUTB at 0 range 0 .. 10;
      Reserved_11_15    at 0 range 11 .. 15;
      RQOS_MAP_TIMEOUTR at 0 range 16 .. 26;
      Reserved_27_31    at 0 range 27 .. 31;
   end record;

   subtype DDRCTRL_MP_PCFGWQOS0_0_WQOS_MAP_LEVEL1_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_MP_PCFGWQOS0_0_WQOS_MAP_LEVEL2_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_MP_PCFGWQOS0_0_WQOS_MAP_REGION0_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_MP_PCFGWQOS0_0_WQOS_MAP_REGION1_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_MP_PCFGWQOS0_0_WQOS_MAP_REGION2_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRCTRL port 0 write QoS configuration 0 register
   type DDRCTRL_MP_PCFGWQOS0_0_Register is record
      --  Separation level indicating the end of region 0 mapping
      WQOS_MAP_LEVEL1  : DDRCTRL_MP_PCFGWQOS0_0_WQOS_MAP_LEVEL1_Field :=
                          16#0#;
      --  unspecified
      Reserved_4_7     : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Separation level2 that indicates the end of region 1 mapping
      WQOS_MAP_LEVEL2  : DDRCTRL_MP_PCFGWQOS0_0_WQOS_MAP_LEVEL2_Field :=
                          16#E#;
      --  unspecified
      Reserved_12_15   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Traffic class of region 0
      WQOS_MAP_REGION0 : DDRCTRL_MP_PCFGWQOS0_0_WQOS_MAP_REGION0_Field :=
                          16#0#;
      --  unspecified
      Reserved_18_19   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Traffic class of region 1
      WQOS_MAP_REGION1 : DDRCTRL_MP_PCFGWQOS0_0_WQOS_MAP_REGION1_Field :=
                          16#0#;
      --  unspecified
      Reserved_22_23   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Traffic class of region 2
      WQOS_MAP_REGION2 : DDRCTRL_MP_PCFGWQOS0_0_WQOS_MAP_REGION2_Field :=
                          16#0#;
      --  unspecified
      Reserved_26_31   : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCFGWQOS0_0_Register use record
      WQOS_MAP_LEVEL1  at 0 range 0 .. 3;
      Reserved_4_7     at 0 range 4 .. 7;
      WQOS_MAP_LEVEL2  at 0 range 8 .. 11;
      Reserved_12_15   at 0 range 12 .. 15;
      WQOS_MAP_REGION0 at 0 range 16 .. 17;
      Reserved_18_19   at 0 range 18 .. 19;
      WQOS_MAP_REGION1 at 0 range 20 .. 21;
      Reserved_22_23   at 0 range 22 .. 23;
      WQOS_MAP_REGION2 at 0 range 24 .. 25;
      Reserved_26_31   at 0 range 26 .. 31;
   end record;

   subtype DDRCTRL_MP_PCFGWQOS1_0_WQOS_MAP_TIMEOUT1_Field is
     Interfaces.Bit_Types.UInt11;
   subtype DDRCTRL_MP_PCFGWQOS1_0_WQOS_MAP_TIMEOUT2_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRCTRL port 0 write QoS configuration 1 register
   type DDRCTRL_MP_PCFGWQOS1_0_Register is record
      --  Timeout value for write transactions in region 0 and 1
      WQOS_MAP_TIMEOUT1 : DDRCTRL_MP_PCFGWQOS1_0_WQOS_MAP_TIMEOUT1_Field :=
                           16#0#;
      --  unspecified
      Reserved_11_15    : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Timeout value for write transactions in region 2
      WQOS_MAP_TIMEOUT2 : DDRCTRL_MP_PCFGWQOS1_0_WQOS_MAP_TIMEOUT2_Field :=
                           16#0#;
      --  unspecified
      Reserved_27_31    : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCFGWQOS1_0_Register use record
      WQOS_MAP_TIMEOUT1 at 0 range 0 .. 10;
      Reserved_11_15    at 0 range 11 .. 15;
      WQOS_MAP_TIMEOUT2 at 0 range 16 .. 26;
      Reserved_27_31    at 0 range 27 .. 31;
   end record;

   subtype DDRCTRL_MP_PCFGR_1_RD_PORT_PRIORITY_Field is
     Interfaces.Bit_Types.UInt10;
   subtype DDRCTRL_MP_PCFGR_1_RRB_LOCK_THRESHOLD_Field is
     Interfaces.Bit_Types.UInt4;

   --  DDRCTRL port 1 configuration read register
   type DDRCTRL_MP_PCFGR_1_Register is record
      --  Initial load value of read aging counters
      RD_PORT_PRIORITY     : DDRCTRL_MP_PCFGR_1_RD_PORT_PRIORITY_Field :=
                              16#0#;
      --  unspecified
      Reserved_10_11       : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Aging function for the read channel enable
      RD_PORT_AGING_EN     : Boolean := False;
      --  AXI urgent sideband signal (arurgent) enable
      RD_PORT_URGENT_EN    : Boolean := False;
      --  Page match feature enable
      RD_PORT_PAGEMATCH_EN : Boolean := False;
      --  unspecified
      Reserved_15_19       : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Specifies the RRB lock threshold in configurations that disable read
      --  data interleaving.
      RRB_LOCK_THRESHOLD   : DDRCTRL_MP_PCFGR_1_RRB_LOCK_THRESHOLD_Field :=
                              16#0#;
      --  unspecified
      Reserved_24_31       : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCFGR_1_Register use record
      RD_PORT_PRIORITY     at 0 range 0 .. 9;
      Reserved_10_11       at 0 range 10 .. 11;
      RD_PORT_AGING_EN     at 0 range 12 .. 12;
      RD_PORT_URGENT_EN    at 0 range 13 .. 13;
      RD_PORT_PAGEMATCH_EN at 0 range 14 .. 14;
      Reserved_15_19       at 0 range 15 .. 19;
      RRB_LOCK_THRESHOLD   at 0 range 20 .. 23;
      Reserved_24_31       at 0 range 24 .. 31;
   end record;

   subtype DDRCTRL_MP_PCFGW_1_WR_PORT_PRIORITY_Field is
     Interfaces.Bit_Types.UInt10;

   --  DDRCTRL port 1 configuration write register
   type DDRCTRL_MP_PCFGW_1_Register is record
      --  Initial load value of write aging counters
      WR_PORT_PRIORITY     : DDRCTRL_MP_PCFGW_1_WR_PORT_PRIORITY_Field :=
                              16#0#;
      --  unspecified
      Reserved_10_11       : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Aging function enable for the write channel
      WR_PORT_AGING_EN     : Boolean := False;
      --  AXI urgent sideband signal (awurgent) enable
      WR_PORT_URGENT_EN    : Boolean := False;
      --  Page match feature enable
      WR_PORT_PAGEMATCH_EN : Boolean := True;
      --  unspecified
      Reserved_15_31       : Interfaces.Bit_Types.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCFGW_1_Register use record
      WR_PORT_PRIORITY     at 0 range 0 .. 9;
      Reserved_10_11       at 0 range 10 .. 11;
      WR_PORT_AGING_EN     at 0 range 12 .. 12;
      WR_PORT_URGENT_EN    at 0 range 13 .. 13;
      WR_PORT_PAGEMATCH_EN at 0 range 14 .. 14;
      Reserved_15_31       at 0 range 15 .. 31;
   end record;

   --  DDRCTRL port 1 control register
   type DDRCTRL_MP_PCTRL_1_Register is record
      --  Enable the AXI port x.
      PORT_EN       : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCTRL_1_Register use record
      PORT_EN       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype DDRCTRL_MP_PCFGQOS0_1_RQOS_MAP_LEVEL1_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_MP_PCFGQOS0_1_RQOS_MAP_REGION0_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_MP_PCFGQOS0_1_RQOS_MAP_REGION1_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRCTRL port 1 read QoS configuration 0 register
   type DDRCTRL_MP_PCFGQOS0_1_Register is record
      --  Separation level1 that gives the end of region 0 mapping
      RQOS_MAP_LEVEL1  : DDRCTRL_MP_PCFGQOS0_1_RQOS_MAP_LEVEL1_Field := 16#0#;
      --  unspecified
      Reserved_4_15    : Interfaces.Bit_Types.UInt12 := 16#0#;
      --  Traffic class of region 0
      RQOS_MAP_REGION0 : DDRCTRL_MP_PCFGQOS0_1_RQOS_MAP_REGION0_Field :=
                          16#0#;
      --  unspecified
      Reserved_18_19   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Traffic class of region 1
      RQOS_MAP_REGION1 : DDRCTRL_MP_PCFGQOS0_1_RQOS_MAP_REGION1_Field :=
                          16#0#;
      --  unspecified
      Reserved_22_31   : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCFGQOS0_1_Register use record
      RQOS_MAP_LEVEL1  at 0 range 0 .. 3;
      Reserved_4_15    at 0 range 4 .. 15;
      RQOS_MAP_REGION0 at 0 range 16 .. 17;
      Reserved_18_19   at 0 range 18 .. 19;
      RQOS_MAP_REGION1 at 0 range 20 .. 21;
      Reserved_22_31   at 0 range 22 .. 31;
   end record;

   subtype DDRCTRL_MP_PCFGQOS1_1_RQOS_MAP_TIMEOUTB_Field is
     Interfaces.Bit_Types.UInt11;
   subtype DDRCTRL_MP_PCFGQOS1_1_RQOS_MAP_TIMEOUTR_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRCTRL port 1 read QoS configuration 1 register
   type DDRCTRL_MP_PCFGQOS1_1_Register is record
      --  Timeout value for transactions mapped to blue address queue
      RQOS_MAP_TIMEOUTB : DDRCTRL_MP_PCFGQOS1_1_RQOS_MAP_TIMEOUTB_Field :=
                           16#0#;
      --  unspecified
      Reserved_11_15    : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Timeout value for transactions mapped to red address queue
      RQOS_MAP_TIMEOUTR : DDRCTRL_MP_PCFGQOS1_1_RQOS_MAP_TIMEOUTR_Field :=
                           16#0#;
      --  unspecified
      Reserved_27_31    : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCFGQOS1_1_Register use record
      RQOS_MAP_TIMEOUTB at 0 range 0 .. 10;
      Reserved_11_15    at 0 range 11 .. 15;
      RQOS_MAP_TIMEOUTR at 0 range 16 .. 26;
      Reserved_27_31    at 0 range 27 .. 31;
   end record;

   subtype DDRCTRL_MP_PCFGWQOS0_1_WQOS_MAP_LEVEL1_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_MP_PCFGWQOS0_1_WQOS_MAP_LEVEL2_Field is
     Interfaces.Bit_Types.UInt4;
   subtype DDRCTRL_MP_PCFGWQOS0_1_WQOS_MAP_REGION0_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_MP_PCFGWQOS0_1_WQOS_MAP_REGION1_Field is
     Interfaces.Bit_Types.UInt2;
   subtype DDRCTRL_MP_PCFGWQOS0_1_WQOS_MAP_REGION2_Field is
     Interfaces.Bit_Types.UInt2;

   --  DDRCTRL port 1 write QoS configuration 0 register
   type DDRCTRL_MP_PCFGWQOS0_1_Register is record
      --  Separation level indicating the end of region 0 mapping
      WQOS_MAP_LEVEL1  : DDRCTRL_MP_PCFGWQOS0_1_WQOS_MAP_LEVEL1_Field :=
                          16#0#;
      --  unspecified
      Reserved_4_7     : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Separation level2 that indicates the end of region 1 mapping
      WQOS_MAP_LEVEL2  : DDRCTRL_MP_PCFGWQOS0_1_WQOS_MAP_LEVEL2_Field :=
                          16#E#;
      --  unspecified
      Reserved_12_15   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Traffic class of region 0
      WQOS_MAP_REGION0 : DDRCTRL_MP_PCFGWQOS0_1_WQOS_MAP_REGION0_Field :=
                          16#0#;
      --  unspecified
      Reserved_18_19   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Traffic class of region 1
      WQOS_MAP_REGION1 : DDRCTRL_MP_PCFGWQOS0_1_WQOS_MAP_REGION1_Field :=
                          16#0#;
      --  unspecified
      Reserved_22_23   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Traffic class of region 2
      WQOS_MAP_REGION2 : DDRCTRL_MP_PCFGWQOS0_1_WQOS_MAP_REGION2_Field :=
                          16#0#;
      --  unspecified
      Reserved_26_31   : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCFGWQOS0_1_Register use record
      WQOS_MAP_LEVEL1  at 0 range 0 .. 3;
      Reserved_4_7     at 0 range 4 .. 7;
      WQOS_MAP_LEVEL2  at 0 range 8 .. 11;
      Reserved_12_15   at 0 range 12 .. 15;
      WQOS_MAP_REGION0 at 0 range 16 .. 17;
      Reserved_18_19   at 0 range 18 .. 19;
      WQOS_MAP_REGION1 at 0 range 20 .. 21;
      Reserved_22_23   at 0 range 22 .. 23;
      WQOS_MAP_REGION2 at 0 range 24 .. 25;
      Reserved_26_31   at 0 range 26 .. 31;
   end record;

   subtype DDRCTRL_MP_PCFGWQOS1_1_WQOS_MAP_TIMEOUT1_Field is
     Interfaces.Bit_Types.UInt11;
   subtype DDRCTRL_MP_PCFGWQOS1_1_WQOS_MAP_TIMEOUT2_Field is
     Interfaces.Bit_Types.UInt11;

   --  DDRCTRL port 1 write QoS configuration 1 register
   type DDRCTRL_MP_PCFGWQOS1_1_Register is record
      --  Timeout value for write transactions in region 0 and 1
      WQOS_MAP_TIMEOUT1 : DDRCTRL_MP_PCFGWQOS1_1_WQOS_MAP_TIMEOUT1_Field :=
                           16#0#;
      --  unspecified
      Reserved_11_15    : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Timeout value for write transactions in region 2
      WQOS_MAP_TIMEOUT2 : DDRCTRL_MP_PCFGWQOS1_1_WQOS_MAP_TIMEOUT2_Field :=
                           16#0#;
      --  unspecified
      Reserved_27_31    : Interfaces.Bit_Types.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRCTRL_MP_PCFGWQOS1_1_Register use record
      WQOS_MAP_TIMEOUT1 at 0 range 0 .. 10;
      Reserved_11_15    at 0 range 11 .. 15;
      WQOS_MAP_TIMEOUT2 at 0 range 16 .. 26;
      Reserved_27_31    at 0 range 27 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DDRCTRL register block
   type DDRCTRL_Peripheral is record
      --  DDRCTRL master0 register
      DDRCTRL_REGS_MSTR             : aliased DDRCTRL_REGS_MSTR_Register;
      --  DDRCTRL operating mode status register
      DDRCTRL_REGS_STAT             : aliased DDRCTRL_REGS_STAT_Register;
      --  DDRCTRL mode read/write control 0 register
      DDRCTRL_REGS_MRCTRL0          : aliased DDRCTRL_REGS_MRCTRL0_Register;
      --  DDRCTRL mode read/write control 1 register
      DDRCTRL_REGS_MRCTRL1          : aliased DDRCTRL_REGS_MRCTRL1_Register;
      --  DDRCTRL mode register read/write status register
      DDRCTRL_REGS_MRSTAT           : aliased DDRCTRL_REGS_MRSTAT_Register;
      --  DDRCTRL mode register read/write control 2 register
      DDRCTRL_REGS_MRCTRL2          : aliased Interfaces.Bit_Types.UInt32;
      --  DDRCTRL temperature derate enable register
      DDRCTRL_REGS_DERATEEN         : aliased DDRCTRL_REGS_DERATEEN_Register;
      --  DDRCTRL temperature derate interval register
      DDRCTRL_REGS_DERATEINT        : aliased Interfaces.Bit_Types.UInt32;
      --  DDRCTRL temperature derate control register
      DDRCTRL_REGS_DERATECTL        : aliased DDRCTRL_REGS_DERATECTL_Register;
      --  DDRCTRL low-power control register
      DDRCTRL_REGS_PWRCTL           : aliased DDRCTRL_REGS_PWRCTL_Register;
      --  DDRCTRL low-power timing register
      DDRCTRL_REGS_PWRTMG           : aliased DDRCTRL_REGS_PWRTMG_Register;
      --  DDRCTRL hardware low-power control register
      DDRCTRL_REGS_HWLPCTL          : aliased DDRCTRL_REGS_HWLPCTL_Register;
      --  DDRCTRL refresh control 0 register
      DDRCTRL_REGS_RFSHCTL0         : aliased DDRCTRL_REGS_RFSHCTL0_Register;
      --  DDRCTRL refresh control 1 register
      DDRCTRL_REGS_RFSHCTL1         : aliased DDRCTRL_REGS_RFSHCTL1_Register;
      --  DDRCTRL refresh control 3 register
      DDRCTRL_REGS_RFSHCTL3         : aliased DDRCTRL_REGS_RFSHCTL3_Register;
      --  DDRCTRL refresh timing register
      DDRCTRL_REGS_RFSHTMG          : aliased DDRCTRL_REGS_RFSHTMG_Register;
      --  DDRCTRL refresh timing1 register
      DDRCTRL_REGS_RFSHTMG1         : aliased DDRCTRL_REGS_RFSHTMG1_Register;
      --  DDRCTRL SDRAM initialization 0 register
      DDRCTRL_REGS_INIT0            : aliased DDRCTRL_REGS_INIT0_Register;
      --  DDRCTRL SDRAM initialization 1 register
      DDRCTRL_REGS_INIT1            : aliased DDRCTRL_REGS_INIT1_Register;
      --  DDRCTRL SDRAM initialization 3 register
      DDRCTRL_REGS_INIT3            : aliased DDRCTRL_REGS_INIT3_Register;
      --  DDRCTRL SDRAM initialization 4 register
      DDRCTRL_REGS_INIT4            : aliased DDRCTRL_REGS_INIT4_Register;
      --  DDRCTRL SDRAM initialization 5 register
      DDRCTRL_REGS_INIT5            : aliased DDRCTRL_REGS_INIT5_Register;
      --  DDRCTRL SDRAM initialization 6 register
      DDRCTRL_REGS_INIT6            : aliased DDRCTRL_REGS_INIT6_Register;
      --  DDRCTRL SDRAM initialization 7 register
      DDRCTRL_REGS_INIT7            : aliased DDRCTRL_REGS_INIT7_Register;
      --  DDRCTRL rank control register
      DDRCTRL_REGS_RANKCTL          : aliased DDRCTRL_REGS_RANKCTL_Register;
      --  Rank control 1 register
      DDRCTRL_REGS_RANKCTL1         : aliased DDRCTRL_REGS_RANKCTL1_Register;
      --  DDRCTRL SDRAM timing 0 register
      DDRCTRL_REGS_DRAMTMG0         : aliased DDRCTRL_REGS_DRAMTMG0_Register;
      --  DDRCTRL SDRAM timing 1 register
      DDRCTRL_REGS_DRAMTMG1         : aliased DDRCTRL_REGS_DRAMTMG1_Register;
      --  DDRCTRL SDRAM timing 2 register
      DDRCTRL_REGS_DRAMTMG2         : aliased DDRCTRL_REGS_DRAMTMG2_Register;
      --  DDRCTRL SDRAM timing 3 register
      DDRCTRL_REGS_DRAMTMG3         : aliased DDRCTRL_REGS_DRAMTMG3_Register;
      --  DDRCTRL SDRAM timing 4 register
      DDRCTRL_REGS_DRAMTMG4         : aliased DDRCTRL_REGS_DRAMTMG4_Register;
      --  DDRCTRL SDRAM timing 5 register
      DDRCTRL_REGS_DRAMTMG5         : aliased DDRCTRL_REGS_DRAMTMG5_Register;
      --  DDRCTRL SDRAM timing 6 register
      DDRCTRL_REGS_DRAMTMG6         : aliased DDRCTRL_REGS_DRAMTMG6_Register;
      --  DDRCTRL SDRAM timing 7 register
      DDRCTRL_REGS_DRAMTMG7         : aliased DDRCTRL_REGS_DRAMTMG7_Register;
      --  DDRCTRL SDRAM timing 8 register
      DDRCTRL_REGS_DRAMTMG8         : aliased DDRCTRL_REGS_DRAMTMG8_Register;
      --  DDRCTRL SDRAM timing 9 register
      DDRCTRL_REGS_DRAMTMG9         : aliased DDRCTRL_REGS_DRAMTMG9_Register;
      --  DDRCTRL SDRAM timing 10 register
      DDRCTRL_REGS_DRAMTMG10        : aliased DDRCTRL_REGS_DRAMTMG10_Register;
      --  DDRCTRL SDRAM timing 11 register
      DDRCTRL_REGS_DRAMTMG11        : aliased DDRCTRL_REGS_DRAMTMG11_Register;
      --  DDRCTRL SDRAM timing 12 register
      DDRCTRL_REGS_DRAMTMG12        : aliased DDRCTRL_REGS_DRAMTMG12_Register;
      --  DDRCTRL SDRAM timing 13 register
      DDRCTRL_REGS_DRAMTMG13        : aliased DDRCTRL_REGS_DRAMTMG13_Register;
      --  DDRCTRL SDRAM timing 14 register
      DDRCTRL_REGS_DRAMTMG14        : aliased DDRCTRL_REGS_DRAMTMG14_Register;
      --  DDRCTRL SDRAM timing 15 register
      DDRCTRL_REGS_DRAMTMG15        : aliased DDRCTRL_REGS_DRAMTMG15_Register;
      --  DDRCTRL ZQ control 0 register
      DDRCTRL_REGS_ZQCTL0           : aliased DDRCTRL_REGS_ZQCTL0_Register;
      --  DDRCTRL ZQ control 1 register
      DDRCTRL_REGS_ZQCTL1           : aliased DDRCTRL_REGS_ZQCTL1_Register;
      --  DDRCTRL ZQ control 2 register
      DDRCTRL_REGS_ZQCTL2           : aliased DDRCTRL_REGS_ZQCTL2_Register;
      --  DDRCTRL ZQ status register
      DDRCTRL_REGS_ZQSTAT           : aliased DDRCTRL_REGS_ZQSTAT_Register;
      --  DDRCTRL DFI timing 0 register
      DDRCTRL_REGS_DFITMG0          : aliased DDRCTRL_REGS_DFITMG0_Register;
      --  DDRCTRL DFI timing 1 register
      DDRCTRL_REGS_DFITMG1          : aliased DDRCTRL_REGS_DFITMG1_Register;
      --  DDRCTRL DFI low-power configuration 0 register
      DDRCTRL_REGS_DFILPCFG0        : aliased DDRCTRL_REGS_DFILPCFG0_Register;
      --  DDRCTRL DFI update 0 register
      DDRCTRL_REGS_DFIUPD0          : aliased DDRCTRL_REGS_DFIUPD0_Register;
      --  DDRCTRL DFI update 1 register
      DDRCTRL_REGS_DFIUPD1          : aliased DDRCTRL_REGS_DFIUPD1_Register;
      --  DDRCTRL DFI update 2 register
      DDRCTRL_REGS_DFIUPD2          : aliased DDRCTRL_REGS_DFIUPD2_Register;
      --  DDRCTRL DFI miscellaneous control register
      DDRCTRL_REGS_DFIMISC          : aliased DDRCTRL_REGS_DFIMISC_Register;
      --  DDRCTRL DFI timing 2 register
      DDRCTRL_REGS_DFITMG2          : aliased DDRCTRL_REGS_DFITMG2_Register;
      --  DDRCTRL DFI timing 3 register
      DDRCTRL_REGS_DFITMG3          : aliased DDRCTRL_REGS_DFITMG3_Register;
      --  DDRCTRL DFI status register
      DDRCTRL_REGS_DFISTAT          : aliased DDRCTRL_REGS_DFISTAT_Register;
      --  DDRCTRL DM/DBI control register
      DDRCTRL_REGS_DBICTL           : aliased DDRCTRL_REGS_DBICTL_Register;
      --  DDRCTRL DFI PHY master register
      DDRCTRL_REGS_DFIPHYMSTR       : aliased DDRCTRL_REGS_DFIPHYMSTR_Register;
      --  DDRCTRL address map 0 register
      DDRCTRL_REGS_ADDRMAP0         : aliased DDRCTRL_REGS_ADDRMAP0_Register;
      --  DDRCTRL address map 1 register
      DDRCTRL_REGS_ADDRMAP1         : aliased DDRCTRL_REGS_ADDRMAP1_Register;
      --  DDRCTRL address map 2 register
      DDRCTRL_REGS_ADDRMAP2         : aliased DDRCTRL_REGS_ADDRMAP2_Register;
      --  DDRCTRL address map 3 register
      DDRCTRL_REGS_ADDRMAP3         : aliased DDRCTRL_REGS_ADDRMAP3_Register;
      --  DDRCTRL address map 4 register
      DDRCTRL_REGS_ADDRMAP4         : aliased DDRCTRL_REGS_ADDRMAP4_Register;
      --  DDRCTRL address map 5 register
      DDRCTRL_REGS_ADDRMAP5         : aliased DDRCTRL_REGS_ADDRMAP5_Register;
      --  DDRCTRL address map 6 register
      DDRCTRL_REGS_ADDRMAP6         : aliased DDRCTRL_REGS_ADDRMAP6_Register;
      --  DDRCTRL address map 7 register
      DDRCTRL_REGS_ADDRMAP7         : aliased DDRCTRL_REGS_ADDRMAP7_Register;
      --  DDRCTRL address map 8 register
      DDRCTRL_REGS_ADDRMAP8         : aliased DDRCTRL_REGS_ADDRMAP8_Register;
      --  DDRCTRL address map 9 register
      DDRCTRL_REGS_ADDRMAP9         : aliased DDRCTRL_REGS_ADDRMAP9_Register;
      --  DDRCTRL address map 10 register
      DDRCTRL_REGS_ADDRMAP10        : aliased DDRCTRL_REGS_ADDRMAP10_Register;
      --  DDRCTRL address map 11 register
      DDRCTRL_REGS_ADDRMAP11        : aliased DDRCTRL_REGS_ADDRMAP11_Register;
      --  DDRCTRL ODT configuration register
      DDRCTRL_REGS_ODTCFG           : aliased DDRCTRL_REGS_ODTCFG_Register;
      --  DDRCTRL ODT/rank map register
      DDRCTRL_REGS_ODTMAP           : aliased DDRCTRL_REGS_ODTMAP_Register;
      --  DDRCTRL scheduler control register
      DDRCTRL_REGS_SCHED            : aliased DDRCTRL_REGS_SCHED_Register;
      --  DDRCTRL scheduler control 1 register
      DDRCTRL_REGS_SCHED1           : aliased DDRCTRL_REGS_SCHED1_Register;
      --  DDRCTRL high priority read CAM 1 register
      DDRCTRL_REGS_PERFHPR1         : aliased DDRCTRL_REGS_PERFHPR1_Register;
      --  DDRCTRL low-priority read CAM 1 register
      DDRCTRL_REGS_PERFLPR1         : aliased DDRCTRL_REGS_PERFLPR1_Register;
      --  DDRCTRL write CAM 1 register
      DDRCTRL_REGS_PERFWR1          : aliased DDRCTRL_REGS_PERFWR1_Register;
      --  Scheduler control 3 register
      DDRCTRL_REGS_SCHED3           : aliased DDRCTRL_REGS_SCHED3_Register;
      --  Scheduler control 4 register
      DDRCTRL_REGS_SCHED4           : aliased DDRCTRL_REGS_SCHED4_Register;
      --  DDRCTRL debug 0 register
      DDRCTRL_REGS_DBG0             : aliased DDRCTRL_REGS_DBG0_Register;
      --  DDRCTRL debug 1 register
      DDRCTRL_REGS_DBG1             : aliased DDRCTRL_REGS_DBG1_Register;
      --  DDRCTRL CAM debug register
      DDRCTRL_REGS_DBGCAM           : aliased DDRCTRL_REGS_DBGCAM_Register;
      --  DDRCTRL command debug register
      DDRCTRL_REGS_DBGCMD           : aliased DDRCTRL_REGS_DBGCMD_Register;
      --  DDRCTRL status debug register
      DDRCTRL_REGS_DBGSTAT          : aliased DDRCTRL_REGS_DBGSTAT_Register;
      --  DDRCTRL software programming control enable register
      DDRCTRL_REGS_SWCTL            : aliased DDRCTRL_REGS_SWCTL_Register;
      --  DDRCTRL software programming control status register
      DDRCTRL_REGS_SWSTAT           : aliased DDRCTRL_REGS_SWSTAT_Register;
      --  DDRCTRL statics write enable register
      DDRCTRL_REGS_SWCTLSTATIC      : aliased DDRCTRL_REGS_SWCTLSTATIC_Register;
      --  DDRCTRL AXI poison configuration register
      DDRCTRL_REGS_POISONCFG        : aliased DDRCTRL_REGS_POISONCFG_Register;
      --  DDRCTRL AXI poison status register
      DDRCTRL_REGS_POISONSTAT       : aliased DDRCTRL_REGS_POISONSTAT_Register;
      --  DDRCTRL temperature derate status register
      DDRCTRL_REGS_DERATESTAT       : aliased DDRCTRL_REGS_DERATESTAT_Register;
      --  DDRCTRL port status register
      DDRCTRL_MP_PSTAT              : aliased DDRCTRL_MP_PSTAT_Register;
      --  DDRCTRL port common configuration register
      DDRCTRL_MP_PCCFG              : aliased DDRCTRL_MP_PCCFG_Register;
      --  DDRCTRL port 0 configuration read register
      DDRCTRL_MP_PCFGR_0            : aliased DDRCTRL_MP_PCFGR_0_Register;
      --  DDRCTRL port 0 configuration write register
      DDRCTRL_MP_PCFGW_0            : aliased DDRCTRL_MP_PCFGW_0_Register;
      --  DDRCTRL port 0 control register
      DDRCTRL_MP_PCTRL_0            : aliased DDRCTRL_MP_PCTRL_0_Register;
      --  DDRCTRL port 0 read QoS configuration 0 register
      DDRCTRL_MP_PCFGQOS0_0         : aliased DDRCTRL_MP_PCFGQOS0_0_Register;
      --  DDRCTRL port 0 read QoS configuration 1 register
      DDRCTRL_MP_PCFGQOS1_0         : aliased DDRCTRL_MP_PCFGQOS1_0_Register;
      --  DDRCTRL port 0 write QoS configuration 0 register
      DDRCTRL_MP_PCFGWQOS0_0        : aliased DDRCTRL_MP_PCFGWQOS0_0_Register;
      --  DDRCTRL port 0 write QoS configuration 1 register
      DDRCTRL_MP_PCFGWQOS1_0        : aliased DDRCTRL_MP_PCFGWQOS1_0_Register;
      --  DDRCTRL port 1 configuration read register
      DDRCTRL_MP_PCFGR_1            : aliased DDRCTRL_MP_PCFGR_1_Register;
      --  DDRCTRL port 1 configuration write register
      DDRCTRL_MP_PCFGW_1            : aliased DDRCTRL_MP_PCFGW_1_Register;
      --  DDRCTRL port 1 control register
      DDRCTRL_MP_PCTRL_1            : aliased DDRCTRL_MP_PCTRL_1_Register;
      --  DDRCTRL port 1 read QoS configuration 0 register
      DDRCTRL_MP_PCFGQOS0_1         : aliased DDRCTRL_MP_PCFGQOS0_1_Register;
      --  DDRCTRL port 1 read QoS configuration 1 register
      DDRCTRL_MP_PCFGQOS1_1         : aliased DDRCTRL_MP_PCFGQOS1_1_Register;
      --  DDRCTRL port 1 write QoS configuration 0 register
      DDRCTRL_MP_PCFGWQOS0_1        : aliased DDRCTRL_MP_PCFGWQOS0_1_Register;
      --  DDRCTRL port 1 write QoS configuration 1 register
      DDRCTRL_MP_PCFGWQOS1_1        : aliased DDRCTRL_MP_PCFGWQOS1_1_Register;
      --  DDRCTRL version number register
      DDRCTRL_MP_DDRCTRL_VER_NUMBER : aliased Interfaces.Bit_Types.UInt32;
      --  DDRCTRL version type register
      DDRCTRL_MP_DDRCTRL_VER_TYPE   : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for DDRCTRL_Peripheral use record
      DDRCTRL_REGS_MSTR             at 16#0# range 0 .. 31;
      DDRCTRL_REGS_STAT             at 16#4# range 0 .. 31;
      DDRCTRL_REGS_MRCTRL0          at 16#10# range 0 .. 31;
      DDRCTRL_REGS_MRCTRL1          at 16#14# range 0 .. 31;
      DDRCTRL_REGS_MRSTAT           at 16#18# range 0 .. 31;
      DDRCTRL_REGS_MRCTRL2          at 16#1C# range 0 .. 31;
      DDRCTRL_REGS_DERATEEN         at 16#20# range 0 .. 31;
      DDRCTRL_REGS_DERATEINT        at 16#24# range 0 .. 31;
      DDRCTRL_REGS_DERATECTL        at 16#2C# range 0 .. 31;
      DDRCTRL_REGS_PWRCTL           at 16#30# range 0 .. 31;
      DDRCTRL_REGS_PWRTMG           at 16#34# range 0 .. 31;
      DDRCTRL_REGS_HWLPCTL          at 16#38# range 0 .. 31;
      DDRCTRL_REGS_RFSHCTL0         at 16#50# range 0 .. 31;
      DDRCTRL_REGS_RFSHCTL1         at 16#54# range 0 .. 31;
      DDRCTRL_REGS_RFSHCTL3         at 16#60# range 0 .. 31;
      DDRCTRL_REGS_RFSHTMG          at 16#64# range 0 .. 31;
      DDRCTRL_REGS_RFSHTMG1         at 16#68# range 0 .. 31;
      DDRCTRL_REGS_INIT0            at 16#D0# range 0 .. 31;
      DDRCTRL_REGS_INIT1            at 16#D4# range 0 .. 31;
      DDRCTRL_REGS_INIT3            at 16#DC# range 0 .. 31;
      DDRCTRL_REGS_INIT4            at 16#E0# range 0 .. 31;
      DDRCTRL_REGS_INIT5            at 16#E4# range 0 .. 31;
      DDRCTRL_REGS_INIT6            at 16#E8# range 0 .. 31;
      DDRCTRL_REGS_INIT7            at 16#EC# range 0 .. 31;
      DDRCTRL_REGS_RANKCTL          at 16#F4# range 0 .. 31;
      DDRCTRL_REGS_RANKCTL1         at 16#F8# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG0         at 16#100# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG1         at 16#104# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG2         at 16#108# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG3         at 16#10C# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG4         at 16#110# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG5         at 16#114# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG6         at 16#118# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG7         at 16#11C# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG8         at 16#120# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG9         at 16#124# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG10        at 16#128# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG11        at 16#12C# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG12        at 16#130# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG13        at 16#134# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG14        at 16#138# range 0 .. 31;
      DDRCTRL_REGS_DRAMTMG15        at 16#13C# range 0 .. 31;
      DDRCTRL_REGS_ZQCTL0           at 16#180# range 0 .. 31;
      DDRCTRL_REGS_ZQCTL1           at 16#184# range 0 .. 31;
      DDRCTRL_REGS_ZQCTL2           at 16#188# range 0 .. 31;
      DDRCTRL_REGS_ZQSTAT           at 16#18C# range 0 .. 31;
      DDRCTRL_REGS_DFITMG0          at 16#190# range 0 .. 31;
      DDRCTRL_REGS_DFITMG1          at 16#194# range 0 .. 31;
      DDRCTRL_REGS_DFILPCFG0        at 16#198# range 0 .. 31;
      DDRCTRL_REGS_DFIUPD0          at 16#1A0# range 0 .. 31;
      DDRCTRL_REGS_DFIUPD1          at 16#1A4# range 0 .. 31;
      DDRCTRL_REGS_DFIUPD2          at 16#1A8# range 0 .. 31;
      DDRCTRL_REGS_DFIMISC          at 16#1B0# range 0 .. 31;
      DDRCTRL_REGS_DFITMG2          at 16#1B4# range 0 .. 31;
      DDRCTRL_REGS_DFITMG3          at 16#1B8# range 0 .. 31;
      DDRCTRL_REGS_DFISTAT          at 16#1BC# range 0 .. 31;
      DDRCTRL_REGS_DBICTL           at 16#1C0# range 0 .. 31;
      DDRCTRL_REGS_DFIPHYMSTR       at 16#1C4# range 0 .. 31;
      DDRCTRL_REGS_ADDRMAP0         at 16#200# range 0 .. 31;
      DDRCTRL_REGS_ADDRMAP1         at 16#204# range 0 .. 31;
      DDRCTRL_REGS_ADDRMAP2         at 16#208# range 0 .. 31;
      DDRCTRL_REGS_ADDRMAP3         at 16#20C# range 0 .. 31;
      DDRCTRL_REGS_ADDRMAP4         at 16#210# range 0 .. 31;
      DDRCTRL_REGS_ADDRMAP5         at 16#214# range 0 .. 31;
      DDRCTRL_REGS_ADDRMAP6         at 16#218# range 0 .. 31;
      DDRCTRL_REGS_ADDRMAP7         at 16#21C# range 0 .. 31;
      DDRCTRL_REGS_ADDRMAP8         at 16#220# range 0 .. 31;
      DDRCTRL_REGS_ADDRMAP9         at 16#224# range 0 .. 31;
      DDRCTRL_REGS_ADDRMAP10        at 16#228# range 0 .. 31;
      DDRCTRL_REGS_ADDRMAP11        at 16#22C# range 0 .. 31;
      DDRCTRL_REGS_ODTCFG           at 16#240# range 0 .. 31;
      DDRCTRL_REGS_ODTMAP           at 16#244# range 0 .. 31;
      DDRCTRL_REGS_SCHED            at 16#250# range 0 .. 31;
      DDRCTRL_REGS_SCHED1           at 16#254# range 0 .. 31;
      DDRCTRL_REGS_PERFHPR1         at 16#25C# range 0 .. 31;
      DDRCTRL_REGS_PERFLPR1         at 16#264# range 0 .. 31;
      DDRCTRL_REGS_PERFWR1          at 16#26C# range 0 .. 31;
      DDRCTRL_REGS_SCHED3           at 16#270# range 0 .. 31;
      DDRCTRL_REGS_SCHED4           at 16#274# range 0 .. 31;
      DDRCTRL_REGS_DBG0             at 16#300# range 0 .. 31;
      DDRCTRL_REGS_DBG1             at 16#304# range 0 .. 31;
      DDRCTRL_REGS_DBGCAM           at 16#308# range 0 .. 31;
      DDRCTRL_REGS_DBGCMD           at 16#30C# range 0 .. 31;
      DDRCTRL_REGS_DBGSTAT          at 16#310# range 0 .. 31;
      DDRCTRL_REGS_SWCTL            at 16#320# range 0 .. 31;
      DDRCTRL_REGS_SWSTAT           at 16#324# range 0 .. 31;
      DDRCTRL_REGS_SWCTLSTATIC      at 16#328# range 0 .. 31;
      DDRCTRL_REGS_POISONCFG        at 16#36C# range 0 .. 31;
      DDRCTRL_REGS_POISONSTAT       at 16#370# range 0 .. 31;
      DDRCTRL_REGS_DERATESTAT       at 16#3F0# range 0 .. 31;
      DDRCTRL_MP_PSTAT              at 16#3FC# range 0 .. 31;
      DDRCTRL_MP_PCCFG              at 16#400# range 0 .. 31;
      DDRCTRL_MP_PCFGR_0            at 16#404# range 0 .. 31;
      DDRCTRL_MP_PCFGW_0            at 16#408# range 0 .. 31;
      DDRCTRL_MP_PCTRL_0            at 16#490# range 0 .. 31;
      DDRCTRL_MP_PCFGQOS0_0         at 16#494# range 0 .. 31;
      DDRCTRL_MP_PCFGQOS1_0         at 16#498# range 0 .. 31;
      DDRCTRL_MP_PCFGWQOS0_0        at 16#49C# range 0 .. 31;
      DDRCTRL_MP_PCFGWQOS1_0        at 16#4A0# range 0 .. 31;
      DDRCTRL_MP_PCFGR_1            at 16#4B4# range 0 .. 31;
      DDRCTRL_MP_PCFGW_1            at 16#4B8# range 0 .. 31;
      DDRCTRL_MP_PCTRL_1            at 16#540# range 0 .. 31;
      DDRCTRL_MP_PCFGQOS0_1         at 16#544# range 0 .. 31;
      DDRCTRL_MP_PCFGQOS1_1         at 16#548# range 0 .. 31;
      DDRCTRL_MP_PCFGWQOS0_1        at 16#54C# range 0 .. 31;
      DDRCTRL_MP_PCFGWQOS1_1        at 16#550# range 0 .. 31;
      DDRCTRL_MP_DDRCTRL_VER_NUMBER at 16#FF0# range 0 .. 31;
      DDRCTRL_MP_DDRCTRL_VER_TYPE   at 16#FF4# range 0 .. 31;
   end record;

   --  DDRCTRL register block
   DDRCTRL_Periph : aliased DDRCTRL_Peripheral
     with Import, Address => DDRCTRL_Base;

   --  DDRCTRL register block
   DDRCTRL_S_Periph : aliased DDRCTRL_Peripheral
     with Import, Address => DDRCTRL_S_Base;

end Interfaces.STM32.DDRCTRL;
