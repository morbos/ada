--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.STGENR is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype STGENR_PIDR4_DES_2_Field is Interfaces.Bit_Types.UInt4;
   subtype STGENR_PIDR4_SIZE_Field is Interfaces.Bit_Types.UInt4;

   --  STGENR peripheral ID4 register
   type STGENR_PIDR4_Register is record
      --  Read-only. part of designer identification Together
      --  STGEN_PIDR1.DES_0, STGEN_PIDR2.DES_1, and STGEN_PIDR4.DES_2 identify
      --  the designer of the component.
      DES_2         : STGENR_PIDR4_DES_2_Field;
      --  Read-only. always 0b0000 Indicates that the device only occupies 4
      --  Kbytes of memory.
      SIZE          : STGENR_PIDR4_SIZE_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENR_PIDR4_Register use record
      DES_2         at 0 range 0 .. 3;
      SIZE          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENR_PIDR0_PART_0_Field is Interfaces.Bit_Types.Byte;

   --  STGENR peripheral ID0 register
   type STGENR_PIDR0_Register is record
      --  Read-only. bits[7:0] of the 12-bit part number of the component.
      PART_0        : STGENR_PIDR0_PART_0_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENR_PIDR0_Register use record
      PART_0        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENR_PIDR1_PART_1_Field is Interfaces.Bit_Types.UInt4;
   subtype STGENR_PIDR1_DES_0_Field is Interfaces.Bit_Types.UInt4;

   --  STGENR peripheral ID1 register
   type STGENR_PIDR1_Register is record
      --  Read-only. Bits[11:8] of the 12-bit part number of the component
      PART_1        : STGENR_PIDR1_PART_1_Field;
      --  Read-only. part of designer identification Together
      --  STGEN_PIDR1.DES_0, STGEN_PIDR2.DES_1, and STGEN_PIDR4.DES_2 identify
      --  the designer of the component.
      DES_0         : STGENR_PIDR1_DES_0_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENR_PIDR1_Register use record
      PART_1        at 0 range 0 .. 3;
      DES_0         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENR_PIDR2_DES_1_Field is Interfaces.Bit_Types.UInt3;
   subtype STGENR_PIDR2_REVISION_Field is Interfaces.Bit_Types.UInt4;

   --  STGENR peripheral ID2 register
   type STGENR_PIDR2_Register is record
      --  Read-only. part of designer identification Together
      --  STGEN_PIDR1.DES_0, STGEN_PIDR2.DES_1, and STGEN_PIDR4.DES_2, identify
      --  the designer of the component.
      DES_1         : STGENR_PIDR2_DES_1_Field;
      --  Read-only. always 1 Indicates that the JEDEC-assigned designer ID is
      --  used.
      JEDEC         : Boolean;
      --  Read-only. device revision number
      REVISION      : STGENR_PIDR2_REVISION_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENR_PIDR2_Register use record
      DES_1         at 0 range 0 .. 2;
      JEDEC         at 0 range 3 .. 3;
      REVISION      at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENR_PIDR3_CMOD_Field is Interfaces.Bit_Types.UInt4;
   subtype STGENR_PIDR3_REVAND_Field is Interfaces.Bit_Types.UInt4;

   --  STGENR peripheral ID3 register
   type STGENR_PIDR3_Register is record
      --  Read-only. customer modified Indicates whether the customer has
      --  modified the behavior of the component. In most cases, this field is
      --  0b0000 (no modification done). Customers change this value when they
      --  make authorized modifications to this component.
      CMOD          : STGENR_PIDR3_CMOD_Field;
      --  Read-only. errata fix identification 0b0000 indicates there are no
      --  errata fixes to this component.
      REVAND        : STGENR_PIDR3_REVAND_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENR_PIDR3_Register use record
      CMOD          at 0 range 0 .. 3;
      REVAND        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENR_CIDR0_PRMBL_0_Field is Interfaces.Bit_Types.Byte;

   --  STGENR component ID0 register
   type STGENR_CIDR0_Register is record
      --  Read-only. preamble 0 Contains bits[7:0] of the component
      --  identification code.
      PRMBL_0       : STGENR_CIDR0_PRMBL_0_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENR_CIDR0_Register use record
      PRMBL_0       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENR_CIDR1_PRMBL_1_Field is Interfaces.Bit_Types.UInt4;
   subtype STGENR_CIDR1_CLASS_Field is Interfaces.Bit_Types.UInt4;

   --  STGENR component ID1 register
   type STGENR_CIDR1_Register is record
      --  Read-only. preamble 1 Contains bits[11:8] of the component
      --  identification code.
      PRMBL_1       : STGENR_CIDR1_PRMBL_1_Field;
      --  Read-only. class of the component Contains bits[15:12] of the
      --  component identification code.
      CLASS         : STGENR_CIDR1_CLASS_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENR_CIDR1_Register use record
      PRMBL_1       at 0 range 0 .. 3;
      CLASS         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENR_CIDR2_PRMBL_2_Field is Interfaces.Bit_Types.Byte;

   --  STGENR component ID2 register
   type STGENR_CIDR2_Register is record
      --  Read-only. preamble 2 Contains bits[23:16] of the component
      --  identification code.
      PRMBL_2       : STGENR_CIDR2_PRMBL_2_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENR_CIDR2_Register use record
      PRMBL_2       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENR_CIDR3_PRMBL_3_Field is Interfaces.Bit_Types.Byte;

   --  STGENR component ID3 register
   type STGENR_CIDR3_Register is record
      --  Read-only. preamble 3 Contains bits[31:24] of the component
      --  identification code.
      PRMBL_3       : STGENR_CIDR3_PRMBL_3_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENR_CIDR3_Register use record
      PRMBL_3       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System timer generator
   type STGENR_Peripheral is record
      --  STGENR value lower register
      STGENR_CNTCVL : aliased Interfaces.Bit_Types.UInt32;
      --  STGENR value upper register
      STGENR_CNTCVU : aliased Interfaces.Bit_Types.UInt32;
      --  STGENR peripheral ID4 register
      STGENR_PIDR4  : aliased STGENR_PIDR4_Register;
      --  STGENR peripheral ID5 register
      STGENR_PIDR5  : aliased Interfaces.Bit_Types.UInt32;
      --  STGENR peripheral ID6 register
      STGENR_PIDR6  : aliased Interfaces.Bit_Types.UInt32;
      --  STGENR peripheral ID7 register
      STGENR_PIDR7  : aliased Interfaces.Bit_Types.UInt32;
      --  STGENR peripheral ID0 register
      STGENR_PIDR0  : aliased STGENR_PIDR0_Register;
      --  STGENR peripheral ID1 register
      STGENR_PIDR1  : aliased STGENR_PIDR1_Register;
      --  STGENR peripheral ID2 register
      STGENR_PIDR2  : aliased STGENR_PIDR2_Register;
      --  STGENR peripheral ID3 register
      STGENR_PIDR3  : aliased STGENR_PIDR3_Register;
      --  STGENR component ID0 register
      STGENR_CIDR0  : aliased STGENR_CIDR0_Register;
      --  STGENR component ID1 register
      STGENR_CIDR1  : aliased STGENR_CIDR1_Register;
      --  STGENR component ID2 register
      STGENR_CIDR2  : aliased STGENR_CIDR2_Register;
      --  STGENR component ID3 register
      STGENR_CIDR3  : aliased STGENR_CIDR3_Register;
   end record
     with Volatile;

   for STGENR_Peripheral use record
      STGENR_CNTCVL at 16#0# range 0 .. 31;
      STGENR_CNTCVU at 16#4# range 0 .. 31;
      STGENR_PIDR4  at 16#FD0# range 0 .. 31;
      STGENR_PIDR5  at 16#FD4# range 0 .. 31;
      STGENR_PIDR6  at 16#FD8# range 0 .. 31;
      STGENR_PIDR7  at 16#FDC# range 0 .. 31;
      STGENR_PIDR0  at 16#7FE0# range 0 .. 31;
      STGENR_PIDR1  at 16#7FE4# range 0 .. 31;
      STGENR_PIDR2  at 16#7FE8# range 0 .. 31;
      STGENR_PIDR3  at 16#7FEC# range 0 .. 31;
      STGENR_CIDR0  at 16#7FF0# range 0 .. 31;
      STGENR_CIDR1  at 16#7FF4# range 0 .. 31;
      STGENR_CIDR2  at 16#7FF8# range 0 .. 31;
      STGENR_CIDR3  at 16#7FFC# range 0 .. 31;
   end record;

   --  System timer generator
   STGENR_Periph : aliased STGENR_Peripheral
     with Import, Address => STGENR_Base;

   --  System timer generator
   STGENR_S_Periph : aliased STGENR_Peripheral
     with Import, Address => STGENR_S_Base;

end Interfaces.STM32.STGENR;
