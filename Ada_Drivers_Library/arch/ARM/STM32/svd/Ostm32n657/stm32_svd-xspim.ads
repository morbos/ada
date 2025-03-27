--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.XSPIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  XSPIM_CR_CSSEL_OVR_O array
   type XSPIM_CR_CSSEL_OVR_O_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for XSPIM_CR_CSSEL_OVR_O
   type XSPIM_CR_CSSEL_OVR_O_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CSSEL_OVR_O as a value
            Val : HAL.UInt2;
         when True =>
            --  CSSEL_OVR_O as an array
            Arr : XSPIM_CR_CSSEL_OVR_O_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for XSPIM_CR_CSSEL_OVR_O_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype XSPIM_CR_REQ2ACK_TIME_Field is HAL.UInt8;

   --  XSPIM control register
   type XSPIM_CR_Register is record
      --  Multiplexed mode enable
      MUXEN          : Boolean := False;
      --  XSPI multiplexing mode
      MODE           : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Chip select selector override enable
      CSSEL_OVR_EN   : Boolean := False;
      --  Chip select selector override setting for XSPI1
      CSSEL_OVR_O    : XSPIM_CR_CSSEL_OVR_O_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  REQ to ACK time
      REQ2ACK_TIME   : XSPIM_CR_REQ2ACK_TIME_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for XSPIM_CR_Register use record
      MUXEN          at 0 range 0 .. 0;
      MODE           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      CSSEL_OVR_EN   at 0 range 4 .. 4;
      CSSEL_OVR_O    at 0 range 5 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      REQ2ACK_TIME   at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  XSPI I/O manager
   type XSPIM_Peripheral is record
      --  XSPIM control register
      XSPIM_CR : aliased XSPIM_CR_Register;
   end record
     with Volatile;

   for XSPIM_Peripheral use record
      XSPIM_CR at 0 range 0 .. 31;
   end record;

   --  XSPI I/O manager
   XSPIM_Periph : aliased XSPIM_Peripheral
     with Import, Address => XSPIM_Base;

   --  XSPI I/O manager
   XSPIM_S_Periph : aliased XSPIM_Peripheral
     with Import, Address => XSPIM_S_Base;

end STM32_SVD.XSPIM;
