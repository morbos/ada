--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.PKA is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype PKA_CR_MODE_Field is Interfaces.Bit_Types.UInt6;

   --  PKA control register
   type PKA_CR_Register is record
      --  PKA enable When an illegal operation is selected while EN = 1, OPERRF
      --  bit is set in PKA_SR. See PKA_CR.MODE bit field for details. Note:
      --  When EN = 0, PKA RAM can still be accessed by the application.
      EN             : Boolean := False;
      --  start the operation Writing 1 to this bit starts the operation which
      --  is selected by MODE[5:0], using the operands and data already written
      --  to the PKA RAM. This bit is always read as 0. When an illegal
      --  operation is selected while START bit is set no operation is started,
      --  and OPERRF bit is set in PKA_SR. Note: START is ignored if PKA is
      --  busy.
      START          : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  PKA operation code When an operation not listed here is written by
      --  the application with EN bit set, OPERRF bit is set in PKA_SR
      --  register, and the write to MODE bit field is ignored. When PKA is
      --  configured in limited mode (LMF = 1 in PKA_SR), writing a MODE
      --  different from 0x26 with EN bit to 1 triggers OPERRF bit to be set
      --  and write to MODE bit is ignored.
      MODE           : PKA_CR_MODE_Field := 16#0#;
      --  unspecified
      Reserved_14_16 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  End of operation interrupt enable
      PROCENDIE      : Boolean := False;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  RAM error interrupt enable
      RAMERRIE       : Boolean := False;
      --  Address error interrupt enable
      ADDRERRIE      : Boolean := False;
      --  Operation error interrupt enable
      OPERRIE        : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PKA_CR_Register use record
      EN             at 0 range 0 .. 0;
      START          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      MODE           at 0 range 8 .. 13;
      Reserved_14_16 at 0 range 14 .. 16;
      PROCENDIE      at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      RAMERRIE       at 0 range 19 .. 19;
      ADDRERRIE      at 0 range 20 .. 20;
      OPERRIE        at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  PKA status register
   type PKA_SR_Register is record
      --  Read-only. PKA initialization OK This bit is asserted when PKA
      --  initialization is complete. When RNG is not able to output proper
      --  random numbers INITOK stays at 0.
      INITOK         : Boolean;
      --  Read-only. Limited mode flag This bit is updated when EN bit in
      --  PKA_CR is set
      LMF            : Boolean;
      --  unspecified
      Reserved_2_15  : Interfaces.Bit_Types.UInt14;
      --  Read-only. Busy flag This bit is set whenever a PKA operation is in
      --  progress (START = 1 in PKA_CR). It is automatically cleared when the
      --  computation is complete, making PKA RAM accessible again. If PKA is
      --  started with a wrong opcode, it stays busy for a couple of cycles,
      --  then it aborts automatically the operation and goes back to ready
      --  (BUSY = 0).
      BUSY           : Boolean;
      --  Read-only. PKA end of operation flag
      PROCENDF       : Boolean;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit;
      --  Read-only. PKA RAM error flag This bit is cleared using RAMERRFC bit
      --  in PKA_CLRFR.
      RAMERRF        : Boolean;
      --  Read-only. Address error flag This bit is cleared using ADDRERRFC bit
      --  in PKA_CLRFR.
      ADDRERRF       : Boolean;
      --  Read-only. Operation error flag This bit is cleared using OPERRFC bit
      --  in PKA_CLRFR.
      OPERRF         : Boolean;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PKA_SR_Register use record
      INITOK         at 0 range 0 .. 0;
      LMF            at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      BUSY           at 0 range 16 .. 16;
      PROCENDF       at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      RAMERRF        at 0 range 19 .. 19;
      ADDRERRF       at 0 range 20 .. 20;
      OPERRF         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  PKA clear flag register
   type PKA_CLRFR_Register is record
      --  unspecified
      Reserved_0_16  : Interfaces.Bit_Types.UInt17 := 16#0#;
      --  Write-only. Clear PKA end of operation flag
      PROCENDFC      : Boolean := False;
      --  unspecified
      Reserved_18_18 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Clear PKA RAM error flag
      RAMERRFC       : Boolean := False;
      --  Write-only. Clear address error flag
      ADDRERRFC      : Boolean := False;
      --  Write-only. Clear operation error flag
      OPERRFC        : Boolean := False;
      --  unspecified
      Reserved_22_31 : Interfaces.Bit_Types.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PKA_CLRFR_Register use record
      Reserved_0_16  at 0 range 0 .. 16;
      PROCENDFC      at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      RAMERRFC       at 0 range 19 .. 19;
      ADDRERRFC      at 0 range 20 .. 20;
      OPERRFC        at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  PKA_HWCFGR_CFG array element
   subtype PKA_HWCFGR_CFG_Element is Interfaces.Bit_Types.UInt4;

   --  PKA_HWCFGR_CFG array
   type PKA_HWCFGR_CFG_Field_Array is array (1 .. 2)
     of PKA_HWCFGR_CFG_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for PKA_HWCFGR_CFG
   type PKA_HWCFGR_CFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  CFG as an array
            Arr : PKA_HWCFGR_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PKA_HWCFGR_CFG_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PKA hardware configuration register
   type PKA_HWCFGR_Register is record
      --  Read-only. HW Generic 2 This field returns the PKA64_SEL generic
      --  value (0x1)
      CFG           : PKA_HWCFGR_CFG_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PKA_HWCFGR_Register use record
      CFG           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PKA_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype PKA_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  PKA version register
   type PKA_VERR_Register is record
      --  Read-only. Minor revision This field returns the PKA minor version.
      MINREV        : PKA_VERR_MINREV_Field;
      --  Read-only. Major revision This field returns the PKA major version.
      MAJREV        : PKA_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PKA_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PKA register blank and RAM
   type PKA_Peripheral is record
      --  PKA control register
      PKA_CR     : aliased PKA_CR_Register;
      --  PKA status register
      PKA_SR     : aliased PKA_SR_Register;
      --  PKA clear flag register
      PKA_CLRFR  : aliased PKA_CLRFR_Register;
      --  PKA hardware configuration register
      PKA_HWCFGR : aliased PKA_HWCFGR_Register;
      --  PKA version register
      PKA_VERR   : aliased PKA_VERR_Register;
      --  PKA identification register
      PKA_IPIDR  : aliased Interfaces.Bit_Types.UInt32;
      --  PKA size identification register
      PKA_SIDR   : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for PKA_Peripheral use record
      PKA_CR     at 16#0# range 0 .. 31;
      PKA_SR     at 16#4# range 0 .. 31;
      PKA_CLRFR  at 16#8# range 0 .. 31;
      PKA_HWCFGR at 16#1FF0# range 0 .. 31;
      PKA_VERR   at 16#1FF4# range 0 .. 31;
      PKA_IPIDR  at 16#1FF8# range 0 .. 31;
      PKA_SIDR   at 16#1FFC# range 0 .. 31;
   end record;

   --  PKA register blank and RAM
   PKA_Periph : aliased PKA_Peripheral
     with Import, Address => PKA_Base;

   --  PKA register blank and RAM
   PKA_S_Periph : aliased PKA_Peripheral
     with Import, Address => PKA_S_Base;

end Interfaces.STM32.PKA;
