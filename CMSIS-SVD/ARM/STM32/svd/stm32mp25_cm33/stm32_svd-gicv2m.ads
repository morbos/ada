--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.GICV2M is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype GICV2M_TYPER_NUMBER_OF_SPIS_Field is HAL.UInt10;
   subtype GICV2M_TYPER_BASE_SPI_NUMBER_Field is HAL.UInt10;

   --  GICV2M TYPER register
   type GICV2M_TYPER_Register is record
      --  Read-only. Returns the number-1 of contiguous SPIs assigned to the
      --  frame.
      NUMBER_OF_SPIS  : GICV2M_TYPER_NUMBER_OF_SPIS_Field;
      --  unspecified
      Reserved_10_15  : HAL.UInt6;
      --  Read-only. Returns the lowest SPI ID assigned to the frame
      BASE_SPI_NUMBER : GICV2M_TYPER_BASE_SPI_NUMBER_Field;
      --  unspecified
      Reserved_26_31  : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GICV2M_TYPER_Register use record
      NUMBER_OF_SPIS  at 0 range 0 .. 9;
      Reserved_10_15  at 0 range 10 .. 15;
      BASE_SPI_NUMBER at 0 range 16 .. 25;
      Reserved_26_31  at 0 range 26 .. 31;
   end record;

   subtype GICV2M_SETSPI_SPI1_NUM_Field is HAL.UInt10;

   --  GICV2M SETSPI register
   type GICV2M_SETSPI_Register is record
      --  On a write, an edge-triggered interrupt is generated to the GIC
      --  generic interrupt controller for an SPI with the ID identified by the
      --  value of this field. If the resulting value does not identify an SPI
      --  that is allocated to this frame then the write has no effect.
      SPI1_NUM       : GICV2M_SETSPI_SPI1_NUM_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GICV2M_SETSPI_Register use record
      SPI1_NUM       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  GICV2M MISC CTRL register
   type GICV2M_MISC_CTRL_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      SPI1_MERGED   : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GICV2M_MISC_CTRL_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SPI1_MERGED   at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype GICV2M_IIDR_IMPLEMENTER_Field is HAL.UInt12;
   subtype GICV2M_IIDR_REVISION_Field is HAL.UInt4;
   subtype GICV2M_IIDR_ARCH_VERSION_Field is HAL.UInt4;
   subtype GICV2M_IIDR_PRODUCT_ID_Field is HAL.UInt12;

   --  GICV2M IIDR register
   type GICV2M_IIDR_Register is record
      --  Read-only. JEP106 code of the company that implements the GICV2M
      IMPLEMENTER  : GICV2M_IIDR_IMPLEMENTER_Field;
      --  Read-only. Revision number for the component
      REVISION     : GICV2M_IIDR_REVISION_Field;
      --  Read-only. GICV2M architecture version
      ARCH_VERSION : GICV2M_IIDR_ARCH_VERSION_Field;
      --  Read-only. Product identifier
      PRODUCT_ID   : GICV2M_IIDR_PRODUCT_ID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GICV2M_IIDR_Register use record
      IMPLEMENTER  at 0 range 0 .. 11;
      REVISION     at 0 range 12 .. 15;
      ARCH_VERSION at 0 range 16 .. 19;
      PRODUCT_ID   at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  GICV2M register block
   type GICV2M_Peripheral is record
      --  GICV2M TYPER register
      GICV2M_TYPER     : aliased GICV2M_TYPER_Register;
      --  GICV2M SETSPI register
      GICV2M_SETSPI    : aliased GICV2M_SETSPI_Register;
      --  GICV2M MISC CTRL register
      GICV2M_MISC_CTRL : aliased GICV2M_MISC_CTRL_Register;
      --  GICV2M IIDR register
      GICV2M_IIDR      : aliased GICV2M_IIDR_Register;
   end record
     with Volatile;

   for GICV2M_Peripheral use record
      GICV2M_TYPER     at 16#8# range 0 .. 31;
      GICV2M_SETSPI    at 16#40# range 0 .. 31;
      GICV2M_MISC_CTRL at 16#100# range 0 .. 31;
      GICV2M_IIDR      at 16#FCC# range 0 .. 31;
   end record;

   --  GICV2M register block
   GICV2M_Periph : aliased GICV2M_Peripheral
     with Import, Address => GICV2M_Base;

   --  GICV2M register block
   GICV2M_S_Periph : aliased GICV2M_Peripheral
     with Import, Address => GICV2M_S_Base;

end STM32_SVD.GICV2M;
