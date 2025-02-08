--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.DDRPERFM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  DDRPERFM control register
   type DDRPERFM_CTRL_Register is record
      --  Writing 1 starts all counters. All internal counters and status bits
      --  are cleared before events are monitored. Writing 0 has no effect.
      --  Writing 1 when counters are running has not effect.
      START         : Boolean := False;
      --  Writing 1 stops all counters. Writing 0 has no effect. Writing 1 when
      --  counters are stopped has not effect.
      STOP          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPERFM_CTRL_Register use record
      START         at 0 range 0 .. 0;
      STOP          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DDRPERFM interrupt mask register
   type DDRPERFM_IMSK_Register is record
      --  None
      INTRMSK       : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPERFM_IMSK_Register use record
      INTRMSK       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  DDRPERFM interrupt clear register
   type DDRPERFM_ICLR_Register is record
      --  Note: The counters must be cleared first (to remove the interruption
      --  condition) before the interruption is cleared.
      INTRCLR       : Boolean := False;
      --  None
      INTRSET       : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPERFM_ICLR_Register use record
      INTRCLR       at 0 range 0 .. 0;
      INTRSET       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DDRPERFM_CLR_CNTCLR_Field is HAL.UInt8;

   --  DDRPERFM counter clear register
   type DDRPERFM_CLR_Register is record
      --  Note: Setting this bit is ignored if BUSY = 1 in DDRPERFM_STATUS.
      CNTCLR        : DDRPERFM_CLR_CNTCLR_Field := 16#0#;
      --  Note: Setting this bit is ignored if BUSY = 1 in DDRPERFM_STATUS.
      TNTCLR        : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPERFM_CLR_Register use record
      CNTCLR        at 0 range 0 .. 7;
      TNTCLR        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DDRPERFM_CFG0_SEL_EVENT0_Field is HAL.UInt6;
   subtype DDRPERFM_CFG0_SEL_EVENT1_Field is HAL.UInt6;
   subtype DDRPERFM_CFG0_SEL_EVENT2_Field is HAL.UInt6;
   subtype DDRPERFM_CFG0_SEL_EVENT3_Field is HAL.UInt6;

   --  DDRPERFM configuration register 0
   type DDRPERFM_CFG0_Register is record
      --  Selection of the performance logging signal to be monitored by the
      --  event counter 0
      SEL_EVENT0     : DDRPERFM_CFG0_SEL_EVENT0_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Selection of the performance logging signal to be monitored by the
      --  event counter 1
      SEL_EVENT1     : DDRPERFM_CFG0_SEL_EVENT1_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Selection of the performance logging signal to be monitored by the
      --  event counter 2
      SEL_EVENT2     : DDRPERFM_CFG0_SEL_EVENT2_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Selection of the performance logging signal to be monitored by the
      --  event counter 3
      SEL_EVENT3     : DDRPERFM_CFG0_SEL_EVENT3_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPERFM_CFG0_Register use record
      SEL_EVENT0     at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL_EVENT1     at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SEL_EVENT2     at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SEL_EVENT3     at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DDRPERFM_CFG1_SEL_EVENT4_Field is HAL.UInt6;
   subtype DDRPERFM_CFG1_SEL_EVENT5_Field is HAL.UInt6;
   subtype DDRPERFM_CFG1_SEL_EVENT6_Field is HAL.UInt6;
   subtype DDRPERFM_CFG1_SEL_EVENT7_Field is HAL.UInt6;

   --  DDRPERFM configuration register 1
   type DDRPERFM_CFG1_Register is record
      --  Selection of the performance logging signal to be monitored by the
      --  event counter 4
      SEL_EVENT4     : DDRPERFM_CFG1_SEL_EVENT4_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Selection of the performance logging signal to be monitored by the
      --  event counter 5
      SEL_EVENT5     : DDRPERFM_CFG1_SEL_EVENT5_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Selection of the performance logging signal to be monitored by the
      --  event counter 6
      SEL_EVENT6     : DDRPERFM_CFG1_SEL_EVENT6_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Selection of the performance logging signal to be monitored by the
      --  event counter 7
      SEL_EVENT7     : DDRPERFM_CFG1_SEL_EVENT7_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPERFM_CFG1_Register use record
      SEL_EVENT4     at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SEL_EVENT5     at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SEL_EVENT6     at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      SEL_EVENT7     at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DDRPERFM_CFG2_FILT_RBG0_Field is HAL.UInt5;
   subtype DDRPERFM_CFG2_FILT_POL0_Field is HAL.UInt3;
   subtype DDRPERFM_CFG2_FILT_RBG1_Field is HAL.UInt5;
   subtype DDRPERFM_CFG2_FILT_POL1_Field is HAL.UInt3;
   subtype DDRPERFM_CFG2_FILT_RBG2_Field is HAL.UInt5;
   subtype DDRPERFM_CFG2_FILT_POL2_Field is HAL.UInt3;
   subtype DDRPERFM_CFG2_FILT_RBG3_Field is HAL.UInt5;
   subtype DDRPERFM_CFG2_FILT_POL3_Field is HAL.UInt3;

   --  DDRPERFM configuration register 2
   type DDRPERFM_CFG2_Register is record
      --  Configuration of the rank/bank/bank group filtering for the event
      --  counter 0 based on FILT_POL0 value
      FILT_RBG0 : DDRPERFM_CFG2_FILT_RBG0_Field := 16#0#;
      --  Filtering policy for the event counter 0 (refer to Table72)
      FILT_POL0 : DDRPERFM_CFG2_FILT_POL0_Field := 16#0#;
      --  Configuration of the rank/bank/bank group filtering for the event
      --  counter 1 based on FILT_POL1 value
      FILT_RBG1 : DDRPERFM_CFG2_FILT_RBG1_Field := 16#0#;
      --  Filtering policy for the event counter 1 (refer to Table72)
      FILT_POL1 : DDRPERFM_CFG2_FILT_POL1_Field := 16#0#;
      --  Configuration of the rank/bank/bank group filtering for the event
      --  counter 2 based on FILT_POL2 value
      FILT_RBG2 : DDRPERFM_CFG2_FILT_RBG2_Field := 16#0#;
      --  Filtering policy for the event counter 2. (refer to Table72)
      FILT_POL2 : DDRPERFM_CFG2_FILT_POL2_Field := 16#0#;
      --  Configuration of the rank/bank/bank group filtering for the event
      --  counter 3 based on FILT_POL3 value Bit 4: Define the rank value when
      --  rank filtering is activated. Value 0 means that only commands applied
      --  on Rank0 are counted. Value 1 means that only commands applied on
      --  rank1 are counted. Bits 3:0: Define drank group/bank address/ used
      --  for filtering When filtering is activated: - For DDR4, the
      --  FILT_RBGx[3:2] bits correspond to bank group, and FILT_RBGx[1:0]
      --  correspond to bank address. - For LPDDR3/4, the DDR3 bits
      --  FILT_RBGx[2:0] bits correspond to bank address, and FILT_RBG3 is
      --  unused.
      FILT_RBG3 : DDRPERFM_CFG2_FILT_RBG3_Field := 16#0#;
      --  Selection of the performance logging signal to be monitored by the
      --  event counter 3 Filtering policy for the event counter 3 (refer to
      --  Table72).
      FILT_POL3 : DDRPERFM_CFG2_FILT_POL3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPERFM_CFG2_Register use record
      FILT_RBG0 at 0 range 0 .. 4;
      FILT_POL0 at 0 range 5 .. 7;
      FILT_RBG1 at 0 range 8 .. 12;
      FILT_POL1 at 0 range 13 .. 15;
      FILT_RBG2 at 0 range 16 .. 20;
      FILT_POL2 at 0 range 21 .. 23;
      FILT_RBG3 at 0 range 24 .. 28;
      FILT_POL3 at 0 range 29 .. 31;
   end record;

   subtype DDRPERFM_CFG3_FILT_RBG4_Field is HAL.UInt5;
   subtype DDRPERFM_CFG3_FILT_POL4_Field is HAL.UInt3;
   subtype DDRPERFM_CFG3_FILT_RBG5_Field is HAL.UInt5;
   subtype DDRPERFM_CFG3_FILT_POL5_Field is HAL.UInt3;
   subtype DDRPERFM_CFG3_FILT_RBG6_Field is HAL.UInt5;
   subtype DDRPERFM_CFG3_FILT_POL6_Field is HAL.UInt3;
   subtype DDRPERFM_CFG3_FILT_RBG7_Field is HAL.UInt5;
   subtype DDRPERFM_CFG3_FILT_POL7_Field is HAL.UInt3;

   --  DDRPERFM configuration register 3
   type DDRPERFM_CFG3_Register is record
      --  Configuration of the rank/bank/bank group filtering for the event
      --  counter 4 based on FILT_POL4 value
      FILT_RBG4 : DDRPERFM_CFG3_FILT_RBG4_Field := 16#0#;
      --  Filtering policy for the event counter 4 (refer to Table72)
      FILT_POL4 : DDRPERFM_CFG3_FILT_POL4_Field := 16#0#;
      --  Configuration of the rank/bank/bank group filtering for the event
      --  counter 5 based on FILT_POL5 value
      FILT_RBG5 : DDRPERFM_CFG3_FILT_RBG5_Field := 16#0#;
      --  Filtering policy for the event counter 5 (refer to Table72)
      FILT_POL5 : DDRPERFM_CFG3_FILT_POL5_Field := 16#0#;
      --  Configuration of the rank/bank/bank group filtering for the event
      --  counter 6 based on FILT_POL6 value
      FILT_RBG6 : DDRPERFM_CFG3_FILT_RBG6_Field := 16#0#;
      --  Filtering policy for the event counter 6 (refer to Table72)
      FILT_POL6 : DDRPERFM_CFG3_FILT_POL6_Field := 16#0#;
      --  Configuration of the rank/bank/bank group filtering for the event
      --  counter 7 based on FILT_POL7 value
      FILT_RBG7 : DDRPERFM_CFG3_FILT_RBG7_Field := 16#0#;
      --  Filtering policy for the event counter 7 (refer to Table72)
      FILT_POL7 : DDRPERFM_CFG3_FILT_POL7_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPERFM_CFG3_Register use record
      FILT_RBG4 at 0 range 0 .. 4;
      FILT_POL4 at 0 range 5 .. 7;
      FILT_RBG5 at 0 range 8 .. 12;
      FILT_POL5 at 0 range 13 .. 15;
      FILT_RBG6 at 0 range 16 .. 20;
      FILT_POL6 at 0 range 21 .. 23;
      FILT_RBG7 at 0 range 24 .. 28;
      FILT_POL7 at 0 range 29 .. 31;
   end record;

   subtype DDRPERFM_CFG5_EVCNT_EN_Field is HAL.UInt8;

   --  DDRPERFM event counter enable register
   type DDRPERFM_CFG5_Register is record
      --  Event counter enable When bit i is set, the corresponding counter is
      --  enabled. Note: Enable must be written when counters are not running.
      EVCNT_EN      : DDRPERFM_CFG5_EVCNT_EN_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPERFM_CFG5_Register use record
      EVCNT_EN      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DDRPERFM_DRAMINF_DRAM_TYPE_Field is HAL.UInt2;

   --  DDRPERFM DRAM information register
   type DDRPERFM_DRAMINF_Register is record
      --  DRAM information used for DFI decoding
      DRAM_TYPE     : DDRPERFM_DRAMINF_DRAM_TYPE_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPERFM_DRAMINF_Register use record
      DRAM_TYPE     at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  DDRPERFM status register
   type DDRPERFM_STATUS_Register is record
      --  Read-only. When read to 1, the DDRPERFM is stopped due to event
      --  counter 0 overflow.
      EVCNT0_OVFL    : Boolean;
      --  Read-only. When read to 1, the DDRPERFM is stopped due to event
      --  counter 1 overflow.
      EVCNT1_OVFL    : Boolean;
      --  Read-only. When read to 1, the DDRPERFM is stopped due to event
      --  counter 2 overflow.
      EVCNT2_OVFL    : Boolean;
      --  Read-only. When read to 1, the DDRPERFM is stopped due to event
      --  counter 3 overflow.
      EVCNT3_OVFL    : Boolean;
      --  Read-only. When read to 1, the DDRPERFM is stopped due to event
      --  counter 4 overflow.
      EVCNT4_OVFL    : Boolean;
      --  Read-only. When read to 1, the DDRPERFM is stopped due to event
      --  counter 5 overflow.
      EVCNT5_OVFL    : Boolean;
      --  Read-only. When read to 1, the DDRPERFM is stopped due to event
      --  counter 6 overflow.
      EVCNT6_OVFL    : Boolean;
      --  Read-only. When read to 1, the DDRPERFM is stopped due to event
      --  counter 7 overflow.
      EVCNT7_OVFL    : Boolean;
      --  unspecified
      Reserved_8_15  : HAL.UInt8;
      --  Read-only. When read to 1, the DDRPERFM is stopped due to time
      --  counter reaching the timeout value.
      TCNT_OVFL      : Boolean;
      --  unspecified
      Reserved_17_30 : HAL.UInt14;
      --  Read-only. Real-time busy indicator This bit is asserted as long as
      --  counters are running, and deasserted when a stop condition occurs
      --  (software controlled stop command or counter overflow).
      BUSY           : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDRPERFM_STATUS_Register use record
      EVCNT0_OVFL    at 0 range 0 .. 0;
      EVCNT1_OVFL    at 0 range 1 .. 1;
      EVCNT2_OVFL    at 0 range 2 .. 2;
      EVCNT3_OVFL    at 0 range 3 .. 3;
      EVCNT4_OVFL    at 0 range 4 .. 4;
      EVCNT5_OVFL    at 0 range 5 .. 5;
      EVCNT6_OVFL    at 0 range 6 .. 6;
      EVCNT7_OVFL    at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TCNT_OVFL      at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      BUSY           at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DDRPERFM register block
   type DDRPERFM_Peripheral is record
      --  DDRPERFM control register
      DDRPERFM_CTRL    : aliased DDRPERFM_CTRL_Register;
      --  DDRPERFM interrupt mask register
      DDRPERFM_IMSK    : aliased DDRPERFM_IMSK_Register;
      --  DDRPERFM interrupt clear register
      DDRPERFM_ICLR    : aliased DDRPERFM_ICLR_Register;
      --  DDRPERFM counter clear register
      DDRPERFM_CLR     : aliased DDRPERFM_CLR_Register;
      --  DDRPERFM configuration register 0
      DDRPERFM_CFG0    : aliased DDRPERFM_CFG0_Register;
      --  DDRPERFM configuration register 1
      DDRPERFM_CFG1    : aliased DDRPERFM_CFG1_Register;
      --  DDRPERFM configuration register 2
      DDRPERFM_CFG2    : aliased DDRPERFM_CFG2_Register;
      --  DDRPERFM configuration register 3
      DDRPERFM_CFG3    : aliased DDRPERFM_CFG3_Register;
      --  DDRPERFM configuration register 4
      DDRPERFM_CFG4    : aliased HAL.UInt32;
      --  DDRPERFM event counter enable register
      DDRPERFM_CFG5    : aliased DDRPERFM_CFG5_Register;
      --  DDRPERFM DRAM information register
      DDRPERFM_DRAMINF : aliased DDRPERFM_DRAMINF_Register;
      --  DDRPERFM event counter 0 register
      DDRPERFM_EVCNT0  : aliased HAL.UInt32;
      --  DDRPERFM event counter 1 register
      DDRPERFM_EVCNT1  : aliased HAL.UInt32;
      --  DDRPERFM event counter 2 register
      DDRPERFM_EVCNT2  : aliased HAL.UInt32;
      --  DDRPERFM event counter 3 register
      DDRPERFM_EVCNT3  : aliased HAL.UInt32;
      --  DDRPERFM event counter 4 register
      DDRPERFM_EVCNT4  : aliased HAL.UInt32;
      --  DDRPERFM event counter 5 register
      DDRPERFM_EVCNT5  : aliased HAL.UInt32;
      --  DDRPERFM event counter 6 register
      DDRPERFM_EVCNT6  : aliased HAL.UInt32;
      --  DDRPERFM event counter 7 register
      DDRPERFM_EVCNT7  : aliased HAL.UInt32;
      --  DDRPERFM time counter register
      DDRPERFM_TCNT    : aliased HAL.UInt32;
      --  DDRPERFM status register
      DDRPERFM_STATUS  : aliased DDRPERFM_STATUS_Register;
   end record
     with Volatile;

   for DDRPERFM_Peripheral use record
      DDRPERFM_CTRL    at 16#0# range 0 .. 31;
      DDRPERFM_IMSK    at 16#4# range 0 .. 31;
      DDRPERFM_ICLR    at 16#8# range 0 .. 31;
      DDRPERFM_CLR     at 16#C# range 0 .. 31;
      DDRPERFM_CFG0    at 16#10# range 0 .. 31;
      DDRPERFM_CFG1    at 16#14# range 0 .. 31;
      DDRPERFM_CFG2    at 16#18# range 0 .. 31;
      DDRPERFM_CFG3    at 16#1C# range 0 .. 31;
      DDRPERFM_CFG4    at 16#20# range 0 .. 31;
      DDRPERFM_CFG5    at 16#24# range 0 .. 31;
      DDRPERFM_DRAMINF at 16#28# range 0 .. 31;
      DDRPERFM_EVCNT0  at 16#40# range 0 .. 31;
      DDRPERFM_EVCNT1  at 16#44# range 0 .. 31;
      DDRPERFM_EVCNT2  at 16#48# range 0 .. 31;
      DDRPERFM_EVCNT3  at 16#4C# range 0 .. 31;
      DDRPERFM_EVCNT4  at 16#50# range 0 .. 31;
      DDRPERFM_EVCNT5  at 16#54# range 0 .. 31;
      DDRPERFM_EVCNT6  at 16#58# range 0 .. 31;
      DDRPERFM_EVCNT7  at 16#5C# range 0 .. 31;
      DDRPERFM_TCNT    at 16#60# range 0 .. 31;
      DDRPERFM_STATUS  at 16#80# range 0 .. 31;
   end record;

   --  DDRPERFM register block
   DDRPERFM_Periph : aliased DDRPERFM_Peripheral
     with Import, Address => DDRPERFM_Base;

   --  DDRPERFM register block
   DDRPERFM_S_Periph : aliased DDRPERFM_Peripheral
     with Import, Address => DDRPERFM_S_Base;

end STM32_SVD.DDRPERFM;
