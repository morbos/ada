--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.IPCC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  IPCC processor 1 control register
   type IPCC_C1CR_Register is record
      --  Processor 1 receive channel occupied interrupt enable Associated with
      --  IPCC_C2TOC1SR.
      RXOIE          : Boolean := False;
      --  Processor 1 receive channel occupied secure interrupt enable.
      --  Associated with IPCC_C2TOC1SR This bit can only be accessed with a
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value.
      SECRXOIE       : Boolean := False;
      --  unspecified
      Reserved_2_15  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Processor 1 transmit channel free non-secure interrupt enable
      --  Associated with IPCC_C1TOC2SR.
      TXFIE          : Boolean := False;
      --  Processor 1 transmit channel free secure interrupt enable. Associated
      --  with IPCC_C1TOC2SR. This bit can only be accessed with a secure
      --  access. Non-secure write to this bit is discarded, non-secure read
      --  returns 0 value.
      SECTXFIE       : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C1CR_Register use record
      RXOIE          at 0 range 0 .. 0;
      SECRXOIE       at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      TXFIE          at 0 range 16 .. 16;
      SECTXFIE       at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  IPCC processor 1 mask register
   type IPCC_C1MR_Register is record
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH1OM  : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH2OM  : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH3OM  : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH4OM  : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH5OM  : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH6OM  : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH7OM  : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH8OM  : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH9OM  : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH10OM : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH11OM : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH12OM : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH13OM : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH14OM : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH15OM : Boolean := True;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH16OM : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH1FM  : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH2FM  : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH3FM  : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH4FM  : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH5FM  : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH6FM  : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH7FM  : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH8FM  : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH9FM  : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH10FM : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH11FM : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH12FM : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH13FM : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH14FM : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH15FM : Boolean := True;
      --  Processor 1 transmit channel n status set, (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH16FM : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C1MR_Register use record
      CH1OM  at 0 range 0 .. 0;
      CH2OM  at 0 range 1 .. 1;
      CH3OM  at 0 range 2 .. 2;
      CH4OM  at 0 range 3 .. 3;
      CH5OM  at 0 range 4 .. 4;
      CH6OM  at 0 range 5 .. 5;
      CH7OM  at 0 range 6 .. 6;
      CH8OM  at 0 range 7 .. 7;
      CH9OM  at 0 range 8 .. 8;
      CH10OM at 0 range 9 .. 9;
      CH11OM at 0 range 10 .. 10;
      CH12OM at 0 range 11 .. 11;
      CH13OM at 0 range 12 .. 12;
      CH14OM at 0 range 13 .. 13;
      CH15OM at 0 range 14 .. 14;
      CH16OM at 0 range 15 .. 15;
      CH1FM  at 0 range 16 .. 16;
      CH2FM  at 0 range 17 .. 17;
      CH3FM  at 0 range 18 .. 18;
      CH4FM  at 0 range 19 .. 19;
      CH5FM  at 0 range 20 .. 20;
      CH6FM  at 0 range 21 .. 21;
      CH7FM  at 0 range 22 .. 22;
      CH8FM  at 0 range 23 .. 23;
      CH9FM  at 0 range 24 .. 24;
      CH10FM at 0 range 25 .. 25;
      CH11FM at 0 range 26 .. 26;
      CH12FM at 0 range 27 .. 27;
      CH13FM at 0 range 28 .. 28;
      CH14FM at 0 range 29 .. 29;
      CH15FM at 0 range 30 .. 30;
      CH16FM at 0 range 31 .. 31;
   end record;

   --  IPCC processor 1 status set clear register
   type IPCC_C1SCR_Register is record
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH1C  : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH2C  : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH3C  : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH4C  : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH5C  : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH6C  : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH7C  : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH8C  : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH9C  : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH10C : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH11C : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH12C : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH13C : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH14C : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH15C : Boolean := False;
      --  Processor 1 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH16C : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH1S  : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH2S  : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH3S  : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH4S  : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH5S  : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH6S  : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH7S  : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH8S  : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH9S  : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH10S : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH11S : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH12S : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH13S : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH14S : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH15S : Boolean := False;
      --  Processor 1 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 1 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 1
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 1 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 1 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH16S : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C1SCR_Register use record
      CH1C  at 0 range 0 .. 0;
      CH2C  at 0 range 1 .. 1;
      CH3C  at 0 range 2 .. 2;
      CH4C  at 0 range 3 .. 3;
      CH5C  at 0 range 4 .. 4;
      CH6C  at 0 range 5 .. 5;
      CH7C  at 0 range 6 .. 6;
      CH8C  at 0 range 7 .. 7;
      CH9C  at 0 range 8 .. 8;
      CH10C at 0 range 9 .. 9;
      CH11C at 0 range 10 .. 10;
      CH12C at 0 range 11 .. 11;
      CH13C at 0 range 12 .. 12;
      CH14C at 0 range 13 .. 13;
      CH15C at 0 range 14 .. 14;
      CH16C at 0 range 15 .. 15;
      CH1S  at 0 range 16 .. 16;
      CH2S  at 0 range 17 .. 17;
      CH3S  at 0 range 18 .. 18;
      CH4S  at 0 range 19 .. 19;
      CH5S  at 0 range 20 .. 20;
      CH6S  at 0 range 21 .. 21;
      CH7S  at 0 range 22 .. 22;
      CH8S  at 0 range 23 .. 23;
      CH9S  at 0 range 24 .. 24;
      CH10S at 0 range 25 .. 25;
      CH11S at 0 range 26 .. 26;
      CH12S at 0 range 27 .. 27;
      CH13S at 0 range 28 .. 28;
      CH14S at 0 range 29 .. 29;
      CH15S at 0 range 30 .. 30;
      CH16S at 0 range 31 .. 31;
   end record;

   --  IPCC processor 1 to processor 2 status register
   type IPCC_C1TOC2SR_Register is record
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH1F           : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH2F           : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH3F           : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH4F           : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH5F           : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH6F           : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH7F           : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH8F           : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH9F           : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH10F          : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH11F          : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH12F          : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH13F          : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH14F          : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH15F          : Boolean;
      --  Read-only. Processor 1 transmit to processor 2 receive channel n
      --  status flag before masking (n=16 to 1). When channel is non-secure in
      --  C2SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  2, when unmasked and global non-secure enabled for processor 2. When
      --  channel is secure in C2SECCFGR, generates a secure RX occupied
      --  interrupt to processor 2, when unmasked and global secure enabled for
      --  processor 2. When channel is non-secure in C1SECCFGR, generates a
      --  non-secure TX free interrupt to processor 1, when unmasked and global
      --  non-secure enabled for processor 1. When channel is secure in
      --  C1SECCFGR, generates a secure TX free interrupt to processor 1, when
      --  unmasked and global secure enabled for processor 1.
      CH16F          : Boolean;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C1TOC2SR_Register use record
      CH1F           at 0 range 0 .. 0;
      CH2F           at 0 range 1 .. 1;
      CH3F           at 0 range 2 .. 2;
      CH4F           at 0 range 3 .. 3;
      CH5F           at 0 range 4 .. 4;
      CH6F           at 0 range 5 .. 5;
      CH7F           at 0 range 6 .. 6;
      CH8F           at 0 range 7 .. 7;
      CH9F           at 0 range 8 .. 8;
      CH10F          at 0 range 9 .. 9;
      CH11F          at 0 range 10 .. 10;
      CH12F          at 0 range 11 .. 11;
      CH13F          at 0 range 12 .. 12;
      CH14F          at 0 range 13 .. 13;
      CH15F          at 0 range 14 .. 14;
      CH16F          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  IPCC processor 2 control register
   type IPCC_C2CR_Register is record
      --  Processor 2 receive channel occupied interrupt enable Associated with
      --  IPCC_C1TOC2SR.
      RXOIE          : Boolean := False;
      --  Processor 2 secure Receive channel occupied interrupt enable.
      --  Associated with IPCC_C1TOC2SR. This bit can only be accessed with a
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value.
      SECRXOIE       : Boolean := False;
      --  unspecified
      Reserved_2_15  : Interfaces.Bit_Types.UInt14 := 16#0#;
      --  Processor 2 transmit channel free interrupt enable Associated with
      --  IPCC_C2TOC1SR.
      TXFIE          : Boolean := False;
      --  Processor 2 secure transmit channel free interrupt enable. Associated
      --  with IPCC_C2TOC1SR. This bit can only be accessed with a secure
      --  access. Non-secure write to this bit is discarded, non-secure read
      --  returns 0 value.
      SECTXFIE       : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C2CR_Register use record
      RXOIE          at 0 range 0 .. 0;
      SECRXOIE       at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      TXFIE          at 0 range 16 .. 16;
      SECTXFIE       at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  IPCC processor 2 mask register
   type IPCC_C2MR_Register is record
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH1OM  : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH2OM  : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH3OM  : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH4OM  : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH5OM  : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH6OM  : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH7OM  : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH8OM  : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH9OM  : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH10OM : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH11OM : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH12OM : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH13OM : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH14OM : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH15OM : Boolean := True;
      --  Processor 2 receive channel n occupied interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH16OM : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH1FM  : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH2FM  : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH3FM  : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH4FM  : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH5FM  : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH6FM  : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH7FM  : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH8FM  : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH9FM  : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH10FM : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH11FM : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH12FM : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH13FM : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH14FM : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH15FM : Boolean := True;
      --  Processor 2 transmit channel n free interrupt mask (n = 16 to 1).
      --  Associated with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is
      --  disabled, bit n can be accessed with secure and non-secure access.
      --  When processor 2 CHnSEC is enabled, bit n can only be accessed with
      --  secure access. Non-secure write to this bit is discarded, non-secure
      --  read returns 0 value. When processor 2 CHnPRIV is disabled, bit n can
      --  be accessed with privilege and unprivileged access. When processor 2
      --  CHnPRIV is enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH16FM : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C2MR_Register use record
      CH1OM  at 0 range 0 .. 0;
      CH2OM  at 0 range 1 .. 1;
      CH3OM  at 0 range 2 .. 2;
      CH4OM  at 0 range 3 .. 3;
      CH5OM  at 0 range 4 .. 4;
      CH6OM  at 0 range 5 .. 5;
      CH7OM  at 0 range 6 .. 6;
      CH8OM  at 0 range 7 .. 7;
      CH9OM  at 0 range 8 .. 8;
      CH10OM at 0 range 9 .. 9;
      CH11OM at 0 range 10 .. 10;
      CH12OM at 0 range 11 .. 11;
      CH13OM at 0 range 12 .. 12;
      CH14OM at 0 range 13 .. 13;
      CH15OM at 0 range 14 .. 14;
      CH16OM at 0 range 15 .. 15;
      CH1FM  at 0 range 16 .. 16;
      CH2FM  at 0 range 17 .. 17;
      CH3FM  at 0 range 18 .. 18;
      CH4FM  at 0 range 19 .. 19;
      CH5FM  at 0 range 20 .. 20;
      CH6FM  at 0 range 21 .. 21;
      CH7FM  at 0 range 22 .. 22;
      CH8FM  at 0 range 23 .. 23;
      CH9FM  at 0 range 24 .. 24;
      CH10FM at 0 range 25 .. 25;
      CH11FM at 0 range 26 .. 26;
      CH12FM at 0 range 27 .. 27;
      CH13FM at 0 range 28 .. 28;
      CH14FM at 0 range 29 .. 29;
      CH15FM at 0 range 30 .. 30;
      CH16FM at 0 range 31 .. 31;
   end record;

   --  IPCC processor 2 status set clear register
   type IPCC_C2SCR_Register is record
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH1C  : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH2C  : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH3C  : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH4C  : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH5C  : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH6C  : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH7C  : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH8C  : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH9C  : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH10C : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH11C : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH12C : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH13C : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH14C : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH15C : Boolean := False;
      --  Processor 2 receive channel n status clear (n = 16 to 1). Associated
      --  with IPCC_C1TOC2SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH16C : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH1S  : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH2S  : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH3S  : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH4S  : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH5S  : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH6S  : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH7S  : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH8S  : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH9S  : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH10S : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH11S : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH12S : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH13S : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH14S : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH15S : Boolean := False;
      --  Processor 2 transmit channel n status set (n = 16 to 1). Associated
      --  with IPCC_C2TOC1SR.CHnF When processor 2 CHnSEC is disabled, bit n
      --  can be accessed with secure and non-secure access. When processor 2
      --  CHnSEC is enabled, bit n can only be accessed with secure access.
      --  Non-secure write to this bit is discarded, non-secure read returns 0
      --  value. When processor 2 CHnPRIV is disabled, bit n can be accessed
      --  with privilege and unprivileged access. When processor 2 CHnPRIV is
      --  enabled, bit n can only be accessed with privilege access.
      --  Unprivileged write to this bit is discarded, unprivileged read
      --  returns 0 value.
      CH16S : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C2SCR_Register use record
      CH1C  at 0 range 0 .. 0;
      CH2C  at 0 range 1 .. 1;
      CH3C  at 0 range 2 .. 2;
      CH4C  at 0 range 3 .. 3;
      CH5C  at 0 range 4 .. 4;
      CH6C  at 0 range 5 .. 5;
      CH7C  at 0 range 6 .. 6;
      CH8C  at 0 range 7 .. 7;
      CH9C  at 0 range 8 .. 8;
      CH10C at 0 range 9 .. 9;
      CH11C at 0 range 10 .. 10;
      CH12C at 0 range 11 .. 11;
      CH13C at 0 range 12 .. 12;
      CH14C at 0 range 13 .. 13;
      CH15C at 0 range 14 .. 14;
      CH16C at 0 range 15 .. 15;
      CH1S  at 0 range 16 .. 16;
      CH2S  at 0 range 17 .. 17;
      CH3S  at 0 range 18 .. 18;
      CH4S  at 0 range 19 .. 19;
      CH5S  at 0 range 20 .. 20;
      CH6S  at 0 range 21 .. 21;
      CH7S  at 0 range 22 .. 22;
      CH8S  at 0 range 23 .. 23;
      CH9S  at 0 range 24 .. 24;
      CH10S at 0 range 25 .. 25;
      CH11S at 0 range 26 .. 26;
      CH12S at 0 range 27 .. 27;
      CH13S at 0 range 28 .. 28;
      CH14S at 0 range 29 .. 29;
      CH15S at 0 range 30 .. 30;
      CH16S at 0 range 31 .. 31;
   end record;

   --  IPCC processor 2 to processor 1 status register
   type IPCC_C2TOC1SR_Register is record
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH1F           : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH2F           : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH3F           : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH4F           : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH5F           : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH6F           : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH7F           : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH8F           : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH9F           : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH10F          : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH11F          : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH12F          : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH13F          : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH14F          : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH15F          : Boolean;
      --  Read-only. Processor 2 transmit to processor 1 receive channel n
      --  status flag before masking (n=16 to 1) When channel is non-secure in
      --  C1SECCFGR, generates a non-secure RX occupied interrupt to processor
      --  1, when unmasked and global non-secure enabled for processor 1. When
      --  channel is secure in C1SECCFGR, generates a secure RX occupied
      --  interrupt to processor 1, when unmasked and global secure enabled for
      --  processor 1. When channel is non-secure in C2SECCFGR, generates a
      --  non-secure TX free interrupt to processor 2, when unmasked and global
      --  non-secure enabled for processor 2. When channel is secure in
      --  C2SECCFGR, generates a secure TX free interrupt to processor 2, when
      --  unmasked and global secure enabled for processor 2.
      CH16F          : Boolean;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C2TOC1SR_Register use record
      CH1F           at 0 range 0 .. 0;
      CH2F           at 0 range 1 .. 1;
      CH3F           at 0 range 2 .. 2;
      CH4F           at 0 range 3 .. 3;
      CH5F           at 0 range 4 .. 4;
      CH6F           at 0 range 5 .. 5;
      CH7F           at 0 range 6 .. 6;
      CH8F           at 0 range 7 .. 7;
      CH9F           at 0 range 8 .. 8;
      CH10F          at 0 range 9 .. 9;
      CH11F          at 0 range 10 .. 10;
      CH12F          at 0 range 11 .. 11;
      CH13F          at 0 range 12 .. 12;
      CH14F          at 0 range 13 .. 13;
      CH15F          at 0 range 14 .. 14;
      CH16F          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  IPCC processor 1 security configuration register
   type IPCC_C1SECCFGR_Register is record
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH1SEC         : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH2SEC         : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH3SEC         : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH4SEC         : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH5SEC         : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH6SEC         : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH7SEC         : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH8SEC         : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH9SEC         : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH10SEC        : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH11SEC        : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH12SEC        : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH13SEC        : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH14SEC        : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH15SEC        : Boolean := False;
      --  Processor 1 channel n security enable (n = 16 to 1).
      CH16SEC        : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C1SECCFGR_Register use record
      CH1SEC         at 0 range 0 .. 0;
      CH2SEC         at 0 range 1 .. 1;
      CH3SEC         at 0 range 2 .. 2;
      CH4SEC         at 0 range 3 .. 3;
      CH5SEC         at 0 range 4 .. 4;
      CH6SEC         at 0 range 5 .. 5;
      CH7SEC         at 0 range 6 .. 6;
      CH8SEC         at 0 range 7 .. 7;
      CH9SEC         at 0 range 8 .. 8;
      CH10SEC        at 0 range 9 .. 9;
      CH11SEC        at 0 range 10 .. 10;
      CH12SEC        at 0 range 11 .. 11;
      CH13SEC        at 0 range 12 .. 12;
      CH14SEC        at 0 range 13 .. 13;
      CH15SEC        at 0 range 14 .. 14;
      CH16SEC        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  IPCC processor 1 privilege configuration register
   type IPCC_C1PRIVCFGR_Register is record
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH1PRIV        : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH2PRIV        : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH3PRIV        : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH4PRIV        : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH5PRIV        : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH6PRIV        : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH7PRIV        : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH8PRIV        : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH9PRIV        : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH10PRIV       : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH11PRIV       : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH12PRIV       : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH13PRIV       : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH14PRIV       : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH15PRIV       : Boolean := False;
      --  Processor 1 channel n privilege enable (n = 16 to 1). When processor
      --  1 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 1 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH16PRIV       : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C1PRIVCFGR_Register use record
      CH1PRIV        at 0 range 0 .. 0;
      CH2PRIV        at 0 range 1 .. 1;
      CH3PRIV        at 0 range 2 .. 2;
      CH4PRIV        at 0 range 3 .. 3;
      CH5PRIV        at 0 range 4 .. 4;
      CH6PRIV        at 0 range 5 .. 5;
      CH7PRIV        at 0 range 6 .. 6;
      CH8PRIV        at 0 range 7 .. 7;
      CH9PRIV        at 0 range 8 .. 8;
      CH10PRIV       at 0 range 9 .. 9;
      CH11PRIV       at 0 range 10 .. 10;
      CH12PRIV       at 0 range 11 .. 11;
      CH13PRIV       at 0 range 12 .. 12;
      CH14PRIV       at 0 range 13 .. 13;
      CH15PRIV       at 0 range 14 .. 14;
      CH16PRIV       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IPCC_C1CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt4;

   --  IPCC processor 1 CID configuration register
   type IPCC_C1CIDCFGR_Register is record
      --  CID filtering enabled for processor 1
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Processor 1 CID domain identification Processor 1 CID domain
      --  identification number: - 0x0: Processor CID 0 -... - 0x7: Processor
      --  CID 7 - Others: Reserved If CFEN = 1 these bits are used for
      --  processor 1 CID filtering and interrupt routing. If CFEN = 0 these
      --  bits are ignored and there is no processor 1 CID filtering nor
      --  interrupt routing.
      CID           : IPCC_C1CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C1CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  IPCC processor 2 security configuration register
   type IPCC_C2SECCFGR_Register is record
      --  Processor 2 channel n security enable
      CH1SEC         : Boolean := False;
      --  Processor 2 channel n security enable
      CH2SEC         : Boolean := False;
      --  Processor 2 channel n security enable
      CH3SEC         : Boolean := False;
      --  Processor 2 channel n security enable
      CH4SEC         : Boolean := False;
      --  Processor 2 channel n security enable
      CH5SEC         : Boolean := False;
      --  Processor 2 channel n security enable
      CH6SEC         : Boolean := False;
      --  Processor 2 channel n security enable
      CH7SEC         : Boolean := False;
      --  Processor 2 channel n security enable
      CH8SEC         : Boolean := False;
      --  Processor 2 channel n security enable
      CH9SEC         : Boolean := False;
      --  Processor 2 channel n security enable
      CH10SEC        : Boolean := False;
      --  Processor 2 channel n security enable
      CH11SEC        : Boolean := False;
      --  Processor 2 channel n security enable
      CH12SEC        : Boolean := False;
      --  Processor 2 channel n security enable
      CH13SEC        : Boolean := False;
      --  Processor 2 channel n security enable
      CH14SEC        : Boolean := False;
      --  Processor 2 channel n security enable
      CH15SEC        : Boolean := False;
      --  Processor 2 channel n security enable
      CH16SEC        : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C2SECCFGR_Register use record
      CH1SEC         at 0 range 0 .. 0;
      CH2SEC         at 0 range 1 .. 1;
      CH3SEC         at 0 range 2 .. 2;
      CH4SEC         at 0 range 3 .. 3;
      CH5SEC         at 0 range 4 .. 4;
      CH6SEC         at 0 range 5 .. 5;
      CH7SEC         at 0 range 6 .. 6;
      CH8SEC         at 0 range 7 .. 7;
      CH9SEC         at 0 range 8 .. 8;
      CH10SEC        at 0 range 9 .. 9;
      CH11SEC        at 0 range 10 .. 10;
      CH12SEC        at 0 range 11 .. 11;
      CH13SEC        at 0 range 12 .. 12;
      CH14SEC        at 0 range 13 .. 13;
      CH15SEC        at 0 range 14 .. 14;
      CH16SEC        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  IPCC processor 2 privilege configuration register
   type IPCC_C2PRIVCFGR_Register is record
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH1PRIV        : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH2PRIV        : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH3PRIV        : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH4PRIV        : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH5PRIV        : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH6PRIV        : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH7PRIV        : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH8PRIV        : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH9PRIV        : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH10PRIV       : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH11PRIV       : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH12PRIV       : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH13PRIV       : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH14PRIV       : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH15PRIV       : Boolean := False;
      --  Processor 2 channel n privilege enable (n = 16 to 1). When processor
      --  2 CHnSEC is disabled, bit n can be accessed with secure and
      --  non-secure access. When processor 2 CHnSEC is enabled, bit n can only
      --  be accessed with secure access. Non-secure write to this bit is
      --  discarded.
      CH16PRIV       : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C2PRIVCFGR_Register use record
      CH1PRIV        at 0 range 0 .. 0;
      CH2PRIV        at 0 range 1 .. 1;
      CH3PRIV        at 0 range 2 .. 2;
      CH4PRIV        at 0 range 3 .. 3;
      CH5PRIV        at 0 range 4 .. 4;
      CH6PRIV        at 0 range 5 .. 5;
      CH7PRIV        at 0 range 6 .. 6;
      CH8PRIV        at 0 range 7 .. 7;
      CH9PRIV        at 0 range 8 .. 8;
      CH10PRIV       at 0 range 9 .. 9;
      CH11PRIV       at 0 range 10 .. 10;
      CH12PRIV       at 0 range 11 .. 11;
      CH13PRIV       at 0 range 12 .. 12;
      CH14PRIV       at 0 range 13 .. 13;
      CH15PRIV       at 0 range 14 .. 14;
      CH16PRIV       at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IPCC_C2CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt4;

   --  IPCC processor 2 CID configuration register
   type IPCC_C2CIDCFGR_Register is record
      --  CID filtering enabled for processor 2
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Processor 2 CID domain identification Processor 2 CID domain
      --  identification number. - 0x0: Processor CID 0 -... - 0x7: Processor
      --  CID 7 - Others: Reserved If CFEN = 1 these bits are used for
      --  processor 2 CID filtering and interrupt routing. If CFEN = 0 these
      --  bits are ignored and there is no processor 2 CID filtering nor
      --  interrupt routing.
      CID           : IPCC_C2CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_C2CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IPCC_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype IPCC_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  IPCC version register
   type IPCC_VERR_Register is record
      --  Read-only. IPCC minor revision number.
      MINREV        : IPCC_VERR_MINREV_Field;
      --  Read-only. IPCC major revision number
      MAJREV        : IPCC_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IPCC_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  IPCC address block description
   type IPCC_Peripheral is record
      --  IPCC processor 1 control register
      IPCC_C1CR       : aliased IPCC_C1CR_Register;
      --  IPCC processor 1 mask register
      IPCC_C1MR       : aliased IPCC_C1MR_Register;
      --  IPCC processor 1 status set clear register
      IPCC_C1SCR      : aliased IPCC_C1SCR_Register;
      --  IPCC processor 1 to processor 2 status register
      IPCC_C1TOC2SR   : aliased IPCC_C1TOC2SR_Register;
      --  IPCC processor 2 control register
      IPCC_C2CR       : aliased IPCC_C2CR_Register;
      --  IPCC processor 2 mask register
      IPCC_C2MR       : aliased IPCC_C2MR_Register;
      --  IPCC processor 2 status set clear register
      IPCC_C2SCR      : aliased IPCC_C2SCR_Register;
      --  IPCC processor 2 to processor 1 status register
      IPCC_C2TOC1SR   : aliased IPCC_C2TOC1SR_Register;
      --  IPCC processor 1 security configuration register
      IPCC_C1SECCFGR  : aliased IPCC_C1SECCFGR_Register;
      --  IPCC processor 1 privilege configuration register
      IPCC_C1PRIVCFGR : aliased IPCC_C1PRIVCFGR_Register;
      --  IPCC processor 1 CID configuration register
      IPCC_C1CIDCFGR  : aliased IPCC_C1CIDCFGR_Register;
      --  IPCC processor 2 security configuration register
      IPCC_C2SECCFGR  : aliased IPCC_C2SECCFGR_Register;
      --  IPCC processor 2 privilege configuration register
      IPCC_C2PRIVCFGR : aliased IPCC_C2PRIVCFGR_Register;
      --  IPCC processor 2 CID configuration register
      IPCC_C2CIDCFGR  : aliased IPCC_C2CIDCFGR_Register;
      --  IPCC version register
      IPCC_VERR       : aliased IPCC_VERR_Register;
      --  IPCC identification register
      IPCC_IPIDR      : aliased Interfaces.Bit_Types.UInt32;
      --  IPCC size identification register
      IPCC_SIDR       : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for IPCC_Peripheral use record
      IPCC_C1CR       at 16#0# range 0 .. 31;
      IPCC_C1MR       at 16#4# range 0 .. 31;
      IPCC_C1SCR      at 16#8# range 0 .. 31;
      IPCC_C1TOC2SR   at 16#C# range 0 .. 31;
      IPCC_C2CR       at 16#10# range 0 .. 31;
      IPCC_C2MR       at 16#14# range 0 .. 31;
      IPCC_C2SCR      at 16#18# range 0 .. 31;
      IPCC_C2TOC1SR   at 16#1C# range 0 .. 31;
      IPCC_C1SECCFGR  at 16#80# range 0 .. 31;
      IPCC_C1PRIVCFGR at 16#84# range 0 .. 31;
      IPCC_C1CIDCFGR  at 16#88# range 0 .. 31;
      IPCC_C2SECCFGR  at 16#90# range 0 .. 31;
      IPCC_C2PRIVCFGR at 16#94# range 0 .. 31;
      IPCC_C2CIDCFGR  at 16#98# range 0 .. 31;
      IPCC_VERR       at 16#3F4# range 0 .. 31;
      IPCC_IPIDR      at 16#3F8# range 0 .. 31;
      IPCC_SIDR       at 16#3FC# range 0 .. 31;
   end record;

   --  IPCC address block description
   IPCC_Periph : aliased IPCC_Peripheral
     with Import, Address => IPCC_Base;

   --  IPCC address block description
   IPCC1_S_Periph : aliased IPCC_Peripheral
     with Import, Address => IPCC1_S_Base;

   --  IPCC address block description
   IPCC2_Periph : aliased IPCC_Peripheral
     with Import, Address => IPCC2_Base;

   --  IPCC address block description
   IPCC2_S_Periph : aliased IPCC_Peripheral
     with Import, Address => IPCC2_S_Base;

end Interfaces.STM32.IPCC;
