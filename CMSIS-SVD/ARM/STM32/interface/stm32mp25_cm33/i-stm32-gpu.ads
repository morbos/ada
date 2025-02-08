--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.GPU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype GPU_AQHICLOCKCONTROL_FSCALE_VAL_Field is Interfaces.Bit_Types.UInt7;
   subtype GPU_AQHICLOCKCONTROL_MULTI_PIPE_REG_SELECT_Field is
     Interfaces.Bit_Types.UInt4;

   --  GPU AQ Hi clock control register
   type GPU_AQHICLOCKCONTROL_Register is record
      --  Clock 2D Disable. The AXI interface clock is the only block not
      --  stalled.
      CLK3D_DIS                      : Boolean := False;
      --  Clock 2D Disable. The AXI interface clock is the only block not
      --  stalled.
      CLK2D_DIS                      : Boolean := False;
      --  Core clock frequency scale value
      FSCALE_VAL                     : GPU_AQHICLOCKCONTROL_FSCALE_VAL_Field :=
                                        16#40#;
      --  Core clock frequency scale value enable. Writing a 1 to this bit
      --  updates the frequency scale factor with the value FSCALE_VAL[6:0].
      --  The bit must be set back to 0 after that. If this bit is set and
      --  FSCALE_VAL=0 (an invalid combination), the HREADYOUT output signal
      --  gets stuck to 0.
      FSCALE_CMD_LOAD                : Boolean := False;
      --  Disables clock gating for rams
      DISABLE_RAM_CLOCK_GATING       : Boolean := False;
      --  unspecified
      Reserved_11_12                 : Interfaces.Bit_Types.UInt2 := 16#1#;
      --  Disables ram power optimization
      DISABLE_RAM_POWER_OPTIMIZATION : Boolean := False;
      --  unspecified
      Reserved_14_15                 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Read-only. 3D pipe is idle
      IDLE3_D                        : Boolean := True;
      --  unspecified
      Reserved_17_18                 : Interfaces.Bit_Types.UInt2 := 16#3#;
      --  Isolate GPU bit
      ISOLATE_GPU                    : Boolean := False;
      --  Determines which HI/MC to use while reading registers
      MULTI_PIPE_REG_SELECT          : GPU_AQHICLOCKCONTROL_MULTI_PIPE_REG_SELECT_Field :=
                                        16#0#;
      --  unspecified
      Reserved_24_27                 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Soft resets the L2.
      SOFT_RESET_L2                  : Boolean := False;
      --  unspecified
      Reserved_29_31                 : Interfaces.Bit_Types.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_AQHICLOCKCONTROL_Register use record
      CLK3D_DIS                      at 0 range 0 .. 0;
      CLK2D_DIS                      at 0 range 1 .. 1;
      FSCALE_VAL                     at 0 range 2 .. 8;
      FSCALE_CMD_LOAD                at 0 range 9 .. 9;
      DISABLE_RAM_CLOCK_GATING       at 0 range 10 .. 10;
      Reserved_11_12                 at 0 range 11 .. 12;
      DISABLE_RAM_POWER_OPTIMIZATION at 0 range 13 .. 13;
      Reserved_14_15                 at 0 range 14 .. 15;
      IDLE3_D                        at 0 range 16 .. 16;
      Reserved_17_18                 at 0 range 17 .. 18;
      ISOLATE_GPU                    at 0 range 19 .. 19;
      MULTI_PIPE_REG_SELECT          at 0 range 20 .. 23;
      Reserved_24_27                 at 0 range 24 .. 27;
      SOFT_RESET_L2                  at 0 range 28 .. 28;
      Reserved_29_31                 at 0 range 29 .. 31;
   end record;

   --  GPU AQ Hi Idle Register
   type GPU_AQHIIDLE_Register is record
      --  Read-only. FE is idle
      IDLE_FE        : Boolean;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit;
      --  Read-only. PE is idle
      IDLE_PE        : Boolean;
      --  Read-only. SH is idle
      IDLE_SH        : Boolean;
      --  unspecified
      Reserved_4_4   : Interfaces.Bit_Types.Bit;
      --  Read-only. SE is idle
      IDLE_SE        : Boolean;
      --  Read-only. RA is idle
      IDLE_RA        : Boolean;
      --  Read-only. TX is idle
      IDLE_TX        : Boolean;
      --  unspecified
      Reserved_8_11  : Interfaces.Bit_Types.UInt4;
      --  Read-only. BLT is idle
      IDLE_BLT       : Boolean;
      --  Read-only. FE BLT Parser is idle
      IDLE_FE_BLT    : Boolean;
      --  Read-only. MC is idle
      IDLE_MC        : Boolean;
      --  unspecified
      Reserved_15_30 : Interfaces.Bit_Types.UInt16;
      --  Read-only. AXI is in low power mode
      AXI_LP         : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_AQHIIDLE_Register use record
      IDLE_FE        at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      IDLE_PE        at 0 range 2 .. 2;
      IDLE_SH        at 0 range 3 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      IDLE_SE        at 0 range 5 .. 5;
      IDLE_RA        at 0 range 6 .. 6;
      IDLE_TX        at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      IDLE_BLT       at 0 range 12 .. 12;
      IDLE_FE_BLT    at 0 range 13 .. 13;
      IDLE_MC        at 0 range 14 .. 14;
      Reserved_15_30 at 0 range 15 .. 30;
      AXI_LP         at 0 range 31 .. 31;
   end record;

   subtype GPU_AQAXISTATUS_WR_ERR_ID_Field is Interfaces.Bit_Types.UInt4;
   subtype GPU_AQAXISTATUS_RD_ERR_ID_Field is Interfaces.Bit_Types.UInt4;

   --  GPU AQ AXI status register
   type GPU_AQAXISTATUS_Register is record
      --  Read-only. Write error ID
      WR_ERR_ID      : GPU_AQAXISTATUS_WR_ERR_ID_Field;
      --  Read-only. Read error ID
      RD_ERR_ID      : GPU_AQAXISTATUS_RD_ERR_ID_Field;
      --  Read-only. 1: Detect write error
      DET_WR_ERR     : Boolean;
      --  Read-only. 1: Detect read error
      DET_RD_ERR     : Boolean;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_AQAXISTATUS_Register use record
      WR_ERR_ID      at 0 range 0 .. 3;
      RD_ERR_ID      at 0 range 4 .. 7;
      DET_WR_ERR     at 0 range 8 .. 8;
      DET_RD_ERR     at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GPU_GCREGHICHIPPATCHREV_PATCH_REV_Field is
     Interfaces.Bit_Types.Byte;

   --  GPU GC registration Hi chip patch revision register
   type GPU_GCREGHICHIPPATCHREV_Register is record
      --  Read-only. Patch revision level for the chip.
      PATCH_REV     : GPU_GCREGHICHIPPATCHREV_PATCH_REV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_GCREGHICHIPPATCHREV_Register use record
      PATCH_REV     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype GPU_GCPRODUCTID_GRADE_LEVEL_Field is Interfaces.Bit_Types.UInt4;
   subtype GPU_GCPRODUCTID_NUM_Field is Interfaces.Bit_Types.UInt20;
   subtype GPU_GCPRODUCTID_TYPE_Field is Interfaces.Bit_Types.UInt4;

   --  GPU GC product identification register
   type GPU_GCPRODUCTID_Register is record
      --  Read-only. None
      GRADE_LEVEL    : GPU_GCPRODUCTID_GRADE_LEVEL_Field;
      --  Read-only. Product Number: 0x8000 for this core.
      NUM            : GPU_GCPRODUCTID_NUM_Field;
      --  Read-only. 0:GC (2D or 3D Graphic Cores)
      TYPE_k         : GPU_GCPRODUCTID_TYPE_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_GCPRODUCTID_Register use record
      GRADE_LEVEL    at 0 range 0 .. 3;
      NUM            at 0 range 4 .. 23;
      TYPE_k         at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype GPU_GCECOID_ID_Field is Interfaces.Bit_Types.Byte;
   subtype GPU_GCECOID_CONV_COUNT_Field is Interfaces.Bit_Types.UInt24;

   --  GPU GC ECO identification register
   type GPU_GCECOID_Register is record
      --  Read-only. ECO ID.
      ID         : GPU_GCECOID_ID_Field;
      --  Read-only. Convolution Cores Count:
      CONV_COUNT : GPU_GCECOID_CONV_COUNT_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_GCECOID_Register use record
      ID         at 0 range 0 .. 7;
      CONV_COUNT at 0 range 8 .. 31;
   end record;

   subtype GPU_GCMODULEPOWERCONTROLS_TURN_ON_COUNTER_Field is
     Interfaces.Bit_Types.UInt4;
   subtype GPU_GCMODULEPOWERCONTROLS_TURN_OFF_COUNTER_Field is
     Interfaces.Bit_Types.UInt16;

   --  GPU GC module power control register
   type GPU_GCMODULEPOWERCONTROLS_Register is record
      --  Enables module level clock gating
      ENABLE_MODULE_CLOCK_GATING         : Boolean := False;
      --  Disables module level clock gating for stall condition.
      DISABLE_STALL_MODULE_CLOCK_GATING  : Boolean := False;
      --  Disables module level clock gating
      DISABLE_STARVE_MODULE_CLOCK_GATING : Boolean := False;
      --  unspecified
      Reserved_3_3                       : Interfaces.Bit_Types.Bit := 16#0#;
      --  Number of clock cycles to wait after turning on the clock
      TURN_ON_COUNTER                    : GPU_GCMODULEPOWERCONTROLS_TURN_ON_COUNTER_Field :=
                                            16#2#;
      --  unspecified
      Reserved_8_15                      : Interfaces.Bit_Types.Byte := 16#0#;
      --  Counter value for clock gating the module if the module is idle for
      --  this amount of clock cycles.
      TURN_OFF_COUNTER                   : GPU_GCMODULEPOWERCONTROLS_TURN_OFF_COUNTER_Field :=
                                            16#14#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_GCMODULEPOWERCONTROLS_Register use record
      ENABLE_MODULE_CLOCK_GATING         at 0 range 0 .. 0;
      DISABLE_STALL_MODULE_CLOCK_GATING  at 0 range 1 .. 1;
      DISABLE_STARVE_MODULE_CLOCK_GATING at 0 range 2 .. 2;
      Reserved_3_3                       at 0 range 3 .. 3;
      TURN_ON_COUNTER                    at 0 range 4 .. 7;
      Reserved_8_15                      at 0 range 8 .. 15;
      TURN_OFF_COUNTER                   at 0 range 16 .. 31;
   end record;

   --  GPU GC MMU AHB control register
   type GPU_GCREGMMUAHBCONTROL_Register is record
      --  Write-only. Enable the MMU. For security reasons, once the MMU is
      --  enabled it cannot be disabled anymore:
      MMU           : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_GCREGMMUAHBCONTROL_Register use record
      MMU           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype GPU_GCREGMMUAHBTABLEARRAYBASEADDRESSHIGH_MASTER_TLB_Field is
     Interfaces.Bit_Types.Byte;

   --  GPU GC MMU AHB table array base address high register
   type GPU_GCREGMMUAHBTABLEARRAYBASEADDRESSHIGH_Register is record
      --  Upper 8-bits of the master TLB address to form a true 40-bit address
      MASTER_TLB           : GPU_GCREGMMUAHBTABLEARRAYBASEADDRESSHIGH_MASTER_TLB_Field :=
                              16#0#;
      --  Bit that defines whether the master TLB address is secure or not
      MASTER_TLB_SECURE    : Boolean := False;
      --  Bit that defines whether the master TLB address is shareable or not.
      MASTER_TLB_SHAREABLE : Boolean := False;
      --  unspecified
      Reserved_10_31       : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_GCREGMMUAHBTABLEARRAYBASEADDRESSHIGH_Register use record
      MASTER_TLB           at 0 range 0 .. 7;
      MASTER_TLB_SECURE    at 0 range 8 .. 8;
      MASTER_TLB_SHAREABLE at 0 range 9 .. 9;
      Reserved_10_31       at 0 range 10 .. 31;
   end record;

   subtype GPU_GCREGMMUAHBTABLEARRAYSIZE_SIZE_Field is
     Interfaces.Bit_Types.UInt16;

   --  GPU GC MMU AHB table array size register
   type GPU_GCREGMMUAHBTABLEARRAYSIZE_Register is record
      --  Size of MMU Table
      SIZE           : GPU_GCREGMMUAHBTABLEARRAYSIZE_SIZE_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_GCREGMMUAHBTABLEARRAYSIZE_Register use record
      SIZE           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype GPU_GCREGCMDBUFFERAHBCTRL_PREFETCH_Field is
     Interfaces.Bit_Types.UInt16;

   --  GPU GC command buffer AHB control register
   type GPU_GCREGCMDBUFFERAHBCTRL_Register is record
      --  Write-only. Number of 64-bit words to fetch from the command buffer.
      PREFETCH       : GPU_GCREGCMDBUFFERAHBCTRL_PREFETCH_Field := 16#0#;
      --  Write-only. Enable the command parser:
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_GCREGCMDBUFFERAHBCTRL_Register use record
      PREFETCH       at 0 range 0 .. 15;
      ENABLE         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  GPU GC Hi AHB control register
   type GPU_GCREGHIAHBCONTROL_Register is record
      --  Soft resets the IP:
      SOFT_RESET    : Boolean := False;
      --  Enable debug mode if disabled debug registers return 0xFFFF FFFF.
      DEBUG_MODE    : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_GCREGHIAHBCONTROL_Register use record
      SOFT_RESET    at 0 range 0 .. 0;
      DEBUG_MODE    at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype GPU_GCREGAXIAHBCONFIG_AWID_Field is Interfaces.Bit_Types.UInt4;
   subtype GPU_GCREGAXIAHBCONFIG_ARID_Field is Interfaces.Bit_Types.UInt4;
   subtype GPU_GCREGAXIAHBCONFIG_AWCACHE_Field is Interfaces.Bit_Types.UInt4;
   subtype GPU_GCREGAXIAHBCONFIG_ARCACHE_Field is Interfaces.Bit_Types.UInt4;
   subtype GPU_GCREGAXIAHBCONFIG_AXDOMAIN_SHARED_Field is
     Interfaces.Bit_Types.UInt2;
   subtype GPU_GCREGAXIAHBCONFIG_AXDOMAIN_NON_SHARED_Field is
     Interfaces.Bit_Types.UInt2;
   subtype GPU_GCREGAXIAHBCONFIG_AXCACHE_OVERRIDE_SHARED_Field is
     Interfaces.Bit_Types.UInt4;

   --  GPU GC AXI AHB configuration register
   type GPU_GCREGAXIAHBCONFIG_Register is record
      --  Write ID
      AWID                    : GPU_GCREGAXIAHBCONFIG_AWID_Field := 16#0#;
      --  Read ID modifier
      ARID                    : GPU_GCREGAXIAHBCONFIG_ARID_Field := 16#0#;
      --  Read CACHE attribute
      AWCACHE                 : GPU_GCREGAXIAHBCONFIG_AWCACHE_Field := 16#2#;
      --  Write CACHE attribute
      ARCACHE                 : GPU_GCREGAXIAHBCONFIG_ARCACHE_Field := 16#2#;
      --  Which AXDOMAIN to choose when shared
      AXDOMAIN_SHARED         : GPU_GCREGAXIAHBCONFIG_AXDOMAIN_SHARED_Field :=
                                 16#2#;
      --  Which AXDOMAIN to choose when non-shared
      AXDOMAIN_NON_SHARED     : GPU_GCREGAXIAHBCONFIG_AXDOMAIN_NON_SHARED_Field :=
                                 16#0#;
      --  Force AXCACHE to this value when the transaction is shared
      AXCACHE_OVERRIDE_SHARED : GPU_GCREGAXIAHBCONFIG_AXCACHE_OVERRIDE_SHARED_Field :=
                                 16#2#;
      --  unspecified
      Reserved_24_31          : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_GCREGAXIAHBCONFIG_Register use record
      AWID                    at 0 range 0 .. 3;
      ARID                    at 0 range 4 .. 7;
      AWCACHE                 at 0 range 8 .. 11;
      ARCACHE                 at 0 range 12 .. 15;
      AXDOMAIN_SHARED         at 0 range 16 .. 17;
      AXDOMAIN_NON_SHARED     at 0 range 18 .. 19;
      AXCACHE_OVERRIDE_SHARED at 0 range 20 .. 23;
      Reserved_24_31          at 0 range 24 .. 31;
   end record;

   subtype GPU_AQMEMORYDEBUG_MAX_OUTSTANDING_READS_Field is
     Interfaces.Bit_Types.Byte;

   --  GPU AQ memory debug register
   type GPU_AQMEMORYDEBUG_Register is record
      --  Limits the total number of outstanding read requests.
      MAX_OUTSTANDING_READS : GPU_AQMEMORYDEBUG_MAX_OUTSTANDING_READS_Field :=
                               16#0#;
      --  unspecified
      Reserved_8_31         : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_AQMEMORYDEBUG_Register use record
      MAX_OUTSTANDING_READS at 0 range 0 .. 7;
      Reserved_8_31         at 0 range 8 .. 31;
   end record;

   subtype GPU_AQREGISTERTIMINGCONTROL_FOR_RF1P_Field is
     Interfaces.Bit_Types.Byte;
   subtype GPU_AQREGISTERTIMINGCONTROL_FOR_RF2P_Field is
     Interfaces.Bit_Types.Byte;
   subtype GPU_AQREGISTERTIMINGCONTROL_FAST_RTC_Field is
     Interfaces.Bit_Types.UInt2;
   subtype GPU_AQREGISTERTIMINGCONTROL_FAST_WTC_Field is
     Interfaces.Bit_Types.UInt2;

   --  GPU AQ timing control register
   type GPU_AQREGISTERTIMINGCONTROL_Register is record
      --  for 4 port RAM
      FOR_RF1P       : GPU_AQREGISTERTIMINGCONTROL_FOR_RF1P_Field := 16#0#;
      --  for 2 port RAM
      FOR_RF2P       : GPU_AQREGISTERTIMINGCONTROL_FOR_RF2P_Field := 16#0#;
      --  RTC for fast rams
      FAST_RTC       : GPU_AQREGISTERTIMINGCONTROL_FAST_RTC_Field := 16#3#;
      --  WTC for fast rams
      FAST_WTC       : GPU_AQREGISTERTIMINGCONTROL_FAST_WTC_Field := 16#0#;
      --  Power-down memory
      POWER_DOWN     : Boolean := False;
      --  Deep sleep
      DEEP_SLEEP     : Boolean := False;
      --  Light sleep
      LIGHT_SLEEP    : Boolean := False;
      --  unspecified
      Reserved_23_31 : Interfaces.Bit_Types.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_AQREGISTERTIMINGCONTROL_Register use record
      FOR_RF1P       at 0 range 0 .. 7;
      FOR_RF2P       at 0 range 8 .. 15;
      FAST_RTC       at 0 range 16 .. 17;
      FAST_WTC       at 0 range 18 .. 19;
      POWER_DOWN     at 0 range 20 .. 20;
      DEEP_SLEEP     at 0 range 21 .. 21;
      LIGHT_SLEEP    at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype GPU_AQCMDBUFFERADDR_ADDRESS_Field is Interfaces.Bit_Types.UInt31;

   --  GPU AQ command buffer address register
   type GPU_AQCMDBUFFERADDR_Register is record
      --  Write-only. Base address for the command buffer. The address must be
      --  64-bit aligned and it is always physical. To use addresses above
      --  0x8000_0000, program GPU_AQMemoryFE with the appropriate offset. As
      --  this register cannot be read, to check the value of the current fetch
      --  address, use GPU_AQFEDebugCurCmdAdr.
      ADDRESS : GPU_AQCMDBUFFERADDR_ADDRESS_Field := 16#0#;
      --  Write-only. None
      TYPE_k  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_AQCMDBUFFERADDR_Register use record
      ADDRESS at 0 range 0 .. 30;
      TYPE_k  at 0 range 31 .. 31;
   end record;

   subtype GPU_AQFEDEBUGCURCMDADR_CUR_CMD_ADR_Field is
     Interfaces.Bit_Types.UInt29;

   --  GPU AQ FE debug current command address register
   type GPU_AQFEDEBUGCURCMDADR_Register is record
      --  unspecified
      Reserved_0_2 : Interfaces.Bit_Types.UInt3;
      --  Read-only. This is the command decoder address. The address is always
      --  physical so the MSB should always be 0. It has no reset value. Note
      --  that with the current MMU all 32 bits are valid.
      CUR_CMD_ADR  : GPU_AQFEDEBUGCURCMDADR_CUR_CMD_ADR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPU_AQFEDEBUGCURCMDADR_Register use record
      Reserved_0_2 at 0 range 0 .. 2;
      CUR_CMD_ADR  at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  GPU register block
   type GPU_Peripheral is record
      --  GPU AQ Hi clock control register
      GPU_AQHICLOCKCONTROL                     : aliased GPU_AQHICLOCKCONTROL_Register;
      --  GPU AQ Hi Idle Register
      GPU_AQHIIDLE                             : aliased GPU_AQHIIDLE_Register;
      --  GPU AQ AXI status register
      GPU_AQAXISTATUS                          : aliased GPU_AQAXISTATUS_Register;
      --  GPU AQ interrupt acknowledge register
      GPU_AQINTRACKNOWLEDGE                    : aliased Interfaces.Bit_Types.UInt32;
      --  GPU AQ interrupt enable register
      GPU_AQINTRENBL                           : aliased Interfaces.Bit_Types.UInt32;
      --  GPU GC chip revision register
      GPU_GCCHIPREV                            : aliased Interfaces.Bit_Types.UInt32;
      --  GPU GC chip date register
      GPU_GCCHIPDATE                           : aliased Interfaces.Bit_Types.UInt32;
      --  GPU GC total cycles register
      GPU_GCTOTALCYCLES                        : aliased Interfaces.Bit_Types.UInt32;
      --  GPU GC registration Hi chip patch revision register
      GPU_GCREGHICHIPPATCHREV                  : aliased GPU_GCREGHICHIPPATCHREV_Register;
      --  GPU GC product identification register
      GPU_GCPRODUCTID                          : aliased GPU_GCPRODUCTID_Register;
      --  GPU GC ECO identification register
      GPU_GCECOID                              : aliased GPU_GCECOID_Register;
      --  GPU GC module power control register
      GPU_GCMODULEPOWERCONTROLS                : aliased GPU_GCMODULEPOWERCONTROLS_Register;
      --  GPU GC MMU AHB control register
      GPU_GCREGMMUAHBCONTROL                   : aliased GPU_GCREGMMUAHBCONTROL_Register;
      --  GPU GC MMU AHB table array base address low register
      GPU_GCREGMMUAHBTABLEARRAYBASEADDRESSLOW  : aliased Interfaces.Bit_Types.UInt32;
      --  GPU GC MMU AHB table array base address high register
      GPU_GCREGMMUAHBTABLEARRAYBASEADDRESSHIGH : aliased GPU_GCREGMMUAHBTABLEARRAYBASEADDRESSHIGH_Register;
      --  GPU GC MMU AHB table array size register
      GPU_GCREGMMUAHBTABLEARRAYSIZE            : aliased GPU_GCREGMMUAHBTABLEARRAYSIZE_Register;
      --  GPU GC MMU AHB safe non-secure address register
      GPU_GCREGMMUAHBSAFENONSECUREADDRESS      : aliased Interfaces.Bit_Types.UInt32;
      --  GPU GC MMU AHB safe secure address register
      GPU_GCREGMMUAHBSAFESECUREADDRESS         : aliased Interfaces.Bit_Types.UInt32;
      --  GPU GC command buffer AHB control register
      GPU_GCREGCMDBUFFERAHBCTRL                : aliased GPU_GCREGCMDBUFFERAHBCTRL_Register;
      --  GPU GC Hi AHB control register
      GPU_GCREGHIAHBCONTROL                    : aliased GPU_GCREGHIAHBCONTROL_Register;
      --  GPU GC AXI AHB configuration register
      GPU_GCREGAXIAHBCONFIG                    : aliased GPU_GCREGAXIAHBCONFIG_Register;
      --  GPU AQ memory debug register
      GPU_AQMEMORYDEBUG                        : aliased GPU_AQMEMORYDEBUG_Register;
      --  GPU AQ timing control register
      GPU_AQREGISTERTIMINGCONTROL              : aliased GPU_AQREGISTERTIMINGCONTROL_Register;
      --  GPU AQ command buffer address register
      GPU_AQCMDBUFFERADDR                      : aliased GPU_AQCMDBUFFERADDR_Register;
      --  GPU AQ FE debug current command address register
      GPU_AQFEDEBUGCURCMDADR                   : aliased GPU_AQFEDEBUGCURCMDADR_Register;
   end record
     with Volatile;

   for GPU_Peripheral use record
      GPU_AQHICLOCKCONTROL                     at 16#0# range 0 .. 31;
      GPU_AQHIIDLE                             at 16#4# range 0 .. 31;
      GPU_AQAXISTATUS                          at 16#C# range 0 .. 31;
      GPU_AQINTRACKNOWLEDGE                    at 16#10# range 0 .. 31;
      GPU_AQINTRENBL                           at 16#14# range 0 .. 31;
      GPU_GCCHIPREV                            at 16#24# range 0 .. 31;
      GPU_GCCHIPDATE                           at 16#28# range 0 .. 31;
      GPU_GCTOTALCYCLES                        at 16#78# range 0 .. 31;
      GPU_GCREGHICHIPPATCHREV                  at 16#98# range 0 .. 31;
      GPU_GCPRODUCTID                          at 16#A8# range 0 .. 31;
      GPU_GCECOID                              at 16#E8# range 0 .. 31;
      GPU_GCMODULEPOWERCONTROLS                at 16#100# range 0 .. 31;
      GPU_GCREGMMUAHBCONTROL                   at 16#388# range 0 .. 31;
      GPU_GCREGMMUAHBTABLEARRAYBASEADDRESSLOW  at 16#38C# range 0 .. 31;
      GPU_GCREGMMUAHBTABLEARRAYBASEADDRESSHIGH at 16#390# range 0 .. 31;
      GPU_GCREGMMUAHBTABLEARRAYSIZE            at 16#394# range 0 .. 31;
      GPU_GCREGMMUAHBSAFENONSECUREADDRESS      at 16#398# range 0 .. 31;
      GPU_GCREGMMUAHBSAFESECUREADDRESS         at 16#39C# range 0 .. 31;
      GPU_GCREGCMDBUFFERAHBCTRL                at 16#3A4# range 0 .. 31;
      GPU_GCREGHIAHBCONTROL                    at 16#3A8# range 0 .. 31;
      GPU_GCREGAXIAHBCONFIG                    at 16#3AC# range 0 .. 31;
      GPU_AQMEMORYDEBUG                        at 16#414# range 0 .. 31;
      GPU_AQREGISTERTIMINGCONTROL              at 16#42C# range 0 .. 31;
      GPU_AQCMDBUFFERADDR                      at 16#654# range 0 .. 31;
      GPU_AQFEDEBUGCURCMDADR                   at 16#664# range 0 .. 31;
   end record;

   --  GPU register block
   GPU_Periph : aliased GPU_Peripheral
     with Import, Address => GPU_Base;

   --  GPU register block
   GPU_S_Periph : aliased GPU_Peripheral
     with Import, Address => GPU_S_Base;

end Interfaces.STM32.GPU;
