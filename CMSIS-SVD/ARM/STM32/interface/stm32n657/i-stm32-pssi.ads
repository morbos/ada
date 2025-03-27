--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32N657.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.PSSI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype PSSI_CR_EDM_Field is Interfaces.Bit_Types.UInt2;
   subtype PSSI_CR_DERDYCFG_Field is Interfaces.Bit_Types.UInt3;

   --  PSSI control register
   type PSSI_CR_Register is record
      --  unspecified
      Reserved_0_4   : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Parallel data clock polarity
      CKPOL          : Boolean := False;
      --  Data enable (PSSI_DE) polarity
      DEPOL          : Boolean := False;
      --  unspecified
      Reserved_7_7   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Ready (PSSI_RDY) polarity
      RDYPOL         : Boolean := False;
      --  unspecified
      Reserved_9_9   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Extended data mode
      EDM            : PSSI_CR_EDM_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  PSSI enable
      ENABLE         : Boolean := False;
      --  unspecified
      Reserved_15_17 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Data enable and ready configuration
      DERDYCFG       : PSSI_CR_DERDYCFG_Field := 16#0#;
      --  unspecified
      Reserved_21_28 : Interfaces.Bit_Types.Byte := 16#0#;
      --  Clock source
      CKSRC          : Boolean := False;
      --  DMA enable bit
      DMAEN          : Boolean := True;
      --  Data direction selection bit
      OUTEN          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSSI_CR_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      CKPOL          at 0 range 5 .. 5;
      DEPOL          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RDYPOL         at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      EDM            at 0 range 10 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      ENABLE         at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      DERDYCFG       at 0 range 18 .. 20;
      Reserved_21_28 at 0 range 21 .. 28;
      CKSRC          at 0 range 29 .. 29;
      DMAEN          at 0 range 30 .. 30;
      OUTEN          at 0 range 31 .. 31;
   end record;

   --  PSSI status register
   type PSSI_SR_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.Bit_Types.UInt2;
      --  Read-only. FIFO is ready to transfer four bytes
      RTT4B         : Boolean;
      --  Read-only. FIFO is ready to transfer one byte
      RTT1B         : Boolean;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSSI_SR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      RTT4B         at 0 range 2 .. 2;
      RTT1B         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PSSI raw interrupt status register
   type PSSI_RIS_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit;
      --  Read-only. Data buffer overrun/underrun raw interrupt status
      OVR_RIS       : Boolean;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSSI_RIS_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      OVR_RIS       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PSSI interrupt enable register
   type PSSI_IER_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Data buffer overrun/underrun interrupt enable
      OVR_IE        : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSSI_IER_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      OVR_IE        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PSSI masked interrupt status register
   type PSSI_MIS_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit;
      --  Read-only. Data buffer overrun/underrun masked interrupt status
      OVR_MIS       : Boolean;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSSI_MIS_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      OVR_MIS       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PSSI interrupt clear register
   type PSSI_ICR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Data buffer overrun/underrun interrupt status clear
      OVR_ISC       : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSSI_ICR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      OVR_ISC       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PSSI_DR_BYTE array element
   subtype PSSI_DR_BYTE_Element is Interfaces.Bit_Types.Byte;

   --  PSSI_DR_BYTE array
   type PSSI_DR_BYTE_Field_Array is array (0 .. 3) of PSSI_DR_BYTE_Element
     with Component_Size => 8, Size => 32;

   --  PSSI data register
   type PSSI_DR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BYTE as a value
            Val : Interfaces.Bit_Types.UInt32;
         when True =>
            --  BYTE as an array
            Arr : PSSI_DR_BYTE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSSI_DR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Parallel synchronous slave interface
   type PSSI_Peripheral is record
      --  PSSI control register
      PSSI_CR  : aliased PSSI_CR_Register;
      --  PSSI status register
      PSSI_SR  : aliased PSSI_SR_Register;
      --  PSSI raw interrupt status register
      PSSI_RIS : aliased PSSI_RIS_Register;
      --  PSSI interrupt enable register
      PSSI_IER : aliased PSSI_IER_Register;
      --  PSSI masked interrupt status register
      PSSI_MIS : aliased PSSI_MIS_Register;
      --  PSSI interrupt clear register
      PSSI_ICR : aliased PSSI_ICR_Register;
      --  PSSI data register
      PSSI_DR  : aliased PSSI_DR_Register;
   end record
     with Volatile;

   for PSSI_Peripheral use record
      PSSI_CR  at 16#0# range 0 .. 31;
      PSSI_SR  at 16#4# range 0 .. 31;
      PSSI_RIS at 16#8# range 0 .. 31;
      PSSI_IER at 16#C# range 0 .. 31;
      PSSI_MIS at 16#10# range 0 .. 31;
      PSSI_ICR at 16#14# range 0 .. 31;
      PSSI_DR  at 16#28# range 0 .. 31;
   end record;

   --  Parallel synchronous slave interface
   PSSI_Periph : aliased PSSI_Peripheral
     with Import, Address => PSSI_Base;

   --  Parallel synchronous slave interface
   PSSI_S_Periph : aliased PSSI_Peripheral
     with Import, Address => PSSI_S_Base;

end Interfaces.STM32.PSSI;
