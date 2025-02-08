--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.STGENC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  STGENC control register
   type STGENC_CNTCR_Register is record
      --  Enable
      EN            : Boolean := False;
      --  Halt on debug
      HLTDBG        : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENC_CNTCR_Register use record
      EN            at 0 range 0 .. 0;
      HLTDBG        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  STGENC status register
   type STGENC_CNTSR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. Debug halted
      DBGH          : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENC_CNTSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      DBGH          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype STGENC_PIDR4_DES_2_Field is HAL.UInt4;
   subtype STGENC_PIDR4_SIZE_Field is HAL.UInt4;

   --  STGENC peripheral ID4 register
   type STGENC_PIDR4_Register is record
      --  Read-only. Part of designer identification Together
      --  STGEN_PIDR1.DES_0, STGEN_PIDR2.DES_1, and STGEN_PIDR4.DES_2 identify
      --  the designer of the component. 0b0100 JEDEC continuation code
      DES_2         : STGENC_PIDR4_DES_2_Field;
      --  Read-only. Always 0b0000 Indicates that the device only occupies 4
      --  Kbytes of memory.
      SIZE          : STGENC_PIDR4_SIZE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENC_PIDR4_Register use record
      DES_2         at 0 range 0 .. 3;
      SIZE          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENC_PIDR0_PART_0_Field is HAL.UInt8;

   --  STGENC peripheral ID0 register
   type STGENC_PIDR0_Register is record
      --  Read-only. Bits[7:0] of the 12-bit part number of the component The
      --  designer of the component assigns this part number.
      PART_0        : STGENC_PIDR0_PART_0_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENC_PIDR0_Register use record
      PART_0        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENC_PIDR1_PART_1_Field is HAL.UInt4;
   subtype STGENC_PIDR1_DES_0_Field is HAL.UInt4;

   --  STGENC peripheral ID1 register
   type STGENC_PIDR1_Register is record
      --  Read-only. Bits[11:8] of the 12-bit part number of the component The
      --  designer of the component assigns this part number.
      PART_1        : STGENC_PIDR1_PART_1_Field;
      --  Read-only. Part of designer identification Together PIDR1.DES_0,
      --  PIDR2.DES_1, and PIDR4.DES_2 identify the designer of the component.
      DES_0         : STGENC_PIDR1_DES_0_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENC_PIDR1_Register use record
      PART_1        at 0 range 0 .. 3;
      DES_0         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENC_PIDR2_DES_1_Field is HAL.UInt3;
   subtype STGENC_PIDR2_REVISION_Field is HAL.UInt4;

   --  STGENC peripheral ID2 register
   type STGENC_PIDR2_Register is record
      --  Read-only. part of designer identification Together
      --  STGEN_PIDR1.DES_0, STGEN_PIDR2.DES_1, and STGEN_PIDR4.DES_2 identify
      --  the designer of the component.
      DES_1         : STGENC_PIDR2_DES_1_Field;
      --  Read-only. always 1 Indicates that the JEDEC-assigned designer ID is
      --  used.
      JEDEC         : Boolean;
      --  Read-only. device revision number
      REVISION      : STGENC_PIDR2_REVISION_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENC_PIDR2_Register use record
      DES_1         at 0 range 0 .. 2;
      JEDEC         at 0 range 3 .. 3;
      REVISION      at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENC_PIDR3_CMOD_Field is HAL.UInt4;
   subtype STGENC_PIDR3_REVAND_Field is HAL.UInt4;

   --  STGENC peripheral ID3 register
   type STGENC_PIDR3_Register is record
      --  Read-only. Customer modified Indicates whether the customer has
      --  modified the behavior of the component. In most cases, this bit field
      --  is 0b0000 (no modification done). Customers change this value when
      --  they make authorized modifications to this component.
      CMOD          : STGENC_PIDR3_CMOD_Field;
      --  Read-only. Customer version 0b0000 indicates there are no errata
      --  fixes to this component.
      REVAND        : STGENC_PIDR3_REVAND_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENC_PIDR3_Register use record
      CMOD          at 0 range 0 .. 3;
      REVAND        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENC_CIDR0_PRMBL_0_Field is HAL.UInt8;

   --  STGENC component ID0 register
   type STGENC_CIDR0_Register is record
      --  Read-only. Preamble 0 Contains bits[7:0] of the component
      --  identification code.
      PRMBL_0       : STGENC_CIDR0_PRMBL_0_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENC_CIDR0_Register use record
      PRMBL_0       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENC_CIDR1_PRMBL_1_Field is HAL.UInt4;
   subtype STGENC_CIDR1_CLASS_Field is HAL.UInt4;

   --  STGENC component ID1 register
   type STGENC_CIDR1_Register is record
      --  Read-only. preamble 1 Contains bits[11:8] of the component
      --  identification code.
      PRMBL_1       : STGENC_CIDR1_PRMBL_1_Field;
      --  Read-only. Class of the component For example, the component can be a
      --  ROM table or a generic CoreSight™ SoC-400 component. Contains
      --  bits[15:12] of the component identification code. 0b1111 indicates
      --  the component is a CoreSight™ SoC-400 component.
      CLASS         : STGENC_CIDR1_CLASS_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENC_CIDR1_Register use record
      PRMBL_1       at 0 range 0 .. 3;
      CLASS         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENC_CIDR2_PRMBL_2_Field is HAL.UInt8;

   --  STGENC component ID2 register
   type STGENC_CIDR2_Register is record
      --  Read-only. Preamble 2 Contains bits[23:16] of the component
      --  identification code.
      PRMBL_2       : STGENC_CIDR2_PRMBL_2_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENC_CIDR2_Register use record
      PRMBL_2       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STGENC_CIDR3_PRMBL_3_Field is HAL.UInt8;

   --  STGENC component ID3 register
   type STGENC_CIDR3_Register is record
      --  Read-only. Preamble 3 Contains bits[31:24] of the component
      --  identification code.
      PRMBL_3       : STGENC_CIDR3_PRMBL_3_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STGENC_CIDR3_Register use record
      PRMBL_3       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  STGENC address block description
   type STGENC_Peripheral is record
      --  STGENC control register
      STGENC_CNTCR   : aliased STGENC_CNTCR_Register;
      --  STGENC status register
      STGENC_CNTSR   : aliased STGENC_CNTSR_Register;
      --  STGENC value lower register
      STGENC_CNTCVL  : aliased HAL.UInt32;
      --  STGENC value upper register
      STGENC_CNTCVU  : aliased HAL.UInt32;
      --  STGENC base frequency register
      STGENC_CNTFID0 : aliased HAL.UInt32;
      --  STGENC peripheral ID4 register
      STGENC_PIDR4   : aliased STGENC_PIDR4_Register;
      --  STGENC peripheral ID5 register
      STGENC_PIDR5   : aliased HAL.UInt32;
      --  STGENC peripheral ID6 register
      STGENC_PIDR6   : aliased HAL.UInt32;
      --  STGENC peripheral ID7 register
      STGENC_PIDR7   : aliased HAL.UInt32;
      --  STGENC peripheral ID0 register
      STGENC_PIDR0   : aliased STGENC_PIDR0_Register;
      --  STGENC peripheral ID1 register
      STGENC_PIDR1   : aliased STGENC_PIDR1_Register;
      --  STGENC peripheral ID2 register
      STGENC_PIDR2   : aliased STGENC_PIDR2_Register;
      --  STGENC peripheral ID3 register
      STGENC_PIDR3   : aliased STGENC_PIDR3_Register;
      --  STGENC component ID0 register
      STGENC_CIDR0   : aliased STGENC_CIDR0_Register;
      --  STGENC component ID1 register
      STGENC_CIDR1   : aliased STGENC_CIDR1_Register;
      --  STGENC component ID2 register
      STGENC_CIDR2   : aliased STGENC_CIDR2_Register;
      --  STGENC component ID3 register
      STGENC_CIDR3   : aliased STGENC_CIDR3_Register;
   end record
     with Volatile;

   for STGENC_Peripheral use record
      STGENC_CNTCR   at 16#0# range 0 .. 31;
      STGENC_CNTSR   at 16#4# range 0 .. 31;
      STGENC_CNTCVL  at 16#8# range 0 .. 31;
      STGENC_CNTCVU  at 16#C# range 0 .. 31;
      STGENC_CNTFID0 at 16#20# range 0 .. 31;
      STGENC_PIDR4   at 16#FD0# range 0 .. 31;
      STGENC_PIDR5   at 16#FD4# range 0 .. 31;
      STGENC_PIDR6   at 16#FD8# range 0 .. 31;
      STGENC_PIDR7   at 16#FDC# range 0 .. 31;
      STGENC_PIDR0   at 16#FE0# range 0 .. 31;
      STGENC_PIDR1   at 16#FE4# range 0 .. 31;
      STGENC_PIDR2   at 16#FE8# range 0 .. 31;
      STGENC_PIDR3   at 16#FEC# range 0 .. 31;
      STGENC_CIDR0   at 16#FF0# range 0 .. 31;
      STGENC_CIDR1   at 16#FF4# range 0 .. 31;
      STGENC_CIDR2   at 16#FF8# range 0 .. 31;
      STGENC_CIDR3   at 16#FFC# range 0 .. 31;
   end record;

   --  STGENC address block description
   STGENC_Periph : aliased STGENC_Peripheral
     with Import, Address => STGENC_Base;

   --  STGENC address block description
   STGENC_S_Periph : aliased STGENC_Peripheral
     with Import, Address => STGENC_S_Base;

end STM32_SVD.STGENC;
