--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.FMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype FMC_BCR1_MTYP_Field is HAL.UInt2;
   subtype FMC_BCR1_MWID_Field is HAL.UInt2;
   subtype FMC_BCR1_CPSIZE_Field is HAL.UInt3;
   subtype FMC_BCR1_CSCOUNT0_Field is HAL.UInt2;
   subtype FMC_BCR1_NBLSET_Field is HAL.UInt2;

   --  SRAM/NOR Flash chip-select control register for memory region 1
   type FMC_BCR1_Register is record
      --  Memory region enable bit
      MBKEN          : Boolean := True;
      --  Address/data multiplexing enable bit
      MUXEN          : Boolean := True;
      --  Memory type
      MTYP           : FMC_BCR1_MTYP_Field := 16#2#;
      --  Memory data bus width
      MWID           : FMC_BCR1_MWID_Field := 16#1#;
      --  Flash memory access enable
      FACCEN         : Boolean := True;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#1#;
      --  Burst enable bit
      BURSTEN        : Boolean := False;
      --  Wait signal polarity bit
      WAITPOL        : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Wait timing configuration
      WAITCFG        : Boolean := False;
      --  Write enable bit
      WREN           : Boolean := True;
      --  Wait enable bit
      WAITEN         : Boolean := True;
      --  Extended mode enable
      EXTMOD         : Boolean := False;
      --  Wait signal during asynchronous transfers
      ASYNCWAIT      : Boolean := False;
      --  CRAM page size
      CPSIZE         : FMC_BCR1_CPSIZE_Field := 16#0#;
      --  Write burst enable
      CBURSTRW       : Boolean := False;
      --  Chip Select (CS) counter
      CSCOUNT0       : FMC_BCR1_CSCOUNT0_Field := 16#0#;
      --  Byte lane (NBL) setup
      NBLSET         : FMC_BCR1_NBLSET_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_BCR1_Register use record
      MBKEN          at 0 range 0 .. 0;
      MUXEN          at 0 range 1 .. 1;
      MTYP           at 0 range 2 .. 3;
      MWID           at 0 range 4 .. 5;
      FACCEN         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      BURSTEN        at 0 range 8 .. 8;
      WAITPOL        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WAITCFG        at 0 range 11 .. 11;
      WREN           at 0 range 12 .. 12;
      WAITEN         at 0 range 13 .. 13;
      EXTMOD         at 0 range 14 .. 14;
      ASYNCWAIT      at 0 range 15 .. 15;
      CPSIZE         at 0 range 16 .. 18;
      CBURSTRW       at 0 range 19 .. 19;
      CSCOUNT0       at 0 range 20 .. 21;
      NBLSET         at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FMC_BTR_ADDSET_Field is HAL.UInt4;
   subtype FMC_BTR_ADDHLD_Field is HAL.UInt4;
   subtype FMC_BTR_DATAST_Field is HAL.UInt8;
   subtype FMC_BTR_BUSTURN_Field is HAL.UInt4;
   subtype FMC_BTR_CLKDIV_Field is HAL.UInt4;
   subtype FMC_BTR_DATLAT_Field is HAL.UInt4;
   subtype FMC_BTR_ACCMOD_Field is HAL.UInt2;
   subtype FMC_BTR_DATAHLD_Field is HAL.UInt2;

   --  SRAM/NOR Flash chip-select timing registers for memory region 1
   type FMC_BTR_Register is record
      --  Address setup phase duration
      ADDSET  : FMC_BTR_ADDSET_Field := 16#F#;
      --  Address-hold phase duration
      ADDHLD  : FMC_BTR_ADDHLD_Field := 16#F#;
      --  Data-phase duration
      DATAST  : FMC_BTR_DATAST_Field := 16#FF#;
      --  Bus turnaround phase duration
      BUSTURN : FMC_BTR_BUSTURN_Field := 16#F#;
      --  Clock divide ratio (for FMC_CLK signal)
      CLKDIV  : FMC_BTR_CLKDIV_Field := 16#F#;
      --  Data latency for synchronous memory (see note below bit descriptions)
      DATLAT  : FMC_BTR_DATLAT_Field := 16#F#;
      --  Access mode
      ACCMOD  : FMC_BTR_ACCMOD_Field := 16#0#;
      --  Data Hold phase duration
      DATAHLD : FMC_BTR_DATAHLD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_BTR_Register use record
      ADDSET  at 0 range 0 .. 3;
      ADDHLD  at 0 range 4 .. 7;
      DATAST  at 0 range 8 .. 15;
      BUSTURN at 0 range 16 .. 19;
      CLKDIV  at 0 range 20 .. 23;
      DATLAT  at 0 range 24 .. 27;
      ACCMOD  at 0 range 28 .. 29;
      DATAHLD at 0 range 30 .. 31;
   end record;

   subtype FMC_BCR_MTYP_Field is HAL.UInt2;
   subtype FMC_BCR_MWID_Field is HAL.UInt2;
   subtype FMC_BCR_CPSIZE_Field is HAL.UInt3;

   --  FMC_BCR_CSCOUNT array
   type FMC_BCR_CSCOUNT_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FMC_BCR_CSCOUNT
   type FMC_BCR_CSCOUNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CSCOUNT as a value
            Val : HAL.UInt2;
         when True =>
            --  CSCOUNT as an array
            Arr : FMC_BCR_CSCOUNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FMC_BCR_CSCOUNT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype FMC_BCR_NBLSET_Field is HAL.UInt2;

   --  SRAM/NOR Flash chip-select control register for memory region 2
   type FMC_BCR_Register is record
      --  Memory region enable bit
      MBKEN          : Boolean := False;
      --  Address/data multiplexing enable bit
      MUXEN          : Boolean := True;
      --  Memory type
      MTYP           : FMC_BCR_MTYP_Field := 16#0#;
      --  Memory data bus width
      MWID           : FMC_BCR_MWID_Field := 16#1#;
      --  Flash memory access enable
      FACCEN         : Boolean := True;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#1#;
      --  Burst enable bit
      BURSTEN        : Boolean := False;
      --  Wait signal polarity bit
      WAITPOL        : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Wait timing configuration
      WAITCFG        : Boolean := False;
      --  Write enable bit
      WREN           : Boolean := True;
      --  Wait enable bit
      WAITEN         : Boolean := True;
      --  Extended mode enable
      EXTMOD         : Boolean := False;
      --  Wait signal during asynchronous transfers
      ASYNCWAIT      : Boolean := False;
      --  CRAM page size
      CPSIZE         : FMC_BCR_CPSIZE_Field := 16#0#;
      --  Write burst enable
      CBURSTRW       : Boolean := False;
      --  Chip Select (CS) counter
      CSCOUNT        : FMC_BCR_CSCOUNT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Byte lane (NBL) setup
      NBLSET         : FMC_BCR_NBLSET_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_BCR_Register use record
      MBKEN          at 0 range 0 .. 0;
      MUXEN          at 0 range 1 .. 1;
      MTYP           at 0 range 2 .. 3;
      MWID           at 0 range 4 .. 5;
      FACCEN         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      BURSTEN        at 0 range 8 .. 8;
      WAITPOL        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WAITCFG        at 0 range 11 .. 11;
      WREN           at 0 range 12 .. 12;
      WAITEN         at 0 range 13 .. 13;
      EXTMOD         at 0 range 14 .. 14;
      ASYNCWAIT      at 0 range 15 .. 15;
      CPSIZE         at 0 range 16 .. 18;
      CBURSTRW       at 0 range 19 .. 19;
      CSCOUNT        at 0 range 20 .. 21;
      NBLSET         at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FMC_CFGR_CLKDIV_Field is HAL.UInt4;

   --  FMC_CFGR_BMAP array
   type FMC_CFGR_BMAP_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FMC_CFGR_BMAP
   type FMC_CFGR_BMAP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BMAP as a value
            Val : HAL.UInt2;
         when True =>
            --  BMAP as an array
            Arr : FMC_CFGR_BMAP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FMC_CFGR_BMAP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  FMC common configuration register
   type FMC_CFGR_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Clock divide ratio (for FMC_CLK signal)
      CLKDIV         : FMC_CFGR_CLKDIV_Field := 16#0#;
      --  Continuous clock enable
      CCLKEN         : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  FMC memory region mapping
      BMAP           : FMC_CFGR_BMAP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_30 : HAL.UInt5 := 16#0#;
      --  FMC controller enable
      FMCEN          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      CLKDIV         at 0 range 16 .. 19;
      CCLKEN         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      BMAP           at 0 range 24 .. 25;
      Reserved_26_30 at 0 range 26 .. 30;
      FMCEN          at 0 range 31 .. 31;
   end record;

   subtype FMC_PCR_PWID_Field is HAL.UInt2;
   subtype FMC_PCR_TCLR_Field is HAL.UInt4;
   subtype FMC_PCR_TAR_Field is HAL.UInt4;
   subtype FMC_PCR_ECCSS_Field is HAL.UInt3;

   --  NAND Flash programmable control register
   type FMC_PCR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Wait feature enable bit
      PWAITEN        : Boolean := False;
      --  NAND Flash memory region enable bit
      PBKEN          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#1#;
      --  Data bus width
      PWID           : FMC_PCR_PWID_Field := 16#0#;
      --  ECC computation logic enable bit
      ECCEN          : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  ECC algorithm
      ECCALG         : Boolean := False;
      --  CLE to RE delay.
      TCLR           : FMC_PCR_TCLR_Field := 16#F#;
      --  ALE to RE delay.
      TAR            : FMC_PCR_TAR_Field := 16#F#;
      --  ECC sector size (used to access spare area)
      ECCSS          : FMC_PCR_ECCSS_Field := 16#3#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  BCH error correction capability
      BCHECC         : Boolean := False;
      --  Write enable
      WEN            : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_PCR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      PWAITEN        at 0 range 1 .. 1;
      PBKEN          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PWID           at 0 range 4 .. 5;
      ECCEN          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ECCALG         at 0 range 8 .. 8;
      TCLR           at 0 range 9 .. 12;
      TAR            at 0 range 13 .. 16;
      ECCSS          at 0 range 17 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      BCHECC         at 0 range 24 .. 24;
      WEN            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype FMC_SR_ISOST_Field is HAL.UInt2;

   --  FMC status register
   type FMC_SR_Register is record
      --  Read-only. FMC isolation state with respect to the AXI interface
      ISOST         : FMC_SR_ISOST_Field;
      --  unspecified
      Reserved_2_3  : HAL.UInt2;
      --  Read-only. Pipe Empty Flag
      PEF           : Boolean;
      --  unspecified
      Reserved_5_5  : HAL.Bit;
      --  Read-only. NAND write request flag
      NWRF          : Boolean;
      --  unspecified
      Reserved_7_31 : HAL.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_SR_Register use record
      ISOST         at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      PEF           at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      NWRF          at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype FMC_PMEM_MEMSET_Field is HAL.UInt8;
   subtype FMC_PMEM_MEMWAIT_Field is HAL.UInt8;
   subtype FMC_PMEM_MEMHOLD_Field is HAL.UInt8;
   subtype FMC_PMEM_MEMHIZ_Field is HAL.UInt8;

   --  FMC common memory space timing register
   type FMC_PMEM_Register is record
      --  Common memory setup time
      MEMSET  : FMC_PMEM_MEMSET_Field := 16#A#;
      --  Common memory wait time
      MEMWAIT : FMC_PMEM_MEMWAIT_Field := 16#A#;
      --  Common memory hold time
      MEMHOLD : FMC_PMEM_MEMHOLD_Field := 16#A#;
      --  Common memory data bus Hi-Z time
      MEMHIZ  : FMC_PMEM_MEMHIZ_Field := 16#A#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_PMEM_Register use record
      MEMSET  at 0 range 0 .. 7;
      MEMWAIT at 0 range 8 .. 15;
      MEMHOLD at 0 range 16 .. 23;
      MEMHIZ  at 0 range 24 .. 31;
   end record;

   subtype FMC_PATT_ATTSET_Field is HAL.UInt8;
   subtype FMC_PATT_ATTWAIT_Field is HAL.UInt8;
   subtype FMC_PATT_ATTHOLD_Field is HAL.UInt8;
   subtype FMC_PATT_ATTHIZ_Field is HAL.UInt8;

   --  FMC attribute memory space timing registers
   type FMC_PATT_Register is record
      --  Attribute memory setup time
      ATTSET  : FMC_PATT_ATTSET_Field := 16#A#;
      --  Attribute memory wait time
      ATTWAIT : FMC_PATT_ATTWAIT_Field := 16#A#;
      --  Attribute memory hold time
      ATTHOLD : FMC_PATT_ATTHOLD_Field := 16#A#;
      --  Attribute memory data bus Hi-Z time
      ATTHIZ  : FMC_PATT_ATTHIZ_Field := 16#A#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_PATT_Register use record
      ATTSET  at 0 range 0 .. 7;
      ATTWAIT at 0 range 8 .. 15;
      ATTHOLD at 0 range 16 .. 23;
      ATTHIZ  at 0 range 24 .. 31;
   end record;

   subtype FMC_BWTR_ADDSET_Field is HAL.UInt4;
   subtype FMC_BWTR_ADDHLD_Field is HAL.UInt4;
   subtype FMC_BWTR_DATAST_Field is HAL.UInt8;
   subtype FMC_BWTR_BUSTURN_Field is HAL.UInt4;
   subtype FMC_BWTR_ACCMOD_Field is HAL.UInt2;
   subtype FMC_BWTR_DATAHLD_Field is HAL.UInt2;

   --  SRAM/NOR-Flash write timing registers for memory region 1
   type FMC_BWTR_Register is record
      --  Address setup phase duration.
      ADDSET         : FMC_BWTR_ADDSET_Field := 16#F#;
      --  Address-hold phase duration.
      ADDHLD         : FMC_BWTR_ADDHLD_Field := 16#F#;
      --  Data-phase duration.
      DATAST         : FMC_BWTR_DATAST_Field := 16#FF#;
      --  Bus turnaround phase duration
      BUSTURN        : FMC_BWTR_BUSTURN_Field := 16#F#;
      --  unspecified
      Reserved_20_27 : HAL.UInt8 := 16#0#;
      --  Access mode.
      ACCMOD         : FMC_BWTR_ACCMOD_Field := 16#0#;
      --  Data Hold phase duration
      DATAHLD        : FMC_BWTR_DATAHLD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_BWTR_Register use record
      ADDSET         at 0 range 0 .. 3;
      ADDHLD         at 0 range 4 .. 7;
      DATAST         at 0 range 8 .. 15;
      BUSTURN        at 0 range 16 .. 19;
      Reserved_20_27 at 0 range 20 .. 27;
      ACCMOD         at 0 range 28 .. 29;
      DATAHLD        at 0 range 30 .. 31;
   end record;

   subtype FMC_SDCR1_NC_Field is HAL.UInt2;
   subtype FMC_SDCR1_NR_Field is HAL.UInt2;
   subtype FMC_SDCR1_MWID_Field is HAL.UInt2;
   subtype FMC_SDCR1_CAS_Field is HAL.UInt2;
   subtype FMC_SDCR1_SDCLK_Field is HAL.UInt2;
   subtype FMC_SDCR1_RPIPE_Field is HAL.UInt2;

   --  SDRAM control registers for SDRAM device 1
   type FMC_SDCR1_Register is record
      --  Number of column address bits
      NC             : FMC_SDCR1_NC_Field := 16#0#;
      --  Number of row address bits
      NR             : FMC_SDCR1_NR_Field := 16#0#;
      --  Memory data bus width.
      MWID           : FMC_SDCR1_MWID_Field := 16#1#;
      --  Number of banks
      NB             : Boolean := True;
      --  CAS Latency
      CAS            : FMC_SDCR1_CAS_Field := 16#1#;
      --  Write protection
      WP             : Boolean := True;
      --  SDRAM clock configuration
      SDCLK          : FMC_SDCR1_SDCLK_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  Read pipe
      RPIPE          : FMC_SDCR1_RPIPE_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  SDRAM device enable
      SDEN           : Boolean := False;
      --  SDRAM device initialization
      SDINIT         : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_SDCR1_Register use record
      NC             at 0 range 0 .. 1;
      NR             at 0 range 2 .. 3;
      MWID           at 0 range 4 .. 5;
      NB             at 0 range 6 .. 6;
      CAS            at 0 range 7 .. 8;
      WP             at 0 range 9 .. 9;
      SDCLK          at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      RPIPE          at 0 range 13 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SDEN           at 0 range 16 .. 16;
      SDINIT         at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype FMC_SDCR2_NC_Field is HAL.UInt2;
   subtype FMC_SDCR2_NR_Field is HAL.UInt2;
   subtype FMC_SDCR2_MWID_Field is HAL.UInt2;
   subtype FMC_SDCR2_CAS_Field is HAL.UInt2;

   --  SDRAM control registers for SDRAM device 2
   type FMC_SDCR2_Register is record
      --  Number of column address bits
      NC             : FMC_SDCR2_NC_Field := 16#0#;
      --  Number of row address bits
      NR             : FMC_SDCR2_NR_Field := 16#0#;
      --  Memory data bus width.
      MWID           : FMC_SDCR2_MWID_Field := 16#1#;
      --  Number of banks
      NB             : Boolean := True;
      --  CAS Latency
      CAS            : FMC_SDCR2_CAS_Field := 16#1#;
      --  Write protection
      WP             : Boolean := True;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  SDRAM device enable
      SDEN           : Boolean := False;
      --  SDRAM device initialization
      SDINIT         : Boolean := False;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_SDCR2_Register use record
      NC             at 0 range 0 .. 1;
      NR             at 0 range 2 .. 3;
      MWID           at 0 range 4 .. 5;
      NB             at 0 range 6 .. 6;
      CAS            at 0 range 7 .. 8;
      WP             at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SDEN           at 0 range 16 .. 16;
      SDINIT         at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype FMC_SDTR_TMRD_Field is HAL.UInt4;
   subtype FMC_SDTR_TXSR_Field is HAL.UInt4;
   subtype FMC_SDTR_TRAS_Field is HAL.UInt4;
   subtype FMC_SDTR_TRC_Field is HAL.UInt4;
   subtype FMC_SDTR_TWR_Field is HAL.UInt4;
   subtype FMC_SDTR_TRP_Field is HAL.UInt4;
   subtype FMC_SDTR_TRCD_Field is HAL.UInt4;

   --  SDRAM timing register
   type FMC_SDTR_Register is record
      --  Load mode register to active
      TMRD           : FMC_SDTR_TMRD_Field := 16#F#;
      --  Exit self-refresh delay
      TXSR           : FMC_SDTR_TXSR_Field := 16#F#;
      --  Self-refresh time
      TRAS           : FMC_SDTR_TRAS_Field := 16#F#;
      --  Row cycle delay
      TRC            : FMC_SDTR_TRC_Field := 16#F#;
      --  Recovery delay
      TWR            : FMC_SDTR_TWR_Field := 16#F#;
      --  Row precharge delay
      TRP            : FMC_SDTR_TRP_Field := 16#F#;
      --  Row to column delay
      TRCD           : FMC_SDTR_TRCD_Field := 16#F#;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_SDTR_Register use record
      TMRD           at 0 range 0 .. 3;
      TXSR           at 0 range 4 .. 7;
      TRAS           at 0 range 8 .. 11;
      TRC            at 0 range 12 .. 15;
      TWR            at 0 range 16 .. 19;
      TRP            at 0 range 20 .. 23;
      TRCD           at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype FMC_SDCMR_MODE_Field is HAL.UInt3;
   subtype FMC_SDCMR_NRFS_Field is HAL.UInt4;
   subtype FMC_SDCMR_MRD_Field is HAL.UInt14;

   --  SDRAM command mode register
   type FMC_SDCMR_Register is record
      --  Write-only. Command mode
      MODE           : FMC_SDCMR_MODE_Field := 16#0#;
      --  Write-only. Command targeting SDRAM device 2
      DS2            : Boolean := False;
      --  Write-only. Command targeting SDRAM device 1
      DS1            : Boolean := False;
      --  Number of Refresh commands
      NRFS           : FMC_SDCMR_NRFS_Field := 16#0#;
      --  Mode register definition
      MRD            : FMC_SDCMR_MRD_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_SDCMR_Register use record
      MODE           at 0 range 0 .. 2;
      DS2            at 0 range 3 .. 3;
      DS1            at 0 range 4 .. 4;
      NRFS           at 0 range 5 .. 8;
      MRD            at 0 range 9 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype FMC_SDRTR_RFSCNT_Field is HAL.UInt13;

   --  SDRAM refresh timer register
   type FMC_SDRTR_Register is record
      --  Write-only. Clear Refresh error flag
      CRE            : Boolean := False;
      --  Refresh Timer Count
      RFSCNT         : FMC_SDRTR_RFSCNT_Field := 16#0#;
      --  RES Interrupt Enable
      REIE           : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_SDRTR_Register use record
      CRE            at 0 range 0 .. 0;
      RFSCNT         at 0 range 1 .. 13;
      REIE           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  FMC_SDSR_MODES array element
   subtype FMC_SDSR_MODES_Element is HAL.UInt2;

   --  FMC_SDSR_MODES array
   type FMC_SDSR_MODES_Field_Array is array (1 .. 2)
     of FMC_SDSR_MODES_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for FMC_SDSR_MODES
   type FMC_SDSR_MODES_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODES as a value
            Val : HAL.UInt4;
         when True =>
            --  MODES as an array
            Arr : FMC_SDSR_MODES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for FMC_SDSR_MODES_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SDRAM status register
   type FMC_SDSR_Register is record
      --  Read-only. Refresh error flag
      RE             : Boolean;
      --  Read-only. Status Mode for SDRAM device 1
      MODES          : FMC_SDSR_MODES_Field;
      --  unspecified
      Reserved_5_14  : HAL.UInt10;
      --  Read-only. Previous command status
      CMDOK          : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_SDSR_Register use record
      RE             at 0 range 0 .. 0;
      MODES          at 0 range 1 .. 4;
      Reserved_5_14  at 0 range 5 .. 14;
      CMDOK          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  FMC NAND interrupt enable register
   type FMC_IER_Register is record
      --  Interrupt rising edge detection enable bit
      IREE          : Boolean := False;
      --  Interrupt high-level detection enable bit
      IHLE          : Boolean := False;
      --  Interrupt falling edge detection enable bit
      IFEE          : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_IER_Register use record
      IREE          at 0 range 0 .. 0;
      IHLE          at 0 range 1 .. 1;
      IFEE          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  FMC controller interrupt status register
   type FMC_ISR_Register is record
      --  Read-only. Interrupt rising edge flag
      IREF          : Boolean;
      --  Read-only. Interrupt high-level flag
      IHLF          : Boolean;
      --  Read-only. Interrupt falling edge flag
      IFEF          : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_ISR_Register use record
      IREF          at 0 range 0 .. 0;
      IHLF          at 0 range 1 .. 1;
      IFEF          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  FMC NAND controller interrupt clear register
   type FMC_ICR_Register is record
      --  Write-only. Clear Interrupt rising edge flag
      CIREF         : Boolean := False;
      --  Write-only. Clear Interrupt high-level flag
      CIHLF         : Boolean := False;
      --  Write-only. Clear Interrupt falling edge flag
      CIFEF         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_ICR_Register use record
      CIREF         at 0 range 0 .. 0;
      CIHLF         at 0 range 1 .. 1;
      CIFEF         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  FMC NAND command sequencer control register
   type FMC_CSQCR_Register is record
      --  Write-only. Command Sequencer Enable
      CSQSTART      : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CSQCR_Register use record
      CSQSTART      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype FMC_CSQCFGR1_ACYNBR_Field is HAL.UInt3;
   --  FMC_CSQCFGR1_CMD array element
   subtype FMC_CSQCFGR1_CMD_Element is HAL.UInt8;

   --  FMC_CSQCFGR1_CMD array
   type FMC_CSQCFGR1_CMD_Field_Array is array (1 .. 2)
     of FMC_CSQCFGR1_CMD_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for FMC_CSQCFGR1_CMD
   type FMC_CSQCFGR1_CMD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CMD as a value
            Val : HAL.UInt16;
         when True =>
            --  CMD as an array
            Arr : FMC_CSQCFGR1_CMD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FMC_CSQCFGR1_CMD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  FMC NAND command sequencer configuration register 1
   type FMC_CSQCFGR1_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Command cycle 2 Enable
      CMD2EN         : Boolean := False;
      --  Command sequencer DMA request data enable
      DMADEN         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Address Cycle number
      ACYNBR         : FMC_CSQCFGR1_ACYNBR_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Command 1 sequencer
      CMD            : FMC_CSQCFGR1_CMD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Command 1 Sequencer timings
      CMD1T          : Boolean := False;
      --  Command 2 Sequencer timings
      CMD2T          : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CSQCFGR1_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      CMD2EN         at 0 range 1 .. 1;
      DMADEN         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      ACYNBR         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CMD            at 0 range 8 .. 23;
      CMD1T          at 0 range 24 .. 24;
      CMD2T          at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  FMC_CSQCFGR2_RCMD array element
   subtype FMC_CSQCFGR2_RCMD_Element is HAL.UInt8;

   --  FMC_CSQCFGR2_RCMD array
   type FMC_CSQCFGR2_RCMD_Field_Array is array (1 .. 2)
     of FMC_CSQCFGR2_RCMD_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for FMC_CSQCFGR2_RCMD
   type FMC_CSQCFGR2_RCMD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RCMD as a value
            Val : HAL.UInt16;
         when True =>
            --  RCMD as an array
            Arr : FMC_CSQCFGR2_RCMD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for FMC_CSQCFGR2_RCMD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  FMC NAND command sequencer configuration register 2
   type FMC_CSQCFGR2_Register is record
      --  Sequencer spare data transfer enable
      SQSDTEN        : Boolean := False;
      --  Random Command 2 sequencer enable
      RCMD2EN        : Boolean := False;
      --  Command sequencer DMA request decoding status enable
      DMASEN         : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Random Command 1 sequencer
      RCMD           : FMC_CSQCFGR2_RCMD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Command 1 sequencer timings
      RCMD1T         : Boolean := False;
      --  Command 1 sequencer timings
      RCMD2T         : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CSQCFGR2_Register use record
      SQSDTEN        at 0 range 0 .. 0;
      RCMD2EN        at 0 range 1 .. 1;
      DMASEN         at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      RCMD           at 0 range 8 .. 23;
      RCMD1T         at 0 range 24 .. 24;
      RCMD2T         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype FMC_CSQCFGR3_SNBR_Field is HAL.UInt6;

   --  FMC NAND sequencer configuration register 3
   type FMC_CSQCFGR3_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8 := 16#0#;
      --  Number of sectors to be read/written
      SNBR           : FMC_CSQCFGR3_SNBR_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Address cycle 1 sequencer timings
      AC1T           : Boolean := False;
      --  Address cycle 2 sequencer timings
      AC2T           : Boolean := False;
      --  Address cycle 3 sequencer timings
      AC3T           : Boolean := False;
      --  Address cycle 4sequencer timings
      AC4T           : Boolean := False;
      --  Address cycle 5 sequencer timings
      AC5T           : Boolean := False;
      --  Spare data transfer sequencer timings
      SDT            : Boolean := False;
      --  Random Address cycle 1 sequencer timings
      RAC1T          : Boolean := False;
      --  Random Address cycle 2 sequencer timings
      RAC2T          : Boolean := False;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CSQCFGR3_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SNBR           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      AC1T           at 0 range 16 .. 16;
      AC2T           at 0 range 17 .. 17;
      AC3T           at 0 range 18 .. 18;
      AC4T           at 0 range 19 .. 19;
      AC5T           at 0 range 20 .. 20;
      SDT            at 0 range 21 .. 21;
      RAC1T          at 0 range 22 .. 22;
      RAC2T          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  FMC_CSQAR1_ADDC array element
   subtype FMC_CSQAR1_ADDC_Element is HAL.UInt8;

   --  FMC_CSQAR1_ADDC array
   type FMC_CSQAR1_ADDC_Field_Array is array (1 .. 4)
     of FMC_CSQAR1_ADDC_Element
     with Component_Size => 8, Size => 32;

   --  FMC NAND command sequencer address register 1
   type FMC_CSQAR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADDC as a value
            Val : HAL.UInt32;
         when True =>
            --  ADDC as an array
            Arr : FMC_CSQAR1_ADDC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CSQAR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype FMC_CSQAR2_ADDC5_Field is HAL.UInt8;
   subtype FMC_CSQAR2_SAO_Field is HAL.UInt16;

   --  FMC NAND command sequencer address register 2
   type FMC_CSQAR2_Register is record
      --  Address Cycle 5
      ADDC5         : FMC_CSQAR2_ADDC5_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
      --  Spare Area Address Offset
      SAO           : FMC_CSQAR2_SAO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CSQAR2_Register use record
      ADDC5         at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
      SAO           at 0 range 16 .. 31;
   end record;

   --  FMC NAND command sequencer interrupt enable register
   type FMC_CSQIER_Register is record
      --  Transfer Complete Interrupt enable
      TCIE          : Boolean := False;
      --  Sector Complete interrupt enable
      SCIE          : Boolean := False;
      --  Sector Error interrupt enable
      SEIE          : Boolean := False;
      --  Sector Uncorrectable Error interrupt enable
      SUEIE         : Boolean := False;
      --  Command Transfer Complete interrupt enable
      CMDTCIE       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CSQIER_Register use record
      TCIE          at 0 range 0 .. 0;
      SCIE          at 0 range 1 .. 1;
      SEIE          at 0 range 2 .. 2;
      SUEIE         at 0 range 3 .. 3;
      CMDTCIE       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  FMC NAND command sequencer interrupt status register
   type FMC_CSQISR_Register is record
      --  Transfer Complete flag
      TCF           : Boolean := False;
      --  Sector Complete flag
      SCF           : Boolean := False;
      --  Sector Error flag
      SEF           : Boolean := False;
      --  Sector Uncorrectable Error flag
      SUEF          : Boolean := False;
      --  Command Transfer Complete flag
      CMDTCF        : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CSQISR_Register use record
      TCF           at 0 range 0 .. 0;
      SCF           at 0 range 1 .. 1;
      SEF           at 0 range 2 .. 2;
      SUEF          at 0 range 3 .. 3;
      CMDTCF        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  FMC NAND command sequencer interrupt clear register
   type FMC_CSQICR_Register is record
      --  Write-only. Clear Transfer Complete flag
      CTCF          : Boolean := False;
      --  Write-only. Clear Sector Complete flag
      CSCF          : Boolean := False;
      --  Write-only. Clear Sector Error flag
      CSEF          : Boolean := False;
      --  Write-only. Clear Sector uncorrectable Error flag
      CSUEF         : Boolean := False;
      --  Write-only. Clear Command Transfer Complete flag
      CCMDTCF       : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CSQICR_Register use record
      CTCF          at 0 range 0 .. 0;
      CSCF          at 0 range 1 .. 1;
      CSEF          at 0 range 2 .. 2;
      CSUEF         at 0 range 3 .. 3;
      CCMDTCF       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype FMC_CSQEMSR_SEM_Field is HAL.UInt16;

   --  FMC command sequencer error mapping status register
   type FMC_CSQEMSR_Register is record
      --  Read-only. Sector Error mapping
      SEM            : FMC_CSQEMSR_SEM_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CSQEMSR_Register use record
      SEM            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  FMC BCH interrupt enable register
   type FMC_BCHIER_Register is record
      --  Decoder Uncorrectable Errors Interrupt enable
      DUEIE         : Boolean := False;
      --  Decoder Error Ready Interrupt enable
      DERIE         : Boolean := False;
      --  Decoder Error Found Interrupt enable
      DEFIE         : Boolean := False;
      --  Decoder Syndrome Ready Interrupt enable
      DSRIE         : Boolean := False;
      --  Decoder Parity Bits Ready Interrupt enable
      EPBRIE        : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_BCHIER_Register use record
      DUEIE         at 0 range 0 .. 0;
      DERIE         at 0 range 1 .. 1;
      DEFIE         at 0 range 2 .. 2;
      DSRIE         at 0 range 3 .. 3;
      EPBRIE        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  FMC BCH interrupt and status register
   type FMC_BCHISR_Register is record
      --  Read-only. Decoder Uncorrectable Errors flag
      DUEF          : Boolean;
      --  Read-only. Decoder Error Ready flag
      DERF          : Boolean;
      --  Read-only. Decoder Error Found flag
      DEFF          : Boolean;
      --  Read-only. Decoder Syndrome Ready flag
      DSRF          : Boolean;
      --  Read-only. Encoder Parity Bits Ready flag
      EPBRF         : Boolean;
      --  unspecified
      Reserved_5_31 : HAL.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_BCHISR_Register use record
      DUEF          at 0 range 0 .. 0;
      DERF          at 0 range 1 .. 1;
      DEFF          at 0 range 2 .. 2;
      DSRF          at 0 range 3 .. 3;
      EPBRF         at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  FMC BCH interrupt clear register
   type FMC_BCHICR_Register is record
      --  Write-only. Clear Decoder Uncorrectable Error flag
      CDUEF         : Boolean := False;
      --  Write-only. Clear Decoder Error ready flag
      CDERF         : Boolean := False;
      --  Write-only. Clear Decoder Error Found flag
      CDEFF         : Boolean := False;
      --  Write-only. Clear Decoder Syndrome Ready flag
      CDSRF         : Boolean := False;
      --  Write-only. Clear Encoder Parity Bits Ready flag
      CEPBRF        : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_BCHICR_Register use record
      CDUEF         at 0 range 0 .. 0;
      CDERF         at 0 range 1 .. 1;
      CDEFF         at 0 range 2 .. 2;
      CDSRF         at 0 range 3 .. 3;
      CEPBRF        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype FMC_BCHPBR4_BCHPB_Field is HAL.UInt8;

   --  FMC BCH parity bits register 4
   type FMC_BCHPBR4_Register is record
      --  Read-only. BCH parity bits
      BCHPB         : FMC_BCHPBR4_BCHPB_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_BCHPBR4_Register use record
      BCHPB         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FMC_BCHDSR0_DEN_Field is HAL.UInt4;

   --  FMC BCH decoder status register 0
   type FMC_BCHDSR0_Register is record
      --  Read-only. Decoder uncorrectable error
      DUE           : Boolean;
      --  Read-only. Decoder error found
      DEF           : Boolean;
      --  unspecified
      Reserved_2_3  : HAL.UInt2;
      --  Read-only. Decoder error number
      DEN           : FMC_BCHDSR0_DEN_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_BCHDSR0_Register use record
      DUE           at 0 range 0 .. 0;
      DEF           at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      DEN           at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FMC_BCHDSR1_EBP1_Field is HAL.UInt13;
   subtype FMC_BCHDSR1_EBP2_Field is HAL.UInt13;

   --  FMC BCH decoder status register for memory region 1
   type FMC_BCHDSR1_Register is record
      --  Read-only. Error bit position for error number 1
      EBP1           : FMC_BCHDSR1_EBP1_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Error bit position for error number 2
      EBP2           : FMC_BCHDSR1_EBP2_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_BCHDSR1_Register use record
      EBP1           at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      EBP2           at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype FMC_BCHDSR2_EBP3_Field is HAL.UInt13;
   subtype FMC_BCHDSR2_EBP4_Field is HAL.UInt13;

   --  FMC BCH decoder status register for memory region 2
   type FMC_BCHDSR2_Register is record
      --  Read-only. Error bit position for error number 3
      EBP3           : FMC_BCHDSR2_EBP3_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Error bit position for error number 4
      EBP4           : FMC_BCHDSR2_EBP4_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_BCHDSR2_Register use record
      EBP3           at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      EBP4           at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype FMC_BCHDSR3_EBP5_Field is HAL.UInt13;
   subtype FMC_BCHDSR3_EBP6_Field is HAL.UInt13;

   --  FMC BCH decoder status register for memory region 3
   type FMC_BCHDSR3_Register is record
      --  Read-only. Error bit position for error number 5
      EBP5           : FMC_BCHDSR3_EBP5_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Error bit position for error number 6
      EBP6           : FMC_BCHDSR3_EBP6_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_BCHDSR3_Register use record
      EBP5           at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      EBP6           at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype FMC_BCHDSR4_EBP7_Field is HAL.UInt13;
   subtype FMC_BCHDSR4_EBP8_Field is HAL.UInt13;

   --  FMC BCH decoder status register for memory region 4
   type FMC_BCHDSR4_Register is record
      --  Read-only. Error bit position for error number 7
      EBP7           : FMC_BCHDSR4_EBP7_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. Error bit position for error number 8
      EBP8           : FMC_BCHDSR4_EBP8_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_BCHDSR4_Register use record
      EBP7           at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      EBP8           at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Flexible memory controller
   type FMC_Peripheral is record
      --  SRAM/NOR Flash chip-select control register for memory region 1
      FMC_BCR1     : aliased FMC_BCR1_Register;
      --  SRAM/NOR Flash chip-select timing registers for memory region 1
      FMC_BTR1     : aliased FMC_BTR_Register;
      --  SRAM/NOR Flash chip-select control register for memory region 2
      FMC_BCR2     : aliased FMC_BCR_Register;
      --  SRAM/NOR Flash chip-select timing registers for memory region 2
      FMC_BTR2     : aliased FMC_BTR_Register;
      --  SRAM/NOR Flash chip-select control register for memory region 3
      FMC_BCR3     : aliased FMC_BCR_Register;
      --  SRAM/NOR Flash chip-select timing registers for memory region 3
      FMC_BTR3     : aliased FMC_BTR_Register;
      --  SRAM/NOR Flash chip-select control register for memory region 4
      FMC_BCR4     : aliased FMC_BCR_Register;
      --  SRAM/NOR Flash chip-select timing registers for memory region 4
      FMC_BTR4     : aliased FMC_BTR_Register;
      --  FMC common configuration register
      FMC_CFGR     : aliased FMC_CFGR_Register;
      --  NAND Flash programmable control register
      FMC_PCR      : aliased FMC_PCR_Register;
      --  FMC status register
      FMC_SR       : aliased FMC_SR_Register;
      --  FMC common memory space timing register
      FMC_PMEM     : aliased FMC_PMEM_Register;
      --  FMC attribute memory space timing registers
      FMC_PATT     : aliased FMC_PATT_Register;
      --  FMC Hamming parity result registers
      FMC_HPR      : aliased HAL.UInt32;
      --  FMC Hamming code ECC result register
      FMC_HECCR    : aliased HAL.UInt32;
      --  SRAM/NOR-Flash write timing registers for memory region 1
      FMC_BWTR1    : aliased FMC_BWTR_Register;
      --  SRAM/NOR-Flash write timing registers for memory region 2
      FMC_BWTR2    : aliased FMC_BWTR_Register;
      --  SRAM/NOR-Flash write timing registers for memory region 3
      FMC_BWTR3    : aliased FMC_BWTR_Register;
      --  SRAM/NOR-Flash write timing registers for memory region 4
      FMC_BWTR4    : aliased FMC_BWTR_Register;
      --  SDRAM control registers for SDRAM device 1
      FMC_SDCR1    : aliased FMC_SDCR1_Register;
      --  SDRAM control registers for SDRAM device 2
      FMC_SDCR2    : aliased FMC_SDCR2_Register;
      --  SDRAM timing register
      FMC_SDTR     : aliased FMC_SDTR_Register;
      --  SDRAM command mode register
      FMC_SDCMR    : aliased FMC_SDCMR_Register;
      --  SDRAM refresh timer register
      FMC_SDRTR    : aliased FMC_SDRTR_Register;
      --  SDRAM status register
      FMC_SDSR     : aliased FMC_SDSR_Register;
      --  FMC NAND interrupt enable register
      FMC_IER      : aliased FMC_IER_Register;
      --  FMC controller interrupt status register
      FMC_ISR      : aliased FMC_ISR_Register;
      --  FMC NAND controller interrupt clear register
      FMC_ICR      : aliased FMC_ICR_Register;
      --  FMC NAND command sequencer control register
      FMC_CSQCR    : aliased FMC_CSQCR_Register;
      --  FMC NAND command sequencer configuration register 1
      FMC_CSQCFGR1 : aliased FMC_CSQCFGR1_Register;
      --  FMC NAND command sequencer configuration register 2
      FMC_CSQCFGR2 : aliased FMC_CSQCFGR2_Register;
      --  FMC NAND sequencer configuration register 3
      FMC_CSQCFGR3 : aliased FMC_CSQCFGR3_Register;
      --  FMC NAND command sequencer address register 1
      FMC_CSQAR1   : aliased FMC_CSQAR1_Register;
      --  FMC NAND command sequencer address register 2
      FMC_CSQAR2   : aliased FMC_CSQAR2_Register;
      --  FMC NAND command sequencer interrupt enable register
      FMC_CSQIER   : aliased FMC_CSQIER_Register;
      --  FMC NAND command sequencer interrupt status register
      FMC_CSQISR   : aliased FMC_CSQISR_Register;
      --  FMC NAND command sequencer interrupt clear register
      FMC_CSQICR   : aliased FMC_CSQICR_Register;
      --  FMC command sequencer error mapping status register
      FMC_CSQEMSR  : aliased FMC_CSQEMSR_Register;
      --  FMC BCH interrupt enable register
      FMC_BCHIER   : aliased FMC_BCHIER_Register;
      --  FMC BCH interrupt and status register
      FMC_BCHISR   : aliased FMC_BCHISR_Register;
      --  FMC BCH interrupt clear register
      FMC_BCHICR   : aliased FMC_BCHICR_Register;
      --  FMC BCH parity bits register 1
      FMC_BCHPBR1  : aliased HAL.UInt32;
      --  FMC BCH parity bits register 2
      FMC_BCHPBR2  : aliased HAL.UInt32;
      --  FMC BCH parity bits register 3
      FMC_BCHPBR3  : aliased HAL.UInt32;
      --  FMC BCH parity bits register 4
      FMC_BCHPBR4  : aliased FMC_BCHPBR4_Register;
      --  FMC BCH decoder status register 0
      FMC_BCHDSR0  : aliased FMC_BCHDSR0_Register;
      --  FMC BCH decoder status register for memory region 1
      FMC_BCHDSR1  : aliased FMC_BCHDSR1_Register;
      --  FMC BCH decoder status register for memory region 2
      FMC_BCHDSR2  : aliased FMC_BCHDSR2_Register;
      --  FMC BCH decoder status register for memory region 3
      FMC_BCHDSR3  : aliased FMC_BCHDSR3_Register;
      --  FMC BCH decoder status register for memory region 4
      FMC_BCHDSR4  : aliased FMC_BCHDSR4_Register;
   end record
     with Volatile;

   for FMC_Peripheral use record
      FMC_BCR1     at 16#0# range 0 .. 31;
      FMC_BTR1     at 16#4# range 0 .. 31;
      FMC_BCR2     at 16#8# range 0 .. 31;
      FMC_BTR2     at 16#C# range 0 .. 31;
      FMC_BCR3     at 16#10# range 0 .. 31;
      FMC_BTR3     at 16#14# range 0 .. 31;
      FMC_BCR4     at 16#18# range 0 .. 31;
      FMC_BTR4     at 16#1C# range 0 .. 31;
      FMC_CFGR     at 16#20# range 0 .. 31;
      FMC_PCR      at 16#80# range 0 .. 31;
      FMC_SR       at 16#84# range 0 .. 31;
      FMC_PMEM     at 16#88# range 0 .. 31;
      FMC_PATT     at 16#8C# range 0 .. 31;
      FMC_HPR      at 16#90# range 0 .. 31;
      FMC_HECCR    at 16#94# range 0 .. 31;
      FMC_BWTR1    at 16#104# range 0 .. 31;
      FMC_BWTR2    at 16#10C# range 0 .. 31;
      FMC_BWTR3    at 16#114# range 0 .. 31;
      FMC_BWTR4    at 16#11C# range 0 .. 31;
      FMC_SDCR1    at 16#140# range 0 .. 31;
      FMC_SDCR2    at 16#144# range 0 .. 31;
      FMC_SDTR     at 16#148# range 0 .. 31;
      FMC_SDCMR    at 16#150# range 0 .. 31;
      FMC_SDRTR    at 16#154# range 0 .. 31;
      FMC_SDSR     at 16#158# range 0 .. 31;
      FMC_IER      at 16#180# range 0 .. 31;
      FMC_ISR      at 16#184# range 0 .. 31;
      FMC_ICR      at 16#188# range 0 .. 31;
      FMC_CSQCR    at 16#200# range 0 .. 31;
      FMC_CSQCFGR1 at 16#204# range 0 .. 31;
      FMC_CSQCFGR2 at 16#208# range 0 .. 31;
      FMC_CSQCFGR3 at 16#20C# range 0 .. 31;
      FMC_CSQAR1   at 16#210# range 0 .. 31;
      FMC_CSQAR2   at 16#214# range 0 .. 31;
      FMC_CSQIER   at 16#220# range 0 .. 31;
      FMC_CSQISR   at 16#224# range 0 .. 31;
      FMC_CSQICR   at 16#228# range 0 .. 31;
      FMC_CSQEMSR  at 16#230# range 0 .. 31;
      FMC_BCHIER   at 16#250# range 0 .. 31;
      FMC_BCHISR   at 16#254# range 0 .. 31;
      FMC_BCHICR   at 16#258# range 0 .. 31;
      FMC_BCHPBR1  at 16#260# range 0 .. 31;
      FMC_BCHPBR2  at 16#264# range 0 .. 31;
      FMC_BCHPBR3  at 16#268# range 0 .. 31;
      FMC_BCHPBR4  at 16#26C# range 0 .. 31;
      FMC_BCHDSR0  at 16#27C# range 0 .. 31;
      FMC_BCHDSR1  at 16#280# range 0 .. 31;
      FMC_BCHDSR2  at 16#284# range 0 .. 31;
      FMC_BCHDSR3  at 16#288# range 0 .. 31;
      FMC_BCHDSR4  at 16#28C# range 0 .. 31;
   end record;

   --  Flexible memory controller
   FMC1_Periph : aliased FMC_Peripheral
     with Import, Address => FMC1_Base;

   --  Flexible memory controller
   FMC1_S_Periph : aliased FMC_Peripheral
     with Import, Address => FMC1_S_Base;

end STM32_SVD.FMC;
