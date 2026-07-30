--  This spec has been automatically generated from STM32U3C5.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.SYSCFG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  SYSCFG secure configuration register
   type SYSCFG_SECCFGR_Register is record
      --  Security of SYSCFG clock control, memory erase status, and
      --  compensation cell registers
      SYSCFGSEC     : Boolean := False;
      --  Class B security
      CLASSBSEC     : Boolean := False;
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  FPU security
      FPUSEC        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_SECCFGR_Register use record
      SYSCFGSEC     at 0 range 0 .. 0;
      CLASSBSEC     at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      FPUSEC        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SYSCFG_CFGR1_IR_MOD_Field is HAL.UInt2;

   --  SYSCFG configuration register 1
   type SYSCFG_CFGR1_Register is record
      --  unspecified
      Reserved_0_4    : HAL.UInt5 := 16#0#;
      --  IR output polarity selection
      IR_POL          : Boolean := False;
      --  IR modulation envelope signal selection
      IR_MOD          : SYSCFG_CFGR1_IR_MOD_Field := 16#0#;
      --  I/O analog switch voltage booster enable
      BOOSTEN         : Boolean := False;
      --  GPIO analog switch control voltage selection
      ANASWVDD        : Boolean := False;
      --  unspecified
      Reserved_10_15  : HAL.UInt6 := 16#0#;
      --  Fast-mode Plus driving capability activation on PBi
      PB6_FMP         : Boolean := False;
      --  Fast-mode Plus driving capability activation on PBi
      PB7_FMP         : Boolean := False;
      --  Fast-mode Plus driving capability activation on PBi
      PB8_FMP         : Boolean := False;
      --  Fast-mode Plus driving capability activation on PBi
      PB9_FMP         : Boolean := False;
      --  unspecified
      Reserved_20_23  : HAL.UInt4 := 16#0#;
      --  Comparator mode for G2_IO1 on PB4
      TSC_G2_IO1_COMP : Boolean := False;
      --  Comparator mode for G2_IO3 on PB6
      TSC_G2_IO3_COMP : Boolean := False;
      --  unspecified
      Reserved_26_31  : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CFGR1_Register use record
      Reserved_0_4    at 0 range 0 .. 4;
      IR_POL          at 0 range 5 .. 5;
      IR_MOD          at 0 range 6 .. 7;
      BOOSTEN         at 0 range 8 .. 8;
      ANASWVDD        at 0 range 9 .. 9;
      Reserved_10_15  at 0 range 10 .. 15;
      PB6_FMP         at 0 range 16 .. 16;
      PB7_FMP         at 0 range 17 .. 17;
      PB8_FMP         at 0 range 18 .. 18;
      PB9_FMP         at 0 range 19 .. 19;
      Reserved_20_23  at 0 range 20 .. 23;
      TSC_G2_IO1_COMP at 0 range 24 .. 24;
      TSC_G2_IO3_COMP at 0 range 25 .. 25;
      Reserved_26_31  at 0 range 26 .. 31;
   end record;

   --  SYSCFG FPU interrupt mask register
   type SYSCFG_FPUIMR_Register is record
      --  Floating point unit interrupt enable bit - invalid operation
      FPU_IOIE      : Boolean := True;
      --  Floating point unit interrupt enable bit - divide-by-zero
      FPU_DZIE      : Boolean := True;
      --  Floating point unit interrupt enable bit - underflow
      FPU_UFIE      : Boolean := True;
      --  Floating point unit interrupt enable bit - overflow
      FPU_OFIE      : Boolean := True;
      --  Floating point unit interrupt enable bit - input denormal
      FPU_IDIE      : Boolean := True;
      --  Floating point unit interrupt enable bit - inexact
      FPU_IXIE      : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_FPUIMR_Register use record
      FPU_IOIE      at 0 range 0 .. 0;
      FPU_DZIE      at 0 range 1 .. 1;
      FPU_UFIE      at 0 range 2 .. 2;
      FPU_OFIE      at 0 range 3 .. 3;
      FPU_IDIE      at 0 range 4 .. 4;
      FPU_IXIE      at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  SYSCFG CPU nonsecure lock register
   type SYSCFG_CNSLCKR_Register is record
      --  VTOR_NS register lock
      LOCKNSVTOR    : Boolean := False;
      --  Nonsecure MPU registers lock
      LOCKNSMPU     : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CNSLCKR_Register use record
      LOCKNSVTOR    at 0 range 0 .. 0;
      LOCKNSMPU     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SYSCFG CPU secure lock register
   type SYSCFG_CSLCKR_Register is record
      --  VTOR_S register and AIRCR register bits lock
      LOCKSVTAIRCR  : Boolean := False;
      --  Secure MPU registers lock
      LOCKSMPU      : Boolean := False;
      --  SAU register lock
      LOCKSAU       : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CSLCKR_Register use record
      LOCKSVTAIRCR  at 0 range 0 .. 0;
      LOCKSMPU      at 0 range 1 .. 1;
      LOCKSAU       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  SYSCFG configuration register 2
   type SYSCFG_CFGR2_Register is record
      --  Cortex-M33 LOCKUP (HardFault) output enable
      CLL           : Boolean := False;
      --  SRAM2 parity bit
      SPL           : Boolean := False;
      --  PVD lock enable bit
      PVDL          : Boolean := False;
      --  ECC lock
      ECCL          : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CFGR2_Register use record
      CLL           at 0 range 0 .. 0;
      SPL           at 0 range 1 .. 1;
      PVDL          at 0 range 2 .. 2;
      ECCL          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  SYSCFG_CCCSR_RDY array
   type SYSCFG_CCCSR_RDY_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for SYSCFG_CCCSR_RDY
   type SYSCFG_CCCSR_RDY_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RDY as a value
            Val : HAL.UInt2;
         when True =>
            --  RDY as an array
            Arr : SYSCFG_CCCSR_RDY_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SYSCFG_CCCSR_RDY_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  SYSCFG compensation cell control/status register
   type SYSCFG_CCCSR_Register is record
      --  VDD I/O compensation cell enable
      EN1            : Boolean := False;
      --  VDD I/O code selection
      CS1            : Boolean := True;
      --  VDDIO2 I/O compensation cell enable
      EN2            : Boolean := False;
      --  VDDIO2 I/O code selection
      CS2            : Boolean := True;
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Read-only. VDD I/O compensation cell ready flag
      RDY            : SYSCFG_CCCSR_RDY_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CCCSR_Register use record
      EN1            at 0 range 0 .. 0;
      CS1            at 0 range 1 .. 1;
      EN2            at 0 range 2 .. 2;
      CS2            at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      RDY            at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SYSCFG_CCVR_NCV1_Field is HAL.UInt4;
   subtype SYSCFG_CCVR_PCV1_Field is HAL.UInt4;
   subtype SYSCFG_CCVR_NCV2_Field is HAL.UInt4;
   subtype SYSCFG_CCVR_PCV2_Field is HAL.UInt4;

   --  SYSCFG compensation cell value register
   type SYSCFG_CCVR_Register is record
      --  Read-only. NMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDless than/sub>
      NCV1           : SYSCFG_CCVR_NCV1_Field;
      --  Read-only. PMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDless than/sub>
      PCV1           : SYSCFG_CCVR_PCV1_Field;
      --  Read-only. NMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDIO2less than/sub>
      NCV2           : SYSCFG_CCVR_NCV2_Field;
      --  Read-only. PMOS compensation value of the I/Os supplied by Vless
      --  thansub>DDIO2less than/sub>
      PCV2           : SYSCFG_CCVR_PCV2_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CCVR_Register use record
      NCV1           at 0 range 0 .. 3;
      PCV1           at 0 range 4 .. 7;
      NCV2           at 0 range 8 .. 11;
      PCV2           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCFG_CCCR_NCC1_Field is HAL.UInt4;
   subtype SYSCFG_CCCR_PCC1_Field is HAL.UInt4;
   subtype SYSCFG_CCCR_NCC2_Field is HAL.UInt4;
   subtype SYSCFG_CCCR_PCC2_Field is HAL.UInt4;

   --  SYSCFG compensation cell code register
   type SYSCFG_CCCR_Register is record
      --  NMOS compensation code of the I/Os supplied by Vless thansub>DDless
      --  than/sub>
      NCC1           : SYSCFG_CCCR_NCC1_Field := 16#8#;
      --  PMOS compensation code of the I/Os supplied by Vless thansub>DDless
      --  than/sub>
      PCC1           : SYSCFG_CCCR_PCC1_Field := 16#7#;
      --  NMOS compensation code of the I/Os supplied by Vless
      --  thansub>DDIO2less than/sub>
      NCC2           : SYSCFG_CCCR_NCC2_Field := 16#8#;
      --  PMOS compensation code of the I/Os supplied by Vless
      --  thansub>DDIO2less than/sub>
      PCC2           : SYSCFG_CCCR_PCC2_Field := 16#7#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_CCCR_Register use record
      NCC1           at 0 range 0 .. 3;
      PCC1           at 0 range 4 .. 7;
      NCC2           at 0 range 8 .. 11;
      PCC2           at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SYSCFG_RSSCMDR_RSSCMD_Field is HAL.UInt16;

   --  SYSCFG RSS command register
   type SYSCFG_RSSCMDR_Register is record
      --  RSS commands
      RSSCMD         : SYSCFG_RSSCMDR_RSSCMD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSCFG_RSSCMDR_Register use record
      RSSCMD         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SYSCFG register block
   type SYSCFG_Peripheral is record
      --  SYSCFG secure configuration register
      SYSCFG_SECCFGR : aliased SYSCFG_SECCFGR_Register;
      --  SYSCFG configuration register 1
      SYSCFG_CFGR1   : aliased SYSCFG_CFGR1_Register;
      --  SYSCFG FPU interrupt mask register
      SYSCFG_FPUIMR  : aliased SYSCFG_FPUIMR_Register;
      --  SYSCFG CPU nonsecure lock register
      SYSCFG_CNSLCKR : aliased SYSCFG_CNSLCKR_Register;
      --  SYSCFG CPU secure lock register
      SYSCFG_CSLCKR  : aliased SYSCFG_CSLCKR_Register;
      --  SYSCFG configuration register 2
      SYSCFG_CFGR2   : aliased SYSCFG_CFGR2_Register;
      --  SYSCFG compensation cell control/status register
      SYSCFG_CCCSR   : aliased SYSCFG_CCCSR_Register;
      --  SYSCFG compensation cell value register
      SYSCFG_CCVR    : aliased SYSCFG_CCVR_Register;
      --  SYSCFG compensation cell code register
      SYSCFG_CCCR    : aliased SYSCFG_CCCR_Register;
      --  SYSCFG RSS command register
      SYSCFG_RSSCMDR : aliased SYSCFG_RSSCMDR_Register;
   end record
     with Volatile;

   for SYSCFG_Peripheral use record
      SYSCFG_SECCFGR at 16#0# range 0 .. 31;
      SYSCFG_CFGR1   at 16#4# range 0 .. 31;
      SYSCFG_FPUIMR  at 16#8# range 0 .. 31;
      SYSCFG_CNSLCKR at 16#C# range 0 .. 31;
      SYSCFG_CSLCKR  at 16#10# range 0 .. 31;
      SYSCFG_CFGR2   at 16#14# range 0 .. 31;
      SYSCFG_CCCSR   at 16#1C# range 0 .. 31;
      SYSCFG_CCVR    at 16#20# range 0 .. 31;
      SYSCFG_CCCR    at 16#24# range 0 .. 31;
      SYSCFG_RSSCMDR at 16#2C# range 0 .. 31;
   end record;

   --  SYSCFG register block
   SEC_SYSCFG_Periph : aliased SYSCFG_Peripheral
     with Import, Address => SEC_SYSCFG_Base;

   --  SYSCFG register block
   SYSCFG_Periph : aliased SYSCFG_Peripheral
     with Import, Address => SYSCFG_Base;

end STM32_SVD.SYSCFG;
