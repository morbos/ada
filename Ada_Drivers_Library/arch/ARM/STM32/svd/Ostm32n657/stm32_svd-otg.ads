--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.OTG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  OTG control and status register
   type OTG_GOTGCTL_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Vless thansub>BUSless than/sub> valid override enable.
      VBVALOEN       : Boolean := False;
      --  Vless thansub>BUSless than/sub> valid override value.
      VBVALOVAL      : Boolean := False;
      --  A-peripheral session valid override enable.
      AVALOEN        : Boolean := False;
      --  A-peripheral session valid override value.
      AVALOVAL       : Boolean := False;
      --  B-peripheral session valid override enable.
      BVALOEN        : Boolean := False;
      --  B-peripheral session valid override value.
      BVALOVAL       : Boolean := False;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Embedded host enable
      EHEN           : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Read-only. Connector ID status
      CIDSTS         : Boolean := True;
      --  Read-only. Long/short debounce time
      DBCT           : Boolean := False;
      --  Read-only. A-session valid
      ASVLD          : Boolean := False;
      --  Read-only. B-session valid
      BSVLD          : Boolean := False;
      --  OTG version
      OTGVER         : Boolean := False;
      --  Read-only. Current mode of operation
      CURMOD         : Boolean := False;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GOTGCTL_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      VBVALOEN       at 0 range 2 .. 2;
      VBVALOVAL      at 0 range 3 .. 3;
      AVALOEN        at 0 range 4 .. 4;
      AVALOVAL       at 0 range 5 .. 5;
      BVALOEN        at 0 range 6 .. 6;
      BVALOVAL       at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      EHEN           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CIDSTS         at 0 range 16 .. 16;
      DBCT           at 0 range 17 .. 17;
      ASVLD          at 0 range 18 .. 18;
      BSVLD          at 0 range 19 .. 19;
      OTGVER         at 0 range 20 .. 20;
      CURMOD         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  OTG interrupt register
   type OTG_GOTGINT_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Session end detected
      SEDET          : Boolean := False;
      --  unspecified
      Reserved_3_17  : HAL.UInt15 := 16#0#;
      --  A-device timeout change
      ADTOCHG        : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GOTGINT_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      SEDET          at 0 range 2 .. 2;
      Reserved_3_17  at 0 range 3 .. 17;
      ADTOCHG        at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype OTG_GAHBCFG_HBSTLEN_Field is HAL.UInt4;

   --  OTG AHB configuration register
   type OTG_GAHBCFG_Register is record
      --  Global interrupt mask
      GINTMSK       : Boolean := False;
      --  Burst length/type
      HBSTLEN       : OTG_GAHBCFG_HBSTLEN_Field := 16#0#;
      --  DMA enabled
      DMAEN         : Boolean := False;
      --  unspecified
      Reserved_6_6  : HAL.Bit := 16#0#;
      --  Tx FIFO empty level
      TXFELVL       : Boolean := False;
      --  Periodic Tx FIFO empty level
      PTXFELVL      : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GAHBCFG_Register use record
      GINTMSK       at 0 range 0 .. 0;
      HBSTLEN       at 0 range 1 .. 4;
      DMAEN         at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      TXFELVL       at 0 range 7 .. 7;
      PTXFELVL      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype OTG_GUSBCFG_TOCAL_Field is HAL.UInt3;
   subtype OTG_GUSBCFG_TRDT_Field is HAL.UInt4;

   --  OTG USB configuration register
   type OTG_GUSBCFG_Register is record
      --  FS timeout calibration
      TOCAL          : OTG_GUSBCFG_TOCAL_Field := 16#0#;
      --  unspecified
      Reserved_3_9   : HAL.UInt7 := 16#0#;
      --  USB turnaround time
      TRDT           : OTG_GUSBCFG_TRDT_Field := 16#5#;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  PHY Low-power clock select
      PHYLPC         : Boolean := False;
      --  unspecified
      Reserved_16_21 : HAL.UInt6 := 16#0#;
      --  TermSel DLine pulsing selection
      TSDPS          : Boolean := False;
      --  unspecified
      Reserved_23_28 : HAL.UInt6 := 16#0#;
      --  Force host mode
      FHMOD          : Boolean := False;
      --  Force device mode
      FDMOD          : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GUSBCFG_Register use record
      TOCAL          at 0 range 0 .. 2;
      Reserved_3_9   at 0 range 3 .. 9;
      TRDT           at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      PHYLPC         at 0 range 15 .. 15;
      Reserved_16_21 at 0 range 16 .. 21;
      TSDPS          at 0 range 22 .. 22;
      Reserved_23_28 at 0 range 23 .. 28;
      FHMOD          at 0 range 29 .. 29;
      FDMOD          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OTG_GRSTCTL_TXFNUM_Field is HAL.UInt5;

   --  OTG reset register
   type OTG_GRSTCTL_Register is record
      --  Core soft reset
      CSRST          : Boolean := False;
      --  Partial soft reset
      PSRST          : Boolean := False;
      --  Host frame counter reset
      FCRST          : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Rx FIFO flush
      RXFFLSH        : Boolean := False;
      --  Tx FIFO flush
      TXFFLSH        : Boolean := False;
      --  Tx FIFO number
      TXFNUM         : OTG_GRSTCTL_TXFNUM_Field := 16#0#;
      --  unspecified
      Reserved_11_29 : HAL.UInt19 := 16#0#;
      --  Read-only. DMA request signal enabled
      DMAREQ         : Boolean := False;
      --  Read-only. AHB master idle
      AHBIDL         : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GRSTCTL_Register use record
      CSRST          at 0 range 0 .. 0;
      PSRST          at 0 range 1 .. 1;
      FCRST          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RXFFLSH        at 0 range 4 .. 4;
      TXFFLSH        at 0 range 5 .. 5;
      TXFNUM         at 0 range 6 .. 10;
      Reserved_11_29 at 0 range 11 .. 29;
      DMAREQ         at 0 range 30 .. 30;
      AHBIDL         at 0 range 31 .. 31;
   end record;

   --  OTG core interrupt register [alternate]
   type OTG_GINTSTS_Register is record
      --  Read-only. Current mode of operation
      CMOD           : Boolean := False;
      --  Mode mismatch interrupt
      MMIS           : Boolean := False;
      --  Read-only. OTG interrupt
      OTGINT         : Boolean := False;
      --  Start of frame
      SOF            : Boolean := False;
      --  Read-only. Rx FIFO non-empty
      RXFLVL         : Boolean := False;
      --  Read-only. Non-periodic Tx FIFO empty
      NPTXFE         : Boolean := True;
      --  Read-only. Global IN non-periodic NAK effective
      GINAKEFF       : Boolean := False;
      --  Read-only. Global OUT NAK effective
      GONAKEFF       : Boolean := False;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Early suspend
      ESUSP          : Boolean := False;
      --  USB suspend
      USBSUSP        : Boolean := False;
      --  USB reset
      USBRST         : Boolean := False;
      --  Enumeration done
      ENUMDNE        : Boolean := False;
      --  Isochronous OUT packet dropped interrupt
      ISOODRP        : Boolean := False;
      --  End of periodic frame interrupt
      EOPF           : Boolean := False;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  Read-only. IN endpoint interrupt
      IEPINT         : Boolean := False;
      --  Read-only. OUT endpoint interrupt
      OEPINT         : Boolean := False;
      --  Incomplete isochronous IN transfer
      IISOIXFR       : Boolean := False;
      --  Incomplete periodic transfer
      IPXFR          : Boolean := False;
      --  Data fetch suspended
      DATAFSUSP      : Boolean := False;
      --  Reset detected interrupt
      RSTDET         : Boolean := False;
      --  Read-only. Host port interrupt
      HPRTINT        : Boolean := False;
      --  Read-only. Host channels interrupt
      HCINT          : Boolean := False;
      --  Read-only. Periodic Tx FIFO empty
      PTXFE          : Boolean := True;
      --  LPM interrupt
      LPMINT         : Boolean := False;
      --  Connector ID status change
      CIDSCHG        : Boolean := False;
      --  Disconnect detected interrupt
      DISCINT        : Boolean := False;
      --  Session request/new session detected interrupt
      SRQINT         : Boolean := False;
      --  Resume/remote wake-up detected interrupt
      WKUPINT        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GINTSTS_Register use record
      CMOD           at 0 range 0 .. 0;
      MMIS           at 0 range 1 .. 1;
      OTGINT         at 0 range 2 .. 2;
      SOF            at 0 range 3 .. 3;
      RXFLVL         at 0 range 4 .. 4;
      NPTXFE         at 0 range 5 .. 5;
      GINAKEFF       at 0 range 6 .. 6;
      GONAKEFF       at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ESUSP          at 0 range 10 .. 10;
      USBSUSP        at 0 range 11 .. 11;
      USBRST         at 0 range 12 .. 12;
      ENUMDNE        at 0 range 13 .. 13;
      ISOODRP        at 0 range 14 .. 14;
      EOPF           at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      IEPINT         at 0 range 18 .. 18;
      OEPINT         at 0 range 19 .. 19;
      IISOIXFR       at 0 range 20 .. 20;
      IPXFR          at 0 range 21 .. 21;
      DATAFSUSP      at 0 range 22 .. 22;
      RSTDET         at 0 range 23 .. 23;
      HPRTINT        at 0 range 24 .. 24;
      HCINT          at 0 range 25 .. 25;
      PTXFE          at 0 range 26 .. 26;
      LPMINT         at 0 range 27 .. 27;
      CIDSCHG        at 0 range 28 .. 28;
      DISCINT        at 0 range 29 .. 29;
      SRQINT         at 0 range 30 .. 30;
      WKUPINT        at 0 range 31 .. 31;
   end record;

   --  OTG core interrupt register [alternate]
   type OTG_GINTSTS_ALTERNATE_Register is record
      --  Read-only. Current mode of operation
      CMOD           : Boolean := False;
      --  Mode mismatch interrupt
      MMIS           : Boolean := False;
      --  Read-only. OTG interrupt
      OTGINT         : Boolean := False;
      --  Start of frame
      SOF            : Boolean := False;
      --  Read-only. Rx FIFO non-empty
      RXFLVL         : Boolean := False;
      --  Read-only. Non-periodic Tx FIFO empty
      NPTXFE         : Boolean := True;
      --  Read-only. Global IN non-periodic NAK effective
      GINAKEFF       : Boolean := False;
      --  Read-only. Global OUT NAK effective
      GONAKEFF       : Boolean := False;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Early suspend
      ESUSP          : Boolean := False;
      --  USB suspend
      USBSUSP        : Boolean := False;
      --  USB reset
      USBRST         : Boolean := False;
      --  Enumeration done
      ENUMDNE        : Boolean := False;
      --  Isochronous OUT packet dropped interrupt
      ISOODRP        : Boolean := False;
      --  End of periodic frame interrupt
      EOPF           : Boolean := False;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  Read-only. IN endpoint interrupt
      IEPINT         : Boolean := False;
      --  Read-only. OUT endpoint interrupt
      OEPINT         : Boolean := False;
      --  Incomplete isochronous IN transfer
      IISOIXFR       : Boolean := False;
      --  Incomplete isochronous OUT transfer
      INCOMPISOOUT   : Boolean := False;
      --  Data fetch suspended
      DATAFSUSP      : Boolean := False;
      --  Reset detected interrupt
      RSTDET         : Boolean := False;
      --  Read-only. Host port interrupt
      HPRTINT        : Boolean := False;
      --  Read-only. Host channels interrupt
      HCINT          : Boolean := False;
      --  Read-only. Periodic Tx FIFO empty
      PTXFE          : Boolean := True;
      --  LPM interrupt
      LPMINT         : Boolean := False;
      --  Connector ID status change
      CIDSCHG        : Boolean := False;
      --  Disconnect detected interrupt
      DISCINT        : Boolean := False;
      --  Session request/new session detected interrupt
      SRQINT         : Boolean := False;
      --  Resume/remote wake-up detected interrupt
      WKUPINT        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GINTSTS_ALTERNATE_Register use record
      CMOD           at 0 range 0 .. 0;
      MMIS           at 0 range 1 .. 1;
      OTGINT         at 0 range 2 .. 2;
      SOF            at 0 range 3 .. 3;
      RXFLVL         at 0 range 4 .. 4;
      NPTXFE         at 0 range 5 .. 5;
      GINAKEFF       at 0 range 6 .. 6;
      GONAKEFF       at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ESUSP          at 0 range 10 .. 10;
      USBSUSP        at 0 range 11 .. 11;
      USBRST         at 0 range 12 .. 12;
      ENUMDNE        at 0 range 13 .. 13;
      ISOODRP        at 0 range 14 .. 14;
      EOPF           at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      IEPINT         at 0 range 18 .. 18;
      OEPINT         at 0 range 19 .. 19;
      IISOIXFR       at 0 range 20 .. 20;
      INCOMPISOOUT   at 0 range 21 .. 21;
      DATAFSUSP      at 0 range 22 .. 22;
      RSTDET         at 0 range 23 .. 23;
      HPRTINT        at 0 range 24 .. 24;
      HCINT          at 0 range 25 .. 25;
      PTXFE          at 0 range 26 .. 26;
      LPMINT         at 0 range 27 .. 27;
      CIDSCHG        at 0 range 28 .. 28;
      DISCINT        at 0 range 29 .. 29;
      SRQINT         at 0 range 30 .. 30;
      WKUPINT        at 0 range 31 .. 31;
   end record;

   --  OTG interrupt mask register [alternate]
   type OTG_GINTMSK_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Mode mismatch interrupt mask
      MMISM          : Boolean := False;
      --  OTG interrupt mask
      OTGINT         : Boolean := False;
      --  Start of frame mask
      SOFM           : Boolean := False;
      --  Receive FIFO non-empty mask
      RXFLVLM        : Boolean := False;
      --  Non-periodic Tx FIFO empty mask
      NPTXFEM        : Boolean := False;
      --  unspecified
      Reserved_6_20  : HAL.UInt15 := 16#0#;
      --  Incomplete periodic transfer mask
      IPXFRM         : Boolean := False;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Read-only. Host port interrupt mask
      PRTIM          : Boolean := False;
      --  Host channels interrupt mask
      HCIM           : Boolean := False;
      --  Periodic Tx FIFO empty mask
      PTXFEM         : Boolean := False;
      --  LPM interrupt mask
      LPMINTM        : Boolean := False;
      --  Connector ID status change mask
      CIDSCHGM       : Boolean := False;
      --  Disconnect detected interrupt mask
      DISCINT        : Boolean := False;
      --  Session request/new session detected interrupt mask
      SRQIM          : Boolean := False;
      --  Resume/remote wake-up detected interrupt mask
      WUIM           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GINTMSK_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      MMISM          at 0 range 1 .. 1;
      OTGINT         at 0 range 2 .. 2;
      SOFM           at 0 range 3 .. 3;
      RXFLVLM        at 0 range 4 .. 4;
      NPTXFEM        at 0 range 5 .. 5;
      Reserved_6_20  at 0 range 6 .. 20;
      IPXFRM         at 0 range 21 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      PRTIM          at 0 range 24 .. 24;
      HCIM           at 0 range 25 .. 25;
      PTXFEM         at 0 range 26 .. 26;
      LPMINTM        at 0 range 27 .. 27;
      CIDSCHGM       at 0 range 28 .. 28;
      DISCINT        at 0 range 29 .. 29;
      SRQIM          at 0 range 30 .. 30;
      WUIM           at 0 range 31 .. 31;
   end record;

   --  OTG interrupt mask register [alternate]
   type OTG_GINTMSK_ALTERNATE_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit := 16#0#;
      --  Mode mismatch interrupt mask
      MMISM          : Boolean := False;
      --  OTG interrupt mask
      OTGINT         : Boolean := False;
      --  Start of frame mask
      SOFM           : Boolean := False;
      --  Receive FIFO non-empty mask
      RXFLVLM        : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Global non-periodic IN NAK effective mask
      GINAKEFFM      : Boolean := False;
      --  Global OUT NAK effective mask
      GONAKEFFM      : Boolean := False;
      --  unspecified
      Reserved_8_9   : HAL.UInt2 := 16#0#;
      --  Early suspend mask
      ESUSPM         : Boolean := False;
      --  USB suspend mask
      USBSUSPM       : Boolean := False;
      --  USB reset mask
      USBRST         : Boolean := False;
      --  Enumeration done mask
      ENUMDNEM       : Boolean := False;
      --  Isochronous OUT packet dropped interrupt mask
      ISOODRPM       : Boolean := False;
      --  End of periodic frame interrupt mask
      EOPFM          : Boolean := False;
      --  unspecified
      Reserved_16_17 : HAL.UInt2 := 16#0#;
      --  IN endpoints interrupt mask
      IEPINT         : Boolean := False;
      --  OUT endpoints interrupt mask
      OEPINT         : Boolean := False;
      --  Incomplete isochronous IN transfer mask
      IISOIXFRM      : Boolean := False;
      --  Incomplete isochronous OUT transfer mask
      IISOOXFRM      : Boolean := False;
      --  Data fetch suspended mask
      FSUSPM         : Boolean := False;
      --  Reset detected interrupt mask
      RSTDETM        : Boolean := False;
      --  unspecified
      Reserved_24_26 : HAL.UInt3 := 16#0#;
      --  LPM interrupt mask
      LPMINTM        : Boolean := False;
      --  Connector ID status change mask
      CIDSCHGM       : Boolean := False;
      --  unspecified
      Reserved_29_29 : HAL.Bit := 16#0#;
      --  Session request/new session detected interrupt mask
      SRQIM          : Boolean := False;
      --  Resume/remote wake-up detected interrupt mask
      WUIM           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GINTMSK_ALTERNATE_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      MMISM          at 0 range 1 .. 1;
      OTGINT         at 0 range 2 .. 2;
      SOFM           at 0 range 3 .. 3;
      RXFLVLM        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      GINAKEFFM      at 0 range 6 .. 6;
      GONAKEFFM      at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ESUSPM         at 0 range 10 .. 10;
      USBSUSPM       at 0 range 11 .. 11;
      USBRST         at 0 range 12 .. 12;
      ENUMDNEM       at 0 range 13 .. 13;
      ISOODRPM       at 0 range 14 .. 14;
      EOPFM          at 0 range 15 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      IEPINT         at 0 range 18 .. 18;
      OEPINT         at 0 range 19 .. 19;
      IISOIXFRM      at 0 range 20 .. 20;
      IISOOXFRM      at 0 range 21 .. 21;
      FSUSPM         at 0 range 22 .. 22;
      RSTDETM        at 0 range 23 .. 23;
      Reserved_24_26 at 0 range 24 .. 26;
      LPMINTM        at 0 range 27 .. 27;
      CIDSCHGM       at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      SRQIM          at 0 range 30 .. 30;
      WUIM           at 0 range 31 .. 31;
   end record;

   subtype OTG_GRXSTSR_EPNUM_Field is HAL.UInt4;
   subtype OTG_GRXSTSR_BCNT_Field is HAL.UInt11;
   subtype OTG_GRXSTSR_DPID_Field is HAL.UInt2;
   subtype OTG_GRXSTSR_PKTSTS_Field is HAL.UInt4;
   subtype OTG_GRXSTSR_FRMNUM_Field is HAL.UInt4;

   --  OTG receive status debug read register [alternate]
   type OTG_GRXSTSR_Register is record
      --  Read-only. Endpoint number
      EPNUM          : OTG_GRXSTSR_EPNUM_Field;
      --  Read-only. Byte count
      BCNT           : OTG_GRXSTSR_BCNT_Field;
      --  Read-only. Data PID
      DPID           : OTG_GRXSTSR_DPID_Field;
      --  Read-only. Packet status
      PKTSTS         : OTG_GRXSTSR_PKTSTS_Field;
      --  Read-only. Frame number
      FRMNUM         : OTG_GRXSTSR_FRMNUM_Field;
      --  unspecified
      Reserved_25_26 : HAL.UInt2;
      --  Read-only. Status phase start
      STSPHST        : Boolean;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GRXSTSR_Register use record
      EPNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      FRMNUM         at 0 range 21 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      STSPHST        at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype OTG_GRXSTSR_ALTERNATE_CHNUM_Field is HAL.UInt4;
   subtype OTG_GRXSTSR_ALTERNATE_BCNT_Field is HAL.UInt11;
   subtype OTG_GRXSTSR_ALTERNATE_DPID_Field is HAL.UInt2;
   subtype OTG_GRXSTSR_ALTERNATE_PKTSTS_Field is HAL.UInt4;

   --  OTG receive status debug read register [alternate]
   type OTG_GRXSTSR_ALTERNATE_Register is record
      --  Read-only. Channel number
      CHNUM          : OTG_GRXSTSR_ALTERNATE_CHNUM_Field;
      --  Read-only. Byte count
      BCNT           : OTG_GRXSTSR_ALTERNATE_BCNT_Field;
      --  Read-only. Data PID
      DPID           : OTG_GRXSTSR_ALTERNATE_DPID_Field;
      --  Read-only. Packet status
      PKTSTS         : OTG_GRXSTSR_ALTERNATE_PKTSTS_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GRXSTSR_ALTERNATE_Register use record
      CHNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype OTG_GRXSTSP_EPNUM_Field is HAL.UInt4;
   subtype OTG_GRXSTSP_BCNT_Field is HAL.UInt11;
   subtype OTG_GRXSTSP_DPID_Field is HAL.UInt2;
   subtype OTG_GRXSTSP_PKTSTS_Field is HAL.UInt4;
   subtype OTG_GRXSTSP_FRMNUM_Field is HAL.UInt4;

   --  OTG status read and pop registers
   type OTG_GRXSTSP_Register is record
      --  Read-only. Endpoint number
      EPNUM          : OTG_GRXSTSP_EPNUM_Field;
      --  Read-only. Byte count
      BCNT           : OTG_GRXSTSP_BCNT_Field;
      --  Read-only. Data PID
      DPID           : OTG_GRXSTSP_DPID_Field;
      --  Read-only. Packet status
      PKTSTS         : OTG_GRXSTSP_PKTSTS_Field;
      --  Read-only. Frame number
      FRMNUM         : OTG_GRXSTSP_FRMNUM_Field;
      --  unspecified
      Reserved_25_26 : HAL.UInt2;
      --  Read-only. Status phase start
      STSPHST        : Boolean;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GRXSTSP_Register use record
      EPNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      FRMNUM         at 0 range 21 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      STSPHST        at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype OTG_GRXSTSP_ALTERNATE_CHNUM_Field is HAL.UInt4;
   subtype OTG_GRXSTSP_ALTERNATE_BCNT_Field is HAL.UInt11;
   subtype OTG_GRXSTSP_ALTERNATE_DPID_Field is HAL.UInt2;
   subtype OTG_GRXSTSP_ALTERNATE_PKTSTS_Field is HAL.UInt4;

   --  OTG status read and pop registers
   type OTG_GRXSTSP_ALTERNATE_Register is record
      --  Read-only. Channel number
      CHNUM          : OTG_GRXSTSP_ALTERNATE_CHNUM_Field;
      --  Read-only. Byte count
      BCNT           : OTG_GRXSTSP_ALTERNATE_BCNT_Field;
      --  Read-only. Data PID
      DPID           : OTG_GRXSTSP_ALTERNATE_DPID_Field;
      --  Read-only. Packet status
      PKTSTS         : OTG_GRXSTSP_ALTERNATE_PKTSTS_Field;
      --  unspecified
      Reserved_21_31 : HAL.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GRXSTSP_ALTERNATE_Register use record
      CHNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype OTG_GRXFSIZ_RXFD_Field is HAL.UInt16;

   --  OTG receive FIFO size register
   type OTG_GRXFSIZ_Register is record
      --  Rx FIFO depth
      RXFD           : OTG_GRXFSIZ_RXFD_Field := 16#400#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GRXFSIZ_Register use record
      RXFD           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_HNPTXFSIZ_NPTXFSA_Field is HAL.UInt16;
   subtype OTG_HNPTXFSIZ_NPTXFD_Field is HAL.UInt16;

   --  OTG host non-periodic transmit FIFO size register [alternate]
   type OTG_HNPTXFSIZ_Register is record
      --  Non-periodic transmit RAM start address
      NPTXFSA : OTG_HNPTXFSIZ_NPTXFSA_Field := 16#200#;
      --  Non-periodic Tx FIFO depth
      NPTXFD  : OTG_HNPTXFSIZ_NPTXFD_Field := 16#200#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HNPTXFSIZ_Register use record
      NPTXFSA at 0 range 0 .. 15;
      NPTXFD  at 0 range 16 .. 31;
   end record;

   subtype OTG_HNPTXFSIZ_ALTERNATE_TX0FSA_Field is HAL.UInt16;
   subtype OTG_HNPTXFSIZ_ALTERNATE_TX0FD_Field is HAL.UInt16;

   --  OTG host non-periodic transmit FIFO size register [alternate]
   type OTG_HNPTXFSIZ_ALTERNATE_Register is record
      --  Endpoint 0 transmit RAM start address
      TX0FSA : OTG_HNPTXFSIZ_ALTERNATE_TX0FSA_Field := 16#200#;
      --  Endpoint 0 Tx FIFO depth
      TX0FD  : OTG_HNPTXFSIZ_ALTERNATE_TX0FD_Field := 16#200#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HNPTXFSIZ_ALTERNATE_Register use record
      TX0FSA at 0 range 0 .. 15;
      TX0FD  at 0 range 16 .. 31;
   end record;

   subtype OTG_HNPTXSTS_NPTXFSAV_Field is HAL.UInt16;
   subtype OTG_HNPTXSTS_NPTQXSAV_Field is HAL.UInt8;
   subtype OTG_HNPTXSTS_NPTXQTOP_Field is HAL.UInt7;

   --  OTG non-periodic transmit FIFO/queue status register
   type OTG_HNPTXSTS_Register is record
      --  Read-only. Non-periodic Tx FIFO space available
      NPTXFSAV       : OTG_HNPTXSTS_NPTXFSAV_Field;
      --  Read-only. Non-periodic transmit request queue space available
      NPTQXSAV       : OTG_HNPTXSTS_NPTQXSAV_Field;
      --  Read-only. Top of the non-periodic transmit request queue
      NPTXQTOP       : OTG_HNPTXSTS_NPTXQTOP_Field;
      --  unspecified
      Reserved_31_31 : HAL.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HNPTXSTS_Register use record
      NPTXFSAV       at 0 range 0 .. 15;
      NPTQXSAV       at 0 range 16 .. 23;
      NPTXQTOP       at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  OTG general core configuration register
   type OTG_GCCFG_Register is record
      --  Read-only. Charger detection, result of the current mode (primary or
      --  secondary).
      CHGDET         : Boolean := False;
      --  Read-only. Single-Ended DP indicator
      FSVPLUS        : Boolean := False;
      --  Read-only. Single-Ended DM indicator
      FSVMINUS       : Boolean := False;
      --  Read-only. VBUS session indicator
      SESSVLD        : Boolean := False;
      --  Read-only. VBUS valid indicator
      VBUSVLD        : Boolean := False;
      --  unspecified
      Reserved_5_15  : HAL.UInt11 := 16#0#;
      --  Host CDP behavior enable
      HCDPEN         : Boolean := False;
      --  Host CDP port voltage detector enable on DP
      HCDPDETEN      : Boolean := False;
      --  Host CDP port Voltage source enable on DM
      HVDMSRCEN      : Boolean := False;
      --  Data Contact Detection enable
      DCDEN          : Boolean := False;
      --  Primary detection enable
      PDEN           : Boolean := False;
      --  unspecified
      Reserved_21_21 : HAL.Bit := 16#0#;
      --  Secondary detection enable
      SDEN           : Boolean := False;
      --  Software override value of the VBUS B-session detection
      VBVALOVAL      : Boolean := False;
      --  unspecified
      Reserved_24_24 : HAL.Bit := 16#0#;
      --  Force host mode pull-downs
      FORCEHOSTPD    : Boolean := False;
      --  Force Battery charging (BC) mode
      BCDEN          : Boolean := False;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Disable ID pin pull-up
      IDPULLUPDIS    : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GCCFG_Register use record
      CHGDET         at 0 range 0 .. 0;
      FSVPLUS        at 0 range 1 .. 1;
      FSVMINUS       at 0 range 2 .. 2;
      SESSVLD        at 0 range 3 .. 3;
      VBUSVLD        at 0 range 4 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      HCDPEN         at 0 range 16 .. 16;
      HCDPDETEN      at 0 range 17 .. 17;
      HVDMSRCEN      at 0 range 18 .. 18;
      DCDEN          at 0 range 19 .. 19;
      PDEN           at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      SDEN           at 0 range 22 .. 22;
      VBVALOVAL      at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      FORCEHOSTPD    at 0 range 25 .. 25;
      BCDEN          at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      IDPULLUPDIS    at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype OTG_GLPMCFG_BESL_Field is HAL.UInt4;
   subtype OTG_GLPMCFG_BESLTHRS_Field is HAL.UInt4;
   subtype OTG_GLPMCFG_LPMRSP_Field is HAL.UInt2;
   subtype OTG_GLPMCFG_LPMCHIDX_Field is HAL.UInt4;
   subtype OTG_GLPMCFG_LPMRCNT_Field is HAL.UInt3;
   subtype OTG_GLPMCFG_LPMRCNTSTS_Field is HAL.UInt3;

   --  OTG core LPM configuration register
   type OTG_GLPMCFG_Register is record
      --  LPM support enable
      LPMEN          : Boolean := False;
      --  LPM token acknowledge enable
      LPMACK         : Boolean := False;
      --  Best effort service latency
      BESL           : OTG_GLPMCFG_BESL_Field := 16#0#;
      --  bRemoteWake value
      REMWAKE        : Boolean := False;
      --  L1 Shallow Sleep enable
      L1SSEN         : Boolean := False;
      --  BESL threshold
      BESLTHRS       : OTG_GLPMCFG_BESLTHRS_Field := 16#0#;
      --  L1 deep sleep enable
      L1DSEN         : Boolean := False;
      --  Read-only. LPM response
      LPMRSP         : OTG_GLPMCFG_LPMRSP_Field := 16#0#;
      --  Read-only. Port sleep status
      SLPSTS         : Boolean := False;
      --  Read-only. Sleep state resume OK
      L1RSMOK        : Boolean := False;
      --  LPM Channel Index
      LPMCHIDX       : OTG_GLPMCFG_LPMCHIDX_Field := 16#0#;
      --  LPM retry count
      LPMRCNT        : OTG_GLPMCFG_LPMRCNT_Field := 16#0#;
      --  Send LPM transaction
      SNDLPM         : Boolean := False;
      --  Read-only. LPM retry count status
      LPMRCNTSTS     : OTG_GLPMCFG_LPMRCNTSTS_Field := 16#0#;
      --  Enable best effort service latency
      ENBESL         : Boolean := False;
      --  unspecified
      Reserved_29_31 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_GLPMCFG_Register use record
      LPMEN          at 0 range 0 .. 0;
      LPMACK         at 0 range 1 .. 1;
      BESL           at 0 range 2 .. 5;
      REMWAKE        at 0 range 6 .. 6;
      L1SSEN         at 0 range 7 .. 7;
      BESLTHRS       at 0 range 8 .. 11;
      L1DSEN         at 0 range 12 .. 12;
      LPMRSP         at 0 range 13 .. 14;
      SLPSTS         at 0 range 15 .. 15;
      L1RSMOK        at 0 range 16 .. 16;
      LPMCHIDX       at 0 range 17 .. 20;
      LPMRCNT        at 0 range 21 .. 23;
      SNDLPM         at 0 range 24 .. 24;
      LPMRCNTSTS     at 0 range 25 .. 27;
      ENBESL         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype OTG_HPTXFSIZ_PTXSA_Field is HAL.UInt16;
   subtype OTG_HPTXFSIZ_PTXFSIZ_Field is HAL.UInt16;

   --  OTG host periodic transmit FIFO size register
   type OTG_HPTXFSIZ_Register is record
      --  Host periodic Tx FIFO start address
      PTXSA   : OTG_HPTXFSIZ_PTXSA_Field := 16#800#;
      --  Host periodic Tx FIFO depth
      PTXFSIZ : OTG_HPTXFSIZ_PTXFSIZ_Field := 16#400#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HPTXFSIZ_Register use record
      PTXSA   at 0 range 0 .. 15;
      PTXFSIZ at 0 range 16 .. 31;
   end record;

   subtype OTG_DIEPTXF_INEPTXSA_Field is HAL.UInt16;
   subtype OTG_DIEPTXF_INEPTXFD_Field is HAL.UInt16;

   --  OTG device IN endpoint transmit FIFO 1 size register
   type OTG_DIEPTXF_Register is record
      --  IN endpoint FIFOx transmit RAM start address
      INEPTXSA : OTG_DIEPTXF_INEPTXSA_Field := 16#400#;
      --  IN endpoint Tx FIFO depth
      INEPTXFD : OTG_DIEPTXF_INEPTXFD_Field := 16#200#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPTXF_Register use record
      INEPTXSA at 0 range 0 .. 15;
      INEPTXFD at 0 range 16 .. 31;
   end record;

   subtype OTG_HCFG_FSLSPCS_Field is HAL.UInt2;

   --  OTG host configuration register
   type OTG_HCFG_Register is record
      --  FS/LS PHY clock select
      FSLSPCS       : OTG_HCFG_FSLSPCS_Field := 16#0#;
      --  Read-only. FS- and LS-only support
      FSLSS         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HCFG_Register use record
      FSLSPCS       at 0 range 0 .. 1;
      FSLSS         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype OTG_HFIR_FRIVL_Field is HAL.UInt16;

   --  OTG host frame interval register
   type OTG_HFIR_Register is record
      --  Frame interval
      FRIVL          : OTG_HFIR_FRIVL_Field := 16#EA60#;
      --  Reload control
      RLDCTRL        : Boolean := False;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HFIR_Register use record
      FRIVL          at 0 range 0 .. 15;
      RLDCTRL        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype OTG_HFNUM_FRNUM_Field is HAL.UInt16;
   subtype OTG_HFNUM_FTREM_Field is HAL.UInt16;

   --  OTG host frame number/frame time remaining register
   type OTG_HFNUM_Register is record
      --  Read-only. Frame number
      FRNUM : OTG_HFNUM_FRNUM_Field;
      --  Read-only. Frame time remaining
      FTREM : OTG_HFNUM_FTREM_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HFNUM_Register use record
      FRNUM at 0 range 0 .. 15;
      FTREM at 0 range 16 .. 31;
   end record;

   subtype OTG_HPTXSTS_PTXFSAVL_Field is HAL.UInt16;
   subtype OTG_HPTXSTS_PTXQSAV_Field is HAL.UInt8;
   subtype OTG_HPTXSTS_PTXQTOP_Field is HAL.UInt8;

   --  OTG_Host periodic transmit FIFO/queue status register
   type OTG_HPTXSTS_Register is record
      --  Read-only. Periodic transmit data FIFO space available
      PTXFSAVL : OTG_HPTXSTS_PTXFSAVL_Field;
      --  Read-only. Periodic transmit request queue space available
      PTXQSAV  : OTG_HPTXSTS_PTXQSAV_Field;
      --  Read-only. Top of the periodic transmit request queue
      PTXQTOP  : OTG_HPTXSTS_PTXQTOP_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HPTXSTS_Register use record
      PTXFSAVL at 0 range 0 .. 15;
      PTXQSAV  at 0 range 16 .. 23;
      PTXQTOP  at 0 range 24 .. 31;
   end record;

   subtype OTG_HAINT_HAINT_Field is HAL.UInt16;

   --  OTG host all channels interrupt register
   type OTG_HAINT_Register is record
      --  Read-only. Channel interrupts
      HAINT          : OTG_HAINT_HAINT_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HAINT_Register use record
      HAINT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_HAINTMSK_HAINTM_Field is HAL.UInt16;

   --  OTG host all channels interrupt mask register
   type OTG_HAINTMSK_Register is record
      --  Channel interrupt mask
      HAINTM         : OTG_HAINTMSK_HAINTM_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HAINTMSK_Register use record
      HAINTM         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_HPRT_PLSTS_Field is HAL.UInt2;
   subtype OTG_HPRT_PTCTL_Field is HAL.UInt4;
   subtype OTG_HPRT_PSPD_Field is HAL.UInt2;

   --  OTG host port control and status register
   type OTG_HPRT_Register is record
      --  Read-only. Port connect status
      PCSTS          : Boolean := False;
      --  Port connect detected
      PCDET          : Boolean := False;
      --  Port enable
      PENA           : Boolean := False;
      --  Port enable/disable change
      PENCHNG        : Boolean := False;
      --  Read-only. Port overcurrent active
      POCA           : Boolean := False;
      --  Port overcurrent change
      POCCHNG        : Boolean := False;
      --  Port resume
      PRES           : Boolean := False;
      --  Port suspend
      PSUSP          : Boolean := False;
      --  Port reset
      PRST           : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Read-only. Port line status
      PLSTS          : OTG_HPRT_PLSTS_Field := 16#0#;
      --  Port power
      PPWR           : Boolean := False;
      --  Port test control
      PTCTL          : OTG_HPRT_PTCTL_Field := 16#0#;
      --  Read-only. Port speed
      PSPD           : OTG_HPRT_PSPD_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HPRT_Register use record
      PCSTS          at 0 range 0 .. 0;
      PCDET          at 0 range 1 .. 1;
      PENA           at 0 range 2 .. 2;
      PENCHNG        at 0 range 3 .. 3;
      POCA           at 0 range 4 .. 4;
      POCCHNG        at 0 range 5 .. 5;
      PRES           at 0 range 6 .. 6;
      PSUSP          at 0 range 7 .. 7;
      PRST           at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PLSTS          at 0 range 10 .. 11;
      PPWR           at 0 range 12 .. 12;
      PTCTL          at 0 range 13 .. 16;
      PSPD           at 0 range 17 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype OTG_HCCHAR_MPSIZ_Field is HAL.UInt11;
   subtype OTG_HCCHAR_EPNUM_Field is HAL.UInt4;
   subtype OTG_HCCHAR_EPTYP_Field is HAL.UInt2;
   subtype OTG_HCCHAR_MCNT_Field is HAL.UInt2;
   subtype OTG_HCCHAR_DAD_Field is HAL.UInt7;

   --  OTG host channel 0 characteristics register
   type OTG_HCCHAR_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_HCCHAR_MPSIZ_Field := 16#0#;
      --  Endpoint number
      EPNUM          : OTG_HCCHAR_EPNUM_Field := 16#0#;
      --  Endpoint direction
      EPDIR          : Boolean := False;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  Low-speed device
      LSDEV          : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_HCCHAR_EPTYP_Field := 16#0#;
      --  Multicount
      MCNT           : OTG_HCCHAR_MCNT_Field := 16#0#;
      --  Device address
      DAD            : OTG_HCCHAR_DAD_Field := 16#0#;
      --  Odd frame
      ODDFRM         : Boolean := False;
      --  Channel disable
      CHDIS          : Boolean := False;
      --  Channel enable
      CHENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HCCHAR_Register use record
      MPSIZ          at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSDEV          at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      MCNT           at 0 range 20 .. 21;
      DAD            at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_HCSPLT_PRTADDR_Field is HAL.UInt7;
   subtype OTG_HCSPLT_HUBADDR_Field is HAL.UInt7;
   subtype OTG_HCSPLT_XACTPOS_Field is HAL.UInt2;

   --  OTG host channel 0 split control register
   type OTG_HCSPLT_Register is record
      --  Port address
      PRTADDR        : OTG_HCSPLT_PRTADDR_Field := 16#0#;
      --  Hub address
      HUBADDR        : OTG_HCSPLT_HUBADDR_Field := 16#0#;
      --  Transaction position
      XACTPOS        : OTG_HCSPLT_XACTPOS_Field := 16#0#;
      --  Do complete split
      COMPLSPLT      : Boolean := False;
      --  unspecified
      Reserved_17_30 : HAL.UInt14 := 16#0#;
      --  Split enable
      SPLITEN        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HCSPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPLSPLT      at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLITEN        at 0 range 31 .. 31;
   end record;

   --  OTG host channel 0 interrupt register
   type OTG_HCINT_Register is record
      --  Transfer completed.
      XFRC           : Boolean := False;
      --  Channel halted.
      CHH            : Boolean := False;
      --  AHB error
      AHBERR         : Boolean := False;
      --  STALL response received interrupt.
      STALL          : Boolean := False;
      --  NAK response received interrupt.
      NAK            : Boolean := False;
      --  ACK response received/transmitted interrupt.
      ACK            : Boolean := False;
      --  Not yet ready response received interrupt.
      NYET           : Boolean := False;
      --  Transaction error.
      TXERR          : Boolean := False;
      --  Babble error.
      BBERR          : Boolean := False;
      --  Frame overrun.
      FRMOR          : Boolean := False;
      --  Data toggle error.
      DTERR          : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HCINT_Register use record
      XFRC           at 0 range 0 .. 0;
      CHH            at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      NYET           at 0 range 6 .. 6;
      TXERR          at 0 range 7 .. 7;
      BBERR          at 0 range 8 .. 8;
      FRMOR          at 0 range 9 .. 9;
      DTERR          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  OTG host channel 0 interrupt mask register
   type OTG_HCINTMSK_Register is record
      --  Transfer completed mask
      XFRCM          : Boolean := False;
      --  Channel halted mask
      CHHM           : Boolean := False;
      --  AHB error.
      AHBERRM        : Boolean := False;
      --  STALL response received interrupt mask.
      STALLM         : Boolean := False;
      --  NAK response received interrupt mask.
      NAKM           : Boolean := False;
      --  ACK response received/transmitted interrupt mask.
      ACKM           : Boolean := False;
      --  response received interrupt mask.
      NYET           : Boolean := False;
      --  Transaction error mask.
      TXERRM         : Boolean := False;
      --  Babble error mask.
      BBERRM         : Boolean := False;
      --  Frame overrun mask.
      FRMORM         : Boolean := False;
      --  Data toggle error mask.
      DTERRM         : Boolean := False;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HCINTMSK_Register use record
      XFRCM          at 0 range 0 .. 0;
      CHHM           at 0 range 1 .. 1;
      AHBERRM        at 0 range 2 .. 2;
      STALLM         at 0 range 3 .. 3;
      NAKM           at 0 range 4 .. 4;
      ACKM           at 0 range 5 .. 5;
      NYET           at 0 range 6 .. 6;
      TXERRM         at 0 range 7 .. 7;
      BBERRM         at 0 range 8 .. 8;
      FRMORM         at 0 range 9 .. 9;
      DTERRM         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype OTG_HCTSIZ_XFRSIZ_Field is HAL.UInt19;
   subtype OTG_HCTSIZ_PKTCNT_Field is HAL.UInt10;
   subtype OTG_HCTSIZ_DPID_Field is HAL.UInt2;

   --  OTG host channel 0 transfer size register
   type OTG_HCTSIZ_Register is record
      --  Transfer size
      XFRSIZ : OTG_HCTSIZ_XFRSIZ_Field := 16#0#;
      --  Packet count
      PKTCNT : OTG_HCTSIZ_PKTCNT_Field := 16#0#;
      --  Data PID
      DPID   : OTG_HCTSIZ_DPID_Field := 16#0#;
      --  Do Ping
      DOPNG  : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_HCTSIZ_Register use record
      XFRSIZ at 0 range 0 .. 18;
      PKTCNT at 0 range 19 .. 28;
      DPID   at 0 range 29 .. 30;
      DOPNG  at 0 range 31 .. 31;
   end record;

   subtype OTG_DCFG_DSPD_Field is HAL.UInt2;
   subtype OTG_DCFG_DAD_Field is HAL.UInt7;
   subtype OTG_DCFG_PFIVL_Field is HAL.UInt2;
   subtype OTG_DCFG_PERSCHIVL_Field is HAL.UInt2;

   --  OTG device configuration register
   type OTG_DCFG_Register is record
      --  Device speed
      DSPD           : OTG_DCFG_DSPD_Field := 16#0#;
      --  Non-zero-length status OUT handshake
      NZLSOHSK       : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Device address
      DAD            : OTG_DCFG_DAD_Field := 16#0#;
      --  Periodic frame interval
      PFIVL          : OTG_DCFG_PFIVL_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Erratic error interrupt mask
      ERRATIM        : Boolean := False;
      --  unspecified
      Reserved_16_23 : HAL.UInt8 := 16#20#;
      --  Periodic schedule interval
      PERSCHIVL      : OTG_DCFG_PERSCHIVL_Field := 16#2#;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DCFG_Register use record
      DSPD           at 0 range 0 .. 1;
      NZLSOHSK       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DAD            at 0 range 4 .. 10;
      PFIVL          at 0 range 11 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      ERRATIM        at 0 range 15 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      PERSCHIVL      at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype OTG_DCTL_TCTL_Field is HAL.UInt3;

   --  OTG device control register
   type OTG_DCTL_Register is record
      --  Remote wake-up signaling
      RWUSIG         : Boolean := False;
      --  Soft disconnect
      SDIS           : Boolean := True;
      --  Read-only. Global IN NAK status
      GINSTS         : Boolean := False;
      --  Read-only. Global OUT NAK status
      GONSTS         : Boolean := False;
      --  Test control
      TCTL           : OTG_DCTL_TCTL_Field := 16#0#;
      --  Write-only. Set global IN NAK
      SGINAK         : Boolean := False;
      --  Write-only. Clear global IN NAK
      CGINAK         : Boolean := False;
      --  Write-only. Set global OUT NAK
      SGONAK         : Boolean := False;
      --  Write-only. Clear global OUT NAK
      CGONAK         : Boolean := False;
      --  Power-on programming done
      POPRGDNE       : Boolean := False;
      --  unspecified
      Reserved_12_17 : HAL.UInt6 := 16#0#;
      --  Deep sleep BESL reject
      DSBESLRJCT     : Boolean := False;
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DCTL_Register use record
      RWUSIG         at 0 range 0 .. 0;
      SDIS           at 0 range 1 .. 1;
      GINSTS         at 0 range 2 .. 2;
      GONSTS         at 0 range 3 .. 3;
      TCTL           at 0 range 4 .. 6;
      SGINAK         at 0 range 7 .. 7;
      CGINAK         at 0 range 8 .. 8;
      SGONAK         at 0 range 9 .. 9;
      CGONAK         at 0 range 10 .. 10;
      POPRGDNE       at 0 range 11 .. 11;
      Reserved_12_17 at 0 range 12 .. 17;
      DSBESLRJCT     at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype OTG_DSTS_ENUMSPD_Field is HAL.UInt2;
   subtype OTG_DSTS_FNSOF_Field is HAL.UInt14;
   subtype OTG_DSTS_DEVLNSTS_Field is HAL.UInt2;

   --  OTG device status register
   type OTG_DSTS_Register is record
      --  Read-only. Suspend status
      SUSPSTS        : Boolean;
      --  Read-only. Enumerated speed
      ENUMSPD        : OTG_DSTS_ENUMSPD_Field;
      --  Read-only. Erratic error
      EERR           : Boolean;
      --  unspecified
      Reserved_4_7   : HAL.UInt4;
      --  Read-only. Frame number of the received SOF
      FNSOF          : OTG_DSTS_FNSOF_Field;
      --  Read-only. Device line status
      DEVLNSTS       : OTG_DSTS_DEVLNSTS_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DSTS_Register use record
      SUSPSTS        at 0 range 0 .. 0;
      ENUMSPD        at 0 range 1 .. 2;
      EERR           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      FNSOF          at 0 range 8 .. 21;
      DEVLNSTS       at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  OTG device IN endpoint common interrupt mask register
   type OTG_DIEPMSK_Register is record
      --  Transfer completed interrupt mask
      XFRCM          : Boolean := False;
      --  Endpoint disabled interrupt mask
      EPDM           : Boolean := False;
      --  AHB error mask
      AHBERRM        : Boolean := False;
      --  Timeout condition mask (Non-isochronous endpoints)
      TOM            : Boolean := False;
      --  IN token received when Tx FIFO empty mask
      ITTXFEMSK      : Boolean := False;
      --  IN token received with EP mismatch mask
      INEPNMM        : Boolean := False;
      --  IN endpoint NAK effective mask
      INEPNEM        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  FIFO underrun mask
      TXFURM         : Boolean := False;
      --  unspecified
      Reserved_9_12  : HAL.UInt4 := 16#0#;
      --  NAK interrupt mask
      NAKM           : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPMSK_Register use record
      XFRCM          at 0 range 0 .. 0;
      EPDM           at 0 range 1 .. 1;
      AHBERRM        at 0 range 2 .. 2;
      TOM            at 0 range 3 .. 3;
      ITTXFEMSK      at 0 range 4 .. 4;
      INEPNMM        at 0 range 5 .. 5;
      INEPNEM        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TXFURM         at 0 range 8 .. 8;
      Reserved_9_12  at 0 range 9 .. 12;
      NAKM           at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  OTG device OUT endpoint common interrupt mask register
   type OTG_DOEPMSK_Register is record
      --  Transfer completed interrupt mask
      XFRCM          : Boolean := False;
      --  Endpoint disabled interrupt mask
      EPDM           : Boolean := False;
      --  AHB error mask
      AHBERRM        : Boolean := False;
      --  STUPM: SETUP phase done mask. Applies to control endpoints only.
      STUPM          : Boolean := False;
      --  OUT token received when endpoint disabled mask. Applies to control
      --  OUT endpoints only.
      OTEPDM         : Boolean := False;
      --  Status phase received for control write mask
      STSPHSRXM      : Boolean := False;
      --  Back-to-back SETUP packets received mask
      B2BSTUPM       : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Out packet error mask
      OUTPKTERRM     : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Babble error interrupt mask
      BERRM          : Boolean := False;
      --  NAK interrupt mask
      NAKMSK         : Boolean := False;
      --  NYET interrupt mask
      NYETMSK        : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPMSK_Register use record
      XFRCM          at 0 range 0 .. 0;
      EPDM           at 0 range 1 .. 1;
      AHBERRM        at 0 range 2 .. 2;
      STUPM          at 0 range 3 .. 3;
      OTEPDM         at 0 range 4 .. 4;
      STSPHSRXM      at 0 range 5 .. 5;
      B2BSTUPM       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OUTPKTERRM     at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      BERRM          at 0 range 12 .. 12;
      NAKMSK         at 0 range 13 .. 13;
      NYETMSK        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype OTG_DAINT_IEPINT_Field is HAL.UInt16;
   subtype OTG_DAINT_OEPINT_Field is HAL.UInt16;

   --  OTG device all endpoints interrupt register
   type OTG_DAINT_Register is record
      --  Read-only. IN endpoint interrupt bits
      IEPINT : OTG_DAINT_IEPINT_Field;
      --  Read-only. OUT endpoint interrupt bits
      OEPINT : OTG_DAINT_OEPINT_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DAINT_Register use record
      IEPINT at 0 range 0 .. 15;
      OEPINT at 0 range 16 .. 31;
   end record;

   subtype OTG_DAINTMSK_IEPM_Field is HAL.UInt16;
   subtype OTG_DAINTMSK_OEPM_Field is HAL.UInt16;

   --  OTG all endpoints interrupt mask register
   type OTG_DAINTMSK_Register is record
      --  IN EP interrupt mask bits
      IEPM : OTG_DAINTMSK_IEPM_Field := 16#0#;
      --  OUT EP interrupt mask bits
      OEPM : OTG_DAINTMSK_OEPM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DAINTMSK_Register use record
      IEPM at 0 range 0 .. 15;
      OEPM at 0 range 16 .. 31;
   end record;

   subtype OTG_DTHRCTL_TXTHRLEN_Field is HAL.UInt9;
   subtype OTG_DTHRCTL_RXTHRLEN_Field is HAL.UInt9;

   --  OTG device threshold control register
   type OTG_DTHRCTL_Register is record
      --  Nonisochronous IN endpoints threshold enable
      NONISOTHREN    : Boolean := False;
      --  ISO IN endpoint threshold enable
      ISOTHREN       : Boolean := False;
      --  Transmit threshold length
      TXTHRLEN       : OTG_DTHRCTL_TXTHRLEN_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
      --  Receive threshold enable
      RXTHREN        : Boolean := False;
      --  Receive threshold length
      RXTHRLEN       : OTG_DTHRCTL_RXTHRLEN_Field := 16#0#;
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  Arbiter parking enable
      ARPEN          : Boolean := False;
      --  unspecified
      Reserved_28_31 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DTHRCTL_Register use record
      NONISOTHREN    at 0 range 0 .. 0;
      ISOTHREN       at 0 range 1 .. 1;
      TXTHRLEN       at 0 range 2 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RXTHREN        at 0 range 16 .. 16;
      RXTHRLEN       at 0 range 17 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      ARPEN          at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype OTG_DIEPEMPMSK_INEPTXFEM_Field is HAL.UInt16;

   --  OTG device IN endpoint FIFO empty interrupt mask register
   type OTG_DIEPEMPMSK_Register is record
      --  IN EP Tx FIFO empty interrupt mask bits
      INEPTXFEM      : OTG_DIEPEMPMSK_INEPTXFEM_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPEMPMSK_Register use record
      INEPTXFEM      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_DIEPCTL_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DIEPCTL_EPTYP_Field is HAL.UInt2;
   subtype OTG_DIEPCTL_TXFNUM_Field is HAL.UInt4;

   --  OTG device IN endpoint 0 control register [alternate]
   type OTG_DIEPCTL_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DIEPCTL_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Endpoint data PID
      DPID           : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DIEPCTL_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  STALL handshake
      STALL          : Boolean := False;
      --  Tx FIFO number
      TXFNUM         : OTG_DIEPCTL_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set DATA0 PID
      SD0PID         : Boolean := False;
      --  Write-only. Set DATA1 PID
      SD1PID         : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPCTL_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      DPID           at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SD0PID         at 0 range 28 .. 28;
      SD1PID         at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DIEPCTL0_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DIEPCTL0_ALTERNATE_EPTYP_Field is HAL.UInt2;
   subtype OTG_DIEPCTL0_ALTERNATE_TXFNUM_Field is HAL.UInt4;

   --  OTG device IN endpoint 0 control register [alternate]
   type OTG_DIEPCTL0_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DIEPCTL0_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DIEPCTL0_ALTERNATE_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  STALL handshake
      STALL          : Boolean := False;
      --  Tx FIFO number
      TXFNUM         : OTG_DIEPCTL0_ALTERNATE_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPCTL0_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   --  OTG device IN endpoint 0 interrupt register
   type OTG_DIEPINT_Register is record
      --  Transfer completed interrupt
      XFRC           : Boolean := False;
      --  Endpoint disabled interrupt
      EPDISD         : Boolean := False;
      --  AHB error
      AHBERR         : Boolean := False;
      --  Timeout condition
      TOC            : Boolean := False;
      --  IN token received when Tx FIFO is empty
      ITTXFE         : Boolean := False;
      --  IN token received with EP mismatch
      INEPNM         : Boolean := False;
      --  IN endpoint NAK effective
      INEPNE         : Boolean := False;
      --  Read-only. Transmit FIFO empty
      TXFE           : Boolean := True;
      --  Transmit Fifo Underrun (TxfifoUndrn)
      TXFIFOUDRN     : Boolean := False;
      --  unspecified
      Reserved_9_10  : HAL.UInt2 := 16#0#;
      --  Packet dropped status
      PKTDRPSTS      : Boolean := False;
      --  unspecified
      Reserved_12_12 : HAL.Bit := 16#0#;
      --  NAK input
      NAK            : Boolean := False;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPINT_Register use record
      XFRC           at 0 range 0 .. 0;
      EPDISD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      TOC            at 0 range 3 .. 3;
      ITTXFE         at 0 range 4 .. 4;
      INEPNM         at 0 range 5 .. 5;
      INEPNE         at 0 range 6 .. 6;
      TXFE           at 0 range 7 .. 7;
      TXFIFOUDRN     at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      NAK            at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype OTG_DIEPTSIZ0_XFRSIZ_Field is HAL.UInt7;
   subtype OTG_DIEPTSIZ0_PKTCNT_Field is HAL.UInt2;

   --  OTG device IN endpoint 0 transfer size register
   type OTG_DIEPTSIZ0_Register is record
      --  Transfer size
      XFRSIZ         : OTG_DIEPTSIZ0_XFRSIZ_Field := 16#0#;
      --  unspecified
      Reserved_7_18  : HAL.UInt12 := 16#0#;
      --  Packet count
      PKTCNT         : OTG_DIEPTSIZ0_PKTCNT_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPTSIZ0_Register use record
      XFRSIZ         at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT         at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype OTG_DTXFSTS_INEPTFSAV_Field is HAL.UInt16;

   --  OTG device IN endpoint transmit FIFO status register
   type OTG_DTXFSTS_Register is record
      --  Read-only. IN endpoint Tx FIFO space available
      INEPTFSAV      : OTG_DTXFSTS_INEPTFSAV_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DTXFSTS_Register use record
      INEPTFSAV      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_DIEPCTL1_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DIEPCTL1_ALTERNATE_EPTYP_Field is HAL.UInt2;
   subtype OTG_DIEPCTL1_ALTERNATE_TXFNUM_Field is HAL.UInt4;

   --  OTG device IN endpoint 1 control register [alternate]
   type OTG_DIEPCTL1_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DIEPCTL1_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DIEPCTL1_ALTERNATE_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  STALL handshake
      STALL          : Boolean := False;
      --  Tx FIFO number
      TXFNUM         : OTG_DIEPCTL1_ALTERNATE_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPCTL1_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DIEPTSIZ_XFRSIZ_Field is HAL.UInt19;
   subtype OTG_DIEPTSIZ_PKTCNT_Field is HAL.UInt10;
   subtype OTG_DIEPTSIZ_MCNT_Field is HAL.UInt2;

   --  OTG device IN endpoint 1 transfer size register
   type OTG_DIEPTSIZ_Register is record
      --  Transfer size
      XFRSIZ         : OTG_DIEPTSIZ_XFRSIZ_Field := 16#0#;
      --  Packet count
      PKTCNT         : OTG_DIEPTSIZ_PKTCNT_Field := 16#0#;
      --  Multi count
      MCNT           : OTG_DIEPTSIZ_MCNT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPTSIZ_Register use record
      XFRSIZ         at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      MCNT           at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OTG_DIEPCTL2_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DIEPCTL2_ALTERNATE_EPTYP_Field is HAL.UInt2;
   subtype OTG_DIEPCTL2_ALTERNATE_TXFNUM_Field is HAL.UInt4;

   --  OTG device IN endpoint 2 control register [alternate]
   type OTG_DIEPCTL2_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DIEPCTL2_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DIEPCTL2_ALTERNATE_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  STALL handshake
      STALL          : Boolean := False;
      --  Tx FIFO number
      TXFNUM         : OTG_DIEPCTL2_ALTERNATE_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPCTL2_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DIEPCTL3_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DIEPCTL3_ALTERNATE_EPTYP_Field is HAL.UInt2;
   subtype OTG_DIEPCTL3_ALTERNATE_TXFNUM_Field is HAL.UInt4;

   --  OTG device IN endpoint 3 control register [alternate]
   type OTG_DIEPCTL3_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DIEPCTL3_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DIEPCTL3_ALTERNATE_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  STALL handshake
      STALL          : Boolean := False;
      --  Tx FIFO number
      TXFNUM         : OTG_DIEPCTL3_ALTERNATE_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPCTL3_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DIEPCTL4_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DIEPCTL4_ALTERNATE_EPTYP_Field is HAL.UInt2;
   subtype OTG_DIEPCTL4_ALTERNATE_TXFNUM_Field is HAL.UInt4;

   --  OTG device IN endpoint 4 control register [alternate]
   type OTG_DIEPCTL4_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DIEPCTL4_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DIEPCTL4_ALTERNATE_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  STALL handshake
      STALL          : Boolean := False;
      --  Tx FIFO number
      TXFNUM         : OTG_DIEPCTL4_ALTERNATE_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPCTL4_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DIEPCTL5_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DIEPCTL5_ALTERNATE_EPTYP_Field is HAL.UInt2;
   subtype OTG_DIEPCTL5_ALTERNATE_TXFNUM_Field is HAL.UInt4;

   --  OTG device IN endpoint 5 control register [alternate]
   type OTG_DIEPCTL5_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DIEPCTL5_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DIEPCTL5_ALTERNATE_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  STALL handshake
      STALL          : Boolean := False;
      --  Tx FIFO number
      TXFNUM         : OTG_DIEPCTL5_ALTERNATE_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPCTL5_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DIEPCTL6_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DIEPCTL6_ALTERNATE_EPTYP_Field is HAL.UInt2;
   subtype OTG_DIEPCTL6_ALTERNATE_TXFNUM_Field is HAL.UInt4;

   --  OTG device IN endpoint 6 control register [alternate]
   type OTG_DIEPCTL6_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DIEPCTL6_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DIEPCTL6_ALTERNATE_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  STALL handshake
      STALL          : Boolean := False;
      --  Tx FIFO number
      TXFNUM         : OTG_DIEPCTL6_ALTERNATE_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPCTL6_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DIEPCTL7_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DIEPCTL7_ALTERNATE_EPTYP_Field is HAL.UInt2;
   subtype OTG_DIEPCTL7_ALTERNATE_TXFNUM_Field is HAL.UInt4;

   --  OTG device IN endpoint 7 control register [alternate]
   type OTG_DIEPCTL7_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DIEPCTL7_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DIEPCTL7_ALTERNATE_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  STALL handshake
      STALL          : Boolean := False;
      --  Tx FIFO number
      TXFNUM         : OTG_DIEPCTL7_ALTERNATE_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPCTL7_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DIEPCTL8_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DIEPCTL8_ALTERNATE_EPTYP_Field is HAL.UInt2;
   subtype OTG_DIEPCTL8_ALTERNATE_TXFNUM_Field is HAL.UInt4;

   --  OTG device IN endpoint 8 control register [alternate]
   type OTG_DIEPCTL8_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DIEPCTL8_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DIEPCTL8_ALTERNATE_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  STALL handshake
      STALL          : Boolean := False;
      --  Tx FIFO number
      TXFNUM         : OTG_DIEPCTL8_ALTERNATE_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DIEPCTL8_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DOEPCTL0_MPSIZ_Field is HAL.UInt2;
   subtype OTG_DOEPCTL0_EPTYP_Field is HAL.UInt2;

   --  OTG device control OUT endpoint 0 control register
   type OTG_DOEPCTL0_Register is record
      --  Read-only. Maximum packet size
      MPSIZ          : OTG_DOEPCTL0_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_2_14  : HAL.UInt13 := 16#0#;
      --  Read-only. USB active endpoint
      USBAEP         : Boolean := True;
      --  unspecified
      Reserved_16_16 : HAL.Bit := 16#0#;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Read-only. Endpoint type
      EPTYP          : OTG_DOEPCTL0_EPTYP_Field := 16#0#;
      --  Snoop mode
      SNPM           : Boolean := False;
      --  STALL handshake
      STALL          : Boolean := False;
      --  unspecified
      Reserved_22_25 : HAL.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  unspecified
      Reserved_28_29 : HAL.UInt2 := 16#0#;
      --  Read-only. Endpoint disable
      EPDIS          : Boolean := False;
      --  Write-only. Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPCTL0_Register use record
      MPSIZ          at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      USBAEP         at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   --  OTG device OUT endpoint 0 interrupt register
   type OTG_DOEPINT_Register is record
      --  Transfer completed interrupt
      XFRC           : Boolean := False;
      --  Endpoint disabled interrupt
      EPDISD         : Boolean := False;
      --  AHB error
      AHBERR         : Boolean := False;
      --  SETUP phase done
      STUP           : Boolean := False;
      --  OUT token received when endpoint disabled
      OTEPDIS        : Boolean := False;
      --  Status phase received for control write
      STSPHSRX       : Boolean := False;
      --  Back-to-back SETUP packets received
      B2BSTUP        : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#1#;
      --  OUT packet error
      OUTPKTERR      : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Babble error interrupt
      BERR           : Boolean := False;
      --  NAK input
      NAK            : Boolean := False;
      --  NYET interrupt
      NYET           : Boolean := False;
      --  Setup packet received
      STPKTRX        : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPINT_Register use record
      XFRC           at 0 range 0 .. 0;
      EPDISD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STUP           at 0 range 3 .. 3;
      OTEPDIS        at 0 range 4 .. 4;
      STSPHSRX       at 0 range 5 .. 5;
      B2BSTUP        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OUTPKTERR      at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      BERR           at 0 range 12 .. 12;
      NAK            at 0 range 13 .. 13;
      NYET           at 0 range 14 .. 14;
      STPKTRX        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_DOEPTSIZ0_XFRSIZ_Field is HAL.UInt7;
   subtype OTG_DOEPTSIZ0_STUPCNT_Field is HAL.UInt2;

   --  OTG device OUT endpoint 0 transfer size register
   type OTG_DOEPTSIZ0_Register is record
      --  Transfer size
      XFRSIZ         : OTG_DOEPTSIZ0_XFRSIZ_Field := 16#0#;
      --  unspecified
      Reserved_7_18  : HAL.UInt12 := 16#0#;
      --  Packet count
      PKTCNT         : Boolean := False;
      --  unspecified
      Reserved_20_28 : HAL.UInt9 := 16#0#;
      --  SETUP packet count
      STUPCNT        : OTG_DOEPTSIZ0_STUPCNT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPTSIZ0_Register use record
      XFRSIZ         at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT         at 0 range 19 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      STUPCNT        at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OTG_DOEPCTL_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DOEPCTL_EPTYP_Field is HAL.UInt2;

   --  OTG device OUT endpoint 1 control register [alternate]
   type OTG_DOEPCTL_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DOEPCTL_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Endpoint data PID
      DPID           : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DOEPCTL_EPTYP_Field := 16#0#;
      --  Snoop mode
      SNPM           : Boolean := False;
      --  STALL handshake
      STALL          : Boolean := False;
      --  unspecified
      Reserved_22_25 : HAL.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set DATA0 PID
      SD0PID         : Boolean := False;
      --  Write-only. Set DATA1 PID
      SD1PID         : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPCTL_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      DPID           at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SD0PID         at 0 range 28 .. 28;
      SD1PID         at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DOEPCTL1_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DOEPCTL1_ALTERNATE_EPTYP_Field is HAL.UInt2;

   --  OTG device OUT endpoint 1 control register [alternate]
   type OTG_DOEPCTL1_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DOEPCTL1_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DOEPCTL1_ALTERNATE_EPTYP_Field := 16#0#;
      --  Snoop mode
      SNPM           : Boolean := False;
      --  STALL handshake
      STALL          : Boolean := False;
      --  unspecified
      Reserved_22_25 : HAL.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPCTL1_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DOEPTSIZ_XFRSIZ_Field is HAL.UInt19;
   subtype OTG_DOEPTSIZ_PKTCNT_Field is HAL.UInt10;
   subtype OTG_DOEPTSIZ_RXDPID_Field is HAL.UInt2;

   --  OTG device OUT endpoint 1 transfer size register
   type OTG_DOEPTSIZ_Register is record
      --  Transfer size
      XFRSIZ         : OTG_DOEPTSIZ_XFRSIZ_Field := 16#0#;
      --  Packet count
      PKTCNT         : OTG_DOEPTSIZ_PKTCNT_Field := 16#0#;
      --  Received data PID
      RXDPID         : OTG_DOEPTSIZ_RXDPID_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPTSIZ_Register use record
      XFRSIZ         at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      RXDPID         at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OTG_DOEPCTL2_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DOEPCTL2_ALTERNATE_EPTYP_Field is HAL.UInt2;

   --  OTG device OUT endpoint 2 control register [alternate]
   type OTG_DOEPCTL2_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DOEPCTL2_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DOEPCTL2_ALTERNATE_EPTYP_Field := 16#0#;
      --  Snoop mode
      SNPM           : Boolean := False;
      --  STALL handshake
      STALL          : Boolean := False;
      --  unspecified
      Reserved_22_25 : HAL.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPCTL2_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DOEPCTL3_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DOEPCTL3_ALTERNATE_EPTYP_Field is HAL.UInt2;

   --  OTG device OUT endpoint 3 control register [alternate]
   type OTG_DOEPCTL3_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DOEPCTL3_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DOEPCTL3_ALTERNATE_EPTYP_Field := 16#0#;
      --  Snoop mode
      SNPM           : Boolean := False;
      --  STALL handshake
      STALL          : Boolean := False;
      --  unspecified
      Reserved_22_25 : HAL.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPCTL3_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DOEPCTL4_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DOEPCTL4_ALTERNATE_EPTYP_Field is HAL.UInt2;

   --  OTG device OUT endpoint 4 control register [alternate]
   type OTG_DOEPCTL4_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DOEPCTL4_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DOEPCTL4_ALTERNATE_EPTYP_Field := 16#0#;
      --  Snoop mode
      SNPM           : Boolean := False;
      --  STALL handshake
      STALL          : Boolean := False;
      --  unspecified
      Reserved_22_25 : HAL.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPCTL4_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DOEPCTL5_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DOEPCTL5_ALTERNATE_EPTYP_Field is HAL.UInt2;

   --  OTG device OUT endpoint 5 control register [alternate]
   type OTG_DOEPCTL5_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DOEPCTL5_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DOEPCTL5_ALTERNATE_EPTYP_Field := 16#0#;
      --  Snoop mode
      SNPM           : Boolean := False;
      --  STALL handshake
      STALL          : Boolean := False;
      --  unspecified
      Reserved_22_25 : HAL.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPCTL5_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DOEPCTL6_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DOEPCTL6_ALTERNATE_EPTYP_Field is HAL.UInt2;

   --  OTG device OUT endpoint 6 control register [alternate]
   type OTG_DOEPCTL6_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DOEPCTL6_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DOEPCTL6_ALTERNATE_EPTYP_Field := 16#0#;
      --  Snoop mode
      SNPM           : Boolean := False;
      --  STALL handshake
      STALL          : Boolean := False;
      --  unspecified
      Reserved_22_25 : HAL.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPCTL6_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DOEPCTL7_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DOEPCTL7_ALTERNATE_EPTYP_Field is HAL.UInt2;

   --  OTG device OUT endpoint 7 control register [alternate]
   type OTG_DOEPCTL7_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DOEPCTL7_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DOEPCTL7_ALTERNATE_EPTYP_Field := 16#0#;
      --  Snoop mode
      SNPM           : Boolean := False;
      --  STALL handshake
      STALL          : Boolean := False;
      --  unspecified
      Reserved_22_25 : HAL.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPCTL7_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_DOEPCTL8_ALTERNATE_MPSIZ_Field is HAL.UInt11;
   subtype OTG_DOEPCTL8_ALTERNATE_EPTYP_Field is HAL.UInt2;

   --  OTG device OUT endpoint 8 control register [alternate]
   type OTG_DOEPCTL8_ALTERNATE_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_DOEPCTL8_ALTERNATE_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM          : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_DOEPCTL8_ALTERNATE_EPTYP_Field := 16#0#;
      --  Snoop mode
      SNPM           : Boolean := False;
      --  STALL handshake
      STALL          : Boolean := False;
      --  unspecified
      Reserved_22_25 : HAL.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set even frame
      SEVNFRM        : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_DOEPCTL8_ALTERNATE_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM          at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SEVNFRM        at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   --  OTG power and clock gating control register
   type OTG_PCGCCTL_Register is record
      --  Stop PHY clock
      STPPCLK       : Boolean := False;
      --  Gate HCLK
      GATEHCLK      : Boolean := False;
      --  unspecified
      Reserved_2_3  : HAL.UInt2 := 16#0#;
      --  Read-only. PHY suspended
      PHYSUSP       : Boolean := False;
      --  Enable sleep clock gating
      ENL1GTG       : Boolean := False;
      --  Read-only. PHY in Sleep
      PHYSLEEP      : Boolean := False;
      --  Read-only. Deep Sleep
      SUSP          : Boolean := False;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#200B80#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_PCGCCTL_Register use record
      STPPCLK       at 0 range 0 .. 0;
      GATEHCLK      at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      PHYSUSP       at 0 range 4 .. 4;
      ENL1GTG       at 0 range 5 .. 5;
      PHYSLEEP      at 0 range 6 .. 6;
      SUSP          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype OTG_PCGCCTL1_CNTGATECLK_Field is HAL.UInt2;

   --  OTG power and clock gating control register 1
   type OTG_PCGCCTL1_Register is record
      --  Enable active clock gating
      GATEEN        : Boolean := False;
      --  Counter for clock gating
      CNTGATECLK    : OTG_PCGCCTL1_CNTGATECLK_Field := 16#0#;
      --  Enable RAM clock gating
      RAMGATEEN     : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_PCGCCTL1_Register use record
      GATEEN        at 0 range 0 .. 0;
      CNTGATECLK    at 0 range 1 .. 2;
      RAMGATEEN     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type OTG1_Disc is
     (Default,
      Alternate);

   --  USB on-the-go high-speed
   type OTG_Peripheral
     (Discriminent : OTG1_Disc := Default)
   is record
      --  OTG control and status register
      OTG_GOTGCTL             : aliased OTG_GOTGCTL_Register;
      --  OTG interrupt register
      OTG_GOTGINT             : aliased OTG_GOTGINT_Register;
      --  OTG AHB configuration register
      OTG_GAHBCFG             : aliased OTG_GAHBCFG_Register;
      --  OTG USB configuration register
      OTG_GUSBCFG             : aliased OTG_GUSBCFG_Register;
      --  OTG reset register
      OTG_GRSTCTL             : aliased OTG_GRSTCTL_Register;
      --  OTG receive FIFO size register
      OTG_GRXFSIZ             : aliased OTG_GRXFSIZ_Register;
      --  OTG non-periodic transmit FIFO/queue status register
      OTG_HNPTXSTS            : aliased OTG_HNPTXSTS_Register;
      --  OTG general core configuration register
      OTG_GCCFG               : aliased OTG_GCCFG_Register;
      --  OTG core ID register
      OTG_CID                 : aliased HAL.UInt32;
      --  OTG core LPM configuration register
      OTG_GLPMCFG             : aliased OTG_GLPMCFG_Register;
      --  OTG host periodic transmit FIFO size register
      OTG_HPTXFSIZ            : aliased OTG_HPTXFSIZ_Register;
      --  OTG device IN endpoint transmit FIFO 1 size register
      OTG_DIEPTXF1            : aliased OTG_DIEPTXF_Register;
      --  OTG device IN endpoint transmit FIFO 2 size register
      OTG_DIEPTXF2            : aliased OTG_DIEPTXF_Register;
      --  OTG device IN endpoint transmit FIFO 3 size register
      OTG_DIEPTXF3            : aliased OTG_DIEPTXF_Register;
      --  OTG device IN endpoint transmit FIFO 4 size register
      OTG_DIEPTXF4            : aliased OTG_DIEPTXF_Register;
      --  OTG device IN endpoint transmit FIFO 5 size register
      OTG_DIEPTXF5            : aliased OTG_DIEPTXF_Register;
      --  OTG device IN endpoint transmit FIFO 6 size register
      OTG_DIEPTXF6            : aliased OTG_DIEPTXF_Register;
      --  OTG device IN endpoint transmit FIFO 7 size register
      OTG_DIEPTXF7            : aliased OTG_DIEPTXF_Register;
      --  OTG device IN endpoint transmit FIFO 8 size register
      OTG_DIEPTXF8            : aliased OTG_DIEPTXF_Register;
      --  OTG host configuration register
      OTG_HCFG                : aliased OTG_HCFG_Register;
      --  OTG host frame interval register
      OTG_HFIR                : aliased OTG_HFIR_Register;
      --  OTG host frame number/frame time remaining register
      OTG_HFNUM               : aliased OTG_HFNUM_Register;
      --  OTG_Host periodic transmit FIFO/queue status register
      OTG_HPTXSTS             : aliased OTG_HPTXSTS_Register;
      --  OTG host all channels interrupt register
      OTG_HAINT               : aliased OTG_HAINT_Register;
      --  OTG host all channels interrupt mask register
      OTG_HAINTMSK            : aliased OTG_HAINTMSK_Register;
      --  OTG host port control and status register
      OTG_HPRT                : aliased OTG_HPRT_Register;
      --  OTG host channel 0 characteristics register
      OTG_HCCHAR0             : aliased OTG_HCCHAR_Register;
      --  OTG host channel 0 split control register
      OTG_HCSPLT0             : aliased OTG_HCSPLT_Register;
      --  OTG host channel 0 interrupt register
      OTG_HCINT0              : aliased OTG_HCINT_Register;
      --  OTG host channel 0 interrupt mask register
      OTG_HCINTMSK0           : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 0 transfer size register
      OTG_HCTSIZ0             : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 0 DMA address register
      OTG_HCDMA0              : aliased HAL.UInt32;
      --  OTG host channel 1 characteristics register
      OTG_HCCHAR1             : aliased OTG_HCCHAR_Register;
      --  OTG host channel 1 split control register
      OTG_HCSPLT1             : aliased OTG_HCSPLT_Register;
      --  OTG host channel 1 interrupt register
      OTG_HCINT1              : aliased OTG_HCINT_Register;
      --  OTG host channel 1 interrupt mask register
      OTG_HCINTMSK1           : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 1 transfer size register
      OTG_HCTSIZ1             : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 1 DMA address register
      OTG_HCDMA1              : aliased HAL.UInt32;
      --  OTG host channel 2 characteristics register
      OTG_HCCHAR2             : aliased OTG_HCCHAR_Register;
      --  OTG host channel 2 split control register
      OTG_HCSPLT2             : aliased OTG_HCSPLT_Register;
      --  OTG host channel 2 interrupt register
      OTG_HCINT2              : aliased OTG_HCINT_Register;
      --  OTG host channel 2 interrupt mask register
      OTG_HCINTMSK2           : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 2 transfer size register
      OTG_HCTSIZ2             : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 2 DMA address register
      OTG_HCDMA2              : aliased HAL.UInt32;
      --  OTG host channel 3 characteristics register
      OTG_HCCHAR3             : aliased OTG_HCCHAR_Register;
      --  OTG host channel 3 split control register
      OTG_HCSPLT3             : aliased OTG_HCSPLT_Register;
      --  OTG host channel 3 interrupt register
      OTG_HCINT3              : aliased OTG_HCINT_Register;
      --  OTG host channel 3 interrupt mask register
      OTG_HCINTMSK3           : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 3 transfer size register
      OTG_HCTSIZ3             : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 3 DMA address register
      OTG_HCDMA3              : aliased HAL.UInt32;
      --  OTG host channel 4 characteristics register
      OTG_HCCHAR4             : aliased OTG_HCCHAR_Register;
      --  OTG host channel 4 split control register
      OTG_HCSPLT4             : aliased OTG_HCSPLT_Register;
      --  OTG host channel 4 interrupt register
      OTG_HCINT4              : aliased OTG_HCINT_Register;
      --  OTG host channel 4 interrupt mask register
      OTG_HCINTMSK4           : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 4 transfer size register
      OTG_HCTSIZ4             : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 4 DMA address register
      OTG_HCDMA4              : aliased HAL.UInt32;
      --  OTG host channel 5 characteristics register
      OTG_HCCHAR5             : aliased OTG_HCCHAR_Register;
      --  OTG host channel 5 split control register
      OTG_HCSPLT5             : aliased OTG_HCSPLT_Register;
      --  OTG host channel 5 interrupt register
      OTG_HCINT5              : aliased OTG_HCINT_Register;
      --  OTG host channel 5 interrupt mask register
      OTG_HCINTMSK5           : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 5 transfer size register
      OTG_HCTSIZ5             : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 5 DMA address register
      OTG_HCDMA5              : aliased HAL.UInt32;
      --  OTG host channel 6 characteristics register
      OTG_HCCHAR6             : aliased OTG_HCCHAR_Register;
      --  OTG host channel 6 split control register
      OTG_HCSPLT6             : aliased OTG_HCSPLT_Register;
      --  OTG host channel 6 interrupt register
      OTG_HCINT6              : aliased OTG_HCINT_Register;
      --  OTG host channel 6 interrupt mask register
      OTG_HCINTMSK6           : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 6 transfer size register
      OTG_HCTSIZ6             : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 6 DMA address register
      OTG_HCDMA6              : aliased HAL.UInt32;
      --  OTG host channel 7 characteristics register
      OTG_HCCHAR7             : aliased OTG_HCCHAR_Register;
      --  OTG host channel 7 split control register
      OTG_HCSPLT7             : aliased OTG_HCSPLT_Register;
      --  OTG host channel 7 interrupt register
      OTG_HCINT7              : aliased OTG_HCINT_Register;
      --  OTG host channel 7 interrupt mask register
      OTG_HCINTMSK7           : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 7 transfer size register
      OTG_HCTSIZ7             : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 7 DMA address register
      OTG_HCDMA7              : aliased HAL.UInt32;
      --  OTG host channel 8 characteristics register
      OTG_HCCHAR8             : aliased OTG_HCCHAR_Register;
      --  OTG host channel 8 split control register
      OTG_HCSPLT8             : aliased OTG_HCSPLT_Register;
      --  OTG host channel 8 interrupt register
      OTG_HCINT8              : aliased OTG_HCINT_Register;
      --  OTG host channel 8 interrupt mask register
      OTG_HCINTMSK8           : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 8 transfer size register
      OTG_HCTSIZ8             : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 8 DMA address register
      OTG_HCDMA8              : aliased HAL.UInt32;
      --  OTG host channel 9 characteristics register
      OTG_HCCHAR9             : aliased OTG_HCCHAR_Register;
      --  OTG host channel 9 split control register
      OTG_HCSPLT9             : aliased OTG_HCSPLT_Register;
      --  OTG host channel 9 interrupt register
      OTG_HCINT9              : aliased OTG_HCINT_Register;
      --  OTG host channel 9 interrupt mask register
      OTG_HCINTMSK9           : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 9 transfer size register
      OTG_HCTSIZ9             : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 9 DMA address register
      OTG_HCDMA9              : aliased HAL.UInt32;
      --  OTG host channel 10 characteristics register
      OTG_HCCHAR10            : aliased OTG_HCCHAR_Register;
      --  OTG host channel 10 split control register
      OTG_HCSPLT10            : aliased OTG_HCSPLT_Register;
      --  OTG host channel 10 interrupt register
      OTG_HCINT10             : aliased OTG_HCINT_Register;
      --  OTG host channel 10 interrupt mask register
      OTG_HCINTMSK10          : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 10 transfer size register
      OTG_HCTSIZ10            : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 10 DMA address register
      OTG_HCDMA10             : aliased HAL.UInt32;
      --  OTG host channel 11 characteristics register
      OTG_HCCHAR11            : aliased OTG_HCCHAR_Register;
      --  OTG host channel 11 split control register
      OTG_HCSPLT11            : aliased OTG_HCSPLT_Register;
      --  OTG host channel 11 interrupt register
      OTG_HCINT11             : aliased OTG_HCINT_Register;
      --  OTG host channel 11 interrupt mask register
      OTG_HCINTMSK11          : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 11 transfer size register
      OTG_HCTSIZ11            : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 11 DMA address register
      OTG_HCDMA11             : aliased HAL.UInt32;
      --  OTG host channel 12 characteristics register
      OTG_HCCHAR12            : aliased OTG_HCCHAR_Register;
      --  OTG host channel 12 split control register
      OTG_HCSPLT12            : aliased OTG_HCSPLT_Register;
      --  OTG host channel 12 interrupt register
      OTG_HCINT12             : aliased OTG_HCINT_Register;
      --  OTG host channel 12 interrupt mask register
      OTG_HCINTMSK12          : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 12 transfer size register
      OTG_HCTSIZ12            : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 12 DMA address register
      OTG_HCDMA12             : aliased HAL.UInt32;
      --  OTG host channel 13 characteristics register
      OTG_HCCHAR13            : aliased OTG_HCCHAR_Register;
      --  OTG host channel 13 split control register
      OTG_HCSPLT13            : aliased OTG_HCSPLT_Register;
      --  OTG host channel 13 interrupt register
      OTG_HCINT13             : aliased OTG_HCINT_Register;
      --  OTG host channel 13 interrupt mask register
      OTG_HCINTMSK13          : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 13 transfer size register
      OTG_HCTSIZ13            : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 13 DMA address register
      OTG_HCDMA13             : aliased HAL.UInt32;
      --  OTG host channel 14 characteristics register
      OTG_HCCHAR14            : aliased OTG_HCCHAR_Register;
      --  OTG host channel 14 split control register
      OTG_HCSPLT14            : aliased OTG_HCSPLT_Register;
      --  OTG host channel 14 interrupt register
      OTG_HCINT14             : aliased OTG_HCINT_Register;
      --  OTG host channel 14 interrupt mask register
      OTG_HCINTMSK14          : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 14 transfer size register
      OTG_HCTSIZ14            : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 14 DMA address register
      OTG_HCDMA14             : aliased HAL.UInt32;
      --  OTG host channel 15 characteristics register
      OTG_HCCHAR15            : aliased OTG_HCCHAR_Register;
      --  OTG host channel 15 split control register
      OTG_HCSPLT15            : aliased OTG_HCSPLT_Register;
      --  OTG host channel 15 interrupt register
      OTG_HCINT15             : aliased OTG_HCINT_Register;
      --  OTG host channel 15 interrupt mask register
      OTG_HCINTMSK15          : aliased OTG_HCINTMSK_Register;
      --  OTG host channel 15 transfer size register
      OTG_HCTSIZ15            : aliased OTG_HCTSIZ_Register;
      --  OTG host channel 15 DMA address register
      OTG_HCDMA15             : aliased HAL.UInt32;
      --  OTG device configuration register
      OTG_DCFG                : aliased OTG_DCFG_Register;
      --  OTG device control register
      OTG_DCTL                : aliased OTG_DCTL_Register;
      --  OTG device status register
      OTG_DSTS                : aliased OTG_DSTS_Register;
      --  OTG device IN endpoint common interrupt mask register
      OTG_DIEPMSK             : aliased OTG_DIEPMSK_Register;
      --  OTG device OUT endpoint common interrupt mask register
      OTG_DOEPMSK             : aliased OTG_DOEPMSK_Register;
      --  OTG device all endpoints interrupt register
      OTG_DAINT               : aliased OTG_DAINT_Register;
      --  OTG all endpoints interrupt mask register
      OTG_DAINTMSK            : aliased OTG_DAINTMSK_Register;
      --  OTG device threshold control register
      OTG_DTHRCTL             : aliased OTG_DTHRCTL_Register;
      --  OTG device IN endpoint FIFO empty interrupt mask register
      OTG_DIEPEMPMSK          : aliased OTG_DIEPEMPMSK_Register;
      --  OTG device IN endpoint 0 interrupt register
      OTG_DIEPINT0            : aliased OTG_DIEPINT_Register;
      --  OTG device IN endpoint 0 transfer size register
      OTG_DIEPTSIZ0           : aliased OTG_DIEPTSIZ0_Register;
      --  OTG device IN endpoint 0 DMA address register
      OTG_DIEPDMA0            : aliased HAL.UInt32;
      --  OTG device IN endpoint transmit FIFO status register
      OTG_DTXFSTS0            : aliased OTG_DTXFSTS_Register;
      --  OTG device IN endpoint 1 interrupt register
      OTG_DIEPINT1            : aliased OTG_DIEPINT_Register;
      --  OTG device IN endpoint 1 transfer size register
      OTG_DIEPTSIZ1           : aliased OTG_DIEPTSIZ_Register;
      --  OTG device IN endpoint 1 DMA address register
      OTG_DIEPDMA1            : aliased HAL.UInt32;
      --  OTG device IN endpoint transmit FIFO status register
      OTG_DTXFSTS1            : aliased OTG_DTXFSTS_Register;
      --  OTG device IN endpoint 2 interrupt register
      OTG_DIEPINT2            : aliased OTG_DIEPINT_Register;
      --  OTG device IN endpoint 2 transfer size register
      OTG_DIEPTSIZ2           : aliased OTG_DIEPTSIZ_Register;
      --  OTG device IN endpoint 2 DMA address register
      OTG_DIEPDMA2            : aliased HAL.UInt32;
      --  OTG device IN endpoint transmit FIFO status register
      OTG_DTXFSTS2            : aliased OTG_DTXFSTS_Register;
      --  OTG device IN endpoint 3 interrupt register
      OTG_DIEPINT3            : aliased OTG_DIEPINT_Register;
      --  OTG device IN endpoint 3 transfer size register
      OTG_DIEPTSIZ3           : aliased OTG_DIEPTSIZ_Register;
      --  OTG device IN endpoint 3 DMA address register
      OTG_DIEPDMA3            : aliased HAL.UInt32;
      --  OTG device IN endpoint transmit FIFO status register
      OTG_DTXFSTS3            : aliased OTG_DTXFSTS_Register;
      --  OTG device IN endpoint 4 interrupt register
      OTG_DIEPINT4            : aliased OTG_DIEPINT_Register;
      --  OTG device IN endpoint 4 transfer size register
      OTG_DIEPTSIZ4           : aliased OTG_DIEPTSIZ_Register;
      --  OTG device IN endpoint 4 DMA address register
      OTG_DIEPDMA4            : aliased HAL.UInt32;
      --  OTG device IN endpoint transmit FIFO status register
      OTG_DTXFSTS4            : aliased OTG_DTXFSTS_Register;
      --  OTG device IN endpoint 5 interrupt register
      OTG_DIEPINT5            : aliased OTG_DIEPINT_Register;
      --  OTG device IN endpoint 5 transfer size register
      OTG_DIEPTSIZ5           : aliased OTG_DIEPTSIZ_Register;
      --  OTG device IN endpoint 5 DMA address register
      OTG_DIEPDMA5            : aliased HAL.UInt32;
      --  OTG device IN endpoint transmit FIFO status register
      OTG_DTXFSTS5            : aliased OTG_DTXFSTS_Register;
      --  OTG device IN endpoint 6 interrupt register
      OTG_DIEPINT6            : aliased OTG_DIEPINT_Register;
      --  OTG device IN endpoint 6 transfer size register
      OTG_DIEPTSIZ6           : aliased OTG_DIEPTSIZ_Register;
      --  OTG device IN endpoint 6 DMA address register
      OTG_DIEPDMA6            : aliased HAL.UInt32;
      --  OTG device IN endpoint transmit FIFO status register
      OTG_DTXFSTS6            : aliased OTG_DTXFSTS_Register;
      --  OTG device IN endpoint 7 interrupt register
      OTG_DIEPINT7            : aliased OTG_DIEPINT_Register;
      --  OTG device IN endpoint 7 transfer size register
      OTG_DIEPTSIZ7           : aliased OTG_DIEPTSIZ_Register;
      --  OTG device IN endpoint 7 DMA address register
      OTG_DIEPDMA7            : aliased HAL.UInt32;
      --  OTG device IN endpoint transmit FIFO status register
      OTG_DTXFSTS7            : aliased OTG_DTXFSTS_Register;
      --  OTG device IN endpoint 8 interrupt register
      OTG_DIEPINT8            : aliased OTG_DIEPINT_Register;
      --  OTG device IN endpoint 8 transfer size register
      OTG_DIEPTSIZ8           : aliased OTG_DIEPTSIZ_Register;
      --  OTG device IN endpoint 8 DMA address register
      OTG_DIEPDMA8            : aliased HAL.UInt32;
      --  OTG device IN endpoint transmit FIFO status register
      OTG_DTXFSTS8            : aliased OTG_DTXFSTS_Register;
      --  OTG device control OUT endpoint 0 control register
      OTG_DOEPCTL0            : aliased OTG_DOEPCTL0_Register;
      --  OTG device OUT endpoint 0 interrupt register
      OTG_DOEPINT0            : aliased OTG_DOEPINT_Register;
      --  OTG device OUT endpoint 0 transfer size register
      OTG_DOEPTSIZ0           : aliased OTG_DOEPTSIZ0_Register;
      --  OTG device OUT endpoint 0 DMA address register
      OTG_DOEPDMA0            : aliased HAL.UInt32;
      --  OTG device OUT endpoint 1 interrupt register
      OTG_DOEPINT1            : aliased OTG_DOEPINT_Register;
      --  OTG device OUT endpoint 1 transfer size register
      OTG_DOEPTSIZ1           : aliased OTG_DOEPTSIZ_Register;
      --  OTG device OUT endpoint 1 DMA address register
      OTG_DOEPDMA1            : aliased HAL.UInt32;
      --  OTG device OUT endpoint 2 interrupt register
      OTG_DOEPINT2            : aliased OTG_DOEPINT_Register;
      --  OTG device OUT endpoint 2 transfer size register
      OTG_DOEPTSIZ2           : aliased OTG_DOEPTSIZ_Register;
      --  OTG device OUT endpoint 2 DMA address register
      OTG_DOEPDMA2            : aliased HAL.UInt32;
      --  OTG device OUT endpoint 3 interrupt register
      OTG_DOEPINT3            : aliased OTG_DOEPINT_Register;
      --  OTG device OUT endpoint 3 transfer size register
      OTG_DOEPTSIZ3           : aliased OTG_DOEPTSIZ_Register;
      --  OTG device OUT endpoint 3 DMA address register
      OTG_DOEPDMA3            : aliased HAL.UInt32;
      --  OTG device OUT endpoint 4 interrupt register
      OTG_DOEPINT4            : aliased OTG_DOEPINT_Register;
      --  OTG device OUT endpoint 4 transfer size register
      OTG_DOEPTSIZ4           : aliased OTG_DOEPTSIZ_Register;
      --  OTG device OUT endpoint 4 DMA address register
      OTG_DOEPDMA4            : aliased HAL.UInt32;
      --  OTG device OUT endpoint 5 interrupt register
      OTG_DOEPINT5            : aliased OTG_DOEPINT_Register;
      --  OTG device OUT endpoint 5 transfer size register
      OTG_DOEPTSIZ5           : aliased OTG_DOEPTSIZ_Register;
      --  OTG device OUT endpoint 5 DMA address register
      OTG_DOEPDMA5            : aliased HAL.UInt32;
      --  OTG device OUT endpoint 6 interrupt register
      OTG_DOEPINT6            : aliased OTG_DOEPINT_Register;
      --  OTG device OUT endpoint 6 transfer size register
      OTG_DOEPTSIZ6           : aliased OTG_DOEPTSIZ_Register;
      --  OTG device OUT endpoint 6 DMA address register
      OTG_DOEPDMA6            : aliased HAL.UInt32;
      --  OTG device OUT endpoint 7 interrupt register
      OTG_DOEPINT7            : aliased OTG_DOEPINT_Register;
      --  OTG device OUT endpoint 7 transfer size register
      OTG_DOEPTSIZ7           : aliased OTG_DOEPTSIZ_Register;
      --  OTG device OUT endpoint 7 DMA address register
      OTG_DOEPDMA7            : aliased HAL.UInt32;
      --  OTG device OUT endpoint 8 interrupt register
      OTG_DOEPINT8            : aliased OTG_DOEPINT_Register;
      --  OTG device OUT endpoint 8 transfer size register
      OTG_DOEPTSIZ8           : aliased OTG_DOEPTSIZ_Register;
      --  OTG device OUT endpoint 8 DMA address register
      OTG_DOEPDMA8            : aliased HAL.UInt32;
      --  OTG power and clock gating control register
      OTG_PCGCCTL             : aliased OTG_PCGCCTL_Register;
      --  OTG power and clock gating control register 1
      OTG_PCGCCTL1            : aliased OTG_PCGCCTL1_Register;
      case Discriminent is
         when Default =>
            --  OTG core interrupt register [alternate]
            OTG_GINTSTS : aliased OTG_GINTSTS_Register;
            --  OTG interrupt mask register [alternate]
            OTG_GINTMSK : aliased OTG_GINTMSK_Register;
            --  OTG receive status debug read register [alternate]
            OTG_GRXSTSR : aliased OTG_GRXSTSR_Register;
            --  OTG status read and pop registers
            OTG_GRXSTSP : aliased OTG_GRXSTSP_Register;
            --  OTG host non-periodic transmit FIFO size register [alternate]
            OTG_HNPTXFSIZ : aliased OTG_HNPTXFSIZ_Register;
            --  OTG device IN endpoint 0 control register [alternate]
            OTG_DIEPCTL0 : aliased OTG_DIEPCTL_Register;
            --  OTG device IN endpoint 1 control register [alternate]
            OTG_DIEPCTL1 : aliased OTG_DIEPCTL_Register;
            --  OTG device IN endpoint 2 control register [alternate]
            OTG_DIEPCTL2 : aliased OTG_DIEPCTL_Register;
            --  OTG device IN endpoint 3 control register [alternate]
            OTG_DIEPCTL3 : aliased OTG_DIEPCTL_Register;
            --  OTG device IN endpoint 4 control register [alternate]
            OTG_DIEPCTL4 : aliased OTG_DIEPCTL_Register;
            --  OTG device IN endpoint 5 control register [alternate]
            OTG_DIEPCTL5 : aliased OTG_DIEPCTL_Register;
            --  OTG device IN endpoint 6 control register [alternate]
            OTG_DIEPCTL6 : aliased OTG_DIEPCTL_Register;
            --  OTG device IN endpoint 7 control register [alternate]
            OTG_DIEPCTL7 : aliased OTG_DIEPCTL_Register;
            --  OTG device IN endpoint 8 control register [alternate]
            OTG_DIEPCTL8 : aliased OTG_DIEPCTL_Register;
            --  OTG device OUT endpoint 1 control register [alternate]
            OTG_DOEPCTL1 : aliased OTG_DOEPCTL_Register;
            --  OTG device OUT endpoint 2 control register [alternate]
            OTG_DOEPCTL2 : aliased OTG_DOEPCTL_Register;
            --  OTG device OUT endpoint 3 control register [alternate]
            OTG_DOEPCTL3 : aliased OTG_DOEPCTL_Register;
            --  OTG device OUT endpoint 4 control register [alternate]
            OTG_DOEPCTL4 : aliased OTG_DOEPCTL_Register;
            --  OTG device OUT endpoint 5 control register [alternate]
            OTG_DOEPCTL5 : aliased OTG_DOEPCTL_Register;
            --  OTG device OUT endpoint 6 control register [alternate]
            OTG_DOEPCTL6 : aliased OTG_DOEPCTL_Register;
            --  OTG device OUT endpoint 7 control register [alternate]
            OTG_DOEPCTL7 : aliased OTG_DOEPCTL_Register;
            --  OTG device OUT endpoint 8 control register [alternate]
            OTG_DOEPCTL8 : aliased OTG_DOEPCTL_Register;
         when Alternate =>
            --  OTG core interrupt register [alternate]
            OTG_GINTSTS_ALTERNATE : aliased OTG_GINTSTS_ALTERNATE_Register;
            --  OTG interrupt mask register [alternate]
            OTG_GINTMSK_ALTERNATE : aliased OTG_GINTMSK_ALTERNATE_Register;
            --  OTG receive status debug read register [alternate]
            OTG_GRXSTSR_ALTERNATE : aliased OTG_GRXSTSR_ALTERNATE_Register;
            --  OTG status read and pop registers
            OTG_GRXSTSP_ALTERNATE : aliased OTG_GRXSTSP_ALTERNATE_Register;
            --  OTG host non-periodic transmit FIFO size register [alternate]
            OTG_HNPTXFSIZ_ALTERNATE : aliased OTG_HNPTXFSIZ_ALTERNATE_Register;
            --  OTG device IN endpoint 0 control register [alternate]
            OTG_DIEPCTL0_ALTERNATE : aliased OTG_DIEPCTL0_ALTERNATE_Register;
            --  OTG device IN endpoint 1 control register [alternate]
            OTG_DIEPCTL1_ALTERNATE : aliased OTG_DIEPCTL1_ALTERNATE_Register;
            --  OTG device IN endpoint 2 control register [alternate]
            OTG_DIEPCTL2_ALTERNATE : aliased OTG_DIEPCTL2_ALTERNATE_Register;
            --  OTG device IN endpoint 3 control register [alternate]
            OTG_DIEPCTL3_ALTERNATE : aliased OTG_DIEPCTL3_ALTERNATE_Register;
            --  OTG device IN endpoint 4 control register [alternate]
            OTG_DIEPCTL4_ALTERNATE : aliased OTG_DIEPCTL4_ALTERNATE_Register;
            --  OTG device IN endpoint 5 control register [alternate]
            OTG_DIEPCTL5_ALTERNATE : aliased OTG_DIEPCTL5_ALTERNATE_Register;
            --  OTG device IN endpoint 6 control register [alternate]
            OTG_DIEPCTL6_ALTERNATE : aliased OTG_DIEPCTL6_ALTERNATE_Register;
            --  OTG device IN endpoint 7 control register [alternate]
            OTG_DIEPCTL7_ALTERNATE : aliased OTG_DIEPCTL7_ALTERNATE_Register;
            --  OTG device IN endpoint 8 control register [alternate]
            OTG_DIEPCTL8_ALTERNATE : aliased OTG_DIEPCTL8_ALTERNATE_Register;
            --  OTG device OUT endpoint 1 control register [alternate]
            OTG_DOEPCTL1_ALTERNATE : aliased OTG_DOEPCTL1_ALTERNATE_Register;
            --  OTG device OUT endpoint 2 control register [alternate]
            OTG_DOEPCTL2_ALTERNATE : aliased OTG_DOEPCTL2_ALTERNATE_Register;
            --  OTG device OUT endpoint 3 control register [alternate]
            OTG_DOEPCTL3_ALTERNATE : aliased OTG_DOEPCTL3_ALTERNATE_Register;
            --  OTG device OUT endpoint 4 control register [alternate]
            OTG_DOEPCTL4_ALTERNATE : aliased OTG_DOEPCTL4_ALTERNATE_Register;
            --  OTG device OUT endpoint 5 control register [alternate]
            OTG_DOEPCTL5_ALTERNATE : aliased OTG_DOEPCTL5_ALTERNATE_Register;
            --  OTG device OUT endpoint 6 control register [alternate]
            OTG_DOEPCTL6_ALTERNATE : aliased OTG_DOEPCTL6_ALTERNATE_Register;
            --  OTG device OUT endpoint 7 control register [alternate]
            OTG_DOEPCTL7_ALTERNATE : aliased OTG_DOEPCTL7_ALTERNATE_Register;
            --  OTG device OUT endpoint 8 control register [alternate]
            OTG_DOEPCTL8_ALTERNATE : aliased OTG_DOEPCTL8_ALTERNATE_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for OTG_Peripheral use record
      OTG_GOTGCTL             at 16#0# range 0 .. 31;
      OTG_GOTGINT             at 16#4# range 0 .. 31;
      OTG_GAHBCFG             at 16#8# range 0 .. 31;
      OTG_GUSBCFG             at 16#C# range 0 .. 31;
      OTG_GRSTCTL             at 16#10# range 0 .. 31;
      OTG_GRXFSIZ             at 16#24# range 0 .. 31;
      OTG_HNPTXSTS            at 16#2C# range 0 .. 31;
      OTG_GCCFG               at 16#38# range 0 .. 31;
      OTG_CID                 at 16#3C# range 0 .. 31;
      OTG_GLPMCFG             at 16#54# range 0 .. 31;
      OTG_HPTXFSIZ            at 16#100# range 0 .. 31;
      OTG_DIEPTXF1            at 16#104# range 0 .. 31;
      OTG_DIEPTXF2            at 16#108# range 0 .. 31;
      OTG_DIEPTXF3            at 16#10C# range 0 .. 31;
      OTG_DIEPTXF4            at 16#110# range 0 .. 31;
      OTG_DIEPTXF5            at 16#114# range 0 .. 31;
      OTG_DIEPTXF6            at 16#118# range 0 .. 31;
      OTG_DIEPTXF7            at 16#11C# range 0 .. 31;
      OTG_DIEPTXF8            at 16#120# range 0 .. 31;
      OTG_HCFG                at 16#400# range 0 .. 31;
      OTG_HFIR                at 16#404# range 0 .. 31;
      OTG_HFNUM               at 16#408# range 0 .. 31;
      OTG_HPTXSTS             at 16#410# range 0 .. 31;
      OTG_HAINT               at 16#414# range 0 .. 31;
      OTG_HAINTMSK            at 16#418# range 0 .. 31;
      OTG_HPRT                at 16#440# range 0 .. 31;
      OTG_HCCHAR0             at 16#500# range 0 .. 31;
      OTG_HCSPLT0             at 16#504# range 0 .. 31;
      OTG_HCINT0              at 16#508# range 0 .. 31;
      OTG_HCINTMSK0           at 16#50C# range 0 .. 31;
      OTG_HCTSIZ0             at 16#510# range 0 .. 31;
      OTG_HCDMA0              at 16#514# range 0 .. 31;
      OTG_HCCHAR1             at 16#520# range 0 .. 31;
      OTG_HCSPLT1             at 16#524# range 0 .. 31;
      OTG_HCINT1              at 16#528# range 0 .. 31;
      OTG_HCINTMSK1           at 16#52C# range 0 .. 31;
      OTG_HCTSIZ1             at 16#530# range 0 .. 31;
      OTG_HCDMA1              at 16#534# range 0 .. 31;
      OTG_HCCHAR2             at 16#540# range 0 .. 31;
      OTG_HCSPLT2             at 16#544# range 0 .. 31;
      OTG_HCINT2              at 16#548# range 0 .. 31;
      OTG_HCINTMSK2           at 16#54C# range 0 .. 31;
      OTG_HCTSIZ2             at 16#550# range 0 .. 31;
      OTG_HCDMA2              at 16#554# range 0 .. 31;
      OTG_HCCHAR3             at 16#560# range 0 .. 31;
      OTG_HCSPLT3             at 16#564# range 0 .. 31;
      OTG_HCINT3              at 16#568# range 0 .. 31;
      OTG_HCINTMSK3           at 16#56C# range 0 .. 31;
      OTG_HCTSIZ3             at 16#570# range 0 .. 31;
      OTG_HCDMA3              at 16#574# range 0 .. 31;
      OTG_HCCHAR4             at 16#580# range 0 .. 31;
      OTG_HCSPLT4             at 16#584# range 0 .. 31;
      OTG_HCINT4              at 16#588# range 0 .. 31;
      OTG_HCINTMSK4           at 16#58C# range 0 .. 31;
      OTG_HCTSIZ4             at 16#590# range 0 .. 31;
      OTG_HCDMA4              at 16#594# range 0 .. 31;
      OTG_HCCHAR5             at 16#5A0# range 0 .. 31;
      OTG_HCSPLT5             at 16#5A4# range 0 .. 31;
      OTG_HCINT5              at 16#5A8# range 0 .. 31;
      OTG_HCINTMSK5           at 16#5AC# range 0 .. 31;
      OTG_HCTSIZ5             at 16#5B0# range 0 .. 31;
      OTG_HCDMA5              at 16#5B4# range 0 .. 31;
      OTG_HCCHAR6             at 16#5C0# range 0 .. 31;
      OTG_HCSPLT6             at 16#5C4# range 0 .. 31;
      OTG_HCINT6              at 16#5C8# range 0 .. 31;
      OTG_HCINTMSK6           at 16#5CC# range 0 .. 31;
      OTG_HCTSIZ6             at 16#5D0# range 0 .. 31;
      OTG_HCDMA6              at 16#5D4# range 0 .. 31;
      OTG_HCCHAR7             at 16#5E0# range 0 .. 31;
      OTG_HCSPLT7             at 16#5E4# range 0 .. 31;
      OTG_HCINT7              at 16#5E8# range 0 .. 31;
      OTG_HCINTMSK7           at 16#5EC# range 0 .. 31;
      OTG_HCTSIZ7             at 16#5F0# range 0 .. 31;
      OTG_HCDMA7              at 16#5F4# range 0 .. 31;
      OTG_HCCHAR8             at 16#600# range 0 .. 31;
      OTG_HCSPLT8             at 16#604# range 0 .. 31;
      OTG_HCINT8              at 16#608# range 0 .. 31;
      OTG_HCINTMSK8           at 16#60C# range 0 .. 31;
      OTG_HCTSIZ8             at 16#610# range 0 .. 31;
      OTG_HCDMA8              at 16#614# range 0 .. 31;
      OTG_HCCHAR9             at 16#620# range 0 .. 31;
      OTG_HCSPLT9             at 16#624# range 0 .. 31;
      OTG_HCINT9              at 16#628# range 0 .. 31;
      OTG_HCINTMSK9           at 16#62C# range 0 .. 31;
      OTG_HCTSIZ9             at 16#630# range 0 .. 31;
      OTG_HCDMA9              at 16#634# range 0 .. 31;
      OTG_HCCHAR10            at 16#640# range 0 .. 31;
      OTG_HCSPLT10            at 16#644# range 0 .. 31;
      OTG_HCINT10             at 16#648# range 0 .. 31;
      OTG_HCINTMSK10          at 16#64C# range 0 .. 31;
      OTG_HCTSIZ10            at 16#650# range 0 .. 31;
      OTG_HCDMA10             at 16#654# range 0 .. 31;
      OTG_HCCHAR11            at 16#660# range 0 .. 31;
      OTG_HCSPLT11            at 16#664# range 0 .. 31;
      OTG_HCINT11             at 16#668# range 0 .. 31;
      OTG_HCINTMSK11          at 16#66C# range 0 .. 31;
      OTG_HCTSIZ11            at 16#670# range 0 .. 31;
      OTG_HCDMA11             at 16#674# range 0 .. 31;
      OTG_HCCHAR12            at 16#680# range 0 .. 31;
      OTG_HCSPLT12            at 16#684# range 0 .. 31;
      OTG_HCINT12             at 16#688# range 0 .. 31;
      OTG_HCINTMSK12          at 16#68C# range 0 .. 31;
      OTG_HCTSIZ12            at 16#690# range 0 .. 31;
      OTG_HCDMA12             at 16#694# range 0 .. 31;
      OTG_HCCHAR13            at 16#6A0# range 0 .. 31;
      OTG_HCSPLT13            at 16#6A4# range 0 .. 31;
      OTG_HCINT13             at 16#6A8# range 0 .. 31;
      OTG_HCINTMSK13          at 16#6AC# range 0 .. 31;
      OTG_HCTSIZ13            at 16#6B0# range 0 .. 31;
      OTG_HCDMA13             at 16#6B4# range 0 .. 31;
      OTG_HCCHAR14            at 16#6C0# range 0 .. 31;
      OTG_HCSPLT14            at 16#6C4# range 0 .. 31;
      OTG_HCINT14             at 16#6C8# range 0 .. 31;
      OTG_HCINTMSK14          at 16#6CC# range 0 .. 31;
      OTG_HCTSIZ14            at 16#6D0# range 0 .. 31;
      OTG_HCDMA14             at 16#6D4# range 0 .. 31;
      OTG_HCCHAR15            at 16#6E0# range 0 .. 31;
      OTG_HCSPLT15            at 16#6E4# range 0 .. 31;
      OTG_HCINT15             at 16#6E8# range 0 .. 31;
      OTG_HCINTMSK15          at 16#6EC# range 0 .. 31;
      OTG_HCTSIZ15            at 16#6F0# range 0 .. 31;
      OTG_HCDMA15             at 16#6F4# range 0 .. 31;
      OTG_DCFG                at 16#800# range 0 .. 31;
      OTG_DCTL                at 16#804# range 0 .. 31;
      OTG_DSTS                at 16#808# range 0 .. 31;
      OTG_DIEPMSK             at 16#810# range 0 .. 31;
      OTG_DOEPMSK             at 16#814# range 0 .. 31;
      OTG_DAINT               at 16#818# range 0 .. 31;
      OTG_DAINTMSK            at 16#81C# range 0 .. 31;
      OTG_DTHRCTL             at 16#830# range 0 .. 31;
      OTG_DIEPEMPMSK          at 16#834# range 0 .. 31;
      OTG_DIEPINT0            at 16#908# range 0 .. 31;
      OTG_DIEPTSIZ0           at 16#910# range 0 .. 31;
      OTG_DIEPDMA0            at 16#914# range 0 .. 31;
      OTG_DTXFSTS0            at 16#918# range 0 .. 31;
      OTG_DIEPINT1            at 16#928# range 0 .. 31;
      OTG_DIEPTSIZ1           at 16#930# range 0 .. 31;
      OTG_DIEPDMA1            at 16#934# range 0 .. 31;
      OTG_DTXFSTS1            at 16#938# range 0 .. 31;
      OTG_DIEPINT2            at 16#948# range 0 .. 31;
      OTG_DIEPTSIZ2           at 16#950# range 0 .. 31;
      OTG_DIEPDMA2            at 16#954# range 0 .. 31;
      OTG_DTXFSTS2            at 16#958# range 0 .. 31;
      OTG_DIEPINT3            at 16#968# range 0 .. 31;
      OTG_DIEPTSIZ3           at 16#970# range 0 .. 31;
      OTG_DIEPDMA3            at 16#974# range 0 .. 31;
      OTG_DTXFSTS3            at 16#978# range 0 .. 31;
      OTG_DIEPINT4            at 16#988# range 0 .. 31;
      OTG_DIEPTSIZ4           at 16#990# range 0 .. 31;
      OTG_DIEPDMA4            at 16#994# range 0 .. 31;
      OTG_DTXFSTS4            at 16#998# range 0 .. 31;
      OTG_DIEPINT5            at 16#9A8# range 0 .. 31;
      OTG_DIEPTSIZ5           at 16#9B0# range 0 .. 31;
      OTG_DIEPDMA5            at 16#9B4# range 0 .. 31;
      OTG_DTXFSTS5            at 16#9B8# range 0 .. 31;
      OTG_DIEPINT6            at 16#9C8# range 0 .. 31;
      OTG_DIEPTSIZ6           at 16#9D0# range 0 .. 31;
      OTG_DIEPDMA6            at 16#9D4# range 0 .. 31;
      OTG_DTXFSTS6            at 16#9D8# range 0 .. 31;
      OTG_DIEPINT7            at 16#9E8# range 0 .. 31;
      OTG_DIEPTSIZ7           at 16#9F0# range 0 .. 31;
      OTG_DIEPDMA7            at 16#9F4# range 0 .. 31;
      OTG_DTXFSTS7            at 16#9F8# range 0 .. 31;
      OTG_DIEPINT8            at 16#A08# range 0 .. 31;
      OTG_DIEPTSIZ8           at 16#A10# range 0 .. 31;
      OTG_DIEPDMA8            at 16#A14# range 0 .. 31;
      OTG_DTXFSTS8            at 16#A18# range 0 .. 31;
      OTG_DOEPCTL0            at 16#B00# range 0 .. 31;
      OTG_DOEPINT0            at 16#B08# range 0 .. 31;
      OTG_DOEPTSIZ0           at 16#B10# range 0 .. 31;
      OTG_DOEPDMA0            at 16#B14# range 0 .. 31;
      OTG_DOEPINT1            at 16#B28# range 0 .. 31;
      OTG_DOEPTSIZ1           at 16#B30# range 0 .. 31;
      OTG_DOEPDMA1            at 16#B34# range 0 .. 31;
      OTG_DOEPINT2            at 16#B48# range 0 .. 31;
      OTG_DOEPTSIZ2           at 16#B50# range 0 .. 31;
      OTG_DOEPDMA2            at 16#B54# range 0 .. 31;
      OTG_DOEPINT3            at 16#B68# range 0 .. 31;
      OTG_DOEPTSIZ3           at 16#B70# range 0 .. 31;
      OTG_DOEPDMA3            at 16#B74# range 0 .. 31;
      OTG_DOEPINT4            at 16#B88# range 0 .. 31;
      OTG_DOEPTSIZ4           at 16#B90# range 0 .. 31;
      OTG_DOEPDMA4            at 16#B94# range 0 .. 31;
      OTG_DOEPINT5            at 16#BA8# range 0 .. 31;
      OTG_DOEPTSIZ5           at 16#BB0# range 0 .. 31;
      OTG_DOEPDMA5            at 16#BB4# range 0 .. 31;
      OTG_DOEPINT6            at 16#BC8# range 0 .. 31;
      OTG_DOEPTSIZ6           at 16#BD0# range 0 .. 31;
      OTG_DOEPDMA6            at 16#BD4# range 0 .. 31;
      OTG_DOEPINT7            at 16#BE8# range 0 .. 31;
      OTG_DOEPTSIZ7           at 16#BF0# range 0 .. 31;
      OTG_DOEPDMA7            at 16#BF4# range 0 .. 31;
      OTG_DOEPINT8            at 16#C08# range 0 .. 31;
      OTG_DOEPTSIZ8           at 16#C10# range 0 .. 31;
      OTG_DOEPDMA8            at 16#C14# range 0 .. 31;
      OTG_PCGCCTL             at 16#E00# range 0 .. 31;
      OTG_PCGCCTL1            at 16#E04# range 0 .. 31;
      OTG_GINTSTS             at 16#14# range 0 .. 31;
      OTG_GINTMSK             at 16#18# range 0 .. 31;
      OTG_GRXSTSR             at 16#1C# range 0 .. 31;
      OTG_GRXSTSP             at 16#20# range 0 .. 31;
      OTG_HNPTXFSIZ           at 16#28# range 0 .. 31;
      OTG_DIEPCTL0            at 16#900# range 0 .. 31;
      OTG_DIEPCTL1            at 16#920# range 0 .. 31;
      OTG_DIEPCTL2            at 16#940# range 0 .. 31;
      OTG_DIEPCTL3            at 16#960# range 0 .. 31;
      OTG_DIEPCTL4            at 16#980# range 0 .. 31;
      OTG_DIEPCTL5            at 16#9A0# range 0 .. 31;
      OTG_DIEPCTL6            at 16#9C0# range 0 .. 31;
      OTG_DIEPCTL7            at 16#9E0# range 0 .. 31;
      OTG_DIEPCTL8            at 16#A00# range 0 .. 31;
      OTG_DOEPCTL1            at 16#B20# range 0 .. 31;
      OTG_DOEPCTL2            at 16#B40# range 0 .. 31;
      OTG_DOEPCTL3            at 16#B60# range 0 .. 31;
      OTG_DOEPCTL4            at 16#B80# range 0 .. 31;
      OTG_DOEPCTL5            at 16#BA0# range 0 .. 31;
      OTG_DOEPCTL6            at 16#BC0# range 0 .. 31;
      OTG_DOEPCTL7            at 16#BE0# range 0 .. 31;
      OTG_DOEPCTL8            at 16#C00# range 0 .. 31;
      OTG_GINTSTS_ALTERNATE   at 16#14# range 0 .. 31;
      OTG_GINTMSK_ALTERNATE   at 16#18# range 0 .. 31;
      OTG_GRXSTSR_ALTERNATE   at 16#1C# range 0 .. 31;
      OTG_GRXSTSP_ALTERNATE   at 16#20# range 0 .. 31;
      OTG_HNPTXFSIZ_ALTERNATE at 16#28# range 0 .. 31;
      OTG_DIEPCTL0_ALTERNATE  at 16#900# range 0 .. 31;
      OTG_DIEPCTL1_ALTERNATE  at 16#920# range 0 .. 31;
      OTG_DIEPCTL2_ALTERNATE  at 16#940# range 0 .. 31;
      OTG_DIEPCTL3_ALTERNATE  at 16#960# range 0 .. 31;
      OTG_DIEPCTL4_ALTERNATE  at 16#980# range 0 .. 31;
      OTG_DIEPCTL5_ALTERNATE  at 16#9A0# range 0 .. 31;
      OTG_DIEPCTL6_ALTERNATE  at 16#9C0# range 0 .. 31;
      OTG_DIEPCTL7_ALTERNATE  at 16#9E0# range 0 .. 31;
      OTG_DIEPCTL8_ALTERNATE  at 16#A00# range 0 .. 31;
      OTG_DOEPCTL1_ALTERNATE  at 16#B20# range 0 .. 31;
      OTG_DOEPCTL2_ALTERNATE  at 16#B40# range 0 .. 31;
      OTG_DOEPCTL3_ALTERNATE  at 16#B60# range 0 .. 31;
      OTG_DOEPCTL4_ALTERNATE  at 16#B80# range 0 .. 31;
      OTG_DOEPCTL5_ALTERNATE  at 16#BA0# range 0 .. 31;
      OTG_DOEPCTL6_ALTERNATE  at 16#BC0# range 0 .. 31;
      OTG_DOEPCTL7_ALTERNATE  at 16#BE0# range 0 .. 31;
      OTG_DOEPCTL8_ALTERNATE  at 16#C00# range 0 .. 31;
   end record;

   --  USB on-the-go high-speed
   OTG1_Periph : aliased OTG_Peripheral
     with Import, Address => OTG1_Base;

   --  USB on-the-go high-speed
   OTG1_S_Periph : aliased OTG_Peripheral
     with Import, Address => OTG1_S_Base;

   --  USB on-the-go high-speed
   OTG2_Periph : aliased OTG_Peripheral
     with Import, Address => OTG2_Base;

   --  USB on-the-go high-speed
   OTG2_S_Periph : aliased OTG_Peripheral
     with Import, Address => OTG2_S_Base;

end STM32_SVD.OTG;
