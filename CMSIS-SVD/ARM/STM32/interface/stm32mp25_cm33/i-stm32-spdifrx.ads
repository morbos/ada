--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.SPDIFRX is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype SPDIFRX_CR_SPDIFRXEN_Field is Interfaces.Bit_Types.UInt2;
   subtype SPDIFRX_CR_DRFMT_Field is Interfaces.Bit_Types.UInt2;
   subtype SPDIFRX_CR_NBTR_Field is Interfaces.Bit_Types.UInt2;
   subtype SPDIFRX_CR_INSEL_Field is Interfaces.Bit_Types.UInt3;

   --  SPDIFRX control register
   type SPDIFRX_CR_Register is record
      --  Peripheral block enablesup(1)/sup This field is modified by software.
      --  It must be used to change the peripheral phase among the three
      --  possible states: STATE_IDLE, STATE_SYNC and STATE_RCV. It is not
      --  possible to transition from STATE_RCV to STATE_SYNC, the user must
      --  first go the STATE_IDLE. Note: it is possible to transition from
      --  STATE_IDLE to STATE_RCV: in that case the peripheral transitions from
      --  STATE_IDLE to STATE_SYNC and as soon as the synchronization is
      --  performed goes to STATE_RCV.
      SPDIFRXEN      : SPDIFRX_CR_SPDIFRXEN_Field := 16#0#;
      --  Receiver DMA enable for data flowsup(1)/sup This bit is set/reset by
      --  software. Note: When this bit is set, the DMA request is made
      --  whenever the RXNE flag is set.
      RXDMAEN        : Boolean := False;
      --  Stereo modesup(1)/sup This bit is set/reset by software. Note: This
      --  bit is used in case of overrun situation in order to handle
      --  misalignment.
      RXSTEO         : Boolean := False;
      --  RX data formatsup(1)/sup This bit is set/reset by software.
      DRFMT          : SPDIFRX_CR_DRFMT_Field := 16#0#;
      --  Mask parity error bitsup(1)/sup This bit is set/reset by software.
      PMSK           : Boolean := False;
      --  Mask of validity bitsup(1)/sup This bit is set/reset by software.
      VMSK           : Boolean := False;
      --  Mask of channel status and user bitssup(1)/sup This bit is set/reset
      --  by software.
      CUMSK          : Boolean := False;
      --  Mask of preamble type bitssup(1)/sup This bit is set/reset by
      --  software.
      PTMSK          : Boolean := False;
      --  Control buffer DMA enable for control flowsup(1)/sup This bit is
      --  set/reset by software. Note: When this bit is set, the DMA request is
      --  made whenever the CSRNE flag is set.
      CBDMAEN        : Boolean := False;
      --  Channel selectionsup(1)/sup This bit is set/reset by software.
      CHSEL          : Boolean := False;
      --  Maximum allowed re-tries during synchronization phasesup(1)/sup
      NBTR           : SPDIFRX_CR_NBTR_Field := 16#0#;
      --  Wait for activitysup(1)/sup This bit is set/reset by software.
      WFA            : Boolean := False;
      --  unspecified
      Reserved_15_15 : Interfaces.Bit_Types.Bit := 16#0#;
      --  SPDIFRX input selection other: reserved
      INSEL          : SPDIFRX_CR_INSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Symbol clock enable This bit is set/reset by software.
      CKSEN          : Boolean := False;
      --  Backup symbol clock enable This bit is set/reset by software.
      CKSBKPEN       : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIFRX_CR_Register use record
      SPDIFRXEN      at 0 range 0 .. 1;
      RXDMAEN        at 0 range 2 .. 2;
      RXSTEO         at 0 range 3 .. 3;
      DRFMT          at 0 range 4 .. 5;
      PMSK           at 0 range 6 .. 6;
      VMSK           at 0 range 7 .. 7;
      CUMSK          at 0 range 8 .. 8;
      PTMSK          at 0 range 9 .. 9;
      CBDMAEN        at 0 range 10 .. 10;
      CHSEL          at 0 range 11 .. 11;
      NBTR           at 0 range 12 .. 13;
      WFA            at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      INSEL          at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CKSEN          at 0 range 20 .. 20;
      CKSBKPEN       at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  SPDIFRX interrupt mask register
   type SPDIFRX_IMR_Register is record
      --  RXNE interrupt enable This bit is set and cleared by software.
      RXNEIE        : Boolean := False;
      --  Control buffer ready interrupt enable This bit is set and cleared by
      --  software.
      CSRNEIE       : Boolean := False;
      --  Parity error interrupt enable This bit is set and cleared by
      --  software.
      PERRIE        : Boolean := False;
      --  Overrun error interrupt enable This bit is set and cleared by
      --  software.
      OVRIE         : Boolean := False;
      --  Synchronization block detected interrupt enable This bit is set and
      --  cleared by software.
      SBLKIE        : Boolean := False;
      --  Synchronization done This bit is set and cleared by software.
      SYNCDIE       : Boolean := False;
      --  Serial interface error interrupt enable This bit is set and cleared
      --  by software.
      IFEIE         : Boolean := False;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIFRX_IMR_Register use record
      RXNEIE        at 0 range 0 .. 0;
      CSRNEIE       at 0 range 1 .. 1;
      PERRIE        at 0 range 2 .. 2;
      OVRIE         at 0 range 3 .. 3;
      SBLKIE        at 0 range 4 .. 4;
      SYNCDIE       at 0 range 5 .. 5;
      IFEIE         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SPDIFRX_SR_WIDTH5_Field is Interfaces.Bit_Types.UInt15;

   --  SPDIFRX status register
   type SPDIFRX_SR_Register is record
      --  Read-only. Read data register not empty This bit is set by hardware
      --  when a valid data is available into SPDIFRX_FMTx_DR register. This
      --  flag is cleared by reading the SPDIFRX_FMTx_DR register. An interrupt
      --  is generated if RXNEIE=1 in the SPDIFRX_IMR register.
      RXNE           : Boolean;
      --  Read-only. Control buffer register not empty This bit is set by
      --  hardware when a valid control information is ready. This flag is
      --  cleared when reading SPDIFRX_CSR register. An interrupt is generated
      --  if CBRDYIE = 1 in the SPDIFRX_IMR register.
      CSRNE          : Boolean;
      --  Read-only. Parity error This bit is set by hardware when the data and
      --  status bits of the sub-frame received contain an odd number of 0 and
      --  1. This flag is cleared by writing a 1 to its corresponding bit on
      --  SPDIFRX_IFCR register. An interrupt is generated if PIE=1 in the
      --  SPDIFRX_IMR register.
      PERR           : Boolean;
      --  Read-only. Overrun error This bit is set by hardware when a received
      --  data is ready to be transferred in the SPDIFRX_FMTx_DR register while
      --  RXNE = 1 and both SPDIFRX_FMTx_DR and RX_BUF are full. This flag is
      --  cleared by writing a 1 to its corresponding bit on SPDIFRX_IFCR
      --  register. An interrupt is generated if OVRIE=1 in the SPDIFRX_IMR
      --  register. Note: When this bit is set, the SPDIFRX_FMTx_DR register
      --  content is not lost but the last data received are.
      OVR            : Boolean;
      --  Read-only. Synchronization block detected This bit is set by hardware
      --  when a “B” preamble is detected. This flag is cleared by writing
      --  a 1 to its corresponding bit on SPDIFRX_IFCR register. An interrupt
      --  is generated if SBLKIE = 1 in the SPDIFRX_IMR register.
      SBD            : Boolean;
      --  Read-only. Synchronization done This bit is set by hardware when the
      --  initial synchronization phase is properly completed. This flag is
      --  cleared by writing a 1 to its corresponding bit on SPDIFRX_IFCR
      --  register. An interrupt is generated if SYNCDIE = 1 in the SPDIFRX_IMR
      --  register.
      SYNCD          : Boolean;
      --  Read-only. Framing error This bit is set by hardware when an error
      --  occurs during data reception: such as preamble not at the expected
      --  place, short transition not grouped by pairs. This is set by the
      --  hardware only if the synchronization is completed (SYNCD = 1). This
      --  flag is cleared by writing SPDIFRXEN to 0. An interrupt is generated
      --  if IFEIE=1 in the SPDIFRX_IMR register.
      FERR           : Boolean;
      --  Read-only. Synchronization error This bit is set by hardware when the
      --  synchronization fails due to amount of re-tries for NBTR. This flag
      --  is cleared by writing SPDIFRXEN to 0. An interrupt is generated if
      --  IFEIE = 1 in the SPDIFRX_IMR register.
      SERR           : Boolean;
      --  Read-only. Time-out error This bit is set by hardware when the
      --  counter TRCNT reaches its max value. It indicates that the time
      --  interval between two transitions is too long. It generally indicates
      --  that there is no valid signal on SPDIFRX_IN input. This flag is
      --  cleared by writing SPDIFRXEN to 0. An interrupt is generated if
      --  IFEIE=1 in the SPDIFRX_IMR register.
      TERR           : Boolean;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7;
      --  Read-only. duration of 5 symbols counted with spdifrx_ker_ck This
      --  value represents the amount of spdifrx_ker_ck clock periods contained
      --  on a length of 5 consecutive symbols. This value can be used to
      --  estimate the S/PDIF symbol rate. Its accuracy is limited by the
      --  frequency of spdifrx_ker_ck. For example if the spdifrx_ker_ck is
      --  fixed to 84 MHz, and WIDTH5 = 147d. The estimated sampling rate of
      --  the S/PDIF stream is: Fs = 5 x Fsubspdifrx_ker_ck/sub / (WIDTH5 x 64)
      --  ~ 44.6 kHz, so the closest standard sampling rate is 44.1kHz. Note
      --  that WIDTH5 is updated by the hardware when SYNCD goes high, and then
      --  every frame.
      WIDTH5         : SPDIFRX_SR_WIDTH5_Field;
      --  unspecified
      Reserved_31_31 : Interfaces.Bit_Types.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIFRX_SR_Register use record
      RXNE           at 0 range 0 .. 0;
      CSRNE          at 0 range 1 .. 1;
      PERR           at 0 range 2 .. 2;
      OVR            at 0 range 3 .. 3;
      SBD            at 0 range 4 .. 4;
      SYNCD          at 0 range 5 .. 5;
      FERR           at 0 range 6 .. 6;
      SERR           at 0 range 7 .. 7;
      TERR           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      WIDTH5         at 0 range 16 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  SPDIFRX interrupt flag clear register
   type SPDIFRX_IFCR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. clears the parity error flag Writing 1 in this bit clears
      --  the flag PERR in the SPDIFRX_SR register. Reading this bit always
      --  returns the value 0.
      PERRCF        : Boolean := False;
      --  Write-only. clears the overrun error flag Writing 1 in this bit
      --  clears the flag OVR in the SPDIFRX_SR register. Reading this bit
      --  always returns the value 0.
      OVRCF         : Boolean := False;
      --  Write-only. clears the synchronization block detected flag Writing 1
      --  in this bit clears the flag SBD in the SPDIFRX_SR register. Reading
      --  this bit always returns the value 0.
      SBDCF         : Boolean := False;
      --  Write-only. clears the synchronization done flag Writing 1 in this
      --  bit clears the flag SYNCD in the SPDIFRX_SR register. Reading this
      --  bit always returns the value 0.
      SYNCDCF       : Boolean := False;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIFRX_IFCR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PERRCF        at 0 range 2 .. 2;
      OVRCF         at 0 range 3 .. 3;
      SBDCF         at 0 range 4 .. 4;
      SYNCDCF       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype SPDIFRX_FMT0_DR_DR_Field is Interfaces.Bit_Types.UInt24;
   subtype SPDIFRX_FMT0_DR_PT_Field is Interfaces.Bit_Types.UInt2;

   --  SPDIFRX data input register
   type SPDIFRX_FMT0_DR_Register is record
      --  Read-only. data value Contains the 24 received data bits, aligned on
      --  D[23]
      DR             : SPDIFRX_FMT0_DR_DR_Field;
      --  Read-only. parity error bit Contains a copy of PERR bit if PMSK = 0,
      --  otherwise it is forced to 0
      PE             : Boolean;
      --  Read-only. validity bit Contains the received validity bit if VMSK =
      --  0, otherwise it is forced to 0
      V              : Boolean;
      --  Read-only. user bit Contains the received user bit, if CUMSK = 0,
      --  otherwise it is forced to 0
      U              : Boolean;
      --  Read-only. channel status bit Contains the received channel status
      --  bit, if CUMSK = 0, otherwise it is forced to 0
      C              : Boolean;
      --  Read-only. preamble type These bits indicate the preamble received.
      --  Note that if PTMSK = 1, this field is forced to zero
      PT             : SPDIFRX_FMT0_DR_PT_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.Bit_Types.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIFRX_FMT0_DR_Register use record
      DR             at 0 range 0 .. 23;
      PE             at 0 range 24 .. 24;
      V              at 0 range 25 .. 25;
      U              at 0 range 26 .. 26;
      C              at 0 range 27 .. 27;
      PT             at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype SPDIFRX_FMT1_DR_PT_Field is Interfaces.Bit_Types.UInt2;
   subtype SPDIFRX_FMT1_DR_DR_Field is Interfaces.Bit_Types.UInt24;

   --  SPDIFRX data input register
   type SPDIFRX_FMT1_DR_Register is record
      --  Read-only. parity error bit Contains a copy of PERR bit if PMSK = 0,
      --  otherwise it is forced to 0
      PE           : Boolean;
      --  Read-only. validity bit Contains the received validity bit if VMSK =
      --  0, otherwise it is forced to 0
      V            : Boolean;
      --  Read-only. user bit Contains the received user bit, if CUMSK = 0,
      --  otherwise it is forced to 0
      U            : Boolean;
      --  Read-only. channel Status bit Contains the received channel status
      --  bit, if CUMSK = 0, otherwise it is forced to 0
      C            : Boolean;
      --  Read-only. preamble type These bits indicate the preamble received.
      --  Note that if PTMSK = 1, this field is forced to zero
      PT           : SPDIFRX_FMT1_DR_PT_Field;
      --  unspecified
      Reserved_6_7 : Interfaces.Bit_Types.UInt2;
      --  Read-only. data value Contains the 24 received data bits, aligned on
      --  D[23]
      DR           : SPDIFRX_FMT1_DR_DR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIFRX_FMT1_DR_Register use record
      PE           at 0 range 0 .. 0;
      V            at 0 range 1 .. 1;
      U            at 0 range 2 .. 2;
      C            at 0 range 3 .. 3;
      PT           at 0 range 4 .. 5;
      Reserved_6_7 at 0 range 6 .. 7;
      DR           at 0 range 8 .. 31;
   end record;

   --  SPDIFRX_FMT2_DR_DRNL array element
   subtype SPDIFRX_FMT2_DR_DRNL_Element is Interfaces.Bit_Types.UInt16;

   --  SPDIFRX_FMT2_DR_DRNL array
   type SPDIFRX_FMT2_DR_DRNL_Field_Array is array (1 .. 2)
     of SPDIFRX_FMT2_DR_DRNL_Element
     with Component_Size => 16, Size => 32;

   --  SPDIFRX data input register
   type SPDIFRX_FMT2_DR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DRNL as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  DRNL as an array
            Arr : SPDIFRX_FMT2_DR_DRNL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIFRX_FMT2_DR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype SPDIFRX_CSR_USR_Field is Interfaces.Bit_Types.UInt16;
   subtype SPDIFRX_CSR_CS_Field is Interfaces.Bit_Types.Byte;

   --  SPDIFRX channel status register
   type SPDIFRX_CSR_Register is record
      --  Read-only. user data information Bit USR[0] is the oldest value, and
      --  comes from channel A, USR[1] comes channel B. So USR[n] bits come
      --  from channel A is n is even, otherwise they come from channel B.
      USR            : SPDIFRX_CSR_USR_Field;
      --  Read-only. channel A status information Bit CS[0] is the oldest value
      CS             : SPDIFRX_CSR_CS_Field;
      --  Read-only. start of block This bit indicates if the bit CS[0]
      --  corresponds to the first bit of a new block
      SOB            : Boolean;
      --  unspecified
      Reserved_25_31 : Interfaces.Bit_Types.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIFRX_CSR_Register use record
      USR            at 0 range 0 .. 15;
      CS             at 0 range 16 .. 23;
      SOB            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SPDIFRX_DIR_THI_Field is Interfaces.Bit_Types.UInt13;
   subtype SPDIFRX_DIR_TLO_Field is Interfaces.Bit_Types.UInt13;

   --  SPDIFRX debug information register
   type SPDIFRX_DIR_Register is record
      --  Read-only. threshold HIGH (THI = 2.5 x UI / Tsubspdifrx_ker_ck/sub)
      --  This field contains the current threshold HIGH estimation. This value
      --  can be used to estimate the sampling rate of the received stream. The
      --  accuracy of THI is limited to a period of the spdifrx_ker_ck. The
      --  sampling rate can be estimated as follow: Sampling Rate = [2 x THI x
      --  Tsubspdifrx_ker_ck /sub+/- Tsubspdifrx_ker_ck/sub] x 2/5 Note that
      --  THI is updated by the hardware when SYNCD goes high, and then every
      --  frame.
      THI            : SPDIFRX_DIR_THI_Field;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3;
      --  Read-only. threshold LOW (TLO = 1.5 x UI / Tsubspdifrx_ker_ck/sub)
      --  This field contains the current threshold LOW estimation. This value
      --  can be used to estimate the sampling rate of the received stream. The
      --  accuracy of TLO is limited to a period of the spdifrx_ker_ck. The
      --  sampling rate can be estimated as follow: Sampling Rate = [2 x TLO x
      --  Tsubspdifrx_ker_ck /sub+/- Tsubspdifrx_ker_ck/sub] x 2/3 Note that
      --  TLO is updated by the hardware when SYNCD goes high, and then every
      --  frame.
      TLO            : SPDIFRX_DIR_TLO_Field;
      --  unspecified
      Reserved_29_31 : Interfaces.Bit_Types.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIFRX_DIR_Register use record
      THI            at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TLO            at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype SPDIFRX_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype SPDIFRX_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  SPDIFRX version register
   type SPDIFRX_VERR_Register is record
      --  Read-only. SPDIFRX minor revision
      MINREV        : SPDIFRX_VERR_MINREV_Field;
      --  Read-only. SPDIFRX major revision
      MAJREV        : SPDIFRX_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIFRX_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SPDIFRX_Disc is
     (Val_0_Dr,
      Val_1_Dr,
      Val_2_Dr);

   --  SPDIFRX address block description
   type SPDIFRX_Peripheral
     (Discriminent : SPDIFRX_Disc := Val_0_Dr)
   is record
      --  SPDIFRX control register
      SPDIFRX_CR      : aliased SPDIFRX_CR_Register;
      --  SPDIFRX interrupt mask register
      SPDIFRX_IMR     : aliased SPDIFRX_IMR_Register;
      --  SPDIFRX status register
      SPDIFRX_SR      : aliased SPDIFRX_SR_Register;
      --  SPDIFRX interrupt flag clear register
      SPDIFRX_IFCR    : aliased SPDIFRX_IFCR_Register;
      --  SPDIFRX channel status register
      SPDIFRX_CSR     : aliased SPDIFRX_CSR_Register;
      --  SPDIFRX debug information register
      SPDIFRX_DIR     : aliased SPDIFRX_DIR_Register;
      --  SPDIFRX version register
      SPDIFRX_VERR    : aliased SPDIFRX_VERR_Register;
      --  SPDIFRX identification register
      SPDIFRX_IPIDR   : aliased Interfaces.Bit_Types.UInt32;
      --  SPDIFRX size identification register
      SPDIFRX_SIDR    : aliased Interfaces.Bit_Types.UInt32;
      case Discriminent is
         when Val_0_Dr =>
            --  SPDIFRX data input register
            SPDIFRX_FMT0_DR : aliased SPDIFRX_FMT0_DR_Register;
         when Val_1_Dr =>
            --  SPDIFRX data input register
            SPDIFRX_FMT1_DR : aliased SPDIFRX_FMT1_DR_Register;
         when Val_2_Dr =>
            --  SPDIFRX data input register
            SPDIFRX_FMT2_DR : aliased SPDIFRX_FMT2_DR_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for SPDIFRX_Peripheral use record
      SPDIFRX_CR      at 16#0# range 0 .. 31;
      SPDIFRX_IMR     at 16#4# range 0 .. 31;
      SPDIFRX_SR      at 16#8# range 0 .. 31;
      SPDIFRX_IFCR    at 16#C# range 0 .. 31;
      SPDIFRX_CSR     at 16#14# range 0 .. 31;
      SPDIFRX_DIR     at 16#18# range 0 .. 31;
      SPDIFRX_VERR    at 16#3F4# range 0 .. 31;
      SPDIFRX_IPIDR   at 16#3F8# range 0 .. 31;
      SPDIFRX_SIDR    at 16#3FC# range 0 .. 31;
      SPDIFRX_FMT0_DR at 16#10# range 0 .. 31;
      SPDIFRX_FMT1_DR at 16#10# range 0 .. 31;
      SPDIFRX_FMT2_DR at 16#10# range 0 .. 31;
   end record;

   --  SPDIFRX address block description
   SPDIFRX_Periph : aliased SPDIFRX_Peripheral
     with Import, Address => SPDIFRX_Base;

   --  SPDIFRX address block description
   SPDIFRX_S_Periph : aliased SPDIFRX_Peripheral
     with Import, Address => SPDIFRX_S_Base;

end Interfaces.STM32.SPDIFRX;
