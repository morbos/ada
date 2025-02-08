--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.OCTOSPIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  OCTOSPIM_CR_CSSEL_OVR_O array
   type OCTOSPIM_CR_CSSEL_OVR_O_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for OCTOSPIM_CR_CSSEL_OVR_O
   type OCTOSPIM_CR_CSSEL_OVR_O_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CSSEL_OVR_O as a value
            Val : HAL.UInt2;
         when True =>
            --  CSSEL_OVR_O as an array
            Arr : OCTOSPIM_CR_CSSEL_OVR_O_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for OCTOSPIM_CR_CSSEL_OVR_O_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype OCTOSPIM_CR_REQ2ACK_TIME_Field is HAL.UInt8;

   --  OCTOSPIM control register
   type OCTOSPIM_CR_Register is record
      --  Multiplexed mode enable This bit enables the multiplexing of the two
      --  OCTOSPIs.
      MUXEN          : Boolean := False;
      --  OCTOSPIM multiplexing mode
      MODE           : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Chip select selector override enable
      CSSEL_OVR_EN   : Boolean := False;
      --  Chip select selector override setting for OCTOSPI1
      CSSEL_OVR_O    : OCTOSPIM_CR_CSSEL_OVR_O_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  REQ to ACK time In multiplexed mode (MUXEN = 1), this field defines
      --  the time between two transactions. The value is the number of OCTOSPI
      --  clock cycles - 1
      REQ2ACK_TIME   : OCTOSPIM_CR_REQ2ACK_TIME_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPIM_CR_Register use record
      MUXEN          at 0 range 0 .. 0;
      MODE           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CSSEL_OVR_EN   at 0 range 4 .. 4;
      CSSEL_OVR_O    at 0 range 5 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      REQ2ACK_TIME   at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype OCTOSPIM_HWCFGR_NUM_PORT_Field is HAL.UInt4;

   --  OCTOSPIM hardware configuration register
   type OCTOSPIM_HWCFGR_Register is record
      --  Read-only. Number of ports This field returns the number of ports in
      --  the OCTOSPI I/O manager implementation
      NUM_PORT      : OCTOSPIM_HWCFGR_NUM_PORT_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPIM_HWCFGR_Register use record
      NUM_PORT      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype OCTOSPIM_VERR_MINVER_Field is HAL.UInt4;
   subtype OCTOSPIM_VERR_MAJVER_Field is HAL.UInt4;

   --  OCTOSPIM version register
   type OCTOSPIM_VERR_Register is record
      --  Read-only. OCTOSPIM minor version
      MINVER        : OCTOSPIM_VERR_MINVER_Field;
      --  Read-only. OCTOSPIM major version
      MAJVER        : OCTOSPIM_VERR_MAJVER_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OCTOSPIM_VERR_Register use record
      MINVER        at 0 range 0 .. 3;
      MAJVER        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  OCTOSPIM register block
   type OCTOSPIM_Peripheral is record
      --  OCTOSPIM control register
      OCTOSPIM_CR     : aliased OCTOSPIM_CR_Register;
      --  OCTOSPIM hardware configuration register
      OCTOSPIM_HWCFGR : aliased OCTOSPIM_HWCFGR_Register;
      --  OCTOSPIM version register
      OCTOSPIM_VERR   : aliased OCTOSPIM_VERR_Register;
      --  OCTOSPIM identification
      OCTOSPIM_IDR    : aliased HAL.UInt32;
      --  OCTOSPIM size identification register
      OCTOSPIM_SIDR   : aliased HAL.UInt32;
   end record
     with Volatile;

   for OCTOSPIM_Peripheral use record
      OCTOSPIM_CR     at 16#0# range 0 .. 31;
      OCTOSPIM_HWCFGR at 16#3F0# range 0 .. 31;
      OCTOSPIM_VERR   at 16#3F4# range 0 .. 31;
      OCTOSPIM_IDR    at 16#3F8# range 0 .. 31;
      OCTOSPIM_SIDR   at 16#3FC# range 0 .. 31;
   end record;

   --  OCTOSPIM register block
   OCTOSPIM_Periph : aliased OCTOSPIM_Peripheral
     with Import, Address => OCTOSPIM_Base;

   --  OCTOSPIM register block
   OCTOSPIM_S_Periph : aliased OCTOSPIM_Peripheral
     with Import, Address => OCTOSPIM_S_Base;

end STM32_SVD.OCTOSPIM;
