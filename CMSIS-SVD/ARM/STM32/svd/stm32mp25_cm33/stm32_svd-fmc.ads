--  This spec has been automatically generated from STM32MP25_CM33.svd

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

   --  SRAM/NOR flash chip-select control register for memory region 1
   type FMC_BCR_Register is record
      --  Memory region enable bit This bit enables the memory region. After
      --  reset memory region 1 is enabled, all others are disabled. Accessing
      --  a disabled memory region causes an ERROR on AXI bus.
      MBKEN          : Boolean := True;
      --  Address/data multiplexing enable bit When this bit is set, the
      --  address and data values are multiplexed on the data bus, valid only
      --  with NOR and PSRAM memories:
      MUXEN          : Boolean := True;
      --  Memory type This bit defines the type of external memory attached to
      --  the corresponding memory region:
      MTYP           : FMC_BCR_MTYP_Field := 16#2#;
      --  Memory data bus width This bit defines the external memory device
      --  width, valid for all type of memories.
      MWID           : FMC_BCR_MWID_Field := 16#1#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#3#;
      --  Burst enable bit This bit enables/disables synchronous accesses
      --  during read operations. It is valid only for synchronous memories
      --  operating in burst mode:
      BURSTEN        : Boolean := False;
      --  Wait signal polarity bit This bit defines the polarity of the wait
      --  signal from memory used for either in synchronous or asynchronous
      --  mode:
      WAITPOL        : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Wait timing configuration The NWAIT signal indicates whether the data
      --  from the memory are valid or if a wait state must be inserted when
      --  accessing the memory in synchronous mode. This configuration bit
      --  determines if NWAIT is asserted by the memory one clock cycle before
      --  the wait state or during the wait state:
      WAITCFG        : Boolean := False;
      --  Write enable bit This bit indicates whether write operations to the
      --  memory region by the FMC are enabled/disabled:
      WREN           : Boolean := True;
      --  Wait enable bit This bit enables/disables wait-state insertion via
      --  the NWAIT signal when accessing the memory in synchronous mode.
      WAITEN         : Boolean := True;
      --  Extended mode enable This bit enables write timing programming for
      --  asynchronous accesses inside the FMC_BWTR register, thus resulting in
      --  different timings for read and write operations. Note: When the
      --  extended mode is disabled, the FMC can operate in mode 1 or mode 2 as
      --  follows: Mode 1 is the default mode when the SRAM/PSRAM memory type
      --  is selected (MTYP[1:0] =0x0 or 0x01) Mode 2 is the default mode when
      --  the NOR memory type is selected (MTYP[1:0] = 0x10).
      EXTMOD         : Boolean := False;
      --  Wait signal during asynchronous transfers This bit enables/disables
      --  wait signal usage by the FMC even during asynchronous transfers.
      ASYNCWAIT      : Boolean := False;
      --  CRAM page size These bits are used for CellularRAM™ 1.5 which does
      --  not allow burst accesses to cross the address boundaries between
      --  pages. When these bits are configured, the FMC automatically splits
      --  the burst access when the memory page size is reached (refer to
      --  memory datasheet for page size). Others: Reserved.
      CPSIZE         : FMC_BCR_CPSIZE_Field := 16#0#;
      --  Write burst enable For PSRAM (CRAM) operating in burst mode, the bit
      --  enables synchronous accesses during write operations. The enable bit
      --  for synchronous read accesses is the BURSTEN bit in the FMC_BCRx
      --  register.
      CBURSTRW       : Boolean := False;
      --  Chip Select (CS) counter These bits define the maximum duration of
      --  Chip Select low for PSRAM synchronous mode and for each memory
      --  region. The Chip Select counter is loaded into a timer which is
      --  decremented using the KCK_FMC while the NE is maintained low during
      --  PSRAM read or write access. When the timer reaches 0, the PSRAM
      --  controller splits the current access and toggles NE to allow PSRAM
      --  device refresh. The programmed counter value guarantees a maximum NE
      --  pulse width (tsubCEM/sub) as specified for PSRAM devices. The counter
      --  is reloaded and starts decrementing each time a new access is
      --  triggered by a transition of NE from high to low. Note: Most PSRAMs
      --  manage refresh transparently and do not require access split.
      --  CSCOUNT[1:0] must consequently be left at its default value (counter
      --  disabled), otherwise CSCOUNT[1:0] value and access split impact must
      --  be checked according to PSRAM timing parameters.
      CSCOUNT        : FMC_BCR_CSCOUNT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Byte lane (NBL) setup These bits configure the NBL setup timing from
      --  NBLx low to Chip select NEx low.
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
      Reserved_6_7   at 0 range 6 .. 7;
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

   subtype FMC_BTR_ADDSET_Field is HAL.UInt4;
   subtype FMC_BTR_ADDHLD_Field is HAL.UInt4;
   subtype FMC_BTR_DATAST_Field is HAL.UInt8;
   subtype FMC_BTR_BUSTURN_Field is HAL.UInt4;
   subtype FMC_BTR_CLKDIV_Field is HAL.UInt4;
   subtype FMC_BTR_DATLAT_Field is HAL.UInt4;
   subtype FMC_BTR_ACCMOD_Field is HAL.UInt2;
   subtype FMC_BTR_DATAHLD_Field is HAL.UInt2;

   --  SRAM/NOR flash chip-select timing registers for memory region 1
   type FMC_BTR_Register is record
      --  Address setup phase duration These bits are written by software to
      --  define the duration of the address setup phase (refer to Figure226 to
      --  Figure227), used in SRAMs, ROMs and asynchronous NOR flash memories:
      --  ... For each access mode address setup phase duration, refer to the
      --  respective figure (refer to Figure226 to Figure227). Note: This value
      --  is don’t care in synchronous accesses. Note: In muxed mode or mode
      --  D, the minimum value for ADDSET is 1.
      ADDSET  : FMC_BTR_ADDSET_Field := 16#F#;
      --  Address-hold phase duration These bits are written by software to
      --  define the duration of the address hold phase (refer to Figure222 to
      --  Figure225) used in mode D or multiplexed accesses: ... For each
      --  access mode address-hold phase duration, refer to the respective
      --  figure (Figure222 to Figure225). Note: This value is not used in
      --  synchronous accesses, and the address hold phase lasts always 1
      --  memory clock period.
      ADDHLD  : FMC_BTR_ADDHLD_Field := 16#F#;
      --  Data-phase duration These bits are written by software to define the
      --  duration of the data phase (refer to Figure226 to Figure227) used in
      --  asynchronous accesses: ... For each memory type and access mode
      --  data-phase duration, refer to the respective figure (Figure226 to
      --  Figure227). Example of mode 1, write access, DATAST=1: Data-phase
      --  duration= DATAST+1 = 2 *fmc_ker_ck clock cycles. Note: This value is
      --  don’t care in synchronous accesses.
      DATAST  : FMC_BTR_DATAST_Field := 16#FF#;
      --  Bus turnaround phase duration These bits are written by software to
      --  add a delay between the end of current read or write transaction and
      --  the next transaction on the same memory region. This delay allows
      --  matching the minimum time between consecutive transactions
      --  (tsubEHEL/sub from NEx high to NEx low) and the maximum time required
      --  by the memory to free the data bus after a read access (tsubEHQZ
      --  f/subfrom chip enable high to output Hi-Z). This delay is recommended
      --  for mode D and muxed mode. For non-muxed memory, the bus turnaround
      --  delay can be set to a minimum value that respects the following
      --  condition: (BUSTRUN + 1)fmc_ker_ck period ≥ tsubEHELmin/sub max
      --  (tsubEHELmin/sub, tsubEHQZmax)/sub For FRAMs, the bus turnaround
      --  delay must be configured to match the minimum precharge time
      --  (tsubPC/sub). This delay is inserted between all consecutive
      --  transactions on the same memory region (read/read, write/write,
      --  read/write and write/read) to match the tsubPC/sub memory timing, and
      --  the Chip select toggles between consecutive accesses. (BUSTRUN + 1)
      --  fmc_ker_ck period = tsubPCmin/sub ...
      BUSTURN : FMC_BTR_BUSTURN_Field := 16#F#;
      --  Clock divide ratio (for FMC_CLK signal) These bits define FMC_CLK
      --  clock output signal period, expressed in fmc_ker_ck cycles: This
      --  value is don’t care when accessing NOR flash memories, SRAM and
      --  PSRAM in asynchronous mode. Note: Refer to Section36.10.5:
      --  Synchronous transactions for FMC_CLK divider ratio formula). Note:
      --  CLKDIV[3:0] bits are don't care when CCLKEN bit of FMC_CFGR is set.
      --  In this case FMC_CLK clock output is controlled by CLKDIV of
      --  FMC_CFGR.
      CLKDIV  : FMC_BTR_CLKDIV_Field := 16#F#;
      --  Data latency for synchronous memory (see note below bit descriptions)
      --  For synchronous access with read/write burst mode enabled (BURSTEN /
      --  CBURSTRW bits set), these bits define the number of memory clock
      --  cycles (+2) to issue to the memory before reading/writing the first
      --  data. This timing parameter is not expressed in fmc_ker_ck periods,
      --  but in FMC_CLK periods. For asynchronous access, this value is don't
      --  care.
      DATLAT  : FMC_BTR_DATLAT_Field := 16#F#;
      --  Access mode These bits specify the asynchronous access modes as shown
      --  in the timing diagrams. These bits are taken into account only when
      --  the EXTMOD bit in the FMC_BCRx register is 1.
      ACCMOD  : FMC_BTR_ACCMOD_Field := 16#0#;
      --  Data Hold phase duration These bits are written by software to define
      --  the duration of the data hold phase in fmc_ker_ck cycles (refer to
      --  Figure226 to Figure227), used in asynchronous accesses: For
      --  read/write accesses:
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

   subtype FMC_CFGR_CLKDIV_Field is HAL.UInt4;

   --  FMC common configuration register
   type FMC_CFGR_Register is record
      --  unspecified
      Reserved_0_15  : HAL.UInt16 := 16#0#;
      --  Clock divide ratio (for FMC_CLK signal) These bits define the FMC_CLK
      --  clock output signal period, expressed in number of fmc_ker_ck cycles:
      --  This value is don’t care when accessing NOR flash memories, SRAM
      --  and PSRAM in asynchronous mode. Note: Refer to Section36.10.5:
      --  Synchronous transactions for FMC_CLK divider ratio formula.
      CLKDIV         : FMC_CFGR_CLKDIV_Field := 16#0#;
      --  Continuous clock enable This bit enables the FMC_CLK clock output to
      --  external memory devices. If continuous clock mode is enabled, the
      --  synchronous memories connected to all memory regions are clocked by
      --  the same clock with the clock ratio defined by CLKDIV in FMC_CFGR.
      --  The CLKDIV value in FMC_BWTRx are don’t care.
      CCLKEN         : Boolean := False;
      --  unspecified
      Reserved_21_30 : HAL.UInt10 := 16#0#;
      --  FMC enable This bit enables/disables the FMC.
      FMCEN          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CFGR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      CLKDIV         at 0 range 16 .. 19;
      CCLKEN         at 0 range 20 .. 20;
      Reserved_21_30 at 0 range 21 .. 30;
      FMCEN          at 0 range 31 .. 31;
   end record;

   subtype FMC_PCR_PWID_Field is HAL.UInt2;
   subtype FMC_PCR_TCLR_Field is HAL.UInt4;
   subtype FMC_PCR_TAR_Field is HAL.UInt4;
   subtype FMC_PCR_ECCSS_Field is HAL.UInt3;

   --  NAND flash programmable control register
   type FMC_PCR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Wait feature enable bit This bit enables the Wait feature for the
      --  NAND flash memory region:
      PWAITEN        : Boolean := False;
      --  NAND flash memory region enable bit This bit enables the memory
      --  region. Accessing a disabled memory region causes an AXI bus error.
      --  Note: The NAND flash memory region must be disabled only when all
      --  NAND flash controller commands are complete.
      PBKEN          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#1#;
      --  Data bus width These bits define the external memory device width.
      --  1X: Reserved.
      PWID           : FMC_PCR_PWID_Field := 16#0#;
      --  ECC computation logic enable bit This bit must be kept reset when
      --  using the FMC sequencer
      ECCEN          : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  ECC algorithm
      ECCALG         : Boolean := False;
      --  CLE to RE delay. These bits define the time from CLE low to RE low in
      --  number of fmc_ker_ck clock cycles: t_clr less than or eqaul (TCLR +1)
      --  × tsubfmc_ker_ck/sub where tsubfmc_ker_ck/sub is the FMC clock
      --  period and t_clr is the CLE to RE timing of NAND flash memories.
      TCLR           : FMC_PCR_TCLR_Field := 16#F#;
      --  ALE to RE delay. These bits define the time from ALE low to RE low in
      --  number of fmc_ker_ck clock cycles: t_ar less than or eqaul (TAR +1)
      --  × tsubfmc_ker_ck/sub where tsubfmc_ker_ck/sub is the FMC clock
      --  period and t_ar is the ALE to RE timing of NAND flash memories.
      TAR            : FMC_PCR_TAR_Field := 16#F#;
      --  ECC sector size (used to access spare area) These bits define the
      --  sector size used for the ECC: 11X: Reserved. When the ECC is enabled
      --  with BCH code, the sector size must be programmed to 512 bytes.
      ECCSS          : FMC_PCR_ECCSS_Field := 16#3#;
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      --  BCH error correction capability
      BCHECC         : Boolean := False;
      --  Write enable This bit enables read or write access. It must be
      --  configured when using the FMC sequencer or when the ECC with BCH code
      --  is enabled. It can only be modified when ECCEN bit is reset.
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
      --  Read-only. Pipe Empty Flag This bit indicates if the pipe contains
      --  requests.
      PEF           : Boolean;
      --  unspecified
      Reserved_5_5  : HAL.Bit;
      --  Read-only. NAND write request flag This bit provides the status of
      --  the write request issued to the NAND flash memory. When this bit is
      --  set, all write requests to the NAND controller are served.
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
      --  Common memory setup time These bits define the number of fmc_ker_ck
      --  clock cycles (+1) to set up the address before the command assertion
      --  (NWE, NOE), during NAND flash read or write accesses to the common
      --  memory space: .......
      MEMSET  : FMC_PMEM_MEMSET_Field := 16#A#;
      --  Common memory wait time These bits define the minimum number of
      --  fmc_ker_ck clock cycles (+1) to assert the command (NWE, NOE), during
      --  NAND flash read or write accesses to the common memory space. The
      --  duration of command assertion is extended if the wait signal (NWAIT)
      --  is active (low) at the end of the programmed value of fmc_ker_ck:
      --  .......
      MEMWAIT : FMC_PMEM_MEMWAIT_Field := 16#A#;
      --  Common memory hold time These bits define the number of fmc_ker_ck
      --  clock cycles (+1) during which the address is held (and data for
      --  write accesses) after the command is deasserted (NWE, NOE), during
      --  NAND flash read or write accesses to the common memory space: .......
      MEMHOLD : FMC_PMEM_MEMHOLD_Field := 16#A#;
      --  Common memory data bus Hi-Z time These bits define the number of
      --  fmc_ker_ck clock cycles (+1) during which the data bus is kept Hi-Z
      --  after starting a NAND flash write access to the common memory space.
      --  This is only valid for write transactions: .......
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
      --  Attribute memory setup time These bits define the number of
      --  fmc_ker_ck clock cycles (+1) for address set up before the command
      --  assertion (NWE, NOE), during NAND flash read or write accesses to the
      --  attribute memory space: .......
      ATTSET  : FMC_PATT_ATTSET_Field := 16#A#;
      --  Attribute memory wait time These bits define the minimum number of x
      --  fmc_ker_ck (+1) clock cycles to assert the command (NWE, NOE), during
      --  NAND flash read or write accesses to the attribute memory space. The
      --  duration of command assertion is extended if the wait signal (NWAIT)
      --  is active (low) at the end of the programmed value of fmc_ker_ck:
      --  .......
      ATTWAIT : FMC_PATT_ATTWAIT_Field := 16#A#;
      --  Attribute memory hold time These bits define the number of fmc_ker_ck
      --  clock cycles (+1) during which the address is held (and data for
      --  write access) after the command deassertion (NWE, NOE), during NAND
      --  flash read or write accesses to the attribute memory space: .......
      ATTHOLD : FMC_PATT_ATTHOLD_Field := 16#A#;
      --  Attribute memory data bus Hi-Z time These bits define the number of
      --  fmc_ker_ck clock cycles (+1) during which the data bus is kept in
      --  Hi-Z after starting a NAND flash write access to the attribute memory
      --  space. These bits are only valid for write transactions: .......
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

   --  SRAM/NOR-flash write timing registers for memory region 1
   type FMC_BWTR_Register is record
      --  Address setup phase duration. These bits are written by software to
      --  define the duration of the address setup phase in fmc_ker_ck cycles
      --  (refer to Figure226 to Figure227) used in asynchronous accesses: ...
      --  Note: In synchronous accesses, this value is not used, and the
      --  address setup phase always lasts 1 flash clock period. In muxed mode,
      --  the minimum ADDSET value is 1.
      ADDSET         : FMC_BWTR_ADDSET_Field := 16#F#;
      --  Address-hold phase duration. These bits are written by software to
      --  define the duration of the address hold phase (refer to Figure224 to
      --  Figure225) used in asynchronous multiplexed accesses: ... Note: In
      --  synchronous NOR flash accesses, this value is not used, and the
      --  address hold phase always lasts 1 flash clock period.
      ADDHLD         : FMC_BWTR_ADDHLD_Field := 16#F#;
      --  Data-phase duration. These bits are written by software to define the
      --  data phase duration (refer to Figure226 to Figure227) used in
      --  asynchronous SRAM, PSRAM and NOR flash memory accesses: ...
      DATAST         : FMC_BWTR_DATAST_Field := 16#FF#;
      --  Bus turnaround phase duration These bits are written by software to
      --  add a delay between the end of current write transaction and the next
      --  transaction on the same memory region. For FRAMs, the bus turnaround
      --  delay must be configured to match the minimum precharge time
      --  (tsubPC/sub). The bus turnaround delay is inserted between all
      --  consecutive transactions on the same memory region (read/read,
      --  write/write, read/write and write/read), and the Chip select toggles
      --  between consecutive accesses. (BUSTRUN + 1) fmc_ker_ck period =
      --  tsubPCmin/sub ...
      BUSTURN        : FMC_BWTR_BUSTURN_Field := 16#F#;
      --  unspecified
      Reserved_20_27 : HAL.UInt8 := 16#0#;
      --  Access mode. These bits specify the asynchronous access modes as
      --  shown in the next timing diagrams.These bits are taken into account
      --  only when the EXTMOD bit in the FMC_BCRx register is 1.
      ACCMOD         : FMC_BWTR_ACCMOD_Field := 16#0#;
      --  Data Hold phase duration These bits are written by software to define
      --  the duration of the data hold phase in fmc_ker_ck cycles (refer to
      --  Figure227), used in asynchronous write accesses:
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

   --  FMC interrupt status register
   type FMC_ISR_Register is record
      --  Read-only. Interrupt rising edge flag The flag is set by hardware and
      --  cleared by setting the CREIF bit.
      IREF          : Boolean;
      --  Read-only. Interrupt high-level flag The flag is set by hardware and
      --  cleared by setting the CHLIF bit.
      IHLF          : Boolean;
      --  Read-only. Interrupt falling edge flag The flag is set by hardware
      --  and cleared by setting the CFEIF bit.
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
      --  Write-only. Command Sequencer Enable Writing 1 starts the Command
      --  sequencer. Writing 0 has no effect. Note: Write this bit to 1 to
      --  start the sequencer only when the FMC is enabled by setting FMCEN bit
      --  of FMC_CFGR to 1 and the NAND flash controller is activated by
      --  setting PBKEN bit of FMC_PCR to 1.
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
      --  Command cycle 2 Enable This bit specifies that the command cycle 2
      --  has to be generated by the command sequencer.
      CMD2EN         : Boolean := False;
      --  Command sequencer DMA request data enable When this bit is set, the
      --  command sequencer generates a DMA request to the first DMA channel,
      --  to transfer data from/to NAND flash memory.
      DMADEN         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Address Cycle number These bits define the number of address cycles
      --  to be generated by the command sequencer when issuing the command
      --  programmed in the registers. Others: Reserved.
      ACYNBR         : FMC_CSQCFGR1_ACYNBR_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Command 1 sequencer These bits specify if the Command 1 is issued by
      --  the command sequencer for the first cycle during read or write
      --  operations.
      CMD            : FMC_CSQCFGR1_CMD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Command 1 Sequencer timings This bit specifies if the Command 1
      --  (CMD1) is issued to the NAND flash memory with the timings programmed
      --  in FMC_PMEM or FMC_PATT register.
      CMD1T          : Boolean := False;
      --  Command 2 Sequencer timings This bit specifies if the Command 2
      --  (CMD2) is issued to the NAND flash memory with the timings defined in
      --  FMC_PMEM or FMC_PATT register.
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
      --  Sequencer spare data transfer enable This bit enables the sequencer
      --  to access the spare data area after each sector transfer. It also
      --  enables the ECC when using the sequencer. ECCEN bit in FMC_PCR
      --  register must be reset.
      SQSDTEN        : Boolean := False;
      --  Random Command 2 sequencer enable This bit enables the command 2 to
      --  be issued by the command sequencer during read accesses. This command
      --  is issued only when the CMD2SQEN bit is set.
      RCMD2EN        : Boolean := False;
      --  Command sequencer DMA request decoding status enable When this bit is
      --  set, the command sequencer generates a DMA request to the second DMA
      --  channel when valid bits are available in the ECC status register at
      --  the end of ECC processing (decoding). Note: This bit must be set only
      --  during a page read sequence to offload the saving of the ECC results
      --  between sectors by using a second DMA channel.
      DMASEN         : Boolean := False;
      --  unspecified
      Reserved_3_7   : HAL.UInt5 := 16#0#;
      --  Random Command 1 sequencer These bits specify that the command 1
      --  value is issued by the command sequencer for the first cycle during
      --  read or write accesses.
      RCMD           : FMC_CSQCFGR2_RCMD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Command 1 sequencer timings This bit specifies if the CMD1 is issued
      --  to the NAND flash memory with the timings flash memory in FMC_PMEM or
      --  FMC_PATT register.
      RCMD1T         : Boolean := False;
      --  Command 1 sequencer timings This bit specifies if the CMD1 is issued
      --  to the NAND flash memory with the timings programmed in FMC_PMEM or
      --  FMC_PATT register.
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
      --  Number of sectors to be read/written These bits define the number of
      --  sectors that are processed by the sequencer. They are used to
      --  read/write part of a page or to use the ECC (in particular with the
      --  BCH code which requires 512-byte sectors): ... Others: Reserved.
      SNBR           : FMC_CSQCFGR3_SNBR_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Address cycle 1 sequencer timings This bit defines if the Address
      --  cycle 1 (ADDC1) is issued to the NAND flash memory with the timings
      --  programmed in FMC_PMEM or FMC_PATT register.
      AC1T           : Boolean := False;
      --  Address cycle 2 sequencer timings This bit defines if the Address
      --  cycle 2 (ADDC2) is issued to the NAND flash memory with the timings
      --  programmed in FMC_PMEM or FMC_PATT register.
      AC2T           : Boolean := False;
      --  Address cycle 3 sequencer timings This bit defines if the Address
      --  cycle 3 (ADDC3) is issued to the NAND flash memory with the timings
      --  programmed in FMC_PMEM or FMC_PATT register.
      AC3T           : Boolean := False;
      --  Address cycle 4sequencer timings This bit defines if the Address
      --  cycle 4 (ADDC4) is issued to the NAND flash memory with the timings
      --  programmed in FMC_PMEM or FMC_PATT register.
      AC4T           : Boolean := False;
      --  Address cycle 5 sequencer timings This bit defines if the Address
      --  cycle 5(ADDC1) is issued to the NAND flash memory with the timings
      --  programmed in FMC_PMEM or FMC_PATT register.
      AC5T           : Boolean := False;
      --  Spare data transfer sequencer timings This bit specifies if the spare
      --  data transfer for read and write operations from/to the NAND flash
      --  memory are performed with the timings programmed in FMC_PMEM or
      --  FMC_PATT register.
      SDT            : Boolean := False;
      --  Random Address cycle 1 sequencer timings This bit specifies if the
      --  random Address cycle 1 (ADDC1) is issued to the NAND flash memory
      --  with the timings programmed in FMC_PMEM or in FMC_PATT register.
      RAC1T          : Boolean := False;
      --  Random Address cycle 2 sequencer timings This bit specifies if the
      --  random Address cycle 2 (ADDC2) is issued to the NAND flash memory
      --  with the timings programmed in FMC_PMEM or in FMC_PATT register.
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

   --  FMC_CSQAR2_NANDCEN array
   type FMC_CSQAR2_NANDCEN_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for FMC_CSQAR2_NANDCEN
   type FMC_CSQAR2_NANDCEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NANDCEN as a value
            Val : HAL.UInt2;
         when True =>
            --  NANDCEN as an array
            Arr : FMC_CSQAR2_NANDCEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for FMC_CSQAR2_NANDCEN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype FMC_CSQAR2_SAO_Field is HAL.UInt16;

   --  FMC NAND command sequencer address register 2
   type FMC_CSQAR2_Register is record
      --  Address Cycle 5 These bits define the value of address cycle 5 to be
      --  issued by the command sequencer during read or write accesses.
      ADDC5          : FMC_CSQAR2_ADDC5_Field := 16#0#;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  NAND flash chip enable number These bits define the chip enable to be
      --  selected by the NAND flash command sequencer.
      NANDCEN        : FMC_CSQAR2_NANDCEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Spare Area Address Offset These bits define the offset of the first
      --  ECC byte in the spare area for the program sequence. Note: The
      --  minimum SAQ value is 2 since the first two bytes of the spare area
      --  are reserved for Bad block marking and metadata.
      SAO            : FMC_CSQAR2_SAO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CSQAR2_Register use record
      ADDC5          at 0 range 0 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      NANDCEN        at 0 range 10 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SAO            at 0 range 16 .. 31;
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
      --  Transfer Complete flag This bit is set by hardware and cleared by
      --  writing 1 to the CTCF bit in FMC_CSQICR. This bit is set when the
      --  command sequencer has transferred all the data for all sectors or
      --  when the command sequencer was aborted. An interrupt can be generated
      --  if the TCIE bit is set in the FMC_CSQICR register.
      TCF           : Boolean := False;
      --  Sector Complete flag This bit is set by hardware and cleared by
      --  writing 1 to the CSCF bit in FMC_CSQICR. This bit is set when the
      --  command sequencer has completed the sector data transfer. An
      --  interrupt can be generated if the SCIE bit is set in the FMC_CSQICR
      --  register.
      SCF           : Boolean := False;
      --  Sector Error flag This bit is set by hardware and cleared by writing
      --  1 to the CSEF bit in FMC_CSQICR. This bit is set when the command
      --  sequencer has completed the sector data transfer with at least one
      --  error detection. An interrupt can be generated if the SEIE bit is set
      --  in the FMC_CSQICR register. Note: The SEF bit is relevant only for
      --  BCH code to indicate that errors are present. It must be ignored for
      --  Hamming code.
      SEF           : Boolean := False;
      --  Sector Uncorrectable Error flag This bit is set by hardware and
      --  cleared by writing 1 to the CSUEF bit in FMC_CSQICR. When this bit is
      --  set, it indicates that the command sequencer detected an
      --  uncorrectable error when decoding a sector. An interrupt can be
      --  generated if the SUEIE bit is set in the FMC_CSQICR register. Note:
      --  The SUEF bit is relevant only for BCH code to indicate uncorrectable
      --  errors. It must be ignored for Hamming code.
      SUEF          : Boolean := False;
      --  Command Transfer Complete flag This bit is set when the command
      --  sequencer has completed the transfer of programmed commands and
      --  addresses. This bit is cleared by setting CCMDTCF bit. An interrupt
      --  can be generated if the CMDTCIE bit is set in the FMC_CSQICR
      --  register. Note: The Sector Transfer Complete interrupt is not needed
      --  in sequencer mode.
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
      --  Write-only. Clear Transfer Complete flag Writing one clears the TCF
      --  flag in the FMC_CSQISR register
      CTCF          : Boolean := False;
      --  Write-only. Clear Sector Complete flag Writing one clears the SCF
      --  flag in the FMC_CSQISR register
      CSCF          : Boolean := False;
      --  Write-only. Clear Sector Error flag Writing one clears the SEF flag
      --  in the FMC_CSQISR register
      CSEF          : Boolean := False;
      --  Write-only. Clear Sector uncorrectable Error flag Writing one clears
      --  the SUEF flag in the FMC_CSQISR register
      CSUEF         : Boolean := False;
      --  Write-only. Clear Command Transfer Complete flag Writing one clears
      --  the CMTCF flag in the FMC_CSQISR register
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
      --  Read-only. Sector Error mapping When SEM[i] bit (0 less than or eqaul
      --  i less than or eqaul 15) is set, at least one error has been detected
      --  on sector i+1. As an example, SEM[2] and SEM[1] bits are set when
      --  errors are detected in sector 3 and 2.
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
      --  Read-only. Decoder Uncorrectable Errors flag This field indicates
      --  that too many errors have been detected in the sector during the BCH
      --  decoding and that the sector is uncorrectable.
      DUEF          : Boolean;
      --  Read-only. Decoder Error Ready flag This bit indicates that the
      --  decoder has finished searching errors and identifying their location.
      --  The number of errors and their location are available in FMC_BCHDSR0
      --  and FMC_BCHDSR1 to 4, respectively.
      DERF          : Boolean;
      --  Read-only. Decoder Error Found flag This bit is set by hardware and
      --  cleared by writing 1 to CDEFF. This bit indicates that at least one
      --  error has been detected in the sector.
      DEFF          : Boolean;
      --  Read-only. Decoder Syndrome Ready flag This bit is set when the
      --  syndrome is ready and DEFF is a valid field.
      DSRF          : Boolean;
      --  Read-only. Encoder Parity Bits Ready flag This bit is set when the
      --  BCH encoder parity bits are available in FMC_BCHPBR1 to 4.
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
      --  Write-only. Clear Decoder Uncorrectable Error flag Writing 1 clears
      --  the DUEF flag in FMC_BCHISR.
      CDUEF         : Boolean := False;
      --  Write-only. Clear Decoder Error ready flag Writing 1 clears the DERF
      --  flag in FMC_BCHISR.
      CDERF         : Boolean := False;
      --  Write-only. Clear Decoder Error Found flag Writing 1 clears the DEFF
      --  flag in FMC_BCHISR.
      CDEFF         : Boolean := False;
      --  Write-only. Clear Decoder Syndrome Ready flag Writing 1 clears the
      --  DSRF flag in FMC_BCHISR.
      CDSRF         : Boolean := False;
      --  Write-only. Clear Encoder Parity Bits Ready flag Writing 1 clears the
      --  EPBRF flag in FMC_BCHISR.
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
      --  Read-only. Decoder uncorrectable error This field indicates that too
      --  many errors have been detected in the sector during the BCH decoding
      --  and that the sector is uncorrectable. If the BCH decoder detects a
      --  number of errors that exceeds the maximum number of detectable
      --  errors, DUE is not significant.
      DUE           : Boolean;
      --  Read-only. Decoder error found This field indicates that the decoder
      --  has finished searching errors and identifying their location. The
      --  number of errors and their location are available in FMC_BCHDSR0 and
      --  FMC_BCHDSR1 to 4, respectively.
      DEF           : Boolean;
      --  unspecified
      Reserved_2_3  : HAL.UInt2;
      --  Read-only. Decoder error number When DEF bit is set, this field
      --  indicates the number of errors detected by the BCH decoder. Following
      --  the selected BCH code, if the number of detected errors exceeds the
      --  number of correctable errors, this bit is not significant and DUE bit
      --  is set. If the BCH decoder detects a number of errors that exceeds
      --  the maximum number of detectable errors, DEN is not significant.
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

   --  FMC_SECCFGR_SEC array
   type FMC_SECCFGR_SEC_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for FMC_SECCFGR_SEC
   type FMC_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt6;
         when True =>
            --  SEC as an array
            Arr : FMC_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for FMC_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  FMC security configuration register
   type FMC_SECCFGR_Register is record
      --  Security state for FMC_CFGR common control register
      SEC           : FMC_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_SECCFGR_Register use record
      SEC           at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  FMC_PRIVCFGR_PRIV array
   type FMC_PRIVCFGR_PRIV_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for FMC_PRIVCFGR_PRIV
   type FMC_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt6;
         when True =>
            --  PRIV as an array
            Arr : FMC_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for FMC_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  FMC security configuration register
   type FMC_PRIVCFGR_Register is record
      --  Privileged state for common control: FMC_CFGR
      PRIV          : FMC_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  FMC_RCFGLOCKR_LOCK array
   type FMC_RCFGLOCKR_LOCK_Field_Array is array (0 .. 5) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for FMC_RCFGLOCKR_LOCK
   type FMC_RCFGLOCKR_LOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LOCK as a value
            Val : HAL.UInt6;
         when True =>
            --  LOCK as an array
            Arr : FMC_RCFGLOCKR_LOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for FMC_RCFGLOCKR_LOCK_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  FMC CID configuration lock register
   type FMC_RCFGLOCKR_Register is record
      --  Lock FMC_CFGR until a global FMC reset
      LOCK          : FMC_RCFGLOCKR_LOCK_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_RCFGLOCKR_Register use record
      LOCK          at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype FMC_CIDCFGR_SCID_Field is HAL.UInt3;

   --  FMC_CIDCFGR_SEMWLC array
   type FMC_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for FMC_CIDCFGR_SEMWLC
   type FMC_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : FMC_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for FMC_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  FMC resource 0 CID register
   type FMC_CIDCFGR_Register is record
      --  CID filtering enable for resource x
      CFEN           : Boolean := False;
      --  Semaphore enable for resource x
      SEMEN          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID for resource x Trusted domain applications use this bit to
      --  statically define which compartment has access to the resource x when
      --  SEMEN=0. This bit is ignored if SEMEN=1 or CFEN=0.
      SCID           : FMC_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  White-listed CID0 in the CID allocation pool of resource x in
      --  semaphore mode
      SEMWLC         : FMC_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEMEN          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FMC_SEMCR_SEMCID_Field is HAL.UInt3;

   --  FMC resource 0 semaphore control register
   type FMC_SEMCR_Register is record
      --  Mutex for the CID allocation of resource x in semaphore mode Write
      --  access: Write 0: Control of resource x (in semaphore mode) released
      --  to any white-listed CID Write 1: Control of resource x (in semaphore
      --  mode) acquired by a white-listed CID Read access: Read 0: Resource x
      --  is CID-free, meaning that it is not (currently) under the control of
      --  any white-listed CID Read 1: Resource x is CID-allocated, meaning
      --  that it is (currently) under the control of one white-listed CID If
      --  resource x is in secure state (SECx=1 in FMC_SECCFGR), this bit can
      --  be written only by a secure agent. If resource x is in privileged
      --  state (FMC_PRIVCFGR.PRIVx=1), this bit can be written only by a
      --  privileged agent. If resource x is CID-filtered (CFEN=1 in
      --  FMC_CIDCFGRx) and in semaphore mode (FMC_CIDCFGR.SEMEN=1), this bit
      --  can be written either by an authorized (white-listed) CID agent to
      --  acquire the control or by the same (white-listed) CID agent to
      --  release the control.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Current CID allocated to resource x in semaphore mode The
      --  field is read-only. It is internally updated when a white-listed CID
      --  has taken the control of resource x, in semaphore mode. If
      --  SEM_MUTEX=0, this CID also released it.
      SEMCID        : FMC_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype FMC_HWCFGR3_MAX_CID_Field is HAL.UInt4;
   subtype FMC_HWCFGR3_CID_WIDTH_Field is HAL.UInt4;

   --  FMC hardware configuration register 3
   type FMC_HWCFGR3_Register is record
      --  Read-only. Maximum compartment ID (or CID) MAX_CID ranges from 0 to
      --  15: 0001 to 1111: FMC is CID-aware and each channel is a separate
      --  CID-aware resource. n+1 CIDs, from CID0 up to CIDn, are supported.
      MAX_CID       : FMC_HWCFGR3_MAX_CID_Field;
      --  Read-only. CID bus width This bit field is relevant only when MAX_CID
      --  is not null in FMC_HWCFGR2. Others: Reserved, must not be used.
      CID_WIDTH     : FMC_HWCFGR3_CID_WIDTH_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_HWCFGR3_Register use record
      MAX_CID       at 0 range 0 .. 3;
      CID_WIDTH     at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FMC_HWCFGR2_RD_LN2DPTH_Field is HAL.UInt4;
   subtype FMC_HWCFGR2_NOR_BASE_Field is HAL.UInt4;
   subtype FMC_HWCFGR2_SDRAM_RBASE_Field is HAL.UInt4;
   subtype FMC_HWCFGR2_NAND_BASE_Field is HAL.UInt4;
   subtype FMC_HWCFGR2_SDRAM1_BASE_Field is HAL.UInt4;
   subtype FMC_HWCFGR2_SDRAM2_BASE_Field is HAL.UInt4;

   --  FMC hardware configuration register 2
   type FMC_HWCFGR2_Register is record
      --  Read-only. AXI read data FIFO depth These bits return the AXI read
      --  data FIFO depth. depth is 2supRD_LN2DPTH/sup
      RD_LN2DPTH     : FMC_HWCFGR2_RD_LN2DPTH_Field;
      --  Read-only. NOR base address It returns bits [31:28] of NOR base
      --  address space
      NOR_BASE       : FMC_HWCFGR2_NOR_BASE_Field;
      --  Read-only. SDRAM remap base address it returns bits [31:28] of SDRAM
      --  remap base address space when the SDRAM controller is supported. It
      --  is ignored otherwise.
      SDRAM_RBASE    : FMC_HWCFGR2_SDRAM_RBASE_Field;
      --  Read-only. NAND base address It returns bits [31:28] of NAND base
      --  address space
      NAND_BASE      : FMC_HWCFGR2_NAND_BASE_Field;
      --  Read-only. SDRAM bank 1 base address It returns bits [31:28] of SDRAM
      --  bank 1 base address space when the SDRAM controller is supported. It
      --  is ignored otherwise.
      SDRAM1_BASE    : FMC_HWCFGR2_SDRAM1_BASE_Field;
      --  Read-only. SDRAM bank 2 base address It returns bits [31:28] of SDRAM
      --  bank 2 base address space when the SDRAM controller is supported. It
      --  is ignored otherwise.
      SDRAM2_BASE    : FMC_HWCFGR2_SDRAM2_BASE_Field;
      --  Read-only. Support for Privileged mode
      PRIVILEGE      : Boolean;
      --  unspecified
      Reserved_25_27 : HAL.UInt3;
      --  Read-only. Support for Armsup/sup TrustZonesup/sup Note: Arm and
      --  TrustZone are registered trademarks of Arm Limited (or its
      --  subsidiaries) in the US and/or elsewhere
      SECURE         : Boolean;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_HWCFGR2_Register use record
      RD_LN2DPTH     at 0 range 0 .. 3;
      NOR_BASE       at 0 range 4 .. 7;
      SDRAM_RBASE    at 0 range 8 .. 11;
      NAND_BASE      at 0 range 12 .. 15;
      SDRAM1_BASE    at 0 range 16 .. 19;
      SDRAM2_BASE    at 0 range 20 .. 23;
      PRIVILEGE      at 0 range 24 .. 24;
      Reserved_25_27 at 0 range 25 .. 27;
      SECURE         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype FMC_HWCFGR1_ID_SIZE_Field is HAL.UInt4;
   subtype FMC_HWCFGR1_WA_LN2DPTH_Field is HAL.UInt4;
   subtype FMC_HWCFGR1_WD_LN2DPTH_Field is HAL.UInt4;
   subtype FMC_HWCFGR1_WR_LN2DPTH_Field is HAL.UInt4;
   subtype FMC_HWCFGR1_RA_LN2DPTH_Field is HAL.UInt4;

   --  FMC hardware configuration register 1
   type FMC_HWCFGR1_Register is record
      --  Read-only. NAND Controller Selection
      NAND_SEL      : Boolean;
      --  unspecified
      Reserved_1_3  : HAL.UInt3;
      --  Read-only. NAND ECC
      NAND_ECC      : Boolean;
      --  unspecified
      Reserved_5_7  : HAL.UInt3;
      --  Read-only. SDRAM controller selection
      SDRAM_SEL     : Boolean;
      --  unspecified
      Reserved_9_11 : HAL.UInt3;
      --  Read-only. AXI ID width These bits return the AXI ID width.
      ID_SIZE       : FMC_HWCFGR1_ID_SIZE_Field;
      --  Read-only. AXI write address FIFO depth These bits return the AXI
      --  write address FIFO depth. depth is 2supWA_LN2DPTH/sup.
      WA_LN2DPTH    : FMC_HWCFGR1_WA_LN2DPTH_Field;
      --  Read-only. AXI write data FIFO depth These bits return the AXI write
      --  data FIFO depth. depth is 2supWD_LN2DPTH/sup.
      WD_LN2DPTH    : FMC_HWCFGR1_WD_LN2DPTH_Field;
      --  Read-only. AXI write response FIFO depth These bits return the AXI
      --  write response FIFO depth. depth is 2supWR_LN2DPTH/sup.
      WR_LN2DPTH    : FMC_HWCFGR1_WR_LN2DPTH_Field;
      --  Read-only. AXI read address FIFO depth These bits return the AXI read
      --  address FIFO depth. depth is 2supRA_LN2DPTH/sup.
      RA_LN2DPTH    : FMC_HWCFGR1_RA_LN2DPTH_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_HWCFGR1_Register use record
      NAND_SEL      at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      NAND_ECC      at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      SDRAM_SEL     at 0 range 8 .. 8;
      Reserved_9_11 at 0 range 9 .. 11;
      ID_SIZE       at 0 range 12 .. 15;
      WA_LN2DPTH    at 0 range 16 .. 19;
      WD_LN2DPTH    at 0 range 20 .. 23;
      WR_LN2DPTH    at 0 range 24 .. 27;
      RA_LN2DPTH    at 0 range 28 .. 31;
   end record;

   subtype FMC_VERR_MINREV_Field is HAL.UInt4;
   subtype FMC_VERR_MAJREV_Field is HAL.UInt4;

   --  FMC version register
   type FMC_VERR_Register is record
      --  Read-only. Minor revision These bits return the FMC minor revision
      MINREV        : FMC_VERR_MINREV_Field;
      --  Read-only. Major revision These bits return the FMC major revision
      MAJREV        : FMC_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FMC_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FMC address block description
   type FMC_Peripheral is record
      --  SRAM/NOR flash chip-select control register for memory region 1
      FMC_BCR1      : aliased FMC_BCR_Register;
      --  SRAM/NOR flash chip-select timing registers for memory region 1
      FMC_BTR1      : aliased FMC_BTR_Register;
      --  SRAM/NOR flash chip-select control register for memory region 2
      FMC_BCR2      : aliased FMC_BCR_Register;
      --  SRAM/NOR flash chip-select timing registers for memory region 2
      FMC_BTR2      : aliased FMC_BTR_Register;
      --  SRAM/NOR flash chip-select control register for memory region 3
      FMC_BCR3      : aliased FMC_BCR_Register;
      --  SRAM/NOR flash chip-select timing registers for memory region 3
      FMC_BTR3      : aliased FMC_BTR_Register;
      --  SRAM/NOR flash chip-select control register for memory region 4
      FMC_BCR4      : aliased FMC_BCR_Register;
      --  SRAM/NOR flash chip-select timing registers for memory region 4
      FMC_BTR4      : aliased FMC_BTR_Register;
      --  FMC common configuration register
      FMC_CFGR      : aliased FMC_CFGR_Register;
      --  NAND flash programmable control register
      FMC_PCR       : aliased FMC_PCR_Register;
      --  FMC status register
      FMC_SR        : aliased FMC_SR_Register;
      --  FMC common memory space timing register
      FMC_PMEM      : aliased FMC_PMEM_Register;
      --  FMC attribute memory space timing registers
      FMC_PATT      : aliased FMC_PATT_Register;
      --  FMC Hamming parity result registers
      FMC_HPR       : aliased HAL.UInt32;
      --  FMC Hamming code ECC result register
      FMC_HECCR     : aliased HAL.UInt32;
      --  SRAM/NOR-flash write timing registers for memory region 1
      FMC_BWTR1     : aliased FMC_BWTR_Register;
      --  SRAM/NOR-flash write timing registers for memory region 2
      FMC_BWTR2     : aliased FMC_BWTR_Register;
      --  SRAM/NOR-flash write timing registers for memory region 3
      FMC_BWTR3     : aliased FMC_BWTR_Register;
      --  SRAM/NOR-flash write timing registers for memory region 4
      FMC_BWTR4     : aliased FMC_BWTR_Register;
      --  FMC NAND interrupt enable register
      FMC_IER       : aliased FMC_IER_Register;
      --  FMC interrupt status register
      FMC_ISR       : aliased FMC_ISR_Register;
      --  FMC NAND controller interrupt clear register
      FMC_ICR       : aliased FMC_ICR_Register;
      --  FMC NAND command sequencer control register
      FMC_CSQCR     : aliased FMC_CSQCR_Register;
      --  FMC NAND command sequencer configuration register 1
      FMC_CSQCFGR1  : aliased FMC_CSQCFGR1_Register;
      --  FMC NAND command sequencer configuration register 2
      FMC_CSQCFGR2  : aliased FMC_CSQCFGR2_Register;
      --  FMC NAND sequencer configuration register 3
      FMC_CSQCFGR3  : aliased FMC_CSQCFGR3_Register;
      --  FMC NAND command sequencer address register 1
      FMC_CSQAR1    : aliased FMC_CSQAR1_Register;
      --  FMC NAND command sequencer address register 2
      FMC_CSQAR2    : aliased FMC_CSQAR2_Register;
      --  FMC NAND command sequencer interrupt enable register
      FMC_CSQIER    : aliased FMC_CSQIER_Register;
      --  FMC NAND command sequencer interrupt status register
      FMC_CSQISR    : aliased FMC_CSQISR_Register;
      --  FMC NAND command sequencer interrupt clear register
      FMC_CSQICR    : aliased FMC_CSQICR_Register;
      --  FMC command sequencer error mapping status register
      FMC_CSQEMSR   : aliased FMC_CSQEMSR_Register;
      --  FMC BCH interrupt enable register
      FMC_BCHIER    : aliased FMC_BCHIER_Register;
      --  FMC BCH interrupt and status register
      FMC_BCHISR    : aliased FMC_BCHISR_Register;
      --  FMC BCH interrupt clear register
      FMC_BCHICR    : aliased FMC_BCHICR_Register;
      --  FMC BCH parity bits register 1
      FMC_BCHPBR1   : aliased HAL.UInt32;
      --  FMC BCH parity bits register 2
      FMC_BCHPBR2   : aliased HAL.UInt32;
      --  FMC BCH parity bits register 3
      FMC_BCHPBR3   : aliased HAL.UInt32;
      --  FMC BCH parity bits register 4
      FMC_BCHPBR4   : aliased FMC_BCHPBR4_Register;
      --  FMC BCH decoder status register 0
      FMC_BCHDSR0   : aliased FMC_BCHDSR0_Register;
      --  FMC BCH decoder status register for memory region 1
      FMC_BCHDSR1   : aliased FMC_BCHDSR1_Register;
      --  FMC BCH decoder status register for memory region 2
      FMC_BCHDSR2   : aliased FMC_BCHDSR2_Register;
      --  FMC BCH decoder status register for memory region 3
      FMC_BCHDSR3   : aliased FMC_BCHDSR3_Register;
      --  FMC BCH decoder status register for memory region 4
      FMC_BCHDSR4   : aliased FMC_BCHDSR4_Register;
      --  FMC security configuration register
      FMC_SECCFGR   : aliased FMC_SECCFGR_Register;
      --  FMC security configuration register
      FMC_PRIVCFGR  : aliased FMC_PRIVCFGR_Register;
      --  FMC CID configuration lock register
      FMC_RCFGLOCKR : aliased FMC_RCFGLOCKR_Register;
      --  FMC resource 0 CID register
      FMC_CIDCFGR0  : aliased FMC_CIDCFGR_Register;
      --  FMC resource 0 semaphore control register
      FMC_SEMCR0    : aliased FMC_SEMCR_Register;
      --  FMC resource 1 CID register
      FMC_CIDCFGR1  : aliased FMC_CIDCFGR_Register;
      --  FMC resource 1 semaphore control register
      FMC_SEMCR1    : aliased FMC_SEMCR_Register;
      --  FMC resource 2 CID register
      FMC_CIDCFGR2  : aliased FMC_CIDCFGR_Register;
      --  FMC resource 2 semaphore control register
      FMC_SEMCR2    : aliased FMC_SEMCR_Register;
      --  FMC resource 3 CID register
      FMC_CIDCFGR3  : aliased FMC_CIDCFGR_Register;
      --  FMC resource 3 semaphore control register
      FMC_SEMCR3    : aliased FMC_SEMCR_Register;
      --  FMC resource 4 CID register
      FMC_CIDCFGR4  : aliased FMC_CIDCFGR_Register;
      --  FMC resource 4 semaphore control register
      FMC_SEMCR4    : aliased FMC_SEMCR_Register;
      --  FMC resource 5 CID register
      FMC_CIDCFGR5  : aliased FMC_CIDCFGR_Register;
      --  FMC resource 5 semaphore control register
      FMC_SEMCR5    : aliased FMC_SEMCR_Register;
      --  FMC hardware configuration register 3
      FMC_HWCFGR3   : aliased FMC_HWCFGR3_Register;
      --  FMC hardware configuration register 2
      FMC_HWCFGR2   : aliased FMC_HWCFGR2_Register;
      --  FMC hardware configuration register 1
      FMC_HWCFGR1   : aliased FMC_HWCFGR1_Register;
      --  FMC version register
      FMC_VERR      : aliased FMC_VERR_Register;
      --  FMC identification register
      FMC_IPIDR     : aliased HAL.UInt32;
      --  FMC size identification register
      FMC_SIDR      : aliased HAL.UInt32;
   end record
     with Volatile;

   for FMC_Peripheral use record
      FMC_BCR1      at 16#0# range 0 .. 31;
      FMC_BTR1      at 16#4# range 0 .. 31;
      FMC_BCR2      at 16#8# range 0 .. 31;
      FMC_BTR2      at 16#C# range 0 .. 31;
      FMC_BCR3      at 16#10# range 0 .. 31;
      FMC_BTR3      at 16#14# range 0 .. 31;
      FMC_BCR4      at 16#18# range 0 .. 31;
      FMC_BTR4      at 16#1C# range 0 .. 31;
      FMC_CFGR      at 16#20# range 0 .. 31;
      FMC_PCR       at 16#80# range 0 .. 31;
      FMC_SR        at 16#84# range 0 .. 31;
      FMC_PMEM      at 16#88# range 0 .. 31;
      FMC_PATT      at 16#8C# range 0 .. 31;
      FMC_HPR       at 16#90# range 0 .. 31;
      FMC_HECCR     at 16#94# range 0 .. 31;
      FMC_BWTR1     at 16#104# range 0 .. 31;
      FMC_BWTR2     at 16#10C# range 0 .. 31;
      FMC_BWTR3     at 16#114# range 0 .. 31;
      FMC_BWTR4     at 16#11C# range 0 .. 31;
      FMC_IER       at 16#180# range 0 .. 31;
      FMC_ISR       at 16#184# range 0 .. 31;
      FMC_ICR       at 16#188# range 0 .. 31;
      FMC_CSQCR     at 16#200# range 0 .. 31;
      FMC_CSQCFGR1  at 16#204# range 0 .. 31;
      FMC_CSQCFGR2  at 16#208# range 0 .. 31;
      FMC_CSQCFGR3  at 16#20C# range 0 .. 31;
      FMC_CSQAR1    at 16#210# range 0 .. 31;
      FMC_CSQAR2    at 16#214# range 0 .. 31;
      FMC_CSQIER    at 16#220# range 0 .. 31;
      FMC_CSQISR    at 16#224# range 0 .. 31;
      FMC_CSQICR    at 16#228# range 0 .. 31;
      FMC_CSQEMSR   at 16#230# range 0 .. 31;
      FMC_BCHIER    at 16#250# range 0 .. 31;
      FMC_BCHISR    at 16#254# range 0 .. 31;
      FMC_BCHICR    at 16#258# range 0 .. 31;
      FMC_BCHPBR1   at 16#260# range 0 .. 31;
      FMC_BCHPBR2   at 16#264# range 0 .. 31;
      FMC_BCHPBR3   at 16#268# range 0 .. 31;
      FMC_BCHPBR4   at 16#26C# range 0 .. 31;
      FMC_BCHDSR0   at 16#27C# range 0 .. 31;
      FMC_BCHDSR1   at 16#280# range 0 .. 31;
      FMC_BCHDSR2   at 16#284# range 0 .. 31;
      FMC_BCHDSR3   at 16#288# range 0 .. 31;
      FMC_BCHDSR4   at 16#28C# range 0 .. 31;
      FMC_SECCFGR   at 16#300# range 0 .. 31;
      FMC_PRIVCFGR  at 16#304# range 0 .. 31;
      FMC_RCFGLOCKR at 16#308# range 0 .. 31;
      FMC_CIDCFGR0  at 16#30C# range 0 .. 31;
      FMC_SEMCR0    at 16#310# range 0 .. 31;
      FMC_CIDCFGR1  at 16#314# range 0 .. 31;
      FMC_SEMCR1    at 16#318# range 0 .. 31;
      FMC_CIDCFGR2  at 16#31C# range 0 .. 31;
      FMC_SEMCR2    at 16#320# range 0 .. 31;
      FMC_CIDCFGR3  at 16#324# range 0 .. 31;
      FMC_SEMCR3    at 16#328# range 0 .. 31;
      FMC_CIDCFGR4  at 16#32C# range 0 .. 31;
      FMC_SEMCR4    at 16#330# range 0 .. 31;
      FMC_CIDCFGR5  at 16#334# range 0 .. 31;
      FMC_SEMCR5    at 16#338# range 0 .. 31;
      FMC_HWCFGR3   at 16#3E8# range 0 .. 31;
      FMC_HWCFGR2   at 16#3EC# range 0 .. 31;
      FMC_HWCFGR1   at 16#3F0# range 0 .. 31;
      FMC_VERR      at 16#3F4# range 0 .. 31;
      FMC_IPIDR     at 16#3F8# range 0 .. 31;
      FMC_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  FMC address block description
   FMC_Periph : aliased FMC_Peripheral
     with Import, Address => FMC_Base;

   --  FMC address block description
   FMC_S_Periph : aliased FMC_Peripheral
     with Import, Address => FMC_S_Base;

end STM32_SVD.FMC;
