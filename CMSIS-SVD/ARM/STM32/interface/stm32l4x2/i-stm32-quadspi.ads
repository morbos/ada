--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L4x2.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.QUADSPI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR_EN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_ABORT_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DMAEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_TCEN_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SSHIFT_Field is Interfaces.Bit_Types.Bit;
   subtype CR_DFM_Field is Interfaces.Bit_Types.Bit;
   subtype CR_FSEL_Field is Interfaces.Bit_Types.Bit;
   subtype CR_FTHRES_Field is Interfaces.Bit_Types.UInt5;
   subtype CR_TEIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_TCIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_FTIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_SMIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_TOIE_Field is Interfaces.Bit_Types.Bit;
   subtype CR_APMS_Field is Interfaces.Bit_Types.Bit;
   subtype CR_PMM_Field is Interfaces.Bit_Types.Bit;
   subtype CR_PRESCALER_Field is Interfaces.Bit_Types.Byte;

   --  control register
   type CR_Register is record
      --  Enable
      EN             : CR_EN_Field := 16#0#;
      --  Abort request
      ABORT_k        : CR_ABORT_Field := 16#0#;
      --  DMA enable
      DMAEN          : CR_DMAEN_Field := 16#0#;
      --  Timeout counter enable
      TCEN           : CR_TCEN_Field := 16#0#;
      --  Sample shift
      SSHIFT         : CR_SSHIFT_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Dual-flash mode
      DFM            : CR_DFM_Field := 16#0#;
      --  FLASH memory selection
      FSEL           : CR_FSEL_Field := 16#0#;
      --  IFO threshold level
      FTHRES         : CR_FTHRES_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Transfer error interrupt enable
      TEIE           : CR_TEIE_Field := 16#0#;
      --  Transfer complete interrupt enable
      TCIE           : CR_TCIE_Field := 16#0#;
      --  FIFO threshold interrupt enable
      FTIE           : CR_FTIE_Field := 16#0#;
      --  Status match interrupt enable
      SMIE           : CR_SMIE_Field := 16#0#;
      --  TimeOut interrupt enable
      TOIE           : CR_TOIE_Field := 16#0#;
      --  unspecified
      Reserved_21_21 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Automatic poll mode stop
      APMS           : CR_APMS_Field := 16#0#;
      --  Polling match mode
      PMM            : CR_PMM_Field := 16#0#;
      --  Clock prescaler
      PRESCALER      : CR_PRESCALER_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      EN             at 0 range 0 .. 0;
      ABORT_k        at 0 range 1 .. 1;
      DMAEN          at 0 range 2 .. 2;
      TCEN           at 0 range 3 .. 3;
      SSHIFT         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      DFM            at 0 range 6 .. 6;
      FSEL           at 0 range 7 .. 7;
      FTHRES         at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TEIE           at 0 range 16 .. 16;
      TCIE           at 0 range 17 .. 17;
      FTIE           at 0 range 18 .. 18;
      SMIE           at 0 range 19 .. 19;
      TOIE           at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      APMS           at 0 range 22 .. 22;
      PMM            at 0 range 23 .. 23;
      PRESCALER      at 0 range 24 .. 31;
   end record;

   subtype DCR_CKMODE_Field is Interfaces.Bit_Types.Bit;
   subtype DCR_CSHT_Field is Interfaces.Bit_Types.UInt3;
   subtype DCR_FSIZE_Field is Interfaces.Bit_Types.UInt5;

   --  device configuration register
   type DCR_Register is record
      --  Mode 0 / mode 3
      CKMODE         : DCR_CKMODE_Field := 16#0#;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Chip select high time
      CSHT           : DCR_CSHT_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  FLASH memory size
      FSIZE          : DCR_FSIZE_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCR_Register use record
      CKMODE         at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      CSHT           at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      FSIZE          at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype SR_TEF_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TCF_Field is Interfaces.Bit_Types.Bit;
   subtype SR_FTF_Field is Interfaces.Bit_Types.Bit;
   subtype SR_SMF_Field is Interfaces.Bit_Types.Bit;
   subtype SR_TOF_Field is Interfaces.Bit_Types.Bit;
   subtype SR_BUSY_Field is Interfaces.Bit_Types.Bit;
   subtype SR_FLEVEL_Field is Interfaces.Bit_Types.UInt7;

   --  status register
   type SR_Register is record
      --  Read-only. Transfer error flag
      TEF            : SR_TEF_Field;
      --  Read-only. Transfer complete flag
      TCF            : SR_TCF_Field;
      --  Read-only. FIFO threshold flag
      FTF            : SR_FTF_Field;
      --  Read-only. Status match flag
      SMF            : SR_SMF_Field;
      --  Read-only. Timeout flag
      TOF            : SR_TOF_Field;
      --  Read-only. Busy
      BUSY           : SR_BUSY_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.Bit_Types.UInt2;
      --  Read-only. FIFO level
      FLEVEL         : SR_FLEVEL_Field;
      --  unspecified
      Reserved_15_31 : Interfaces.Bit_Types.UInt17;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      TEF            at 0 range 0 .. 0;
      TCF            at 0 range 1 .. 1;
      FTF            at 0 range 2 .. 2;
      SMF            at 0 range 3 .. 3;
      TOF            at 0 range 4 .. 4;
      BUSY           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FLEVEL         at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype FCR_CTEF_Field is Interfaces.Bit_Types.Bit;
   subtype FCR_CTCF_Field is Interfaces.Bit_Types.Bit;
   subtype FCR_CSMF_Field is Interfaces.Bit_Types.Bit;
   subtype FCR_CTOF_Field is Interfaces.Bit_Types.Bit;

   --  flag clear register
   type FCR_Register is record
      --  Clear transfer error flag
      CTEF          : FCR_CTEF_Field := 16#0#;
      --  Clear transfer complete flag
      CTCF          : FCR_CTCF_Field := 16#0#;
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Clear status match flag
      CSMF          : FCR_CSMF_Field := 16#0#;
      --  Clear timeout flag
      CTOF          : FCR_CTOF_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FCR_Register use record
      CTEF          at 0 range 0 .. 0;
      CTCF          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      CSMF          at 0 range 3 .. 3;
      CTOF          at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype CCR_INSTRUCTION_Field is Interfaces.Bit_Types.Byte;
   subtype CCR_IMODE_Field is Interfaces.Bit_Types.UInt2;
   subtype CCR_ADMODE_Field is Interfaces.Bit_Types.UInt2;
   subtype CCR_ADSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype CCR_ABMODE_Field is Interfaces.Bit_Types.UInt2;
   subtype CCR_ABSIZE_Field is Interfaces.Bit_Types.UInt2;
   subtype CCR_DCYC_Field is Interfaces.Bit_Types.UInt5;
   subtype CCR_DMODE_Field is Interfaces.Bit_Types.UInt2;
   subtype CCR_FMODE_Field is Interfaces.Bit_Types.UInt2;
   subtype CCR_SIOO_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_DHHC_Field is Interfaces.Bit_Types.Bit;
   subtype CCR_DDRM_Field is Interfaces.Bit_Types.Bit;

   --  communication configuration register
   type CCR_Register is record
      --  Instruction
      INSTRUCTION    : CCR_INSTRUCTION_Field := 16#0#;
      --  Instruction mode
      IMODE          : CCR_IMODE_Field := 16#0#;
      --  Address mode
      ADMODE         : CCR_ADMODE_Field := 16#0#;
      --  Address size
      ADSIZE         : CCR_ADSIZE_Field := 16#0#;
      --  Alternate bytes mode
      ABMODE         : CCR_ABMODE_Field := 16#0#;
      --  Alternate bytes size
      ABSIZE         : CCR_ABSIZE_Field := 16#0#;
      --  Number of dummy cycles
      DCYC           : CCR_DCYC_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Data mode
      DMODE          : CCR_DMODE_Field := 16#0#;
      --  Functional mode
      FMODE          : CCR_FMODE_Field := 16#0#;
      --  Send instruction only once mode
      SIOO           : CCR_SIOO_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.Bit_Types.Bit := 16#0#;
      --  DDR hold half cycle
      DHHC           : CCR_DHHC_Field := 16#0#;
      --  Double data rate mode
      DDRM           : CCR_DDRM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      INSTRUCTION    at 0 range 0 .. 7;
      IMODE          at 0 range 8 .. 9;
      ADMODE         at 0 range 10 .. 11;
      ADSIZE         at 0 range 12 .. 13;
      ABMODE         at 0 range 14 .. 15;
      ABSIZE         at 0 range 16 .. 17;
      DCYC           at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      DMODE          at 0 range 24 .. 25;
      FMODE          at 0 range 26 .. 27;
      SIOO           at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      DHHC           at 0 range 30 .. 30;
      DDRM           at 0 range 31 .. 31;
   end record;

   subtype PIR_INTERVAL_Field is Interfaces.Bit_Types.Short;

   --  polling interval register
   type PIR_Register is record
      --  Polling interval
      INTERVAL       : PIR_INTERVAL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIR_Register use record
      INTERVAL       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LPTR_TIMEOUT_Field is Interfaces.Bit_Types.Short;

   --  low-power timeout register
   type LPTR_Register is record
      --  Timeout period
      TIMEOUT        : LPTR_TIMEOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.Short := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LPTR_Register use record
      TIMEOUT        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  QuadSPI interface
   type QUADSPI_Peripheral is record
      --  control register
      CR    : aliased CR_Register;
      --  device configuration register
      DCR   : aliased DCR_Register;
      --  status register
      SR    : aliased SR_Register;
      --  flag clear register
      FCR   : aliased FCR_Register;
      --  data length register
      DLR   : aliased Interfaces.Bit_Types.Word;
      --  communication configuration register
      CCR   : aliased CCR_Register;
      --  address register
      AR    : aliased Interfaces.Bit_Types.Word;
      --  ABR
      ABR   : aliased Interfaces.Bit_Types.Word;
      --  data register
      DR    : aliased Interfaces.Bit_Types.Word;
      --  polling status mask register
      PSMKR : aliased Interfaces.Bit_Types.Word;
      --  polling status match register
      PSMAR : aliased Interfaces.Bit_Types.Word;
      --  polling interval register
      PIR   : aliased PIR_Register;
      --  low-power timeout register
      LPTR  : aliased LPTR_Register;
   end record
     with Volatile;

   for QUADSPI_Peripheral use record
      CR    at 16#0# range 0 .. 31;
      DCR   at 16#4# range 0 .. 31;
      SR    at 16#8# range 0 .. 31;
      FCR   at 16#C# range 0 .. 31;
      DLR   at 16#10# range 0 .. 31;
      CCR   at 16#14# range 0 .. 31;
      AR    at 16#18# range 0 .. 31;
      ABR   at 16#1C# range 0 .. 31;
      DR    at 16#20# range 0 .. 31;
      PSMKR at 16#24# range 0 .. 31;
      PSMAR at 16#28# range 0 .. 31;
      PIR   at 16#2C# range 0 .. 31;
      LPTR  at 16#30# range 0 .. 31;
   end record;

   --  QuadSPI interface
   QUADSPI_Periph : aliased QUADSPI_Peripheral
     with Import, Address => System'To_Address (16#A0001000#);

end Interfaces.STM32.QUADSPI;
