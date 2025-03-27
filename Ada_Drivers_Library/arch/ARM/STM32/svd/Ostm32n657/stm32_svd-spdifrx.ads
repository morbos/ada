--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.SPDIFRX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SPDIFRX_CR_SPDIFRXEN_Field is HAL.UInt2;
   subtype SPDIFRX_CR_DRFMT_Field is HAL.UInt2;
   subtype SPDIFRX_CR_NBTR_Field is HAL.UInt2;
   subtype SPDIFRX_CR_INSEL_Field is HAL.UInt3;

   --  SPDIFRX control register
   type SPDIFRX_CR_Register is record
      --  Peripheral block enableless thansup>(1)less than/sup>
      SPDIFRXEN      : SPDIFRX_CR_SPDIFRXEN_Field := 16#0#;
      --  Receiver DMA enable for data flowless thansup>(1)less than/sup>
      RXDMAEN        : Boolean := False;
      --  Stereo modeless thansup>(1)less than/sup>
      RXSTEO         : Boolean := False;
      --  RX data formatless thansup>(1)less than/sup>
      DRFMT          : SPDIFRX_CR_DRFMT_Field := 16#0#;
      --  Mask parity error bitless thansup>(1)less than/sup>
      PMSK           : Boolean := False;
      --  Mask of validity bitless thansup>(1)less than/sup>
      VMSK           : Boolean := False;
      --  Mask of channel status and user bitsless thansup>(1)less than/sup>
      CUMSK          : Boolean := False;
      --  Mask of preamble type bitsless thansup>(1)less than/sup>
      PTMSK          : Boolean := False;
      --  Control buffer DMA enable for control flowless thansup>(1)less
      --  than/sup>
      CBDMAEN        : Boolean := False;
      --  Channel selectionless thansup>(1)less than/sup>
      CHSEL          : Boolean := False;
      --  Maximum allowed re-tries during synchronization phaseless
      --  thansup>(1)less than/sup>
      NBTR           : SPDIFRX_CR_NBTR_Field := 16#0#;
      --  Wait for activityless thansup>(1)less than/sup>
      WFA            : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  SPDIFRX input selection
      INSEL          : SPDIFRX_CR_INSEL_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Symbol clock enable
      CKSEN          : Boolean := False;
      --  Backup symbol clock enable
      CKSBKPEN       : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
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
      --  RXNE interrupt enable
      RXNEIE        : Boolean := False;
      --  Control buffer ready interrupt enable
      CSRNEIE       : Boolean := False;
      --  Parity error interrupt enable
      PERRIE        : Boolean := False;
      --  Overrun error interrupt enable
      OVRIE         : Boolean := False;
      --  Synchronization block detected interrupt enable
      SBLKIE        : Boolean := False;
      --  Synchronization done
      SYNCDIE       : Boolean := False;
      --  Serial interface error interrupt enable
      IFEIE         : Boolean := False;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
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

   subtype SPDIFRX_SR_WIDTH5_Field is HAL.UInt15;

   --  SPDIFRX status register
   type SPDIFRX_SR_Register is record
      --  Read-only. Read data register not empty
      RXNE           : Boolean;
      --  Read-only. Control buffer register not empty
      CSRNE          : Boolean;
      --  Read-only. Parity error
      PERR           : Boolean;
      --  Read-only. Overrun error
      OVR            : Boolean;
      --  Read-only. Synchronization block detected
      SBD            : Boolean;
      --  Read-only. Synchronization done
      SYNCD          : Boolean;
      --  Read-only. Framing error
      FERR           : Boolean;
      --  Read-only. Synchronization error
      SERR           : Boolean;
      --  Read-only. Time-out error
      TERR           : Boolean;
      --  unspecified
      Reserved_9_15  : HAL.UInt7;
      --  Read-only. duration of 5 symbols counted with spdifrx_ker_ck
      WIDTH5         : SPDIFRX_SR_WIDTH5_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
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
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Write-only. clears the parity error flag
      PERRCF        : Boolean := False;
      --  Write-only. clears the overrun error flag
      OVRCF         : Boolean := False;
      --  Write-only. clears the synchronization block detected flag
      SBDCF         : Boolean := False;
      --  Write-only. clears the synchronization done flag
      SYNCDCF       : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
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

   subtype SPDIFRX_FMT0_DR_DR_Field is HAL.UInt24;
   subtype SPDIFRX_FMT0_DR_PT_Field is HAL.UInt2;

   --  SPDIFRX data input register
   type SPDIFRX_FMT0_DR_Register is record
      --  Read-only. data value
      DR             : SPDIFRX_FMT0_DR_DR_Field;
      --  Read-only. parity error bit
      PE             : Boolean;
      --  Read-only. validity bit
      V              : Boolean;
      --  Read-only. user bit
      U              : Boolean;
      --  Read-only. channel status bit
      C              : Boolean;
      --  Read-only. preamble type
      PT             : SPDIFRX_FMT0_DR_PT_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
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

   subtype SPDIFRX_FMT1_DR_PT_Field is HAL.UInt2;
   subtype SPDIFRX_FMT1_DR_DR_Field is HAL.UInt24;

   --  SPDIFRX data input register
   type SPDIFRX_FMT1_DR_Register is record
      --  Read-only. parity error bit
      PE           : Boolean;
      --  Read-only. validity bit
      V            : Boolean;
      --  Read-only. user bit
      U            : Boolean;
      --  Read-only. channel Status bit
      C            : Boolean;
      --  Read-only. preamble type
      PT           : SPDIFRX_FMT1_DR_PT_Field;
      --  unspecified
      Reserved_6_7 : HAL.UInt2;
      --  Read-only. data value
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
   subtype SPDIFRX_FMT2_DR_DRNL_Element is HAL.UInt16;

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
            Val : HAL.UInt32;
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

   subtype SPDIFRX_CSR_USR_Field is HAL.UInt16;
   subtype SPDIFRX_CSR_CS_Field is HAL.UInt8;

   --  SPDIFRX channel status register
   type SPDIFRX_CSR_Register is record
      --  Read-only. user data information
      USR            : SPDIFRX_CSR_USR_Field;
      --  Read-only. channel A status information
      CS             : SPDIFRX_CSR_CS_Field;
      --  Read-only. start of block
      SOB            : Boolean;
      --  unspecified
      Reserved_25_31 : HAL.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIFRX_CSR_Register use record
      USR            at 0 range 0 .. 15;
      CS             at 0 range 16 .. 23;
      SOB            at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SPDIFRX_DIR_THI_Field is HAL.UInt13;
   subtype SPDIFRX_DIR_TLO_Field is HAL.UInt13;

   --  SPDIFRX debug information register
   type SPDIFRX_DIR_Register is record
      --  Read-only. threshold HIGH (THI = 2.5 x UI / Tless
      --  thansub>spdifrx_ker_ckless than/sub>)
      THI            : SPDIFRX_DIR_THI_Field;
      --  unspecified
      Reserved_13_15 : HAL.UInt3;
      --  Read-only. threshold LOW (TLO = 1.5 x UI / Tless
      --  thansub>spdifrx_ker_ckless than/sub>)
      TLO            : SPDIFRX_DIR_TLO_Field;
      --  unspecified
      Reserved_29_31 : HAL.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SPDIFRX_DIR_Register use record
      THI            at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TLO            at 0 range 16 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type SPDIFRX_Disc is
     (Val_0_Dr,
      Val_1_Dr,
      Val_2_Dr);

   --  SPDIF receiver interface
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
      SPDIFRX_FMT0_DR at 16#10# range 0 .. 31;
      SPDIFRX_FMT1_DR at 16#10# range 0 .. 31;
      SPDIFRX_FMT2_DR at 16#10# range 0 .. 31;
   end record;

   --  SPDIF receiver interface
   SPDIFRX_Periph : aliased SPDIFRX_Peripheral
     with Import, Address => SPDIFRX_Base;

   --  SPDIF receiver interface
   SPDIFRX_S_Periph : aliased SPDIFRX_Peripheral
     with Import, Address => SPDIFRX_S_Base;

end STM32_SVD.SPDIFRX;
