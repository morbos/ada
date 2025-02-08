--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.MDF is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype MDF_GCR_ILVNB_Field is HAL.UInt4;

   --  MDF global control register
   type MDF_GCR_Register is record
      --  Trigger output control
      TRGO          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Interleaved number
      ILVNB         : MDF_GCR_ILVNB_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_GCR_Register use record
      TRGO          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      ILVNB         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MDF_CKGCR_TRGSRC_Field is HAL.UInt4;
   subtype MDF_CKGCR_CCKDIV_Field is HAL.UInt4;
   subtype MDF_CKGCR_PROCDIV_Field is HAL.UInt7;

   --  MDF clock generator control register
   type MDF_CKGCR_Register is record
      --  CKGEN dividers enable
      CKGDEN         : Boolean := False;
      --  MDF_CCK0 clock enable
      CCK0EN         : Boolean := False;
      --  MDF_CCK1 clock enable
      CCK1EN         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Clock generator mode
      CKGMOD         : Boolean := False;
      --  MDF_CCK0 direction
      CCK0DIR        : Boolean := False;
      --  MDF_CCK1 direction
      CCK1DIR        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  CKGEN trigger sensitivity selection
      TRGSENS        : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Digital filter trigger signal selection
      TRGSRC         : MDF_CKGCR_TRGSRC_Field := 16#0#;
      --  Divider to control the MDF_CCK clock
      CCKDIV         : MDF_CKGCR_CCKDIV_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  Divider to control the serial interface clock
      PROCDIV        : MDF_CKGCR_PROCDIV_Field := 16#0#;
      --  Read-only. Clock generator active flag
      CKGACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_CKGCR_Register use record
      CKGDEN         at 0 range 0 .. 0;
      CCK0EN         at 0 range 1 .. 1;
      CCK1EN         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CKGMOD         at 0 range 4 .. 4;
      CCK0DIR        at 0 range 5 .. 5;
      CCK1DIR        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TRGSENS        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      TRGSRC         at 0 range 12 .. 15;
      CCKDIV         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PROCDIV        at 0 range 24 .. 30;
      CKGACTIVE      at 0 range 31 .. 31;
   end record;

   subtype MDF_SITF0CR_SCKSRC_Field is HAL.UInt2;
   subtype MDF_SITF0CR_SITFMOD_Field is HAL.UInt2;
   subtype MDF_SITF0CR_STH_Field is HAL.UInt5;

   --  MDF serial interface control register 0
   type MDF_SITF0CR_Register is record
      --  Serial interface enable
      SITFEN         : Boolean := False;
      --  Serial clock source
      SCKSRC         : MDF_SITF0CR_SCKSRC_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Serial interface type
      SITFMOD        : MDF_SITF0CR_SITFMOD_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Manchester symbol threshold/SPI threshold
      STH            : MDF_SITF0CR_STH_Field := 16#1F#;
      --  unspecified
      Reserved_13_30 : HAL.UInt18 := 16#0#;
      --  Read-only. Serial interface active flag
      SITFACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SITF0CR_Register use record
      SITFEN         at 0 range 0 .. 0;
      SCKSRC         at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SITFMOD        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      STH            at 0 range 8 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      SITFACTIVE     at 0 range 31 .. 31;
   end record;

   subtype MDF_BSMX0CR_BSSEL_Field is HAL.UInt5;

   --  MDF bitstream matrix control register 0
   type MDF_BSMX0CR_Register is record
      --  Bitstream Selection
      BSSEL         : MDF_BSMX0CR_BSSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : HAL.UInt26 := 16#0#;
      --  Read-only. BSMX active flag
      BSMXACTIVE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_BSMX0CR_Register use record
      BSSEL         at 0 range 0 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      BSMXACTIVE    at 0 range 31 .. 31;
   end record;

   subtype MDF_DFLT0CR_ACQMOD_Field is HAL.UInt3;
   subtype MDF_DFLT0CR_TRGSRC_Field is HAL.UInt4;
   subtype MDF_DFLT0CR_NBDIS_Field is HAL.UInt8;

   --  MDF digital filter control register 0
   type MDF_DFLT0CR_Register is record
      --  Write-only. Digital filter enable
      DFLTEN         : Boolean := False;
      --  DMA requests enable
      DMAEN          : Boolean := False;
      --  RXFIFO Threshold selection
      FTH            : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Digital filter trigger mode
      ACQMOD         : MDF_DFLT0CR_ACQMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Digital filter trigger sensitivity selection
      TRGSENS        : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Digital filter trigger signal selection
      TRGSRC         : MDF_DFLT0CR_TRGSRC_Field := 16#0#;
      --  Snapshot data format
      SNPSFMT        : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Number of samples to be discarded
      NBDIS          : MDF_DFLT0CR_NBDIS_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Read-only. Digital filter run status flag
      DFLTRUN        : Boolean := False;
      --  Read-only. Digital filter active flag
      DFLTACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT0CR_Register use record
      DFLTEN         at 0 range 0 .. 0;
      DMAEN          at 0 range 1 .. 1;
      FTH            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ACQMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TRGSENS        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      TRGSRC         at 0 range 12 .. 15;
      SNPSFMT        at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      NBDIS          at 0 range 20 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DFLTRUN        at 0 range 30 .. 30;
      DFLTACTIVE     at 0 range 31 .. 31;
   end record;

   subtype MDF_DFLT0CICR_DATSRC_Field is HAL.UInt2;
   subtype MDF_DFLT0CICR_CICMOD_Field is HAL.UInt3;
   subtype MDF_DFLT0CICR_MCICD_Field is HAL.UInt8;
   subtype MDF_DFLT0CICR_SCALE_Field is HAL.UInt6;

   --  MDF digital filter configuration register 0
   type MDF_DFLT0CICR_Register is record
      --  Source data for the digital filter
      DATSRC         : MDF_DFLT0CICR_DATSRC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Select the CIC mode
      CICMOD         : MDF_DFLT0CICR_CICMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  CIC decimation ratio selection
      MCICD          : MDF_DFLT0CICR_MCICD_Field := 16#0#;
      --  CIC decimation ratio selection
      MCICD8         : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Scaling factor selection
      SCALE          : MDF_DFLT0CICR_SCALE_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT0CICR_Register use record
      DATSRC         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CICMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MCICD          at 0 range 8 .. 15;
      MCICD8         at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      SCALE          at 0 range 20 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_DFLT0RSFR_HPFC_Field is HAL.UInt2;

   --  MDF reshape filter configuration register 0
   type MDF_DFLT0RSFR_Register is record
      --  Reshaper filter bypass
      RSFLTBYP       : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Reshaper filter decimation ratio
      RSFLTD         : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  High-pass filter bypass
      HPFBYP         : Boolean := False;
      --  High-pass filter cut-off frequency
      HPFC           : MDF_DFLT0RSFR_HPFC_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT0RSFR_Register use record
      RSFLTBYP       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      RSFLTD         at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      HPFBYP         at 0 range 7 .. 7;
      HPFC           at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype MDF_DFLT0INTR_INTDIV_Field is HAL.UInt2;
   subtype MDF_DFLT0INTR_INTVAL_Field is HAL.UInt7;

   --  MDF integrator configuration register 0
   type MDF_DFLT0INTR_Register is record
      --  Integrator output division
      INTDIV         : MDF_DFLT0INTR_INTDIV_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Integration value selection
      INTVAL         : MDF_DFLT0INTR_INTVAL_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT0INTR_Register use record
      INTDIV         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      INTVAL         at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype MDF_OLD0CR_BKOLD_Field is HAL.UInt4;
   subtype MDF_OLD0CR_ACICN_Field is HAL.UInt2;
   subtype MDF_OLD0CR_ACICD_Field is HAL.UInt5;

   --  MDF out-of limit detector control register 0
   type MDF_OLD0CR_Register is record
      --  OLDx enable
      OLDEN          : Boolean := False;
      --  Threshold In band
      THINB          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Break signal assignment for out-of limit detector
      BKOLD          : MDF_OLD0CR_BKOLD_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  OLDx CIC order selection
      ACICN          : MDF_OLD0CR_ACICN_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  OLDx CIC decimation ratio selection
      ACICD          : MDF_OLD0CR_ACICD_Field := 16#0#;
      --  unspecified
      Reserved_22_30 : HAL.UInt9 := 16#0#;
      --  Read-only. OLDx active flag
      OLDACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD0CR_Register use record
      OLDEN          at 0 range 0 .. 0;
      THINB          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      BKOLD          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      ACICN          at 0 range 12 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      ACICD          at 0 range 17 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      OLDACTIVE      at 0 range 31 .. 31;
   end record;

   subtype MDF_OLD0THLR_OLDTHL_Field is HAL.UInt26;

   --  MDF OLD0 low threshold register 0
   type MDF_OLD0THLR_Register is record
      --  OLD low threshold value
      OLDTHL         : MDF_OLD0THLR_OLDTHL_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD0THLR_Register use record
      OLDTHL         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_OLD0THHR_OLDTHH_Field is HAL.UInt26;

   --  MDF OLD0 high threshold register 0
   type MDF_OLD0THHR_Register is record
      --  OLDx high threshold value
      OLDTHH         : MDF_OLD0THHR_OLDTHH_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD0THHR_Register use record
      OLDTHH         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_DLY0CR_SKPDLY_Field is HAL.UInt7;

   --  MDF delay control register 0
   type MDF_DLY0CR_Register is record
      --  Delay to apply to a bitstream
      SKPDLY        : MDF_DLY0CR_SKPDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_30 : HAL.UInt24 := 16#0#;
      --  Read-only. Skip busy flag
      SKPBF         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DLY0CR_Register use record
      SKPDLY        at 0 range 0 .. 6;
      Reserved_7_30 at 0 range 7 .. 30;
      SKPBF         at 0 range 31 .. 31;
   end record;

   subtype MDF_SCD0CR_BKSCD_Field is HAL.UInt4;
   subtype MDF_SCD0CR_SCDT_Field is HAL.UInt8;

   --  MDF short circuit detector control register 0
   type MDF_SCD0CR_Register is record
      --  SCDx enable
      SCDEN          : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Break signal assignment for short circuit detector
      BKSCD          : MDF_SCD0CR_BKSCD_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  SCDx threshold
      SCDT           : MDF_SCD0CR_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Read-only. SCDx active flag
      SCDACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SCD0CR_Register use record
      SCDEN          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      BKSCD          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SCDT           at 0 range 12 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      SCDACTIVE      at 0 range 31 .. 31;
   end record;

   --  MDF DFLT0 interrupt enable register 0
   type MDF_DFLT0IER_Register is record
      --  RXFIFO threshold interrupt enable
      FTHIE          : Boolean := False;
      --  Data overflow interrupt enable
      DOVRIE         : Boolean := False;
      --  Snapshot data ready interrupt enable
      SSDRIE         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  OLD0 interrupt enable
      OLDIE          : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Snapshot overrun interrupt enable
      SSOVRIE        : Boolean := False;
      --  SCD0 interrupt enable
      SCDIE          : Boolean := False;
      --  Saturation detection interrupt enable
      SATIE          : Boolean := False;
      --  Clock absence detection interrupt enable
      CKABIE         : Boolean := False;
      --  Reshape filter overrun interrupt enable
      RFOVRIE        : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT0IER_Register use record
      FTHIE          at 0 range 0 .. 0;
      DOVRIE         at 0 range 1 .. 1;
      SSDRIE         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OLDIE          at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      SSOVRIE        at 0 range 7 .. 7;
      SCDIE          at 0 range 8 .. 8;
      SATIE          at 0 range 9 .. 9;
      CKABIE         at 0 range 10 .. 10;
      RFOVRIE        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  MDF DFLT0 interrupt status register 0
   type MDF_DFLT0ISR_Register is record
      --  Read-only. RXFIFO threshold flag
      FTHF           : Boolean := False;
      --  Data overflow flag
      DOVRF          : Boolean := False;
      --  Snapshot data ready flag
      SSDRF          : Boolean := False;
      --  Read-only. RXFIFO not-empty flag
      RXNEF          : Boolean := False;
      --  OLD0 flag
      OLDF           : Boolean := False;
      --  Read-only. Low-threshold status flag
      THLF           : Boolean := False;
      --  Read-only. High-threshold status flag
      THHF           : Boolean := False;
      --  Snapshot overrun flag
      SSOVRF         : Boolean := False;
      --  Short-circuit detector flag
      SCDF           : Boolean := False;
      --  Saturation detection flag
      SATF           : Boolean := False;
      --  Clock absence detection flag
      CKABF          : Boolean := False;
      --  Reshape filter overrun detection flag
      RFOVRF         : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT0ISR_Register use record
      FTHF           at 0 range 0 .. 0;
      DOVRF          at 0 range 1 .. 1;
      SSDRF          at 0 range 2 .. 2;
      RXNEF          at 0 range 3 .. 3;
      OLDF           at 0 range 4 .. 4;
      THLF           at 0 range 5 .. 5;
      THHF           at 0 range 6 .. 6;
      SSOVRF         at 0 range 7 .. 7;
      SCDF           at 0 range 8 .. 8;
      SATF           at 0 range 9 .. 9;
      CKABF          at 0 range 10 .. 10;
      RFOVRF         at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype MDF_OEC0CR_OFFSET_Field is HAL.UInt26;

   --  MDF offset error compensation control register 0
   type MDF_OEC0CR_Register is record
      --  Offset error compensation
      OFFSET         : MDF_OEC0CR_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OEC0CR_Register use record
      OFFSET         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_SNPS0DR_MCICDC_Field is HAL.UInt9;
   subtype MDF_SNPS0DR_EXTSDR_Field is HAL.UInt7;
   subtype MDF_SNPS0DR_SDR_Field is HAL.UInt16;

   --  MDF snapshot data register 0
   type MDF_SNPS0DR_Register is record
      --  Read-only. Contains the MCIC decimation counter value when the last
      --  trigger event occurs (MCIC_CNT)
      MCICDC : MDF_SNPS0DR_MCICDC_Field;
      --  Read-only. Extended data size
      EXTSDR : MDF_SNPS0DR_EXTSDR_Field;
      --  Read-only. Contains the 16 MSB of the last valid data processed by
      --  the digital filter.
      SDR    : MDF_SNPS0DR_SDR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SNPS0DR_Register use record
      MCICDC at 0 range 0 .. 8;
      EXTSDR at 0 range 9 .. 15;
      SDR    at 0 range 16 .. 31;
   end record;

   subtype MDF_DFLT0DR_DR_Field is HAL.UInt24;

   --  MDF digital filter data register 0
   type MDF_DFLT0DR_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8;
      --  Read-only. Data processed by digital filter
      DR           : MDF_DFLT0DR_DR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT0DR_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      DR           at 0 range 8 .. 31;
   end record;

   subtype MDF_SITF1CR_SCKSRC_Field is HAL.UInt2;
   subtype MDF_SITF1CR_SITFMOD_Field is HAL.UInt2;
   subtype MDF_SITF1CR_STH_Field is HAL.UInt5;

   --  MDF serial interface control register 1
   type MDF_SITF1CR_Register is record
      --  Serial interface enable
      SITFEN         : Boolean := False;
      --  Serial clock source
      SCKSRC         : MDF_SITF1CR_SCKSRC_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Serial interface type
      SITFMOD        : MDF_SITF1CR_SITFMOD_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Manchester symbol threshold/SPI threshold
      STH            : MDF_SITF1CR_STH_Field := 16#1F#;
      --  unspecified
      Reserved_13_30 : HAL.UInt18 := 16#0#;
      --  Read-only. Serial interface active flag
      SITFACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SITF1CR_Register use record
      SITFEN         at 0 range 0 .. 0;
      SCKSRC         at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SITFMOD        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      STH            at 0 range 8 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      SITFACTIVE     at 0 range 31 .. 31;
   end record;

   subtype MDF_BSMX1CR_BSSEL_Field is HAL.UInt5;

   --  MDF bitstream matrix control register 1
   type MDF_BSMX1CR_Register is record
      --  Bitstream Selection
      BSSEL         : MDF_BSMX1CR_BSSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : HAL.UInt26 := 16#0#;
      --  Read-only. BSMX active flag
      BSMXACTIVE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_BSMX1CR_Register use record
      BSSEL         at 0 range 0 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      BSMXACTIVE    at 0 range 31 .. 31;
   end record;

   subtype MDF_DFLT1CR_ACQMOD_Field is HAL.UInt3;
   subtype MDF_DFLT1CR_TRGSRC_Field is HAL.UInt4;
   subtype MDF_DFLT1CR_NBDIS_Field is HAL.UInt8;

   --  MDF digital filter control register 1
   type MDF_DFLT1CR_Register is record
      --  Write-only. Digital filter enable
      DFLTEN         : Boolean := False;
      --  DMA requests enable
      DMAEN          : Boolean := False;
      --  RXFIFO Threshold selection
      FTH            : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Digital filter trigger mode
      ACQMOD         : MDF_DFLT1CR_ACQMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Digital filter trigger sensitivity selection
      TRGSENS        : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Digital filter trigger signal selection
      TRGSRC         : MDF_DFLT1CR_TRGSRC_Field := 16#0#;
      --  Snapshot data format
      SNPSFMT        : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Number of samples to be discarded
      NBDIS          : MDF_DFLT1CR_NBDIS_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Read-only. Digital filter run status flag
      DFLTRUN        : Boolean := False;
      --  Read-only. Digital filter active flag
      DFLTACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT1CR_Register use record
      DFLTEN         at 0 range 0 .. 0;
      DMAEN          at 0 range 1 .. 1;
      FTH            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ACQMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TRGSENS        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      TRGSRC         at 0 range 12 .. 15;
      SNPSFMT        at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      NBDIS          at 0 range 20 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DFLTRUN        at 0 range 30 .. 30;
      DFLTACTIVE     at 0 range 31 .. 31;
   end record;

   subtype MDF_DFLT1CICR_DATSRC_Field is HAL.UInt2;
   subtype MDF_DFLT1CICR_CICMOD_Field is HAL.UInt3;
   subtype MDF_DFLT1CICR_MCICD_Field is HAL.UInt8;
   subtype MDF_DFLT1CICR_SCALE_Field is HAL.UInt6;

   --  MDF digital filter configuration register 1
   type MDF_DFLT1CICR_Register is record
      --  Source data for the digital filter
      DATSRC         : MDF_DFLT1CICR_DATSRC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Select the CIC mode
      CICMOD         : MDF_DFLT1CICR_CICMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  CIC decimation ratio selection
      MCICD          : MDF_DFLT1CICR_MCICD_Field := 16#0#;
      --  CIC decimation ratio selection
      MCICD8         : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Scaling factor selection
      SCALE          : MDF_DFLT1CICR_SCALE_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT1CICR_Register use record
      DATSRC         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CICMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MCICD          at 0 range 8 .. 15;
      MCICD8         at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      SCALE          at 0 range 20 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_DFLT1RSFR_HPFC_Field is HAL.UInt2;

   --  MDF reshape filter configuration register 1
   type MDF_DFLT1RSFR_Register is record
      --  Reshaper filter bypass
      RSFLTBYP       : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Reshaper filter decimation ratio
      RSFLTD         : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  High-pass filter bypass
      HPFBYP         : Boolean := False;
      --  High-pass filter cut-off frequency
      HPFC           : MDF_DFLT1RSFR_HPFC_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT1RSFR_Register use record
      RSFLTBYP       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      RSFLTD         at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      HPFBYP         at 0 range 7 .. 7;
      HPFC           at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype MDF_DFLT1INTR_INTDIV_Field is HAL.UInt2;
   subtype MDF_DFLT1INTR_INTVAL_Field is HAL.UInt7;

   --  MDF integrator configuration register 1
   type MDF_DFLT1INTR_Register is record
      --  Integrator output division
      INTDIV         : MDF_DFLT1INTR_INTDIV_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Integration value selection
      INTVAL         : MDF_DFLT1INTR_INTVAL_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT1INTR_Register use record
      INTDIV         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      INTVAL         at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype MDF_OLD1CR_BKOLD_Field is HAL.UInt4;
   subtype MDF_OLD1CR_ACICN_Field is HAL.UInt2;
   subtype MDF_OLD1CR_ACICD_Field is HAL.UInt5;

   --  MDF out-of limit detector control register 1
   type MDF_OLD1CR_Register is record
      --  OLDx enable
      OLDEN          : Boolean := False;
      --  Threshold In band
      THINB          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Break signal assignment for out-of limit detector
      BKOLD          : MDF_OLD1CR_BKOLD_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  OLDx CIC order selection
      ACICN          : MDF_OLD1CR_ACICN_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  OLDx CIC decimation ratio selection
      ACICD          : MDF_OLD1CR_ACICD_Field := 16#0#;
      --  unspecified
      Reserved_22_30 : HAL.UInt9 := 16#0#;
      --  Read-only. OLDx active flag
      OLDACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD1CR_Register use record
      OLDEN          at 0 range 0 .. 0;
      THINB          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      BKOLD          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      ACICN          at 0 range 12 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      ACICD          at 0 range 17 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      OLDACTIVE      at 0 range 31 .. 31;
   end record;

   subtype MDF_OLD1THLR_OLDTHL_Field is HAL.UInt26;

   --  MDF OLD1 low threshold register 1
   type MDF_OLD1THLR_Register is record
      --  OLD low threshold value
      OLDTHL         : MDF_OLD1THLR_OLDTHL_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD1THLR_Register use record
      OLDTHL         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_OLD1THHR_OLDTHH_Field is HAL.UInt26;

   --  MDF OLD1 high threshold register 1
   type MDF_OLD1THHR_Register is record
      --  OLDx high threshold value
      OLDTHH         : MDF_OLD1THHR_OLDTHH_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD1THHR_Register use record
      OLDTHH         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_DLY1CR_SKPDLY_Field is HAL.UInt7;

   --  MDF delay control register 1
   type MDF_DLY1CR_Register is record
      --  Delay to apply to a bitstream
      SKPDLY        : MDF_DLY1CR_SKPDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_30 : HAL.UInt24 := 16#0#;
      --  Read-only. Skip busy flag
      SKPBF         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DLY1CR_Register use record
      SKPDLY        at 0 range 0 .. 6;
      Reserved_7_30 at 0 range 7 .. 30;
      SKPBF         at 0 range 31 .. 31;
   end record;

   subtype MDF_SCD1CR_BKSCD_Field is HAL.UInt4;
   subtype MDF_SCD1CR_SCDT_Field is HAL.UInt8;

   --  MDF short circuit detector control register 1
   type MDF_SCD1CR_Register is record
      --  SCDx enable
      SCDEN          : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Break signal assignment for short circuit detector
      BKSCD          : MDF_SCD1CR_BKSCD_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  SCDx threshold
      SCDT           : MDF_SCD1CR_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Read-only. SCDx active flag
      SCDACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SCD1CR_Register use record
      SCDEN          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      BKSCD          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SCDT           at 0 range 12 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      SCDACTIVE      at 0 range 31 .. 31;
   end record;

   --  MDF DFLT1 interrupt enable register 1
   type MDF_DFLT1IER_Register is record
      --  RXFIFO threshold interrupt enable
      FTHIE          : Boolean := False;
      --  Data overflow interrupt enable
      DOVRIE         : Boolean := False;
      --  Snapshot data ready interrupt enable
      SSDRIE         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  OLDx interrupt enable
      OLDIE          : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Snapshot overrun interrupt enable
      SSOVRIE        : Boolean := False;
      --  SCDx interrupt enable
      SCDIE          : Boolean := False;
      --  Saturation detection interrupt enable
      SATIE          : Boolean := False;
      --  Clock absence detection interrupt enable
      CKABIE         : Boolean := False;
      --  Reshape filter overrun interrupt enable
      RFOVRIE        : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT1IER_Register use record
      FTHIE          at 0 range 0 .. 0;
      DOVRIE         at 0 range 1 .. 1;
      SSDRIE         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OLDIE          at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      SSOVRIE        at 0 range 7 .. 7;
      SCDIE          at 0 range 8 .. 8;
      SATIE          at 0 range 9 .. 9;
      CKABIE         at 0 range 10 .. 10;
      RFOVRIE        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  MDF DFLT1 interrupt status register 1
   type MDF_DFLT1ISR_Register is record
      --  Read-only. RXFIFO threshold flag
      FTHF           : Boolean := False;
      --  Data overflow flag
      DOVRF          : Boolean := False;
      --  Snapshot data ready flag
      SSDRF          : Boolean := False;
      --  Read-only. RXFIFO not-empty flag
      RXNEF          : Boolean := False;
      --  OLDx flag
      OLDF           : Boolean := False;
      --  Read-only. Low-threshold status flag
      THLF           : Boolean := False;
      --  Read-only. High-threshold status flag
      THHF           : Boolean := False;
      --  Snapshot overrun flag
      SSOVRF         : Boolean := False;
      --  Short-circuit detector flag
      SCDF           : Boolean := False;
      --  Saturation detection flag
      SATF           : Boolean := False;
      --  Clock absence detection flag
      CKABF          : Boolean := False;
      --  Reshape filter overrun detection flag
      RFOVRF         : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT1ISR_Register use record
      FTHF           at 0 range 0 .. 0;
      DOVRF          at 0 range 1 .. 1;
      SSDRF          at 0 range 2 .. 2;
      RXNEF          at 0 range 3 .. 3;
      OLDF           at 0 range 4 .. 4;
      THLF           at 0 range 5 .. 5;
      THHF           at 0 range 6 .. 6;
      SSOVRF         at 0 range 7 .. 7;
      SCDF           at 0 range 8 .. 8;
      SATF           at 0 range 9 .. 9;
      CKABF          at 0 range 10 .. 10;
      RFOVRF         at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype MDF_OEC1CR_OFFSET_Field is HAL.UInt26;

   --  MDF offset error compensation control register 1
   type MDF_OEC1CR_Register is record
      --  Offset error compensation
      OFFSET         : MDF_OEC1CR_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OEC1CR_Register use record
      OFFSET         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_SNPS1DR_MCICDC_Field is HAL.UInt9;
   subtype MDF_SNPS1DR_EXTSDR_Field is HAL.UInt7;
   subtype MDF_SNPS1DR_SDR_Field is HAL.UInt16;

   --  MDF snapshot data register 1
   type MDF_SNPS1DR_Register is record
      --  Read-only. Contains the MCIC decimation counter value when the last
      --  trigger event occurs (MCIC_CNT)
      MCICDC : MDF_SNPS1DR_MCICDC_Field;
      --  Read-only. Extended data size
      EXTSDR : MDF_SNPS1DR_EXTSDR_Field;
      --  Read-only. Contains the 16 MSB of the last valid data processed by
      --  the digital filter.
      SDR    : MDF_SNPS1DR_SDR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SNPS1DR_Register use record
      MCICDC at 0 range 0 .. 8;
      EXTSDR at 0 range 9 .. 15;
      SDR    at 0 range 16 .. 31;
   end record;

   subtype MDF_DFLT1DR_DR_Field is HAL.UInt24;

   --  MDF digital filter data register 1
   type MDF_DFLT1DR_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8;
      --  Read-only. Data processed by digital filter
      DR           : MDF_DFLT1DR_DR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT1DR_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      DR           at 0 range 8 .. 31;
   end record;

   subtype MDF_SITF2CR_SCKSRC_Field is HAL.UInt2;
   subtype MDF_SITF2CR_SITFMOD_Field is HAL.UInt2;
   subtype MDF_SITF2CR_STH_Field is HAL.UInt5;

   --  MDF serial interface control register 2
   type MDF_SITF2CR_Register is record
      --  Serial interface enable
      SITFEN         : Boolean := False;
      --  Serial clock source
      SCKSRC         : MDF_SITF2CR_SCKSRC_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Serial interface type
      SITFMOD        : MDF_SITF2CR_SITFMOD_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Manchester symbol threshold/SPI threshold
      STH            : MDF_SITF2CR_STH_Field := 16#1F#;
      --  unspecified
      Reserved_13_30 : HAL.UInt18 := 16#0#;
      --  Read-only. Serial interface active flag
      SITFACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SITF2CR_Register use record
      SITFEN         at 0 range 0 .. 0;
      SCKSRC         at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SITFMOD        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      STH            at 0 range 8 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      SITFACTIVE     at 0 range 31 .. 31;
   end record;

   subtype MDF_BSMX2CR_BSSEL_Field is HAL.UInt5;

   --  MDF bitstream matrix control register 2
   type MDF_BSMX2CR_Register is record
      --  Bitstream Selection
      BSSEL         : MDF_BSMX2CR_BSSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : HAL.UInt26 := 16#0#;
      --  Read-only. BSMX active flag
      BSMXACTIVE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_BSMX2CR_Register use record
      BSSEL         at 0 range 0 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      BSMXACTIVE    at 0 range 31 .. 31;
   end record;

   subtype MDF_DFLT2CR_ACQMOD_Field is HAL.UInt3;
   subtype MDF_DFLT2CR_TRGSRC_Field is HAL.UInt4;
   subtype MDF_DFLT2CR_NBDIS_Field is HAL.UInt8;

   --  MDF digital filter control register 2
   type MDF_DFLT2CR_Register is record
      --  Write-only. Digital filter enable
      DFLTEN         : Boolean := False;
      --  DMA requests enable
      DMAEN          : Boolean := False;
      --  RXFIFO Threshold selection
      FTH            : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Digital filter trigger mode
      ACQMOD         : MDF_DFLT2CR_ACQMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Digital filter trigger sensitivity selection
      TRGSENS        : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Digital filter trigger signal selection
      TRGSRC         : MDF_DFLT2CR_TRGSRC_Field := 16#0#;
      --  Snapshot data format
      SNPSFMT        : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Number of samples to be discarded
      NBDIS          : MDF_DFLT2CR_NBDIS_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Read-only. Digital filter run status flag
      DFLTRUN        : Boolean := False;
      --  Read-only. Digital filter active flag
      DFLTACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT2CR_Register use record
      DFLTEN         at 0 range 0 .. 0;
      DMAEN          at 0 range 1 .. 1;
      FTH            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ACQMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TRGSENS        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      TRGSRC         at 0 range 12 .. 15;
      SNPSFMT        at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      NBDIS          at 0 range 20 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DFLTRUN        at 0 range 30 .. 30;
      DFLTACTIVE     at 0 range 31 .. 31;
   end record;

   subtype MDF_DFLT2CICR_DATSRC_Field is HAL.UInt2;
   subtype MDF_DFLT2CICR_CICMOD_Field is HAL.UInt3;
   subtype MDF_DFLT2CICR_MCICD_Field is HAL.UInt8;
   subtype MDF_DFLT2CICR_SCALE_Field is HAL.UInt6;

   --  MDF digital filter configuration register 2
   type MDF_DFLT2CICR_Register is record
      --  Source data for the digital filter
      DATSRC         : MDF_DFLT2CICR_DATSRC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Select the CIC mode
      CICMOD         : MDF_DFLT2CICR_CICMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  CIC decimation ratio selection
      MCICD          : MDF_DFLT2CICR_MCICD_Field := 16#0#;
      --  CIC decimation ratio selection
      MCICD8         : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Scaling factor selection
      SCALE          : MDF_DFLT2CICR_SCALE_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT2CICR_Register use record
      DATSRC         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CICMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MCICD          at 0 range 8 .. 15;
      MCICD8         at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      SCALE          at 0 range 20 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_DFLT2RSFR_HPFC_Field is HAL.UInt2;

   --  MDF reshape filter configuration register 2
   type MDF_DFLT2RSFR_Register is record
      --  Reshaper filter bypass
      RSFLTBYP       : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Reshaper filter decimation ratio
      RSFLTD         : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  High-pass filter bypass
      HPFBYP         : Boolean := False;
      --  High-pass filter cut-off frequency
      HPFC           : MDF_DFLT2RSFR_HPFC_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT2RSFR_Register use record
      RSFLTBYP       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      RSFLTD         at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      HPFBYP         at 0 range 7 .. 7;
      HPFC           at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype MDF_DFLT2INTR_INTDIV_Field is HAL.UInt2;
   subtype MDF_DFLT2INTR_INTVAL_Field is HAL.UInt7;

   --  MDF integrator configuration register 2
   type MDF_DFLT2INTR_Register is record
      --  Integrator output division
      INTDIV         : MDF_DFLT2INTR_INTDIV_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Integration value selection
      INTVAL         : MDF_DFLT2INTR_INTVAL_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT2INTR_Register use record
      INTDIV         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      INTVAL         at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype MDF_OLD2CR_BKOLD_Field is HAL.UInt4;
   subtype MDF_OLD2CR_ACICN_Field is HAL.UInt2;
   subtype MDF_OLD2CR_ACICD_Field is HAL.UInt5;

   --  MDF out-of limit detector control register 2
   type MDF_OLD2CR_Register is record
      --  OLDx enable
      OLDEN          : Boolean := False;
      --  Threshold In band
      THINB          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Break signal assignment for out-of limit detector
      BKOLD          : MDF_OLD2CR_BKOLD_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  OLDx CIC order selection
      ACICN          : MDF_OLD2CR_ACICN_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  OLDx CIC decimation ratio selection
      ACICD          : MDF_OLD2CR_ACICD_Field := 16#0#;
      --  unspecified
      Reserved_22_30 : HAL.UInt9 := 16#0#;
      --  Read-only. OLDx active flag
      OLDACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD2CR_Register use record
      OLDEN          at 0 range 0 .. 0;
      THINB          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      BKOLD          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      ACICN          at 0 range 12 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      ACICD          at 0 range 17 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      OLDACTIVE      at 0 range 31 .. 31;
   end record;

   subtype MDF_OLD2THLR_OLDTHL_Field is HAL.UInt26;

   --  MDF OLD2 low threshold register 2
   type MDF_OLD2THLR_Register is record
      --  OLD low threshold value
      OLDTHL         : MDF_OLD2THLR_OLDTHL_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD2THLR_Register use record
      OLDTHL         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_OLD2THHR_OLDTHH_Field is HAL.UInt26;

   --  MDF OLD2 high threshold register 2
   type MDF_OLD2THHR_Register is record
      --  OLDx high threshold value
      OLDTHH         : MDF_OLD2THHR_OLDTHH_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD2THHR_Register use record
      OLDTHH         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_DLY2CR_SKPDLY_Field is HAL.UInt7;

   --  MDF delay control register 2
   type MDF_DLY2CR_Register is record
      --  Delay to apply to a bitstream
      SKPDLY        : MDF_DLY2CR_SKPDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_30 : HAL.UInt24 := 16#0#;
      --  Read-only. Skip busy flag
      SKPBF         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DLY2CR_Register use record
      SKPDLY        at 0 range 0 .. 6;
      Reserved_7_30 at 0 range 7 .. 30;
      SKPBF         at 0 range 31 .. 31;
   end record;

   subtype MDF_SCD2CR_BKSCD_Field is HAL.UInt4;
   subtype MDF_SCD2CR_SCDT_Field is HAL.UInt8;

   --  MDF short circuit detector control register 2
   type MDF_SCD2CR_Register is record
      --  SCDx enable
      SCDEN          : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Break signal assignment for short circuit detector
      BKSCD          : MDF_SCD2CR_BKSCD_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  SCDx threshold
      SCDT           : MDF_SCD2CR_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Read-only. SCDx active flag
      SCDACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SCD2CR_Register use record
      SCDEN          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      BKSCD          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SCDT           at 0 range 12 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      SCDACTIVE      at 0 range 31 .. 31;
   end record;

   --  MDF DFLT2 interrupt enable register 2
   type MDF_DFLT2IER_Register is record
      --  RXFIFO threshold interrupt enable
      FTHIE          : Boolean := False;
      --  Data overflow interrupt enable
      DOVRIE         : Boolean := False;
      --  Snapshot data ready interrupt enable
      SSDRIE         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  OLDx interrupt enable
      OLDIE          : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Snapshot overrun interrupt enable
      SSOVRIE        : Boolean := False;
      --  SCDx interrupt enable
      SCDIE          : Boolean := False;
      --  Saturation detection interrupt enable
      SATIE          : Boolean := False;
      --  Clock absence detection interrupt enable
      CKABIE         : Boolean := False;
      --  Reshape filter overrun interrupt enable
      RFOVRIE        : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT2IER_Register use record
      FTHIE          at 0 range 0 .. 0;
      DOVRIE         at 0 range 1 .. 1;
      SSDRIE         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OLDIE          at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      SSOVRIE        at 0 range 7 .. 7;
      SCDIE          at 0 range 8 .. 8;
      SATIE          at 0 range 9 .. 9;
      CKABIE         at 0 range 10 .. 10;
      RFOVRIE        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  MDF DFLT2 interrupt status register 2
   type MDF_DFLT2ISR_Register is record
      --  Read-only. RXFIFO threshold flag
      FTHF           : Boolean := False;
      --  Data overflow flag
      DOVRF          : Boolean := False;
      --  Snapshot data ready flag
      SSDRF          : Boolean := False;
      --  Read-only. RXFIFO not-empty flag
      RXNEF          : Boolean := False;
      --  OLDx flag
      OLDF           : Boolean := False;
      --  Read-only. Low-threshold status flag
      THLF           : Boolean := False;
      --  Read-only. High-threshold status flag
      THHF           : Boolean := False;
      --  Snapshot overrun flag
      SSOVRF         : Boolean := False;
      --  Short-circuit detector flag
      SCDF           : Boolean := False;
      --  Saturation detection flag
      SATF           : Boolean := False;
      --  Clock absence detection flag
      CKABF          : Boolean := False;
      --  Reshape filter overrun detection flag
      RFOVRF         : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT2ISR_Register use record
      FTHF           at 0 range 0 .. 0;
      DOVRF          at 0 range 1 .. 1;
      SSDRF          at 0 range 2 .. 2;
      RXNEF          at 0 range 3 .. 3;
      OLDF           at 0 range 4 .. 4;
      THLF           at 0 range 5 .. 5;
      THHF           at 0 range 6 .. 6;
      SSOVRF         at 0 range 7 .. 7;
      SCDF           at 0 range 8 .. 8;
      SATF           at 0 range 9 .. 9;
      CKABF          at 0 range 10 .. 10;
      RFOVRF         at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype MDF_OEC2CR_OFFSET_Field is HAL.UInt26;

   --  MDF offset error compensation control register 2
   type MDF_OEC2CR_Register is record
      --  Offset error compensation
      OFFSET         : MDF_OEC2CR_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OEC2CR_Register use record
      OFFSET         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_SNPS2DR_MCICDC_Field is HAL.UInt9;
   subtype MDF_SNPS2DR_EXTSDR_Field is HAL.UInt7;
   subtype MDF_SNPS2DR_SDR_Field is HAL.UInt16;

   --  MDF snapshot data register 2
   type MDF_SNPS2DR_Register is record
      --  Read-only. Contains the MCIC decimation counter value when the last
      --  trigger event occurs (MCIC_CNT)
      MCICDC : MDF_SNPS2DR_MCICDC_Field;
      --  Read-only. Extended data size
      EXTSDR : MDF_SNPS2DR_EXTSDR_Field;
      --  Read-only. Contains the 16 MSB of the last valid data processed by
      --  the digital filter.
      SDR    : MDF_SNPS2DR_SDR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SNPS2DR_Register use record
      MCICDC at 0 range 0 .. 8;
      EXTSDR at 0 range 9 .. 15;
      SDR    at 0 range 16 .. 31;
   end record;

   subtype MDF_DFLT2DR_DR_Field is HAL.UInt24;

   --  MDF digital filter data register 2
   type MDF_DFLT2DR_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8;
      --  Read-only. Data processed by digital filter
      DR           : MDF_DFLT2DR_DR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT2DR_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      DR           at 0 range 8 .. 31;
   end record;

   subtype MDF_SITF3CR_SCKSRC_Field is HAL.UInt2;
   subtype MDF_SITF3CR_SITFMOD_Field is HAL.UInt2;
   subtype MDF_SITF3CR_STH_Field is HAL.UInt5;

   --  MDF serial interface control register 3
   type MDF_SITF3CR_Register is record
      --  Serial interface enable
      SITFEN         : Boolean := False;
      --  Serial clock source
      SCKSRC         : MDF_SITF3CR_SCKSRC_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Serial interface type
      SITFMOD        : MDF_SITF3CR_SITFMOD_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Manchester symbol threshold/SPI threshold
      STH            : MDF_SITF3CR_STH_Field := 16#1F#;
      --  unspecified
      Reserved_13_30 : HAL.UInt18 := 16#0#;
      --  Read-only. Serial interface active flag
      SITFACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SITF3CR_Register use record
      SITFEN         at 0 range 0 .. 0;
      SCKSRC         at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SITFMOD        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      STH            at 0 range 8 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      SITFACTIVE     at 0 range 31 .. 31;
   end record;

   subtype MDF_BSMX3CR_BSSEL_Field is HAL.UInt5;

   --  MDF bitstream matrix control register 3
   type MDF_BSMX3CR_Register is record
      --  Bitstream Selection
      BSSEL         : MDF_BSMX3CR_BSSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : HAL.UInt26 := 16#0#;
      --  Read-only. BSMX active flag
      BSMXACTIVE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_BSMX3CR_Register use record
      BSSEL         at 0 range 0 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      BSMXACTIVE    at 0 range 31 .. 31;
   end record;

   subtype MDF_DFLT3CR_ACQMOD_Field is HAL.UInt3;
   subtype MDF_DFLT3CR_TRGSRC_Field is HAL.UInt4;
   subtype MDF_DFLT3CR_NBDIS_Field is HAL.UInt8;

   --  MDF digital filter control register 3
   type MDF_DFLT3CR_Register is record
      --  Write-only. Digital filter enable
      DFLTEN         : Boolean := False;
      --  DMA requests enable
      DMAEN          : Boolean := False;
      --  RXFIFO Threshold selection
      FTH            : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Digital filter trigger mode
      ACQMOD         : MDF_DFLT3CR_ACQMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Digital filter trigger sensitivity selection
      TRGSENS        : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Digital filter trigger signal selection
      TRGSRC         : MDF_DFLT3CR_TRGSRC_Field := 16#0#;
      --  Snapshot data format
      SNPSFMT        : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Number of samples to be discarded
      NBDIS          : MDF_DFLT3CR_NBDIS_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Read-only. Digital filter run status flag
      DFLTRUN        : Boolean := False;
      --  Read-only. Digital filter active flag
      DFLTACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT3CR_Register use record
      DFLTEN         at 0 range 0 .. 0;
      DMAEN          at 0 range 1 .. 1;
      FTH            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ACQMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TRGSENS        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      TRGSRC         at 0 range 12 .. 15;
      SNPSFMT        at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      NBDIS          at 0 range 20 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DFLTRUN        at 0 range 30 .. 30;
      DFLTACTIVE     at 0 range 31 .. 31;
   end record;

   subtype MDF_DFLT3CICR_DATSRC_Field is HAL.UInt2;
   subtype MDF_DFLT3CICR_CICMOD_Field is HAL.UInt3;
   subtype MDF_DFLT3CICR_MCICD_Field is HAL.UInt8;
   subtype MDF_DFLT3CICR_SCALE_Field is HAL.UInt6;

   --  MDF digital filter configuration register 3
   type MDF_DFLT3CICR_Register is record
      --  Source data for the digital filter
      DATSRC         : MDF_DFLT3CICR_DATSRC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Select the CIC mode
      CICMOD         : MDF_DFLT3CICR_CICMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  CIC decimation ratio selection
      MCICD          : MDF_DFLT3CICR_MCICD_Field := 16#0#;
      --  CIC decimation ratio selection
      MCICD8         : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Scaling factor selection
      SCALE          : MDF_DFLT3CICR_SCALE_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT3CICR_Register use record
      DATSRC         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CICMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MCICD          at 0 range 8 .. 15;
      MCICD8         at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      SCALE          at 0 range 20 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_DFLT3RSFR_HPFC_Field is HAL.UInt2;

   --  MDF reshape filter configuration register 3
   type MDF_DFLT3RSFR_Register is record
      --  Reshaper filter bypass
      RSFLTBYP       : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Reshaper filter decimation ratio
      RSFLTD         : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  High-pass filter bypass
      HPFBYP         : Boolean := False;
      --  High-pass filter cut-off frequency
      HPFC           : MDF_DFLT3RSFR_HPFC_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT3RSFR_Register use record
      RSFLTBYP       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      RSFLTD         at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      HPFBYP         at 0 range 7 .. 7;
      HPFC           at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype MDF_DFLT3INTR_INTDIV_Field is HAL.UInt2;
   subtype MDF_DFLT3INTR_INTVAL_Field is HAL.UInt7;

   --  MDF integrator configuration register 3
   type MDF_DFLT3INTR_Register is record
      --  Integrator output division
      INTDIV         : MDF_DFLT3INTR_INTDIV_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Integration value selection
      INTVAL         : MDF_DFLT3INTR_INTVAL_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT3INTR_Register use record
      INTDIV         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      INTVAL         at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype MDF_OLD3CR_BKOLD_Field is HAL.UInt4;
   subtype MDF_OLD3CR_ACICN_Field is HAL.UInt2;
   subtype MDF_OLD3CR_ACICD_Field is HAL.UInt5;

   --  MDF out-of limit detector control register 3
   type MDF_OLD3CR_Register is record
      --  OLDx enable
      OLDEN          : Boolean := False;
      --  Threshold In band
      THINB          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Break signal assignment for out-of limit detector
      BKOLD          : MDF_OLD3CR_BKOLD_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  OLDx CIC order selection
      ACICN          : MDF_OLD3CR_ACICN_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  OLDx CIC decimation ratio selection
      ACICD          : MDF_OLD3CR_ACICD_Field := 16#0#;
      --  unspecified
      Reserved_22_30 : HAL.UInt9 := 16#0#;
      --  Read-only. OLDx active flag
      OLDACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD3CR_Register use record
      OLDEN          at 0 range 0 .. 0;
      THINB          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      BKOLD          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      ACICN          at 0 range 12 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      ACICD          at 0 range 17 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      OLDACTIVE      at 0 range 31 .. 31;
   end record;

   subtype MDF_OLD3THLR_OLDTHL_Field is HAL.UInt26;

   --  MDF OLD3 low threshold register 3
   type MDF_OLD3THLR_Register is record
      --  OLD low threshold value
      OLDTHL         : MDF_OLD3THLR_OLDTHL_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD3THLR_Register use record
      OLDTHL         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_OLD3THHR_OLDTHH_Field is HAL.UInt26;

   --  MDF OLD3 high threshold register 3
   type MDF_OLD3THHR_Register is record
      --  OLDx high threshold value
      OLDTHH         : MDF_OLD3THHR_OLDTHH_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD3THHR_Register use record
      OLDTHH         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_DLY3CR_SKPDLY_Field is HAL.UInt7;

   --  MDF delay control register 3
   type MDF_DLY3CR_Register is record
      --  Delay to apply to a bitstream
      SKPDLY        : MDF_DLY3CR_SKPDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_30 : HAL.UInt24 := 16#0#;
      --  Read-only. Skip busy flag
      SKPBF         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DLY3CR_Register use record
      SKPDLY        at 0 range 0 .. 6;
      Reserved_7_30 at 0 range 7 .. 30;
      SKPBF         at 0 range 31 .. 31;
   end record;

   subtype MDF_SCD3CR_BKSCD_Field is HAL.UInt4;
   subtype MDF_SCD3CR_SCDT_Field is HAL.UInt8;

   --  MDF short circuit detector control register 3
   type MDF_SCD3CR_Register is record
      --  SCDx enable
      SCDEN          : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Break signal assignment for short circuit detector
      BKSCD          : MDF_SCD3CR_BKSCD_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  SCDx threshold
      SCDT           : MDF_SCD3CR_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Read-only. SCDx active flag
      SCDACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SCD3CR_Register use record
      SCDEN          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      BKSCD          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SCDT           at 0 range 12 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      SCDACTIVE      at 0 range 31 .. 31;
   end record;

   --  MDF DFLT3 interrupt enable register 3
   type MDF_DFLT3IER_Register is record
      --  RXFIFO threshold interrupt enable
      FTHIE          : Boolean := False;
      --  Data overflow interrupt enable
      DOVRIE         : Boolean := False;
      --  Snapshot data ready interrupt enable
      SSDRIE         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  OLDx interrupt enable
      OLDIE          : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Snapshot overrun interrupt enable
      SSOVRIE        : Boolean := False;
      --  SCDx interrupt enable
      SCDIE          : Boolean := False;
      --  Saturation detection interrupt enable
      SATIE          : Boolean := False;
      --  Clock absence detection interrupt enable
      CKABIE         : Boolean := False;
      --  Reshape filter overrun interrupt enable
      RFOVRIE        : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT3IER_Register use record
      FTHIE          at 0 range 0 .. 0;
      DOVRIE         at 0 range 1 .. 1;
      SSDRIE         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OLDIE          at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      SSOVRIE        at 0 range 7 .. 7;
      SCDIE          at 0 range 8 .. 8;
      SATIE          at 0 range 9 .. 9;
      CKABIE         at 0 range 10 .. 10;
      RFOVRIE        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  MDF DFLT3 interrupt status register 3
   type MDF_DFLT3ISR_Register is record
      --  Read-only. RXFIFO threshold flag
      FTHF           : Boolean := False;
      --  Data overflow flag
      DOVRF          : Boolean := False;
      --  Snapshot data ready flag
      SSDRF          : Boolean := False;
      --  Read-only. RXFIFO not-empty flag
      RXNEF          : Boolean := False;
      --  OLDx flag
      OLDF           : Boolean := False;
      --  Read-only. Low-threshold status flag
      THLF           : Boolean := False;
      --  Read-only. High-threshold status flag
      THHF           : Boolean := False;
      --  Snapshot overrun flag
      SSOVRF         : Boolean := False;
      --  Short-circuit detector flag
      SCDF           : Boolean := False;
      --  Saturation detection flag
      SATF           : Boolean := False;
      --  Clock absence detection flag
      CKABF          : Boolean := False;
      --  Reshape filter overrun detection flag
      RFOVRF         : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT3ISR_Register use record
      FTHF           at 0 range 0 .. 0;
      DOVRF          at 0 range 1 .. 1;
      SSDRF          at 0 range 2 .. 2;
      RXNEF          at 0 range 3 .. 3;
      OLDF           at 0 range 4 .. 4;
      THLF           at 0 range 5 .. 5;
      THHF           at 0 range 6 .. 6;
      SSOVRF         at 0 range 7 .. 7;
      SCDF           at 0 range 8 .. 8;
      SATF           at 0 range 9 .. 9;
      CKABF          at 0 range 10 .. 10;
      RFOVRF         at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype MDF_OEC3CR_OFFSET_Field is HAL.UInt26;

   --  MDF offset error compensation control register 3
   type MDF_OEC3CR_Register is record
      --  Offset error compensation
      OFFSET         : MDF_OEC3CR_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OEC3CR_Register use record
      OFFSET         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_SNPS3DR_MCICDC_Field is HAL.UInt9;
   subtype MDF_SNPS3DR_EXTSDR_Field is HAL.UInt7;
   subtype MDF_SNPS3DR_SDR_Field is HAL.UInt16;

   --  MDF snapshot data register 3
   type MDF_SNPS3DR_Register is record
      --  Read-only. Contains the MCIC decimation counter value when the last
      --  trigger event occurs (MCIC_CNT)
      MCICDC : MDF_SNPS3DR_MCICDC_Field;
      --  Read-only. Extended data size
      EXTSDR : MDF_SNPS3DR_EXTSDR_Field;
      --  Read-only. Contains the 16 MSB of the last valid data processed by
      --  the digital filter.
      SDR    : MDF_SNPS3DR_SDR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SNPS3DR_Register use record
      MCICDC at 0 range 0 .. 8;
      EXTSDR at 0 range 9 .. 15;
      SDR    at 0 range 16 .. 31;
   end record;

   subtype MDF_DFLT3DR_DR_Field is HAL.UInt24;

   --  MDF digital filter data register 3
   type MDF_DFLT3DR_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8;
      --  Read-only. Data processed by digital filter
      DR           : MDF_DFLT3DR_DR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT3DR_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      DR           at 0 range 8 .. 31;
   end record;

   subtype MDF_SITF4CR_SCKSRC_Field is HAL.UInt2;
   subtype MDF_SITF4CR_SITFMOD_Field is HAL.UInt2;
   subtype MDF_SITF4CR_STH_Field is HAL.UInt5;

   --  MDF serial interface control register 4
   type MDF_SITF4CR_Register is record
      --  Serial interface enable
      SITFEN         : Boolean := False;
      --  Serial clock source
      SCKSRC         : MDF_SITF4CR_SCKSRC_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Serial interface type
      SITFMOD        : MDF_SITF4CR_SITFMOD_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Manchester symbol threshold/SPI threshold
      STH            : MDF_SITF4CR_STH_Field := 16#1F#;
      --  unspecified
      Reserved_13_30 : HAL.UInt18 := 16#0#;
      --  Read-only. Serial interface active flag
      SITFACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SITF4CR_Register use record
      SITFEN         at 0 range 0 .. 0;
      SCKSRC         at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SITFMOD        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      STH            at 0 range 8 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      SITFACTIVE     at 0 range 31 .. 31;
   end record;

   subtype MDF_BSMX4CR_BSSEL_Field is HAL.UInt5;

   --  MDF bitstream matrix control register 4
   type MDF_BSMX4CR_Register is record
      --  Bitstream Selection
      BSSEL         : MDF_BSMX4CR_BSSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : HAL.UInt26 := 16#0#;
      --  Read-only. BSMX active flag
      BSMXACTIVE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_BSMX4CR_Register use record
      BSSEL         at 0 range 0 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      BSMXACTIVE    at 0 range 31 .. 31;
   end record;

   subtype MDF_DFLT4CR_ACQMOD_Field is HAL.UInt3;
   subtype MDF_DFLT4CR_TRGSRC_Field is HAL.UInt4;
   subtype MDF_DFLT4CR_NBDIS_Field is HAL.UInt8;

   --  MDF digital filter control register 4
   type MDF_DFLT4CR_Register is record
      --  Write-only. Digital filter enable
      DFLTEN         : Boolean := False;
      --  DMA requests enable
      DMAEN          : Boolean := False;
      --  RXFIFO Threshold selection
      FTH            : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Digital filter trigger mode
      ACQMOD         : MDF_DFLT4CR_ACQMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Digital filter trigger sensitivity selection
      TRGSENS        : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Digital filter trigger signal selection
      TRGSRC         : MDF_DFLT4CR_TRGSRC_Field := 16#0#;
      --  Snapshot data format
      SNPSFMT        : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Number of samples to be discarded
      NBDIS          : MDF_DFLT4CR_NBDIS_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Read-only. Digital filter run status flag
      DFLTRUN        : Boolean := False;
      --  Read-only. Digital filter active flag
      DFLTACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT4CR_Register use record
      DFLTEN         at 0 range 0 .. 0;
      DMAEN          at 0 range 1 .. 1;
      FTH            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ACQMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TRGSENS        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      TRGSRC         at 0 range 12 .. 15;
      SNPSFMT        at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      NBDIS          at 0 range 20 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DFLTRUN        at 0 range 30 .. 30;
      DFLTACTIVE     at 0 range 31 .. 31;
   end record;

   subtype MDF_DFLT4CICR_DATSRC_Field is HAL.UInt2;
   subtype MDF_DFLT4CICR_CICMOD_Field is HAL.UInt3;
   subtype MDF_DFLT4CICR_MCICD_Field is HAL.UInt8;
   subtype MDF_DFLT4CICR_SCALE_Field is HAL.UInt6;

   --  MDF digital filter configuration register 4
   type MDF_DFLT4CICR_Register is record
      --  Source data for the digital filter
      DATSRC         : MDF_DFLT4CICR_DATSRC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Select the CIC mode
      CICMOD         : MDF_DFLT4CICR_CICMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  CIC decimation ratio selection
      MCICD          : MDF_DFLT4CICR_MCICD_Field := 16#0#;
      --  CIC decimation ratio selection
      MCICD8         : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Scaling factor selection
      SCALE          : MDF_DFLT4CICR_SCALE_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT4CICR_Register use record
      DATSRC         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CICMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MCICD          at 0 range 8 .. 15;
      MCICD8         at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      SCALE          at 0 range 20 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_DFLT4RSFR_HPFC_Field is HAL.UInt2;

   --  MDF reshape filter configuration register 4
   type MDF_DFLT4RSFR_Register is record
      --  Reshaper filter bypass
      RSFLTBYP       : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Reshaper filter decimation ratio
      RSFLTD         : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  High-pass filter bypass
      HPFBYP         : Boolean := False;
      --  High-pass filter cut-off frequency
      HPFC           : MDF_DFLT4RSFR_HPFC_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT4RSFR_Register use record
      RSFLTBYP       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      RSFLTD         at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      HPFBYP         at 0 range 7 .. 7;
      HPFC           at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype MDF_DFLT4INTR_INTDIV_Field is HAL.UInt2;
   subtype MDF_DFLT4INTR_INTVAL_Field is HAL.UInt7;

   --  MDF integrator configuration register 4
   type MDF_DFLT4INTR_Register is record
      --  Integrator output division
      INTDIV         : MDF_DFLT4INTR_INTDIV_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Integration value selection
      INTVAL         : MDF_DFLT4INTR_INTVAL_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT4INTR_Register use record
      INTDIV         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      INTVAL         at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype MDF_OLD4CR_BKOLD_Field is HAL.UInt4;
   subtype MDF_OLD4CR_ACICN_Field is HAL.UInt2;
   subtype MDF_OLD4CR_ACICD_Field is HAL.UInt5;

   --  MDF out-of limit detector control register 4
   type MDF_OLD4CR_Register is record
      --  OLDx enable
      OLDEN          : Boolean := False;
      --  Threshold In band
      THINB          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Break signal assignment for out-of limit detector
      BKOLD          : MDF_OLD4CR_BKOLD_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  OLDx CIC order selection
      ACICN          : MDF_OLD4CR_ACICN_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  OLDx CIC decimation ratio selection
      ACICD          : MDF_OLD4CR_ACICD_Field := 16#0#;
      --  unspecified
      Reserved_22_30 : HAL.UInt9 := 16#0#;
      --  Read-only. OLDx active flag
      OLDACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD4CR_Register use record
      OLDEN          at 0 range 0 .. 0;
      THINB          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      BKOLD          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      ACICN          at 0 range 12 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      ACICD          at 0 range 17 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      OLDACTIVE      at 0 range 31 .. 31;
   end record;

   subtype MDF_OLD4THLR_OLDTHL_Field is HAL.UInt26;

   --  MDF OLD4 low threshold register 4
   type MDF_OLD4THLR_Register is record
      --  OLD low threshold value
      OLDTHL         : MDF_OLD4THLR_OLDTHL_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD4THLR_Register use record
      OLDTHL         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_OLD4THHR_OLDTHH_Field is HAL.UInt26;

   --  MDF OLD4 high threshold register 4
   type MDF_OLD4THHR_Register is record
      --  OLDx high threshold value
      OLDTHH         : MDF_OLD4THHR_OLDTHH_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD4THHR_Register use record
      OLDTHH         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_DLY4CR_SKPDLY_Field is HAL.UInt7;

   --  MDF delay control register 4
   type MDF_DLY4CR_Register is record
      --  Delay to apply to a bitstream
      SKPDLY        : MDF_DLY4CR_SKPDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_30 : HAL.UInt24 := 16#0#;
      --  Read-only. Skip busy flag
      SKPBF         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DLY4CR_Register use record
      SKPDLY        at 0 range 0 .. 6;
      Reserved_7_30 at 0 range 7 .. 30;
      SKPBF         at 0 range 31 .. 31;
   end record;

   subtype MDF_SCD4CR_BKSCD_Field is HAL.UInt4;
   subtype MDF_SCD4CR_SCDT_Field is HAL.UInt8;

   --  MDF short circuit detector control register 4
   type MDF_SCD4CR_Register is record
      --  SCDx enable
      SCDEN          : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Break signal assignment for short circuit detector
      BKSCD          : MDF_SCD4CR_BKSCD_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  SCDx threshold
      SCDT           : MDF_SCD4CR_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Read-only. SCDx active flag
      SCDACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SCD4CR_Register use record
      SCDEN          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      BKSCD          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SCDT           at 0 range 12 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      SCDACTIVE      at 0 range 31 .. 31;
   end record;

   --  MDF DFLT4 interrupt enable register 4
   type MDF_DFLT4IER_Register is record
      --  RXFIFO threshold interrupt enable
      FTHIE          : Boolean := False;
      --  Data overflow interrupt enable
      DOVRIE         : Boolean := False;
      --  Snapshot data ready interrupt enable
      SSDRIE         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  OLDx interrupt enable
      OLDIE          : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Snapshot overrun interrupt enable
      SSOVRIE        : Boolean := False;
      --  SCDx interrupt enable
      SCDIE          : Boolean := False;
      --  Saturation detection interrupt enable
      SATIE          : Boolean := False;
      --  Clock absence detection interrupt enable
      CKABIE         : Boolean := False;
      --  Reshape filter overrun interrupt enable
      RFOVRIE        : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT4IER_Register use record
      FTHIE          at 0 range 0 .. 0;
      DOVRIE         at 0 range 1 .. 1;
      SSDRIE         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OLDIE          at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      SSOVRIE        at 0 range 7 .. 7;
      SCDIE          at 0 range 8 .. 8;
      SATIE          at 0 range 9 .. 9;
      CKABIE         at 0 range 10 .. 10;
      RFOVRIE        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  MDF DFLT4 interrupt status register 4
   type MDF_DFLT4ISR_Register is record
      --  Read-only. RXFIFO threshold flag
      FTHF           : Boolean := False;
      --  Data overflow flag
      DOVRF          : Boolean := False;
      --  Snapshot data ready flag
      SSDRF          : Boolean := False;
      --  Read-only. RXFIFO not-empty flag
      RXNEF          : Boolean := False;
      --  OLDx flag
      OLDF           : Boolean := False;
      --  Read-only. Low-threshold status flag
      THLF           : Boolean := False;
      --  Read-only. High-threshold status flag
      THHF           : Boolean := False;
      --  Snapshot overrun flag
      SSOVRF         : Boolean := False;
      --  Short-circuit detector flag
      SCDF           : Boolean := False;
      --  Saturation detection flag
      SATF           : Boolean := False;
      --  Clock absence detection flag
      CKABF          : Boolean := False;
      --  Reshape filter overrun detection flag
      RFOVRF         : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT4ISR_Register use record
      FTHF           at 0 range 0 .. 0;
      DOVRF          at 0 range 1 .. 1;
      SSDRF          at 0 range 2 .. 2;
      RXNEF          at 0 range 3 .. 3;
      OLDF           at 0 range 4 .. 4;
      THLF           at 0 range 5 .. 5;
      THHF           at 0 range 6 .. 6;
      SSOVRF         at 0 range 7 .. 7;
      SCDF           at 0 range 8 .. 8;
      SATF           at 0 range 9 .. 9;
      CKABF          at 0 range 10 .. 10;
      RFOVRF         at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype MDF_OEC4CR_OFFSET_Field is HAL.UInt26;

   --  MDF offset error compensation control register 4
   type MDF_OEC4CR_Register is record
      --  Offset error compensation
      OFFSET         : MDF_OEC4CR_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OEC4CR_Register use record
      OFFSET         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_SNPS4DR_MCICDC_Field is HAL.UInt9;
   subtype MDF_SNPS4DR_EXTSDR_Field is HAL.UInt7;
   subtype MDF_SNPS4DR_SDR_Field is HAL.UInt16;

   --  MDF snapshot data register 4
   type MDF_SNPS4DR_Register is record
      --  Read-only. Contains the MCIC decimation counter value when the last
      --  trigger event occurs (MCIC_CNT)
      MCICDC : MDF_SNPS4DR_MCICDC_Field;
      --  Read-only. Extended data size
      EXTSDR : MDF_SNPS4DR_EXTSDR_Field;
      --  Read-only. Contains the 16 MSB of the last valid data processed by
      --  the digital filter.
      SDR    : MDF_SNPS4DR_SDR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SNPS4DR_Register use record
      MCICDC at 0 range 0 .. 8;
      EXTSDR at 0 range 9 .. 15;
      SDR    at 0 range 16 .. 31;
   end record;

   subtype MDF_DFLT4DR_DR_Field is HAL.UInt24;

   --  MDF digital filter data register 4
   type MDF_DFLT4DR_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8;
      --  Read-only. Data processed by digital filter
      DR           : MDF_DFLT4DR_DR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT4DR_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      DR           at 0 range 8 .. 31;
   end record;

   subtype MDF_SITF5CR_SCKSRC_Field is HAL.UInt2;
   subtype MDF_SITF5CR_SITFMOD_Field is HAL.UInt2;
   subtype MDF_SITF5CR_STH_Field is HAL.UInt5;

   --  MDF serial interface control register 5
   type MDF_SITF5CR_Register is record
      --  Serial interface enable
      SITFEN         : Boolean := False;
      --  Serial clock source
      SCKSRC         : MDF_SITF5CR_SCKSRC_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Serial interface type
      SITFMOD        : MDF_SITF5CR_SITFMOD_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Manchester symbol threshold/SPI threshold
      STH            : MDF_SITF5CR_STH_Field := 16#1F#;
      --  unspecified
      Reserved_13_30 : HAL.UInt18 := 16#0#;
      --  Read-only. Serial interface active flag
      SITFACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SITF5CR_Register use record
      SITFEN         at 0 range 0 .. 0;
      SCKSRC         at 0 range 1 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SITFMOD        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      STH            at 0 range 8 .. 12;
      Reserved_13_30 at 0 range 13 .. 30;
      SITFACTIVE     at 0 range 31 .. 31;
   end record;

   subtype MDF_BSMX5CR_BSSEL_Field is HAL.UInt5;

   --  MDF bitstream matrix control register 5
   type MDF_BSMX5CR_Register is record
      --  Bitstream Selection
      BSSEL         : MDF_BSMX5CR_BSSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_30 : HAL.UInt26 := 16#0#;
      --  Read-only. BSMX active flag
      BSMXACTIVE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_BSMX5CR_Register use record
      BSSEL         at 0 range 0 .. 4;
      Reserved_5_30 at 0 range 5 .. 30;
      BSMXACTIVE    at 0 range 31 .. 31;
   end record;

   subtype MDF_DFLT5CR_ACQMOD_Field is HAL.UInt3;
   subtype MDF_DFLT5CR_TRGSRC_Field is HAL.UInt4;
   subtype MDF_DFLT5CR_NBDIS_Field is HAL.UInt8;

   --  MDF digital filter control register 5
   type MDF_DFLT5CR_Register is record
      --  Write-only. Digital filter enable
      DFLTEN         : Boolean := False;
      --  DMA requests enable
      DMAEN          : Boolean := False;
      --  RXFIFO Threshold selection
      FTH            : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Digital filter trigger mode
      ACQMOD         : MDF_DFLT5CR_ACQMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Digital filter trigger sensitivity selection
      TRGSENS        : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Digital filter trigger signal selection
      TRGSRC         : MDF_DFLT5CR_TRGSRC_Field := 16#0#;
      --  Snapshot data format
      SNPSFMT        : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Number of samples to be discarded
      NBDIS          : MDF_DFLT5CR_NBDIS_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Read-only. Digital filter run status flag
      DFLTRUN        : Boolean := False;
      --  Read-only. Digital filter active flag
      DFLTACTIVE     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT5CR_Register use record
      DFLTEN         at 0 range 0 .. 0;
      DMAEN          at 0 range 1 .. 1;
      FTH            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ACQMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TRGSENS        at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      TRGSRC         at 0 range 12 .. 15;
      SNPSFMT        at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      NBDIS          at 0 range 20 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      DFLTRUN        at 0 range 30 .. 30;
      DFLTACTIVE     at 0 range 31 .. 31;
   end record;

   subtype MDF_DFLT5CICR_DATSRC_Field is HAL.UInt2;
   subtype MDF_DFLT5CICR_CICMOD_Field is HAL.UInt3;
   subtype MDF_DFLT5CICR_MCICD_Field is HAL.UInt8;
   subtype MDF_DFLT5CICR_SCALE_Field is HAL.UInt6;

   --  MDF digital filter configuration register 5
   type MDF_DFLT5CICR_Register is record
      --  Source data for the digital filter
      DATSRC         : MDF_DFLT5CICR_DATSRC_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Select the CIC mode
      CICMOD         : MDF_DFLT5CICR_CICMOD_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  CIC decimation ratio selection
      MCICD          : MDF_DFLT5CICR_MCICD_Field := 16#0#;
      --  CIC decimation ratio selection
      MCICD8         : Boolean := False;
      --  unspecified
      Reserved_17_19 : HAL.UInt3 := 16#0#;
      --  Scaling factor selection
      SCALE          : MDF_DFLT5CICR_SCALE_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT5CICR_Register use record
      DATSRC         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CICMOD         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MCICD          at 0 range 8 .. 15;
      MCICD8         at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      SCALE          at 0 range 20 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_DFLT5RSFR_HPFC_Field is HAL.UInt2;

   --  MDF reshape filter configuration register 5
   type MDF_DFLT5RSFR_Register is record
      --  Reshaper filter bypass
      RSFLTBYP       : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Reshaper filter decimation ratio
      RSFLTD         : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  High-pass filter bypass
      HPFBYP         : Boolean := False;
      --  High-pass filter cut-off frequency
      HPFC           : MDF_DFLT5RSFR_HPFC_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT5RSFR_Register use record
      RSFLTBYP       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      RSFLTD         at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      HPFBYP         at 0 range 7 .. 7;
      HPFC           at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype MDF_DFLT5INTR_INTDIV_Field is HAL.UInt2;
   subtype MDF_DFLT5INTR_INTVAL_Field is HAL.UInt7;

   --  MDF integrator configuration register 5
   type MDF_DFLT5INTR_Register is record
      --  Integrator output division
      INTDIV         : MDF_DFLT5INTR_INTDIV_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Integration value selection
      INTVAL         : MDF_DFLT5INTR_INTVAL_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT5INTR_Register use record
      INTDIV         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      INTVAL         at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype MDF_OLD5CR_BKOLD_Field is HAL.UInt4;
   subtype MDF_OLD5CR_ACICN_Field is HAL.UInt2;
   subtype MDF_OLD5CR_ACICD_Field is HAL.UInt5;

   --  MDF out-of limit detector control register 5
   type MDF_OLD5CR_Register is record
      --  OLDx enable
      OLDEN          : Boolean := False;
      --  Threshold In band
      THINB          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Break signal assignment for out-of limit detector
      BKOLD          : MDF_OLD5CR_BKOLD_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  OLDx CIC order selection
      ACICN          : MDF_OLD5CR_ACICN_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : HAL.UInt3 := 16#0#;
      --  OLDx CIC decimation ratio selection
      ACICD          : MDF_OLD5CR_ACICD_Field := 16#0#;
      --  unspecified
      Reserved_22_30 : HAL.UInt9 := 16#0#;
      --  Read-only. OLDx active flag
      OLDACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD5CR_Register use record
      OLDEN          at 0 range 0 .. 0;
      THINB          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      BKOLD          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      ACICN          at 0 range 12 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      ACICD          at 0 range 17 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      OLDACTIVE      at 0 range 31 .. 31;
   end record;

   subtype MDF_OLD5THLR_OLDTHL_Field is HAL.UInt26;

   --  MDF OLD5 low threshold register 5
   type MDF_OLD5THLR_Register is record
      --  OLD low threshold value
      OLDTHL         : MDF_OLD5THLR_OLDTHL_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD5THLR_Register use record
      OLDTHL         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_OLD5THHR_OLDTHH_Field is HAL.UInt26;

   --  MDF OLD5 high threshold register 5
   type MDF_OLD5THHR_Register is record
      --  OLDx high threshold value
      OLDTHH         : MDF_OLD5THHR_OLDTHH_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OLD5THHR_Register use record
      OLDTHH         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_DLY5CR_SKPDLY_Field is HAL.UInt7;

   --  MDF delay control register 5
   type MDF_DLY5CR_Register is record
      --  Delay to apply to a bitstream
      SKPDLY        : MDF_DLY5CR_SKPDLY_Field := 16#0#;
      --  unspecified
      Reserved_7_30 : HAL.UInt24 := 16#0#;
      --  Read-only. Skip busy flag
      SKPBF         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DLY5CR_Register use record
      SKPDLY        at 0 range 0 .. 6;
      Reserved_7_30 at 0 range 7 .. 30;
      SKPBF         at 0 range 31 .. 31;
   end record;

   subtype MDF_SCD5CR_BKSCD_Field is HAL.UInt4;
   subtype MDF_SCD5CR_SCDT_Field is HAL.UInt8;

   --  MDF short circuit detector control register 5
   type MDF_SCD5CR_Register is record
      --  SCDx enable
      SCDEN          : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Break signal assignment for short circuit detector
      BKSCD          : MDF_SCD5CR_BKSCD_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  SCDx threshold
      SCDT           : MDF_SCD5CR_SCDT_Field := 16#0#;
      --  unspecified
      Reserved_20_30 : HAL.UInt11 := 16#0#;
      --  Read-only. SCDx active flag
      SCDACTIVE      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SCD5CR_Register use record
      SCDEN          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      BKSCD          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SCDT           at 0 range 12 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      SCDACTIVE      at 0 range 31 .. 31;
   end record;

   --  MDF DFLT5 interrupt enable register 5
   type MDF_DFLT5IER_Register is record
      --  RXFIFO threshold interrupt enable
      FTHIE          : Boolean := False;
      --  Data overflow interrupt enable
      DOVRIE         : Boolean := False;
      --  Snapshot data ready interrupt enable
      SSDRIE         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  OLDx interrupt enable
      OLDIE          : Boolean := False;
      --  unspecified
      Reserved_5_6   : HAL.UInt2 := 16#0#;
      --  Snapshot overrun interrupt enable
      SSOVRIE        : Boolean := False;
      --  SCDx interrupt enable
      SCDIE          : Boolean := False;
      --  Saturation detection interrupt enable
      SATIE          : Boolean := False;
      --  Clock absence detection interrupt enable
      CKABIE         : Boolean := False;
      --  Reshape filter overrun interrupt enable
      RFOVRIE        : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT5IER_Register use record
      FTHIE          at 0 range 0 .. 0;
      DOVRIE         at 0 range 1 .. 1;
      SSDRIE         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OLDIE          at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      SSOVRIE        at 0 range 7 .. 7;
      SCDIE          at 0 range 8 .. 8;
      SATIE          at 0 range 9 .. 9;
      CKABIE         at 0 range 10 .. 10;
      RFOVRIE        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  MDF DFLT5 interrupt status register 5
   type MDF_DFLT5ISR_Register is record
      --  Read-only. RXFIFO threshold flag
      FTHF           : Boolean := False;
      --  Data overflow flag
      DOVRF          : Boolean := False;
      --  Snapshot data ready flag
      SSDRF          : Boolean := False;
      --  Read-only. RXFIFO not-empty flag
      RXNEF          : Boolean := False;
      --  OLDx flag
      OLDF           : Boolean := False;
      --  Read-only. Low-threshold status flag
      THLF           : Boolean := False;
      --  Read-only. High-threshold status flag
      THHF           : Boolean := False;
      --  Snapshot overrun flag
      SSOVRF         : Boolean := False;
      --  Short-circuit detector flag
      SCDF           : Boolean := False;
      --  Saturation detection flag
      SATF           : Boolean := False;
      --  Clock absence detection flag
      CKABF          : Boolean := False;
      --  Reshape filter overrun detection flag
      RFOVRF         : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT5ISR_Register use record
      FTHF           at 0 range 0 .. 0;
      DOVRF          at 0 range 1 .. 1;
      SSDRF          at 0 range 2 .. 2;
      RXNEF          at 0 range 3 .. 3;
      OLDF           at 0 range 4 .. 4;
      THLF           at 0 range 5 .. 5;
      THHF           at 0 range 6 .. 6;
      SSOVRF         at 0 range 7 .. 7;
      SCDF           at 0 range 8 .. 8;
      SATF           at 0 range 9 .. 9;
      CKABF          at 0 range 10 .. 10;
      RFOVRF         at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype MDF_OEC5CR_OFFSET_Field is HAL.UInt26;

   --  MDF offset error compensation control register 5
   type MDF_OEC5CR_Register is record
      --  Offset error compensation
      OFFSET         : MDF_OEC5CR_OFFSET_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_OEC5CR_Register use record
      OFFSET         at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MDF_SNPS5DR_MCICDC_Field is HAL.UInt9;
   subtype MDF_SNPS5DR_EXTSDR_Field is HAL.UInt7;
   subtype MDF_SNPS5DR_SDR_Field is HAL.UInt16;

   --  MDF snapshot data register 5
   type MDF_SNPS5DR_Register is record
      --  Read-only. Contains the MCIC decimation counter value when the last
      --  trigger event occurs (MCIC_CNT)
      MCICDC : MDF_SNPS5DR_MCICDC_Field;
      --  Read-only. Extended data size
      EXTSDR : MDF_SNPS5DR_EXTSDR_Field;
      --  Read-only. Contains the 16 MSB of the last valid data processed by
      --  the digital filter.
      SDR    : MDF_SNPS5DR_SDR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_SNPS5DR_Register use record
      MCICDC at 0 range 0 .. 8;
      EXTSDR at 0 range 9 .. 15;
      SDR    at 0 range 16 .. 31;
   end record;

   subtype MDF_DFLT5DR_DR_Field is HAL.UInt24;

   --  MDF digital filter data register 5
   type MDF_DFLT5DR_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8;
      --  Read-only. Data processed by digital filter
      DR           : MDF_DFLT5DR_DR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MDF_DFLT5DR_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      DR           at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  MDF register block
   type MDF_Peripheral is record
      --  MDF global control register
      MDF_GCR       : aliased MDF_GCR_Register;
      --  MDF clock generator control register
      MDF_CKGCR     : aliased MDF_CKGCR_Register;
      --  MDF serial interface control register 0
      MDF_SITF0CR   : aliased MDF_SITF0CR_Register;
      --  MDF bitstream matrix control register 0
      MDF_BSMX0CR   : aliased MDF_BSMX0CR_Register;
      --  MDF digital filter control register 0
      MDF_DFLT0CR   : aliased MDF_DFLT0CR_Register;
      --  MDF digital filter configuration register 0
      MDF_DFLT0CICR : aliased MDF_DFLT0CICR_Register;
      --  MDF reshape filter configuration register 0
      MDF_DFLT0RSFR : aliased MDF_DFLT0RSFR_Register;
      --  MDF integrator configuration register 0
      MDF_DFLT0INTR : aliased MDF_DFLT0INTR_Register;
      --  MDF out-of limit detector control register 0
      MDF_OLD0CR    : aliased MDF_OLD0CR_Register;
      --  MDF OLD0 low threshold register 0
      MDF_OLD0THLR  : aliased MDF_OLD0THLR_Register;
      --  MDF OLD0 high threshold register 0
      MDF_OLD0THHR  : aliased MDF_OLD0THHR_Register;
      --  MDF delay control register 0
      MDF_DLY0CR    : aliased MDF_DLY0CR_Register;
      --  MDF short circuit detector control register 0
      MDF_SCD0CR    : aliased MDF_SCD0CR_Register;
      --  MDF DFLT0 interrupt enable register 0
      MDF_DFLT0IER  : aliased MDF_DFLT0IER_Register;
      --  MDF DFLT0 interrupt status register 0
      MDF_DFLT0ISR  : aliased MDF_DFLT0ISR_Register;
      --  MDF offset error compensation control register 0
      MDF_OEC0CR    : aliased MDF_OEC0CR_Register;
      --  MDF snapshot data register 0
      MDF_SNPS0DR   : aliased MDF_SNPS0DR_Register;
      --  MDF digital filter data register 0
      MDF_DFLT0DR   : aliased MDF_DFLT0DR_Register;
      --  MDF serial interface control register 1
      MDF_SITF1CR   : aliased MDF_SITF1CR_Register;
      --  MDF bitstream matrix control register 1
      MDF_BSMX1CR   : aliased MDF_BSMX1CR_Register;
      --  MDF digital filter control register 1
      MDF_DFLT1CR   : aliased MDF_DFLT1CR_Register;
      --  MDF digital filter configuration register 1
      MDF_DFLT1CICR : aliased MDF_DFLT1CICR_Register;
      --  MDF reshape filter configuration register 1
      MDF_DFLT1RSFR : aliased MDF_DFLT1RSFR_Register;
      --  MDF integrator configuration register 1
      MDF_DFLT1INTR : aliased MDF_DFLT1INTR_Register;
      --  MDF out-of limit detector control register 1
      MDF_OLD1CR    : aliased MDF_OLD1CR_Register;
      --  MDF OLD1 low threshold register 1
      MDF_OLD1THLR  : aliased MDF_OLD1THLR_Register;
      --  MDF OLD1 high threshold register 1
      MDF_OLD1THHR  : aliased MDF_OLD1THHR_Register;
      --  MDF delay control register 1
      MDF_DLY1CR    : aliased MDF_DLY1CR_Register;
      --  MDF short circuit detector control register 1
      MDF_SCD1CR    : aliased MDF_SCD1CR_Register;
      --  MDF DFLT1 interrupt enable register 1
      MDF_DFLT1IER  : aliased MDF_DFLT1IER_Register;
      --  MDF DFLT1 interrupt status register 1
      MDF_DFLT1ISR  : aliased MDF_DFLT1ISR_Register;
      --  MDF offset error compensation control register 1
      MDF_OEC1CR    : aliased MDF_OEC1CR_Register;
      --  MDF snapshot data register 1
      MDF_SNPS1DR   : aliased MDF_SNPS1DR_Register;
      --  MDF digital filter data register 1
      MDF_DFLT1DR   : aliased MDF_DFLT1DR_Register;
      --  MDF serial interface control register 2
      MDF_SITF2CR   : aliased MDF_SITF2CR_Register;
      --  MDF bitstream matrix control register 2
      MDF_BSMX2CR   : aliased MDF_BSMX2CR_Register;
      --  MDF digital filter control register 2
      MDF_DFLT2CR   : aliased MDF_DFLT2CR_Register;
      --  MDF digital filter configuration register 2
      MDF_DFLT2CICR : aliased MDF_DFLT2CICR_Register;
      --  MDF reshape filter configuration register 2
      MDF_DFLT2RSFR : aliased MDF_DFLT2RSFR_Register;
      --  MDF integrator configuration register 2
      MDF_DFLT2INTR : aliased MDF_DFLT2INTR_Register;
      --  MDF out-of limit detector control register 2
      MDF_OLD2CR    : aliased MDF_OLD2CR_Register;
      --  MDF OLD2 low threshold register 2
      MDF_OLD2THLR  : aliased MDF_OLD2THLR_Register;
      --  MDF OLD2 high threshold register 2
      MDF_OLD2THHR  : aliased MDF_OLD2THHR_Register;
      --  MDF delay control register 2
      MDF_DLY2CR    : aliased MDF_DLY2CR_Register;
      --  MDF short circuit detector control register 2
      MDF_SCD2CR    : aliased MDF_SCD2CR_Register;
      --  MDF DFLT2 interrupt enable register 2
      MDF_DFLT2IER  : aliased MDF_DFLT2IER_Register;
      --  MDF DFLT2 interrupt status register 2
      MDF_DFLT2ISR  : aliased MDF_DFLT2ISR_Register;
      --  MDF offset error compensation control register 2
      MDF_OEC2CR    : aliased MDF_OEC2CR_Register;
      --  MDF snapshot data register 2
      MDF_SNPS2DR   : aliased MDF_SNPS2DR_Register;
      --  MDF digital filter data register 2
      MDF_DFLT2DR   : aliased MDF_DFLT2DR_Register;
      --  MDF serial interface control register 3
      MDF_SITF3CR   : aliased MDF_SITF3CR_Register;
      --  MDF bitstream matrix control register 3
      MDF_BSMX3CR   : aliased MDF_BSMX3CR_Register;
      --  MDF digital filter control register 3
      MDF_DFLT3CR   : aliased MDF_DFLT3CR_Register;
      --  MDF digital filter configuration register 3
      MDF_DFLT3CICR : aliased MDF_DFLT3CICR_Register;
      --  MDF reshape filter configuration register 3
      MDF_DFLT3RSFR : aliased MDF_DFLT3RSFR_Register;
      --  MDF integrator configuration register 3
      MDF_DFLT3INTR : aliased MDF_DFLT3INTR_Register;
      --  MDF out-of limit detector control register 3
      MDF_OLD3CR    : aliased MDF_OLD3CR_Register;
      --  MDF OLD3 low threshold register 3
      MDF_OLD3THLR  : aliased MDF_OLD3THLR_Register;
      --  MDF OLD3 high threshold register 3
      MDF_OLD3THHR  : aliased MDF_OLD3THHR_Register;
      --  MDF delay control register 3
      MDF_DLY3CR    : aliased MDF_DLY3CR_Register;
      --  MDF short circuit detector control register 3
      MDF_SCD3CR    : aliased MDF_SCD3CR_Register;
      --  MDF DFLT3 interrupt enable register 3
      MDF_DFLT3IER  : aliased MDF_DFLT3IER_Register;
      --  MDF DFLT3 interrupt status register 3
      MDF_DFLT3ISR  : aliased MDF_DFLT3ISR_Register;
      --  MDF offset error compensation control register 3
      MDF_OEC3CR    : aliased MDF_OEC3CR_Register;
      --  MDF snapshot data register 3
      MDF_SNPS3DR   : aliased MDF_SNPS3DR_Register;
      --  MDF digital filter data register 3
      MDF_DFLT3DR   : aliased MDF_DFLT3DR_Register;
      --  MDF serial interface control register 4
      MDF_SITF4CR   : aliased MDF_SITF4CR_Register;
      --  MDF bitstream matrix control register 4
      MDF_BSMX4CR   : aliased MDF_BSMX4CR_Register;
      --  MDF digital filter control register 4
      MDF_DFLT4CR   : aliased MDF_DFLT4CR_Register;
      --  MDF digital filter configuration register 4
      MDF_DFLT4CICR : aliased MDF_DFLT4CICR_Register;
      --  MDF reshape filter configuration register 4
      MDF_DFLT4RSFR : aliased MDF_DFLT4RSFR_Register;
      --  MDF integrator configuration register 4
      MDF_DFLT4INTR : aliased MDF_DFLT4INTR_Register;
      --  MDF out-of limit detector control register 4
      MDF_OLD4CR    : aliased MDF_OLD4CR_Register;
      --  MDF OLD4 low threshold register 4
      MDF_OLD4THLR  : aliased MDF_OLD4THLR_Register;
      --  MDF OLD4 high threshold register 4
      MDF_OLD4THHR  : aliased MDF_OLD4THHR_Register;
      --  MDF delay control register 4
      MDF_DLY4CR    : aliased MDF_DLY4CR_Register;
      --  MDF short circuit detector control register 4
      MDF_SCD4CR    : aliased MDF_SCD4CR_Register;
      --  MDF DFLT4 interrupt enable register 4
      MDF_DFLT4IER  : aliased MDF_DFLT4IER_Register;
      --  MDF DFLT4 interrupt status register 4
      MDF_DFLT4ISR  : aliased MDF_DFLT4ISR_Register;
      --  MDF offset error compensation control register 4
      MDF_OEC4CR    : aliased MDF_OEC4CR_Register;
      --  MDF snapshot data register 4
      MDF_SNPS4DR   : aliased MDF_SNPS4DR_Register;
      --  MDF digital filter data register 4
      MDF_DFLT4DR   : aliased MDF_DFLT4DR_Register;
      --  MDF serial interface control register 5
      MDF_SITF5CR   : aliased MDF_SITF5CR_Register;
      --  MDF bitstream matrix control register 5
      MDF_BSMX5CR   : aliased MDF_BSMX5CR_Register;
      --  MDF digital filter control register 5
      MDF_DFLT5CR   : aliased MDF_DFLT5CR_Register;
      --  MDF digital filter configuration register 5
      MDF_DFLT5CICR : aliased MDF_DFLT5CICR_Register;
      --  MDF reshape filter configuration register 5
      MDF_DFLT5RSFR : aliased MDF_DFLT5RSFR_Register;
      --  MDF integrator configuration register 5
      MDF_DFLT5INTR : aliased MDF_DFLT5INTR_Register;
      --  MDF out-of limit detector control register 5
      MDF_OLD5CR    : aliased MDF_OLD5CR_Register;
      --  MDF OLD5 low threshold register 5
      MDF_OLD5THLR  : aliased MDF_OLD5THLR_Register;
      --  MDF OLD5 high threshold register 5
      MDF_OLD5THHR  : aliased MDF_OLD5THHR_Register;
      --  MDF delay control register 5
      MDF_DLY5CR    : aliased MDF_DLY5CR_Register;
      --  MDF short circuit detector control register 5
      MDF_SCD5CR    : aliased MDF_SCD5CR_Register;
      --  MDF DFLT5 interrupt enable register 5
      MDF_DFLT5IER  : aliased MDF_DFLT5IER_Register;
      --  MDF DFLT5 interrupt status register 5
      MDF_DFLT5ISR  : aliased MDF_DFLT5ISR_Register;
      --  MDF offset error compensation control register 5
      MDF_OEC5CR    : aliased MDF_OEC5CR_Register;
      --  MDF snapshot data register 5
      MDF_SNPS5DR   : aliased MDF_SNPS5DR_Register;
      --  MDF digital filter data register 5
      MDF_DFLT5DR   : aliased MDF_DFLT5DR_Register;
   end record
     with Volatile;

   for MDF_Peripheral use record
      MDF_GCR       at 16#0# range 0 .. 31;
      MDF_CKGCR     at 16#4# range 0 .. 31;
      MDF_SITF0CR   at 16#80# range 0 .. 31;
      MDF_BSMX0CR   at 16#84# range 0 .. 31;
      MDF_DFLT0CR   at 16#88# range 0 .. 31;
      MDF_DFLT0CICR at 16#8C# range 0 .. 31;
      MDF_DFLT0RSFR at 16#90# range 0 .. 31;
      MDF_DFLT0INTR at 16#94# range 0 .. 31;
      MDF_OLD0CR    at 16#98# range 0 .. 31;
      MDF_OLD0THLR  at 16#9C# range 0 .. 31;
      MDF_OLD0THHR  at 16#A0# range 0 .. 31;
      MDF_DLY0CR    at 16#A4# range 0 .. 31;
      MDF_SCD0CR    at 16#A8# range 0 .. 31;
      MDF_DFLT0IER  at 16#AC# range 0 .. 31;
      MDF_DFLT0ISR  at 16#B0# range 0 .. 31;
      MDF_OEC0CR    at 16#B4# range 0 .. 31;
      MDF_SNPS0DR   at 16#EC# range 0 .. 31;
      MDF_DFLT0DR   at 16#F0# range 0 .. 31;
      MDF_SITF1CR   at 16#100# range 0 .. 31;
      MDF_BSMX1CR   at 16#104# range 0 .. 31;
      MDF_DFLT1CR   at 16#108# range 0 .. 31;
      MDF_DFLT1CICR at 16#10C# range 0 .. 31;
      MDF_DFLT1RSFR at 16#110# range 0 .. 31;
      MDF_DFLT1INTR at 16#114# range 0 .. 31;
      MDF_OLD1CR    at 16#118# range 0 .. 31;
      MDF_OLD1THLR  at 16#11C# range 0 .. 31;
      MDF_OLD1THHR  at 16#120# range 0 .. 31;
      MDF_DLY1CR    at 16#124# range 0 .. 31;
      MDF_SCD1CR    at 16#128# range 0 .. 31;
      MDF_DFLT1IER  at 16#12C# range 0 .. 31;
      MDF_DFLT1ISR  at 16#130# range 0 .. 31;
      MDF_OEC1CR    at 16#134# range 0 .. 31;
      MDF_SNPS1DR   at 16#16C# range 0 .. 31;
      MDF_DFLT1DR   at 16#170# range 0 .. 31;
      MDF_SITF2CR   at 16#180# range 0 .. 31;
      MDF_BSMX2CR   at 16#184# range 0 .. 31;
      MDF_DFLT2CR   at 16#188# range 0 .. 31;
      MDF_DFLT2CICR at 16#18C# range 0 .. 31;
      MDF_DFLT2RSFR at 16#190# range 0 .. 31;
      MDF_DFLT2INTR at 16#194# range 0 .. 31;
      MDF_OLD2CR    at 16#198# range 0 .. 31;
      MDF_OLD2THLR  at 16#19C# range 0 .. 31;
      MDF_OLD2THHR  at 16#1A0# range 0 .. 31;
      MDF_DLY2CR    at 16#1A4# range 0 .. 31;
      MDF_SCD2CR    at 16#1A8# range 0 .. 31;
      MDF_DFLT2IER  at 16#1AC# range 0 .. 31;
      MDF_DFLT2ISR  at 16#1B0# range 0 .. 31;
      MDF_OEC2CR    at 16#1B4# range 0 .. 31;
      MDF_SNPS2DR   at 16#1EC# range 0 .. 31;
      MDF_DFLT2DR   at 16#1F0# range 0 .. 31;
      MDF_SITF3CR   at 16#200# range 0 .. 31;
      MDF_BSMX3CR   at 16#204# range 0 .. 31;
      MDF_DFLT3CR   at 16#208# range 0 .. 31;
      MDF_DFLT3CICR at 16#20C# range 0 .. 31;
      MDF_DFLT3RSFR at 16#210# range 0 .. 31;
      MDF_DFLT3INTR at 16#214# range 0 .. 31;
      MDF_OLD3CR    at 16#218# range 0 .. 31;
      MDF_OLD3THLR  at 16#21C# range 0 .. 31;
      MDF_OLD3THHR  at 16#220# range 0 .. 31;
      MDF_DLY3CR    at 16#224# range 0 .. 31;
      MDF_SCD3CR    at 16#228# range 0 .. 31;
      MDF_DFLT3IER  at 16#22C# range 0 .. 31;
      MDF_DFLT3ISR  at 16#230# range 0 .. 31;
      MDF_OEC3CR    at 16#234# range 0 .. 31;
      MDF_SNPS3DR   at 16#26C# range 0 .. 31;
      MDF_DFLT3DR   at 16#270# range 0 .. 31;
      MDF_SITF4CR   at 16#280# range 0 .. 31;
      MDF_BSMX4CR   at 16#284# range 0 .. 31;
      MDF_DFLT4CR   at 16#288# range 0 .. 31;
      MDF_DFLT4CICR at 16#28C# range 0 .. 31;
      MDF_DFLT4RSFR at 16#290# range 0 .. 31;
      MDF_DFLT4INTR at 16#294# range 0 .. 31;
      MDF_OLD4CR    at 16#298# range 0 .. 31;
      MDF_OLD4THLR  at 16#29C# range 0 .. 31;
      MDF_OLD4THHR  at 16#2A0# range 0 .. 31;
      MDF_DLY4CR    at 16#2A4# range 0 .. 31;
      MDF_SCD4CR    at 16#2A8# range 0 .. 31;
      MDF_DFLT4IER  at 16#2AC# range 0 .. 31;
      MDF_DFLT4ISR  at 16#2B0# range 0 .. 31;
      MDF_OEC4CR    at 16#2B4# range 0 .. 31;
      MDF_SNPS4DR   at 16#2EC# range 0 .. 31;
      MDF_DFLT4DR   at 16#2F0# range 0 .. 31;
      MDF_SITF5CR   at 16#300# range 0 .. 31;
      MDF_BSMX5CR   at 16#304# range 0 .. 31;
      MDF_DFLT5CR   at 16#308# range 0 .. 31;
      MDF_DFLT5CICR at 16#30C# range 0 .. 31;
      MDF_DFLT5RSFR at 16#310# range 0 .. 31;
      MDF_DFLT5INTR at 16#314# range 0 .. 31;
      MDF_OLD5CR    at 16#318# range 0 .. 31;
      MDF_OLD5THLR  at 16#31C# range 0 .. 31;
      MDF_OLD5THHR  at 16#320# range 0 .. 31;
      MDF_DLY5CR    at 16#324# range 0 .. 31;
      MDF_SCD5CR    at 16#328# range 0 .. 31;
      MDF_DFLT5IER  at 16#32C# range 0 .. 31;
      MDF_DFLT5ISR  at 16#330# range 0 .. 31;
      MDF_OEC5CR    at 16#334# range 0 .. 31;
      MDF_SNPS5DR   at 16#36C# range 0 .. 31;
      MDF_DFLT5DR   at 16#370# range 0 .. 31;
   end record;

   --  MDF register block
   MDF1_Periph : aliased MDF_Peripheral
     with Import, Address => MDF1_Base;

   --  MDF register block
   MDF1_S_Periph : aliased MDF_Peripheral
     with Import, Address => MDF1_S_Base;

end STM32_SVD.MDF;
