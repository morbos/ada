--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.UCPD is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype UCPD_CFGR1_HBITCLKDIV_Field is Interfaces.Bit_Types.UInt6;
   subtype UCPD_CFGR1_IFRGAP_Field is Interfaces.Bit_Types.UInt5;
   subtype UCPD_CFGR1_TRANSWIN_Field is Interfaces.Bit_Types.UInt5;
   subtype UCPD_CFGR1_PSC_USBPDCLK_Field is Interfaces.Bit_Types.UInt3;
   subtype UCPD_CFGR1_RXORDSETEN_Field is Interfaces.Bit_Types.UInt9;

   --  UCPD configuration register 1
   type UCPD_CFGR1_Register is record
      --  Division ratio for producing half-bit clock
      HBITCLKDIV     : UCPD_CFGR1_HBITCLKDIV_Field := 16#0#;
      --  Division ratio for producing inter-frame gap timer clock
      IFRGAP         : UCPD_CFGR1_IFRGAP_Field := 16#0#;
      --  Transition window duration
      TRANSWIN       : UCPD_CFGR1_TRANSWIN_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Pre-scaler division ratio for generating ucpd_clk
      PSC_USBPDCLK   : UCPD_CFGR1_PSC_USBPDCLK_Field := 16#0#;
      --  Receiver ordered set enable
      RXORDSETEN     : UCPD_CFGR1_RXORDSETEN_Field := 16#0#;
      --  Transmission DMA mode enable
      TXDMAEN        : Boolean := False;
      --  Reception DMA mode enable
      RXDMAEN        : Boolean := False;
      --  UCPD peripheral enable
      UCPDEN         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_CFGR1_Register use record
      HBITCLKDIV     at 0 range 0 .. 5;
      IFRGAP         at 0 range 6 .. 10;
      TRANSWIN       at 0 range 11 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      PSC_USBPDCLK   at 0 range 17 .. 19;
      RXORDSETEN     at 0 range 20 .. 28;
      TXDMAEN        at 0 range 29 .. 29;
      RXDMAEN        at 0 range 30 .. 30;
      UCPDEN         at 0 range 31 .. 31;
   end record;

   --  UCPD configuration register 2
   type UCPD_CFGR2_Register is record
      --  BMC decoder Rx pre-filter enable
      RXFILTDIS     : Boolean := False;
      --  BMC decoder Rx pre-filter sampling method
      RXFILT2N3     : Boolean := False;
      --  Force ClkReq clock request
      FORCECLK      : Boolean := False;
      --  Wakeup from Stop mode enable
      WUPEN         : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_CFGR2_Register use record
      RXFILTDIS     at 0 range 0 .. 0;
      RXFILT2N3     at 0 range 1 .. 1;
      FORCECLK      at 0 range 2 .. 2;
      WUPEN         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype UCPD_CR_TXMODE_Field is Interfaces.Bit_Types.UInt2;
   subtype UCPD_CR_ANASUBMODE_Field is Interfaces.Bit_Types.UInt2;
   subtype UCPD_CR_CCENABLE_Field is Interfaces.Bit_Types.UInt2;

   --  UCPD control register
   type UCPD_CR_Register is record
      --  Type of Tx packet
      TXMODE         : UCPD_CR_TXMODE_Field := 16#0#;
      --  Command to send a Tx packet
      TXSEND         : Boolean := False;
      --  Command to send a Tx Hard Reset
      TXHRST         : Boolean := False;
      --  Receiver mode
      RXMODE         : Boolean := False;
      --  USB Power Delivery receiver enable
      PHYRXEN        : Boolean := False;
      --  CC1/CC2 line selector for USB Power Delivery signaling
      PHYCCSEL       : Boolean := False;
      --  Analog PHY sub-mode
      ANASUBMODE     : UCPD_CR_ANASUBMODE_Field := 16#0#;
      --  Analog PHY operating mode
      ANAMODE        : Boolean := False;
      --  CC line enable
      CCENABLE       : UCPD_CR_CCENABLE_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  FRS event detection enable
      FRSRXEN        : Boolean := False;
      --  FRS Tx signaling enable.
      FRSTX          : Boolean := False;
      --  Rdch condition drive
      RDCH           : Boolean := False;
      --  unspecified
      Reserved_19_19 : Interfaces.Bit_Types.Bit := 16#0#;
      --  CC1 Type-C detector disable
      CC1TCDIS       : Boolean := False;
      --  CC2 Type-C detector disable
      CC2TCDIS       : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_CR_Register use record
      TXMODE         at 0 range 0 .. 1;
      TXSEND         at 0 range 2 .. 2;
      TXHRST         at 0 range 3 .. 3;
      RXMODE         at 0 range 4 .. 4;
      PHYRXEN        at 0 range 5 .. 5;
      PHYCCSEL       at 0 range 6 .. 6;
      ANASUBMODE     at 0 range 7 .. 8;
      ANAMODE        at 0 range 9 .. 9;
      CCENABLE       at 0 range 10 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FRSRXEN        at 0 range 16 .. 16;
      FRSTX          at 0 range 17 .. 17;
      RDCH           at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CC1TCDIS       at 0 range 20 .. 20;
      CC2TCDIS       at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  UCPD interrupt mask register
   type UCPD_IMR_Register is record
      --  TXIS interrupt enable
      TXISIE         : Boolean := False;
      --  TXMSGDISC interrupt enable
      TXMSGDISCIE    : Boolean := False;
      --  TXMSGSENT interrupt enable
      TXMSGSENTIE    : Boolean := False;
      --  TXMSGABT interrupt enable
      TXMSGABTIE     : Boolean := False;
      --  HRSTDISC interrupt enable
      HRSTDISCIE     : Boolean := False;
      --  HRSTSENT interrupt enable
      HRSTSENTIE     : Boolean := False;
      --  TXUND interrupt enable
      TXUNDIE        : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  RXNE interrupt enable
      RXNEIE         : Boolean := False;
      --  RXORDDET interrupt enable
      RXORDDETIE     : Boolean := False;
      --  RXHRSTDET interrupt enable
      RXHRSTDETIE    : Boolean := False;
      --  RXOVR interrupt enable
      RXOVRIE        : Boolean := False;
      --  RXMSGEND interrupt enable
      RXMSGENDIE     : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  TYPECEVT1 interrupt enable
      TYPECEVT1IE    : Boolean := False;
      --  TYPECEVT2 interrupt enable
      TYPECEVT2IE    : Boolean := False;
      --  unspecified
      Reserved_16_19 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Read-only. FRSEVT interrupt enable
      FRSEVTIE       : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_IMR_Register use record
      TXISIE         at 0 range 0 .. 0;
      TXMSGDISCIE    at 0 range 1 .. 1;
      TXMSGSENTIE    at 0 range 2 .. 2;
      TXMSGABTIE     at 0 range 3 .. 3;
      HRSTDISCIE     at 0 range 4 .. 4;
      HRSTSENTIE     at 0 range 5 .. 5;
      TXUNDIE        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RXNEIE         at 0 range 8 .. 8;
      RXORDDETIE     at 0 range 9 .. 9;
      RXHRSTDETIE    at 0 range 10 .. 10;
      RXOVRIE        at 0 range 11 .. 11;
      RXMSGENDIE     at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TYPECEVT1IE    at 0 range 14 .. 14;
      TYPECEVT2IE    at 0 range 15 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      FRSEVTIE       at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  UCPD_SR_TYPECEVT array
   type UCPD_SR_TYPECEVT_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for UCPD_SR_TYPECEVT
   type UCPD_SR_TYPECEVT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TYPECEVT as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  TYPECEVT as an array
            Arr : UCPD_SR_TYPECEVT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for UCPD_SR_TYPECEVT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  UCPD_SR_TYPEC_VSTATE_CC array element
   subtype UCPD_SR_TYPEC_VSTATE_CC_Element is Interfaces.Bit_Types.UInt2;

   --  UCPD_SR_TYPEC_VSTATE_CC array
   type UCPD_SR_TYPEC_VSTATE_CC_Field_Array is array (1 .. 2)
     of UCPD_SR_TYPEC_VSTATE_CC_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for UCPD_SR_TYPEC_VSTATE_CC
   type UCPD_SR_TYPEC_VSTATE_CC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TYPEC_VSTATE_CC as a value
            Val : Interfaces.Bit_Types.UInt4;
         when True =>
            --  TYPEC_VSTATE_CC as an array
            Arr : UCPD_SR_TYPEC_VSTATE_CC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for UCPD_SR_TYPEC_VSTATE_CC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  UCPD status register
   type UCPD_SR_Register is record
      --  Read-only. Transmit interrupt status
      TXIS            : Boolean;
      --  Read-only. Message transmission discarded
      TXMSGDISC       : Boolean;
      --  Read-only. Message transmission completed
      TXMSGSENT       : Boolean;
      --  Read-only. Transmit message abort
      TXMSGABT        : Boolean;
      --  Read-only. Hard Reset discarded
      HRSTDISC        : Boolean;
      --  Read-only. Hard Reset message sent
      HRSTSENT        : Boolean;
      --  Read-only. Tx data underrun detection
      TXUND           : Boolean;
      --  unspecified
      Reserved_7_7    : Interfaces.Bit_Types.Bit;
      --  Read-only. Receive data register not empty detection
      RXNE            : Boolean;
      --  Read-only. Rx ordered set (4 K-codes) detection
      RXORDDET        : Boolean;
      --  Read-only. Rx Hard Reset receipt detection
      RXHRSTDET       : Boolean;
      --  Read-only. Rx data overflow detection
      RXOVR           : Boolean;
      --  Read-only. Rx message received
      RXMSGEND        : Boolean;
      --  Read-only. Receive message error
      RXERR           : Boolean;
      --  Read-only. Type-C voltage level event on CC1 line
      TYPECEVT        : UCPD_SR_TYPECEVT_Field;
      --  Read-only. The status bitfield indicates the voltage level on the CC1
      --  line in its steady state.
      TYPEC_VSTATE_CC : UCPD_SR_TYPEC_VSTATE_CC_Field;
      --  Read-only. FRS detection event
      FRSEVT          : Boolean;
      --  unspecified
      Reserved_21_31  : Interfaces.Bit_Types.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_SR_Register use record
      TXIS            at 0 range 0 .. 0;
      TXMSGDISC       at 0 range 1 .. 1;
      TXMSGSENT       at 0 range 2 .. 2;
      TXMSGABT        at 0 range 3 .. 3;
      HRSTDISC        at 0 range 4 .. 4;
      HRSTSENT        at 0 range 5 .. 5;
      TXUND           at 0 range 6 .. 6;
      Reserved_7_7    at 0 range 7 .. 7;
      RXNE            at 0 range 8 .. 8;
      RXORDDET        at 0 range 9 .. 9;
      RXHRSTDET       at 0 range 10 .. 10;
      RXOVR           at 0 range 11 .. 11;
      RXMSGEND        at 0 range 12 .. 12;
      RXERR           at 0 range 13 .. 13;
      TYPECEVT        at 0 range 14 .. 15;
      TYPEC_VSTATE_CC at 0 range 16 .. 19;
      FRSEVT          at 0 range 20 .. 20;
      Reserved_21_31  at 0 range 21 .. 31;
   end record;

   --  UCPD interrupt clear register
   type UCPD_ICR_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Tx message discard flag (TXMSGDISC) clear
      TXMSGDISCCF    : Boolean := False;
      --  Write-only. Tx message send flag (TXMSGSENT) clear
      TXMSGSENTCF    : Boolean := False;
      --  Write-only. Tx message abort flag (TXMSGABT) clear
      TXMSGABTCF     : Boolean := False;
      --  Write-only. Hard reset discard flag (HRSTDISC) clear
      HRSTDISCCF     : Boolean := False;
      --  Write-only. Hard reset send flag (HRSTSENT) clear
      HRSTSENTCF     : Boolean := False;
      --  Write-only. Tx underflow flag (TXUND) clear
      TXUNDCF        : Boolean := False;
      --  unspecified
      Reserved_7_8   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Rx ordered set detect flag (RXORDDET) clear
      RXORDDETCF     : Boolean := False;
      --  Write-only. Rx Hard Reset detect flag (RXHRSTDET) clear
      RXHRSTDETCF    : Boolean := False;
      --  Write-only. Rx overflow flag (RXOVR) clear
      RXOVRCF        : Boolean := False;
      --  Write-only. Rx message received flag (RXMSGEND) clear
      RXMSGENDCF     : Boolean := False;
      --  unspecified
      Reserved_13_13 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Type-C CC1 event flag (TYPECEVT1) clear
      TYPECEVT1CF    : Boolean := False;
      --  Write-only. Type-C CC2 line event flag (TYPECEVT2) clear
      TYPECEVT2CF    : Boolean := False;
      --  unspecified
      Reserved_16_19 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Write-only. FRS event flag (FRSEVT) clear
      FRSEVTCF       : Boolean := False;
      --  unspecified
      Reserved_21_31 : Interfaces.Bit_Types.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_ICR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      TXMSGDISCCF    at 0 range 1 .. 1;
      TXMSGSENTCF    at 0 range 2 .. 2;
      TXMSGABTCF     at 0 range 3 .. 3;
      HRSTDISCCF     at 0 range 4 .. 4;
      HRSTSENTCF     at 0 range 5 .. 5;
      TXUNDCF        at 0 range 6 .. 6;
      Reserved_7_8   at 0 range 7 .. 8;
      RXORDDETCF     at 0 range 9 .. 9;
      RXHRSTDETCF    at 0 range 10 .. 10;
      RXOVRCF        at 0 range 11 .. 11;
      RXMSGENDCF     at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      TYPECEVT1CF    at 0 range 14 .. 14;
      TYPECEVT2CF    at 0 range 15 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      FRSEVTCF       at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype UCPD_TX_ORDSETR_TXORDSET_Field is Interfaces.Bit_Types.UInt20;

   --  UCPD Tx ordered set type register
   type UCPD_TX_ORDSETR_Register is record
      --  Ordered set to transmit
      TXORDSET       : UCPD_TX_ORDSETR_TXORDSET_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_TX_ORDSETR_Register use record
      TXORDSET       at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype UCPD_TX_PAYSZR_TXPAYSZ_Field is Interfaces.Bit_Types.UInt10;

   --  UCPD Tx payload size register
   type UCPD_TX_PAYSZR_Register is record
      --  Payload size yet to transmit
      TXPAYSZ        : UCPD_TX_PAYSZR_TXPAYSZ_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_TX_PAYSZR_Register use record
      TXPAYSZ        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype UCPD_TXDR_TXDATA_Field is Interfaces.Bit_Types.Byte;

   --  UCPD Tx data register
   type UCPD_TXDR_Register is record
      --  Data byte to transmit
      TXDATA        : UCPD_TXDR_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_TXDR_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UCPD_RX_ORDSETR_RXORDSET_Field is Interfaces.Bit_Types.UInt3;
   subtype UCPD_RX_ORDSETR_RXSOPKINVALID_Field is Interfaces.Bit_Types.UInt3;

   --  UCPD Rx ordered set register
   type UCPD_RX_ORDSETR_Register is record
      --  Read-only. Rx ordered set code detected
      RXORDSET      : UCPD_RX_ORDSETR_RXORDSET_Field;
      --  Read-only. The bit indicates the number of correct K-codes. For debug
      --  purposes only.
      RXSOP3OF4     : Boolean;
      --  Read-only. The bitfield is for debug purposes only.
      RXSOPKINVALID : UCPD_RX_ORDSETR_RXSOPKINVALID_Field;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_RX_ORDSETR_Register use record
      RXORDSET      at 0 range 0 .. 2;
      RXSOP3OF4     at 0 range 3 .. 3;
      RXSOPKINVALID at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype UCPD_RX_PAYSZR_RXPAYSZ_Field is Interfaces.Bit_Types.UInt10;

   --  UCPD Rx payload size register
   type UCPD_RX_PAYSZR_Register is record
      --  Read-only. Rx payload size received
      RXPAYSZ        : UCPD_RX_PAYSZR_RXPAYSZ_Field;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_RX_PAYSZR_Register use record
      RXPAYSZ        at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype UCPD_RXDR_RXDATA_Field is Interfaces.Bit_Types.Byte;

   --  UCPD receive data register
   type UCPD_RXDR_Register is record
      --  Read-only. Data byte received
      RXDATA        : UCPD_RXDR_RXDATA_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_RXDR_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UCPD_RX_ORDEXTR1_RXSOPX1_Field is Interfaces.Bit_Types.UInt20;

   --  UCPD Rx ordered set extension register 1
   type UCPD_RX_ORDEXTR1_Register is record
      --  Ordered set 1 received
      RXSOPX1        : UCPD_RX_ORDEXTR1_RXSOPX1_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_RX_ORDEXTR1_Register use record
      RXSOPX1        at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype UCPD_RX_ORDEXTR2_RXSOPX2_Field is Interfaces.Bit_Types.UInt20;

   --  UCPD Rx ordered set extension register 2
   type UCPD_RX_ORDEXTR2_Register is record
      --  Ordered set 2 received
      RXSOPX2        : UCPD_RX_ORDEXTR2_RXSOPX2_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.Bit_Types.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UCPD_RX_ORDEXTR2_Register use record
      RXSOPX2        at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USB Type-C/USB Power Delivery interface
   type UCPD_Peripheral is record
      --  UCPD configuration register 1
      UCPD_CFGR1       : aliased UCPD_CFGR1_Register;
      --  UCPD configuration register 2
      UCPD_CFGR2       : aliased UCPD_CFGR2_Register;
      --  UCPD control register
      UCPD_CR          : aliased UCPD_CR_Register;
      --  UCPD interrupt mask register
      UCPD_IMR         : aliased UCPD_IMR_Register;
      --  UCPD status register
      UCPD_SR          : aliased UCPD_SR_Register;
      --  UCPD interrupt clear register
      UCPD_ICR         : aliased UCPD_ICR_Register;
      --  UCPD Tx ordered set type register
      UCPD_TX_ORDSETR  : aliased UCPD_TX_ORDSETR_Register;
      --  UCPD Tx payload size register
      UCPD_TX_PAYSZR   : aliased UCPD_TX_PAYSZR_Register;
      --  UCPD Tx data register
      UCPD_TXDR        : aliased UCPD_TXDR_Register;
      --  UCPD Rx ordered set register
      UCPD_RX_ORDSETR  : aliased UCPD_RX_ORDSETR_Register;
      --  UCPD Rx payload size register
      UCPD_RX_PAYSZR   : aliased UCPD_RX_PAYSZR_Register;
      --  UCPD receive data register
      UCPD_RXDR        : aliased UCPD_RXDR_Register;
      --  UCPD Rx ordered set extension register 1
      UCPD_RX_ORDEXTR1 : aliased UCPD_RX_ORDEXTR1_Register;
      --  UCPD Rx ordered set extension register 2
      UCPD_RX_ORDEXTR2 : aliased UCPD_RX_ORDEXTR2_Register;
   end record
     with Volatile;

   for UCPD_Peripheral use record
      UCPD_CFGR1       at 16#0# range 0 .. 31;
      UCPD_CFGR2       at 16#4# range 0 .. 31;
      UCPD_CR          at 16#C# range 0 .. 31;
      UCPD_IMR         at 16#10# range 0 .. 31;
      UCPD_SR          at 16#14# range 0 .. 31;
      UCPD_ICR         at 16#18# range 0 .. 31;
      UCPD_TX_ORDSETR  at 16#1C# range 0 .. 31;
      UCPD_TX_PAYSZR   at 16#20# range 0 .. 31;
      UCPD_TXDR        at 16#24# range 0 .. 31;
      UCPD_RX_ORDSETR  at 16#28# range 0 .. 31;
      UCPD_RX_PAYSZR   at 16#2C# range 0 .. 31;
      UCPD_RXDR        at 16#30# range 0 .. 31;
      UCPD_RX_ORDEXTR1 at 16#34# range 0 .. 31;
      UCPD_RX_ORDEXTR2 at 16#38# range 0 .. 31;
   end record;

   --  USB Type-C/USB Power Delivery interface
   UCPD_Periph : aliased UCPD_Peripheral
     with Import, Address => UCPD_Base;

   --  USB Type-C/USB Power Delivery interface
   UCPD_S_Periph : aliased UCPD_Peripheral
     with Import, Address => UCPD_S_Base;

end Interfaces.STM32.UCPD;
