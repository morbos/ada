--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.ETHSW is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype ETHSW_AC_DEV_IDR_DEVICE_ID_Field is HAL.UInt16;

   --  ETHSW AC device ID register
   type ETHSW_AC_DEV_IDR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. Device ID
      DEVICE_ID      : ETHSW_AC_DEV_IDR_DEVICE_ID_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_DEV_IDR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DEVICE_ID      at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ETHSW_AC_REV_IDR_REV_ID_MINOR_Field is HAL.UInt16;
   subtype ETHSW_AC_REV_IDR_REV_ID_MAJOR_Field is HAL.UInt16;

   --  ETHSW AC revision ID register
   type ETHSW_AC_REV_IDR_Register is record
      --  Read-only. Revision ID minor number
      REV_ID_MINOR : ETHSW_AC_REV_IDR_REV_ID_MINOR_Field;
      --  Read-only. Revision ID major number
      REV_ID_MAJOR : ETHSW_AC_REV_IDR_REV_ID_MAJOR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_REV_IDR_Register use record
      REV_ID_MINOR at 0 range 0 .. 15;
      REV_ID_MAJOR at 0 range 16 .. 31;
   end record;

   subtype ETHSW_AC_IF0_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF0_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 0 version register
   type ETHSW_AC_IF0_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF0_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF0_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF0_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF0_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF0_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF0_PORTR_PORT_FES array
   type ETHSW_AC_IF0_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF0_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 0 port mapping register
   type ETHSW_AC_IF0_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF0_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF0_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_AC_IF1_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF1_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 1 version register
   type ETHSW_AC_IF1_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF1_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF1_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF1_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF1_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF1_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF1_PORTR_PORT_FES array
   type ETHSW_AC_IF1_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF1_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 1 port mapping register
   type ETHSW_AC_IF1_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF1_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF1_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_AC_IF2_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF2_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 2 version register
   type ETHSW_AC_IF2_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF2_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF2_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF2_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF2_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF2_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF2_PORTR_PORT_FES array
   type ETHSW_AC_IF2_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF2_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 2 port mapping register
   type ETHSW_AC_IF2_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF2_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF2_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_AC_IF3_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF3_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 3 version register
   type ETHSW_AC_IF3_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF3_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF3_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF3_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF3_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF3_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF3_PORTR_PORT_FES array
   type ETHSW_AC_IF3_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF3_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 3 port mapping register
   type ETHSW_AC_IF3_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF3_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF3_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_AC_IF4_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF4_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 4 version register
   type ETHSW_AC_IF4_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF4_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF4_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF4_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF4_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF4_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF4_PORTR_PORT_FES array
   type ETHSW_AC_IF4_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF4_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 4 port mapping register
   type ETHSW_AC_IF4_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF4_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF4_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_AC_IF5_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF5_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 5 version register
   type ETHSW_AC_IF5_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF5_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF5_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF5_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF5_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF5_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF5_PORTR_PORT_FES array
   type ETHSW_AC_IF5_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF5_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 5 port mapping register
   type ETHSW_AC_IF5_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF5_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF5_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_AC_IF6_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF6_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 6 version register
   type ETHSW_AC_IF6_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF6_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF6_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF6_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF6_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF6_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF6_PORTR_PORT_FES array
   type ETHSW_AC_IF6_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF6_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 6 port mapping register
   type ETHSW_AC_IF6_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF6_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF6_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_AC_IF7_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF7_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 7 version register
   type ETHSW_AC_IF7_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF7_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF7_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF7_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF7_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF7_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF7_PORTR_PORT_FES array
   type ETHSW_AC_IF7_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF7_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 7 port mapping register
   type ETHSW_AC_IF7_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF7_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF7_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_AC_IF8_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF8_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 8 version register
   type ETHSW_AC_IF8_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF8_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF8_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF8_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF8_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF8_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF8_PORTR_PORT_FES array
   type ETHSW_AC_IF8_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF8_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 8 port mapping register
   type ETHSW_AC_IF8_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF8_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF8_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_AC_IF9_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF9_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 9 version register
   type ETHSW_AC_IF9_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF9_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF9_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF9_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF9_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF9_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF9_PORTR_PORT_FES array
   type ETHSW_AC_IF9_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF9_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 9 port mapping register
   type ETHSW_AC_IF9_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF9_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF9_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_AC_IF10_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF10_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 10 version register
   type ETHSW_AC_IF10_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF10_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF10_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF10_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF10_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF10_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF10_PORTR_PORT_FES array
   type ETHSW_AC_IF10_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF10_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 10 port mapping register
   type ETHSW_AC_IF10_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF10_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF10_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_AC_IF11_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF11_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 11 version register
   type ETHSW_AC_IF11_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF11_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF11_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF11_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF11_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF11_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF11_PORTR_PORT_FES array
   type ETHSW_AC_IF11_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF11_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 11 port mapping register
   type ETHSW_AC_IF11_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF11_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF11_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_AC_IF12_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF12_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 12 version register
   type ETHSW_AC_IF12_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF12_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF12_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF12_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF12_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF12_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF12_PORTR_PORT_FES array
   type ETHSW_AC_IF12_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF12_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 12 port mapping register
   type ETHSW_AC_IF12_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF12_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF12_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_AC_IF13_VERR_IF_VER_MIN_Field is HAL.UInt8;
   subtype ETHSW_AC_IF13_VERR_IF_VER_MAJ_Field is HAL.UInt8;

   --  ETHSW AC interface 13 version register
   type ETHSW_AC_IF13_VERR_Register is record
      --  Read-only. Interface minor number
      IF_VER_MIN : ETHSW_AC_IF13_VERR_IF_VER_MIN_Field;
      --  Read-only. Interface major number
      IF_VER_MAJ : ETHSW_AC_IF13_VERR_IF_VER_MAJ_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF13_VERR_Register use record
      IF_VER_MIN at 0 range 0 .. 7;
      IF_VER_MAJ at 0 range 8 .. 15;
   end record;

   --  ETHSW_AC_IF13_PORTR_PORT_FES array element
   subtype ETHSW_AC_IF13_PORTR_PORT_FES_Element is HAL.UInt8;

   --  ETHSW_AC_IF13_PORTR_PORT_FES array
   type ETHSW_AC_IF13_PORTR_PORT_FES_Field_Array is array (0 .. 3)
     of ETHSW_AC_IF13_PORTR_PORT_FES_Element
     with Component_Size => 8, Size => 32;

   --  ETHSW AC interface 13 port mapping register
   type ETHSW_AC_IF13_PORTR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PORT_FES as a value
            Val : HAL.UInt32;
         when True =>
            --  PORT_FES as an array
            Arr : ETHSW_AC_IF13_PORTR_PORT_FES_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_AC_IF13_PORTR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype ETHSW_IBC_DEV_IDR_DEVICE_ID_Field is HAL.UInt16;

   --  ETHSW IBC device ID register
   type ETHSW_IBC_DEV_IDR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. Device ID
      DEVICE_ID      : ETHSW_IBC_DEV_IDR_DEVICE_ID_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_IBC_DEV_IDR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DEVICE_ID      at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  ETHSW IBC general-purpose multiplexer control register
   type ETHSW_IBC_GP_MUX_CTRLR_Register is record
      --  General-purpose (GP) multiplexer 0 control
      GPMUX0        : Boolean := False;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_IBC_GP_MUX_CTRLR_Register use record
      GPMUX0        at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  ETHSW IBC time interface mux demux control register
   type ETHSW_IBC_TIME_MUX_CTRLR_Register is record
      --  Time interface (TI) mux/demux 0 control
      TIM_MUX0      : Boolean := False;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_IBC_TIME_MUX_CTRLR_Register use record
      TIM_MUX0      at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype ETHSW_IBC_GP_MUXESR_GPMUXES_Field is HAL.UInt2;

   --  ETHSW IBC generic GP_MUXES register
   type ETHSW_IBC_GP_MUXESR_Register is record
      --  Read-only. The value of generic GP_MUXES
      GPMUXES       : ETHSW_IBC_GP_MUXESR_GPMUXES_Field;
      --  unspecified
      Reserved_2_15 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_IBC_GP_MUXESR_Register use record
      GPMUXES       at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   subtype ETHSW_IBC_GP_MUX_DEFAULTR_GPMUXDEF_Field is HAL.UInt2;

   --  ETHSW IBC generic GP_MUX_DEFAULT register
   type ETHSW_IBC_GP_MUX_DEFAULTR_Register is record
      --  Read-only. The value of Generic GP_MUX_DEFAULT
      GPMUXDEF      : ETHSW_IBC_GP_MUX_DEFAULTR_GPMUXDEF_Field;
      --  unspecified
      Reserved_2_15 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_IBC_GP_MUX_DEFAULTR_Register use record
      GPMUXDEF      at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   subtype ETHSW_IBC_TIME_MUXESR_TIME_MUX_Field is HAL.UInt2;

   --  ETHSW IBC generic TIME_MUXES register
   type ETHSW_IBC_TIME_MUXESR_Register is record
      --  Read-only. The value of Generic TIME_MUXES
      TIME_MUX      : ETHSW_IBC_TIME_MUXESR_TIME_MUX_Field;
      --  unspecified
      Reserved_2_15 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_IBC_TIME_MUXESR_Register use record
      TIME_MUX      at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   subtype ETHSW_IBC_TIME_MUX_DEFAULTR_TIM_MUXDEF_Field is HAL.UInt2;

   --  ETHSW IBC generic TIME_MUX_DEFAULT register
   type ETHSW_IBC_TIME_MUX_DEFAULTR_Register is record
      --  Read-only. The value of Generic TIME_MUX_DEFAULT
      TIM_MUXDEF    : ETHSW_IBC_TIME_MUX_DEFAULTR_TIM_MUXDEF_Field;
      --  unspecified
      Reserved_2_15 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_IBC_TIME_MUX_DEFAULTR_Register use record
      TIM_MUXDEF    at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   subtype ETHSW_IBC_AUTOCONFIG0R_RTC_NUM_Field is HAL.UInt2;
   subtype ETHSW_IBC_AUTOCONFIG0R_TS_NUM_Field is HAL.UInt2;

   --  ETHSW IBC generic AUTOCONFIG0 register
   type ETHSW_IBC_AUTOCONFIG0R_Register is record
      --  Read-only. Number of Real-Time Clock blocks (for example FRTC) in the
      --  system
      RTC_NUM       : ETHSW_IBC_AUTOCONFIG0R_RTC_NUM_Field;
      --  Read-only. Number of Timestamper blocks (for example FPTS) in the
      --  system
      TS_NUM        : ETHSW_IBC_AUTOCONFIG0R_TS_NUM_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_IBC_AUTOCONFIG0R_Register use record
      RTC_NUM       at 0 range 0 .. 1;
      TS_NUM        at 0 range 2 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype ETHSW_FTPS_GL0R_DEVICE_ID_Field is HAL.UInt16;

   --  ETHSW FTPS general register 0
   type ETHSW_FTPS_GL0R_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. Device ID
      DEVICE_ID      : ETHSW_FTPS_GL0R_DEVICE_ID_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FTPS_GL0R_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DEVICE_ID      at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  ETHSW FTPS timestamper control register
   type ETHSW_FTPS_TSCR_Register is record
      --  Get timestamp
      GET_TIMESTAMP : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FTPS_TSCR_Register use record
      GET_TIMESTAMP at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  ETHSW FTPS timestamper interrupt mask register
   type ETHSW_FTPS_TSIMR_Register is record
      --  Timestamp interrupt enable
      TIMESTAMP_IE  : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FTPS_TSIMR_Register use record
      TIMESTAMP_IE  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  ETHSW FTPS timestamper interrupt status register
   type ETHSW_FTPS_TSISR_Register is record
      --  Timestamp interrupt status
      TIMESTAMP_IS  : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FTPS_TSISR_Register use record
      TIMESTAMP_IS  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ETHSW_FTPS_TS_NSR_NANOSECONDS_Field is HAL.UInt30;

   --  ETHSW FTPS timestamp nanosecond register
   type ETHSW_FTPS_TS_NSR_Register is record
      --  Read-only. Nanoseconds part of the time of the PPx event
      NANOSECONDS    : ETHSW_FTPS_TS_NSR_NANOSECONDS_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FTPS_TS_NSR_Register use record
      NANOSECONDS    at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FTPS_TS_SHR_SECONDS_Field is HAL.UInt16;

   --  ETHSW FTPS timestamp second high register
   type ETHSW_FTPS_TS_SHR_Register is record
      --  Read-only. Most significant seconds part of the time of the PPx event
      SECONDS        : ETHSW_FTPS_TS_SHR_SECONDS_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FTPS_TS_SHR_Register use record
      SECONDS        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETHSW_FRTC0_GLR_REV_ID_Field is HAL.UInt8;
   subtype ETHSW_FRTC0_GLR_DEV_ID_Field is HAL.UInt16;

   --  ETHSW FRTC0 general register
   type ETHSW_FRTC0_GLR_Register is record
      --  Read-only. Revision ID
      REV_ID         : ETHSW_FRTC0_GLR_REV_ID_Field;
      --  Read-only. Device ID
      DEV_ID         : ETHSW_FRTC0_GLR_DEV_ID_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC0_GLR_Register use record
      REV_ID         at 0 range 0 .. 7;
      DEV_ID         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ETHSW_FRTC0_CUR_NSECR_NANOSECONDS_Field is HAL.UInt30;

   --  ETHSW FRTC0 current time nanosecond register
   type ETHSW_FRTC0_CUR_NSECR_Register is record
      --  Read-only. Nanoseconds part of the current time
      NANOSECONDS    : ETHSW_FRTC0_CUR_NSECR_NANOSECONDS_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC0_CUR_NSECR_Register use record
      NANOSECONDS    at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FRTC0_CUR_SECHR_SECONDS_Field is HAL.UInt16;

   --  ETHSW FRTC0 current time second high register
   type ETHSW_FRTC0_CUR_SECHR_Register is record
      --  Read-only. Seconds part of the current time (most significant part)
      SECONDS        : ETHSW_FRTC0_CUR_SECHR_SECONDS_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC0_CUR_SECHR_Register use record
      SECONDS        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETHSW_FRTC0_TIME_CCHR_TIME_CC_Field is HAL.UInt16;

   --  ETHSW FRTC0 time CC high register
   type ETHSW_FRTC0_TIME_CCHR_Register is record
      --  Read-only. Clock cycle counter (most significant part)
      TIME_CC        : ETHSW_FRTC0_TIME_CCHR_TIME_CC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC0_TIME_CCHR_Register use record
      TIME_CC        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETHSW_FRTC0_STEP_SIZE_NR_NANOSECONDS_Field is HAL.UInt6;

   --  ETHSW FRTC0 step size nanosecond register
   type ETHSW_FRTC0_STEP_SIZE_NR_Register is record
      --  Nanoseconds
      NANOSECONDS   : ETHSW_FRTC0_STEP_SIZE_NR_NANOSECONDS_Field := 16#5#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC0_STEP_SIZE_NR_Register use record
      NANOSECONDS   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype ETHSW_FRTC0_ADJUST_NSECR_NANOSECONDS_Field is HAL.UInt30;

   --  ETHSW FRTC0 adjust nanosecond register
   type ETHSW_FRTC0_ADJUST_NSECR_Register is record
      --  Nanoseconds
      NANOSECONDS    : ETHSW_FRTC0_ADJUST_NSECR_NANOSECONDS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC0_ADJUST_NSECR_Register use record
      NANOSECONDS    at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FRTC0_ADJUST_SECHR_SECONDS_Field is HAL.UInt16;

   --  ETHSW FRTC0 adjust second high register
   type ETHSW_FRTC0_ADJUST_SECHR_Register is record
      --  Seconds (most significant part)
      SECONDS        : ETHSW_FRTC0_ADJUST_SECHR_SECONDS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC0_ADJUST_SECHR_Register use record
      SECONDS        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ETHSW FRTC0 time command register
   type ETHSW_FRTC0_TIME_CMDR_Register is record
      --  Adds (for one time only) the values in the following registers to
      --  internal time (NCO):
      ADJUST_TIME      : Boolean := False;
      --  Take the new values of the following registers into use:
      ADJUST_STEP      : Boolean := False;
      --  Updates the following registers with the current values in the NCO:
      READ_TIME        : Boolean := False;
      --  Determines when ADJUST_TIME command is taken into use (does not
      --  affect to ADJUST_STEP command):
      ADJUST_TIME_MODE : Boolean := False;
      --  unspecified
      Reserved_4_31    : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC0_TIME_CMDR_Register use record
      ADJUST_TIME      at 0 range 0 .. 0;
      ADJUST_STEP      at 0 range 1 .. 1;
      READ_TIME        at 0 range 2 .. 2;
      ADJUST_TIME_MODE at 0 range 3 .. 3;
      Reserved_4_31    at 0 range 4 .. 31;
   end record;

   subtype ETHSW_FRTC0_GENERICS_HR_DEFAULT_STEP_NS_Field is HAL.UInt6;

   --  ETHSW FRTC0 generics high register
   type ETHSW_FRTC0_GENERICS_HR_Register is record
      --  Read-only. The value of Generic DEFAULT_STEP_NS.
      DEFAULT_STEP_NS : ETHSW_FRTC0_GENERICS_HR_DEFAULT_STEP_NS_Field;
      --  unspecified
      Reserved_6_31   : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC0_GENERICS_HR_Register use record
      DEFAULT_STEP_NS at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype ETHSW_FRTC1_GLR_REV_ID_Field is HAL.UInt8;
   subtype ETHSW_FRTC1_GLR_DEV_ID_Field is HAL.UInt16;

   --  ETHSW FRTC1 general register
   type ETHSW_FRTC1_GLR_Register is record
      --  Read-only. Revision ID
      REV_ID         : ETHSW_FRTC1_GLR_REV_ID_Field;
      --  Read-only. Device ID
      DEV_ID         : ETHSW_FRTC1_GLR_DEV_ID_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC1_GLR_Register use record
      REV_ID         at 0 range 0 .. 7;
      DEV_ID         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ETHSW_FRTC1_CUR_NSECR_NANOSECONDS_Field is HAL.UInt30;

   --  ETHSW FRTC1 current time nanosecond register
   type ETHSW_FRTC1_CUR_NSECR_Register is record
      --  Read-only. Nanoseconds part of the current time
      NANOSECONDS    : ETHSW_FRTC1_CUR_NSECR_NANOSECONDS_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC1_CUR_NSECR_Register use record
      NANOSECONDS    at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FRTC1_CUR_SECHR_SECONDS_Field is HAL.UInt16;

   --  ETHSW FRTC1 current time second high register
   type ETHSW_FRTC1_CUR_SECHR_Register is record
      --  Read-only. Seconds part of the current time (most significant part)
      SECONDS        : ETHSW_FRTC1_CUR_SECHR_SECONDS_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC1_CUR_SECHR_Register use record
      SECONDS        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETHSW_FRTC1_TIME_CCHR_TIME_CC_Field is HAL.UInt16;

   --  ETHSW FRTC1 time CC high register
   type ETHSW_FRTC1_TIME_CCHR_Register is record
      --  Read-only. Clock cycle counter (most significant part)
      TIME_CC        : ETHSW_FRTC1_TIME_CCHR_TIME_CC_Field;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC1_TIME_CCHR_Register use record
      TIME_CC        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETHSW_FRTC1_STEP_SIZE_NR_NANOSECONDS_Field is HAL.UInt6;

   --  ETHSW FRTC1 step size nanosecond register
   type ETHSW_FRTC1_STEP_SIZE_NR_Register is record
      --  Nanoseconds
      NANOSECONDS   : ETHSW_FRTC1_STEP_SIZE_NR_NANOSECONDS_Field := 16#5#;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC1_STEP_SIZE_NR_Register use record
      NANOSECONDS   at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype ETHSW_FRTC1_ADJUST_NSECR_NANOSECONDS_Field is HAL.UInt30;

   --  ETHSW FRTC1 adjust nanosecond register
   type ETHSW_FRTC1_ADJUST_NSECR_Register is record
      --  Nanoseconds
      NANOSECONDS    : ETHSW_FRTC1_ADJUST_NSECR_NANOSECONDS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC1_ADJUST_NSECR_Register use record
      NANOSECONDS    at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FRTC1_ADJUST_SECHR_SECONDS_Field is HAL.UInt16;

   --  ETHSW FRTC1 adjust second high register
   type ETHSW_FRTC1_ADJUST_SECHR_Register is record
      --  Seconds (most significant part)
      SECONDS        : ETHSW_FRTC1_ADJUST_SECHR_SECONDS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC1_ADJUST_SECHR_Register use record
      SECONDS        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  ETHSW FRTC1 time command register
   type ETHSW_FRTC1_TIME_CMDR_Register is record
      --  Adds (for one time only) the values in the following registers to
      --  internal time (NCO):
      ADJUST_TIME      : Boolean := False;
      --  Take the new values of the following registers into use:
      ADJUST_STEP      : Boolean := False;
      --  Updates the following registers with the current values in the NCO:
      READ_TIME        : Boolean := False;
      --  Determines when ADJUST_TIME command is taken into use (does not
      --  affect to ADJUST_STEP command):
      ADJUST_TIME_MODE : Boolean := False;
      --  unspecified
      Reserved_4_31    : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC1_TIME_CMDR_Register use record
      ADJUST_TIME      at 0 range 0 .. 0;
      ADJUST_STEP      at 0 range 1 .. 1;
      READ_TIME        at 0 range 2 .. 2;
      ADJUST_TIME_MODE at 0 range 3 .. 3;
      Reserved_4_31    at 0 range 4 .. 31;
   end record;

   subtype ETHSW_FRTC1_GENERICS_HR_DEFAULT_STEP_NS_Field is HAL.UInt6;

   --  ETHSW FRTC1 generics high register
   type ETHSW_FRTC1_GENERICS_HR_Register is record
      --  Read-only. The value of Generic DEFAULT_STEP_NS.
      DEFAULT_STEP_NS : ETHSW_FRTC1_GENERICS_HR_DEFAULT_STEP_NS_Field;
      --  unspecified
      Reserved_6_31   : HAL.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FRTC1_GENERICS_HR_Register use record
      DEFAULT_STEP_NS at 0 range 0 .. 5;
      Reserved_6_31   at 0 range 6 .. 31;
   end record;

   subtype ETHSW_FSC_DEV_IDR_DEV_ID_Field is HAL.UInt16;

   --  ETHSW FSC device ID register
   type ETHSW_FSC_DEV_IDR_Register is record
      --  unspecified
      Reserved_0_7   : HAL.UInt8;
      --  Read-only. Device ID
      DEV_ID         : ETHSW_FSC_DEV_IDR_DEV_ID_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC_DEV_IDR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      DEV_ID         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ETHSW_FSC_ROW_ACCESS_CMD0R_SCHEDULER_Field is HAL.UInt4;

   --  ETHSW FSC schedule table row access command register 0
   type ETHSW_FSC_ROW_ACCESS_CMD0R_Register is record
      --  Scheduler
      SCHEDULER     : ETHSW_FSC_ROW_ACCESS_CMD0R_SCHEDULER_Field := 16#0#;
      --  unspecified
      Reserved_4_7  : HAL.UInt4 := 16#0#;
      --  Schedule table.
      TABLE         : Boolean := False;
      --  unspecified
      Reserved_9_12 : HAL.UInt4 := 16#0#;
      --  Read-only. Access error.
      ACCESS_ERR    : Boolean := False;
      --  Read/write
      READ_WRITE    : Boolean := False;
      --  Triggers transfer between schedule table row and ROW_DATA registers
      TRANSFER      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC_ROW_ACCESS_CMD0R_Register use record
      SCHEDULER     at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      TABLE         at 0 range 8 .. 8;
      Reserved_9_12 at 0 range 9 .. 12;
      ACCESS_ERR    at 0 range 13 .. 13;
      READ_WRITE    at 0 range 14 .. 14;
      TRANSFER      at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FSC_ROW_ACCESS_CMD1R_ROW_NUM_Field is HAL.UInt10;

   --  ETHSW FSC schedule table row access command register 1
   type ETHSW_FSC_ROW_ACCESS_CMD1R_Register is record
      --  Read-only. Row number
      ROW_NUM        : ETHSW_FSC_ROW_ACCESS_CMD1R_ROW_NUM_Field;
      --  unspecified
      Reserved_10_15 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC_ROW_ACCESS_CMD1R_Register use record
      ROW_NUM        at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
   end record;

   subtype ETHSW_FSC_ROW_DATA0R_OUTPUT_STATE_Field is HAL.UInt9;

   --  ETHSW FSC schedule table row data 0 register
   type ETHSW_FSC_ROW_DATA0R_Register is record
      --  Output state for outputs 8 to 0.
      OUTPUT_STATE  : ETHSW_FSC_ROW_DATA0R_OUTPUT_STATE_Field := 16#0#;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC_ROW_DATA0R_Register use record
      OUTPUT_STATE  at 0 range 0 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  ETHSW FSC interrupt mask register
   type ETHSW_FSC_IMR_Register is record
      --  Schedule table interrupt enable
      SCHTBL_IE     : Boolean := False;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC_IMR_Register use record
      SCHTBL_IE     at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  ETHSW FSC interrupt status register
   type ETHSW_FSC_ISR_Register is record
      --  Schedule table interrupt status
      SCHTBL_IS     : Boolean := False;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC_ISR_Register use record
      SCHTBL_IS     at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype ETHSW_FSC_GEN_OUTR_OUTPUTS_Field is HAL.UInt7;

   --  ETHSW FSC generic outputs register
   type ETHSW_FSC_GEN_OUTR_Register is record
      --  Read-only. The value of generic OUTPUTS
      OUTPUTS       : ETHSW_FSC_GEN_OUTR_OUTPUTS_Field;
      --  unspecified
      Reserved_7_15 : HAL.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC_GEN_OUTR_Register use record
      OUTPUTS       at 0 range 0 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   subtype ETHSW_FSC_GEN_TBL_RWR_TABLE_ROWS_Field is HAL.UInt4;

   --  ETHSW FSC generic table rows register
   type ETHSW_FSC_GEN_TBL_RWR_Register is record
      --  Read-only. The value of generic TABLE_ROWS
      TABLE_ROWS    : ETHSW_FSC_GEN_TBL_RWR_TABLE_ROWS_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC_GEN_TBL_RWR_Register use record
      TABLE_ROWS    at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype ETHSW_FSC_GEN_CLK_FRQR_CLK_FREQ_Field is HAL.UInt8;

   --  ETHSW FSC generic clock frequency register
   type ETHSW_FSC_GEN_CLK_FRQR_Register is record
      --  Read-only. The value of generic CLK_FREQ
      CLK_FREQ      : ETHSW_FSC_GEN_CLK_FRQR_CLK_FREQ_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC_GEN_CLK_FRQR_Register use record
      CLK_FREQ      at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FSC0_SCH_GENR_DWNCNT_SPD_Field is HAL.UInt2;
   subtype ETHSW_FSC0_SCH_GENR_DWNCNT_STRT_VAL_Field is HAL.UInt11;

   --  ETHSW FSC scheduler 0 general register
   type ETHSW_FSC0_SCH_GENR_Register is record
      --  Downcounter speed, 10/100 divider
      DWNCNT_SPD      : ETHSW_FSC0_SCH_GENR_DWNCNT_SPD_Field := 16#0#;
      --  unspecified
      Reserved_2_3    : HAL.UInt2 := 16#0#;
      --  Downcounter start value.
      DWNCNT_STRT_VAL : ETHSW_FSC0_SCH_GENR_DWNCNT_STRT_VAL_Field := 16#7FF#;
      --  unspecified
      Reserved_15_15  : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_SCH_GENR_Register use record
      DWNCNT_SPD      at 0 range 0 .. 1;
      Reserved_2_3    at 0 range 2 .. 3;
      DWNCNT_STRT_VAL at 0 range 4 .. 14;
      Reserved_15_15  at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FSC0_DWNCNT_SPDR_DWNCNTR_SPD_Field is HAL.UInt4;

   --  ETHSW FSC scheduler 0 downcounter speed setting register
   type ETHSW_FSC0_DWNCNT_SPDR_Register is record
      --  unspecified
      Reserved_0_4  : HAL.UInt5 := 16#0#;
      --  Downcounter speed, addend
      DWNCNTR_SPD   : ETHSW_FSC0_DWNCNT_SPDR_DWNCNTR_SPD_Field := 16#8#;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_DWNCNT_SPDR_Register use record
      Reserved_0_4  at 0 range 0 .. 4;
      DWNCNTR_SPD   at 0 range 5 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  ETHSW FSC scheduler 0 emergency disable control register
   type ETHSW_FSC0_EME_DIS_CR_Register is record
      --  Emergency disable MUX control
      EME_DIS_MUX_CTRL  : Boolean := True;
      --  Read-only. Current state of emergency disable MUX
      EME_DIS_MUX_STATE : Boolean := True;
      --  unspecified
      Reserved_2_15     : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_EME_DIS_CR_Register use record
      EME_DIS_MUX_CTRL  at 0 range 0 .. 0;
      EME_DIS_MUX_STATE at 0 range 1 .. 1;
      Reserved_2_15     at 0 range 2 .. 15;
   end record;

   subtype ETHSW_FSC0_EME_DIS_STATR_EME_DIS_STAT_Field is HAL.UInt9;

   --  ETHSW FSC scheduler 0 emergency disable port state register
   type ETHSW_FSC0_EME_DIS_STATR_Register is record
      --  Gate state in Emergency disable mode
      EME_DIS_STAT  : ETHSW_FSC0_EME_DIS_STATR_EME_DIS_STAT_Field := 16#FF#;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_EME_DIS_STATR_Register use record
      EME_DIS_STAT  at 0 range 0 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  ETHSW FSC scheduler 0 table 0 general control and status register
   type ETHSW_FSC0_T0_TBL_GENR_Register is record
      --  Schedule table can be taken into use
      SCH_TBL_UPDATE : Boolean := False;
      --  Read-only. Schedule table currently in use
      SCH_TBL_IN_USE : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Last cycle number register enable/disable
      LST_CYC_EN     : Boolean := False;
      --  Read-only. Last cycle reached
      LST_CYC_RCHD   : Boolean := False;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Update
      UPDATE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T0_TBL_GENR_Register use record
      SCH_TBL_UPDATE at 0 range 0 .. 0;
      SCH_TBL_IN_USE at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      LST_CYC_EN     at 0 range 8 .. 8;
      LST_CYC_RCHD   at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      UPDATE         at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FSC0_T0_STRT_NSR_STARTTIME_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 0 table 0 start time nanosecond register
   type ETHSW_FSC0_T0_STRT_NSR_Register is record
      --  Time schedule table taken into use, nanoseconds part.
      STARTTIME_NS   : ETHSW_FSC0_T0_STRT_NSR_STARTTIME_NS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T0_STRT_NSR_Register use record
      STARTTIME_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC0_T0_STRT_SR_STARTTIME_S_Field is HAL.UInt8;

   --  ETHSW FSC scheduler 0 table 0 start time second register
   type ETHSW_FSC0_T0_STRT_SR_Register is record
      --  Time schedule table taken into use, seconds part.
      STARTTIME_S   : ETHSW_FSC0_T0_STRT_SR_STARTTIME_S_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T0_STRT_SR_Register use record
      STARTTIME_S   at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FSC0_T0_CYC_SUBNSR_CYCLETIME_SUBNS_Field is HAL.UInt24;

   --  ETHSW FSC scheduler 0 table 0 cycle time subnanosecond register
   type ETHSW_FSC0_T0_CYC_SUBNSR_Register is record
      --  unspecified
      Reserved_0_7    : HAL.UInt8 := 16#0#;
      --  Time each cycle is run, subnanoseconds part.
      CYCLETIME_SUBNS : ETHSW_FSC0_T0_CYC_SUBNSR_CYCLETIME_SUBNS_Field :=
                         16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T0_CYC_SUBNSR_Register use record
      Reserved_0_7    at 0 range 0 .. 7;
      CYCLETIME_SUBNS at 0 range 8 .. 31;
   end record;

   subtype ETHSW_FSC0_T0_CYC_NSR_CYCLETIME_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 0 table 0 cycle time nanosecond register
   type ETHSW_FSC0_T0_CYC_NSR_Register is record
      --  Time each cycle is run, nanoseconds part.
      CYCLETIME_NS   : ETHSW_FSC0_T0_CYC_NSR_CYCLETIME_NS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T0_CYC_NSR_Register use record
      CYCLETIME_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC0_T0_CYCTS_NSR_TIMESTAMP_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 0 table 0 cycle timestamp nanosecond register
   type ETHSW_FSC0_T0_CYCTS_NSR_Register is record
      --  Read-only. Timestamp from the start of the previous cycle,
      --  nanoseconds part.
      TIMESTAMP_NS   : ETHSW_FSC0_T0_CYCTS_NSR_TIMESTAMP_NS_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T0_CYCTS_NSR_Register use record
      TIMESTAMP_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC0_T0_CYCTS_SR_TIMESTAMP_S_Field is HAL.UInt8;

   --  ETHSW FSC scheduler 0 table 0 cycle timestamp second register
   type ETHSW_FSC0_T0_CYCTS_SR_Register is record
      --  Read-only. Timestamp from the start of the previous cycle, seconds
      --  part.
      TIMESTAMP_S   : ETHSW_FSC0_T0_CYCTS_SR_TIMESTAMP_S_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T0_CYCTS_SR_Register use record
      TIMESTAMP_S   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ETHSW FSC scheduler 0 table 1 general control and status register
   type ETHSW_FSC0_T1_TBL_GENR_Register is record
      --  Schedule table can be taken into use
      SCH_TBL_UPDATE : Boolean := False;
      --  Read-only. Schedule table currently in use
      SCH_TBL_IN_USE : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Last cycle number register enable/disable
      LST_CYC_EN     : Boolean := False;
      --  Read-only. Last cycle reached
      LST_CYC_RCHD   : Boolean := False;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Update
      UPDATE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T1_TBL_GENR_Register use record
      SCH_TBL_UPDATE at 0 range 0 .. 0;
      SCH_TBL_IN_USE at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      LST_CYC_EN     at 0 range 8 .. 8;
      LST_CYC_RCHD   at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      UPDATE         at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FSC0_T1_STRT_NSR_STARTTIME_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 0 table 1 start time nanosecond register
   type ETHSW_FSC0_T1_STRT_NSR_Register is record
      --  Time schedule table taken into use, nanoseconds part.
      STARTTIME_NS   : ETHSW_FSC0_T1_STRT_NSR_STARTTIME_NS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T1_STRT_NSR_Register use record
      STARTTIME_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC0_T1_STRT_SR_STARTTIME_S_Field is HAL.UInt8;

   --  ETHSW FSC scheduler 0 table 1 start time second register
   type ETHSW_FSC0_T1_STRT_SR_Register is record
      --  Time schedule table taken into use, seconds part.
      STARTTIME_S   : ETHSW_FSC0_T1_STRT_SR_STARTTIME_S_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T1_STRT_SR_Register use record
      STARTTIME_S   at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FSC0_T1_CYC_SUBNSR_CYCLETIME_SUBNS_Field is HAL.UInt24;

   --  ETHSW FSC scheduler 0 table 1 cycle time subnanosecond register
   type ETHSW_FSC0_T1_CYC_SUBNSR_Register is record
      --  unspecified
      Reserved_0_7    : HAL.UInt8 := 16#0#;
      --  Time each cycle is run, subnanoseconds part.
      CYCLETIME_SUBNS : ETHSW_FSC0_T1_CYC_SUBNSR_CYCLETIME_SUBNS_Field :=
                         16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T1_CYC_SUBNSR_Register use record
      Reserved_0_7    at 0 range 0 .. 7;
      CYCLETIME_SUBNS at 0 range 8 .. 31;
   end record;

   subtype ETHSW_FSC0_T1_CYC_NSR_CYCLETIME_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 0 table 1 cycle time nanosecond register
   type ETHSW_FSC0_T1_CYC_NSR_Register is record
      --  Time each cycle is run, nanoseconds part.
      CYCLETIME_NS   : ETHSW_FSC0_T1_CYC_NSR_CYCLETIME_NS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T1_CYC_NSR_Register use record
      CYCLETIME_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC0_T1_CYCTS_NSR_TIMESTAMP_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 0 table 1 cycle timestamp nanosecond register
   type ETHSW_FSC0_T1_CYCTS_NSR_Register is record
      --  Read-only. Timestamp from the start of the previous cycle,
      --  nanoseconds part.
      TIMESTAMP_NS   : ETHSW_FSC0_T1_CYCTS_NSR_TIMESTAMP_NS_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T1_CYCTS_NSR_Register use record
      TIMESTAMP_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC0_T1_CYCTS_SR_TIMESTAMP_S_Field is HAL.UInt8;

   --  ETHSW FSC scheduler 0 table 1 cycle timestamp second register
   type ETHSW_FSC0_T1_CYCTS_SR_Register is record
      --  Read-only. Timestamp from the start of the previous cycle, seconds
      --  part.
      TIMESTAMP_S   : ETHSW_FSC0_T1_CYCTS_SR_TIMESTAMP_S_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC0_T1_CYCTS_SR_Register use record
      TIMESTAMP_S   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETHSW_FSC1_SCH_GENR_DWNCNT_SPD_Field is HAL.UInt2;
   subtype ETHSW_FSC1_SCH_GENR_DWNCNT_STRT_VAL_Field is HAL.UInt11;

   --  ETHSW FSC scheduler 1 general register
   type ETHSW_FSC1_SCH_GENR_Register is record
      --  Downcounter speed, 10/100 divider
      DWNCNT_SPD      : ETHSW_FSC1_SCH_GENR_DWNCNT_SPD_Field := 16#0#;
      --  unspecified
      Reserved_2_3    : HAL.UInt2 := 16#0#;
      --  Downcounter start value.
      DWNCNT_STRT_VAL : ETHSW_FSC1_SCH_GENR_DWNCNT_STRT_VAL_Field := 16#7FF#;
      --  unspecified
      Reserved_15_15  : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_SCH_GENR_Register use record
      DWNCNT_SPD      at 0 range 0 .. 1;
      Reserved_2_3    at 0 range 2 .. 3;
      DWNCNT_STRT_VAL at 0 range 4 .. 14;
      Reserved_15_15  at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FSC1_DWNCNT_SPDR_DWNCNTR_SPD_Field is HAL.UInt4;

   --  ETHSW FSC scheduler 1 downcounter speed setting register
   type ETHSW_FSC1_DWNCNT_SPDR_Register is record
      --  unspecified
      Reserved_0_4  : HAL.UInt5 := 16#0#;
      --  Downcounter speed, addend
      DWNCNTR_SPD   : ETHSW_FSC1_DWNCNT_SPDR_DWNCNTR_SPD_Field := 16#8#;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_DWNCNT_SPDR_Register use record
      Reserved_0_4  at 0 range 0 .. 4;
      DWNCNTR_SPD   at 0 range 5 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  ETHSW FSC scheduler 1 emergency disable control register
   type ETHSW_FSC1_EME_DIS_CR_Register is record
      --  Emergency disable MUX control
      EME_DIS_MUX_CTRL  : Boolean := True;
      --  Read-only. Current state of emergency disable MUX
      EME_DIS_MUX_STATE : Boolean := True;
      --  unspecified
      Reserved_2_15     : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_EME_DIS_CR_Register use record
      EME_DIS_MUX_CTRL  at 0 range 0 .. 0;
      EME_DIS_MUX_STATE at 0 range 1 .. 1;
      Reserved_2_15     at 0 range 2 .. 15;
   end record;

   subtype ETHSW_FSC1_EME_DIS_STATR_EME_DIS_STAT_Field is HAL.UInt9;

   --  ETHSW FSC scheduler 1 emergency disable port state register
   type ETHSW_FSC1_EME_DIS_STATR_Register is record
      --  Gate state in Emergency disable mode
      EME_DIS_STAT  : ETHSW_FSC1_EME_DIS_STATR_EME_DIS_STAT_Field := 16#FF#;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_EME_DIS_STATR_Register use record
      EME_DIS_STAT  at 0 range 0 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  ETHSW FSC scheduler 1 table 0 general control and status register
   type ETHSW_FSC1_T0_TBL_GENR_Register is record
      --  Schedule table can be taken into use
      SCH_TBL_UPDATE : Boolean := False;
      --  Read-only. Schedule table currently in use
      SCH_TBL_IN_USE : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Last cycle number register enable/disable
      LST_CYC_EN     : Boolean := False;
      --  Read-only. Last cycle reached
      LST_CYC_RCHD   : Boolean := False;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Update
      UPDATE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T0_TBL_GENR_Register use record
      SCH_TBL_UPDATE at 0 range 0 .. 0;
      SCH_TBL_IN_USE at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      LST_CYC_EN     at 0 range 8 .. 8;
      LST_CYC_RCHD   at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      UPDATE         at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FSC1_T0_STRT_NSR_STARTTIME_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 1 table 0 start time nanosecond register
   type ETHSW_FSC1_T0_STRT_NSR_Register is record
      --  Time schedule table taken into use, nanoseconds part.
      STARTTIME_NS   : ETHSW_FSC1_T0_STRT_NSR_STARTTIME_NS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T0_STRT_NSR_Register use record
      STARTTIME_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC1_T0_STRT_SR_STARTTIME_S_Field is HAL.UInt8;

   --  ETHSW FSC scheduler 1 table 0 start time second register
   type ETHSW_FSC1_T0_STRT_SR_Register is record
      --  Time schedule table taken into use, seconds part.
      STARTTIME_S   : ETHSW_FSC1_T0_STRT_SR_STARTTIME_S_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T0_STRT_SR_Register use record
      STARTTIME_S   at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FSC1_T0_CYC_SUBNSR_CYCLETIME_SUBNS_Field is HAL.UInt24;

   --  ETHSW FSC scheduler 1 table 0 cycle time subnanosecond register
   type ETHSW_FSC1_T0_CYC_SUBNSR_Register is record
      --  unspecified
      Reserved_0_7    : HAL.UInt8 := 16#0#;
      --  Time each cycle is run, subnanoseconds part.
      CYCLETIME_SUBNS : ETHSW_FSC1_T0_CYC_SUBNSR_CYCLETIME_SUBNS_Field :=
                         16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T0_CYC_SUBNSR_Register use record
      Reserved_0_7    at 0 range 0 .. 7;
      CYCLETIME_SUBNS at 0 range 8 .. 31;
   end record;

   subtype ETHSW_FSC1_T0_CYC_NSR_CYCLETIME_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 1 table 0 cycle time nanosecond register
   type ETHSW_FSC1_T0_CYC_NSR_Register is record
      --  Time each cycle is run, nanoseconds part.
      CYCLETIME_NS   : ETHSW_FSC1_T0_CYC_NSR_CYCLETIME_NS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T0_CYC_NSR_Register use record
      CYCLETIME_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC1_T0_CYCTS_NSR_TIMESTAMP_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 1 table 0 cycle timestamp nanosecond register
   type ETHSW_FSC1_T0_CYCTS_NSR_Register is record
      --  Read-only. Timestamp from the start of the previous cycle,
      --  nanoseconds part.
      TIMESTAMP_NS   : ETHSW_FSC1_T0_CYCTS_NSR_TIMESTAMP_NS_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T0_CYCTS_NSR_Register use record
      TIMESTAMP_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC1_T0_CYCTS_SR_TIMESTAMP_S_Field is HAL.UInt8;

   --  ETHSW FSC scheduler 1 table 0 cycle timestamp second register
   type ETHSW_FSC1_T0_CYCTS_SR_Register is record
      --  Read-only. Timestamp from the start of the previous cycle, seconds
      --  part.
      TIMESTAMP_S   : ETHSW_FSC1_T0_CYCTS_SR_TIMESTAMP_S_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T0_CYCTS_SR_Register use record
      TIMESTAMP_S   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ETHSW FSC scheduler 1 table 1 general control and status register
   type ETHSW_FSC1_T1_TBL_GENR_Register is record
      --  Schedule table can be taken into use
      SCH_TBL_UPDATE : Boolean := False;
      --  Read-only. Schedule table currently in use
      SCH_TBL_IN_USE : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Last cycle number register enable/disable
      LST_CYC_EN     : Boolean := False;
      --  Read-only. Last cycle reached
      LST_CYC_RCHD   : Boolean := False;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Update
      UPDATE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T1_TBL_GENR_Register use record
      SCH_TBL_UPDATE at 0 range 0 .. 0;
      SCH_TBL_IN_USE at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      LST_CYC_EN     at 0 range 8 .. 8;
      LST_CYC_RCHD   at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      UPDATE         at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FSC1_T1_STRT_NSR_STARTTIME_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 1 table 1 start time nanosecond register
   type ETHSW_FSC1_T1_STRT_NSR_Register is record
      --  Time schedule table taken into use, nanoseconds part.
      STARTTIME_NS   : ETHSW_FSC1_T1_STRT_NSR_STARTTIME_NS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T1_STRT_NSR_Register use record
      STARTTIME_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC1_T1_STRT_SR_STARTTIME_S_Field is HAL.UInt8;

   --  ETHSW FSC scheduler 1 table 1 start time second register
   type ETHSW_FSC1_T1_STRT_SR_Register is record
      --  Time schedule table taken into use, seconds part.
      STARTTIME_S   : ETHSW_FSC1_T1_STRT_SR_STARTTIME_S_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T1_STRT_SR_Register use record
      STARTTIME_S   at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FSC1_T1_CYC_SUBNSR_CYCLETIME_SUBNS_Field is HAL.UInt24;

   --  ETHSW FSC scheduler 1 table 1 cycle time subnanosecond register
   type ETHSW_FSC1_T1_CYC_SUBNSR_Register is record
      --  unspecified
      Reserved_0_7    : HAL.UInt8 := 16#0#;
      --  Time each cycle is run, subnanoseconds part.
      CYCLETIME_SUBNS : ETHSW_FSC1_T1_CYC_SUBNSR_CYCLETIME_SUBNS_Field :=
                         16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T1_CYC_SUBNSR_Register use record
      Reserved_0_7    at 0 range 0 .. 7;
      CYCLETIME_SUBNS at 0 range 8 .. 31;
   end record;

   subtype ETHSW_FSC1_T1_CYC_NSR_CYCLETIME_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 1 table 1 cycle time nanosecond register
   type ETHSW_FSC1_T1_CYC_NSR_Register is record
      --  Time each cycle is run, nanoseconds part.
      CYCLETIME_NS   : ETHSW_FSC1_T1_CYC_NSR_CYCLETIME_NS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T1_CYC_NSR_Register use record
      CYCLETIME_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC1_T1_CYCTS_NSR_TIMESTAMP_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 1 table 1 cycle timestamp nanosecond register
   type ETHSW_FSC1_T1_CYCTS_NSR_Register is record
      --  Read-only. Timestamp from the start of the previous cycle,
      --  nanoseconds part.
      TIMESTAMP_NS   : ETHSW_FSC1_T1_CYCTS_NSR_TIMESTAMP_NS_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T1_CYCTS_NSR_Register use record
      TIMESTAMP_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC1_T1_CYCTS_SR_TIMESTAMP_S_Field is HAL.UInt8;

   --  ETHSW FSC scheduler 1 table 1 cycle timestamp second register
   type ETHSW_FSC1_T1_CYCTS_SR_Register is record
      --  Read-only. Timestamp from the start of the previous cycle, seconds
      --  part.
      TIMESTAMP_S   : ETHSW_FSC1_T1_CYCTS_SR_TIMESTAMP_S_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC1_T1_CYCTS_SR_Register use record
      TIMESTAMP_S   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETHSW_FSC2_SCH_GENR_DWNCNT_SPD_Field is HAL.UInt2;
   subtype ETHSW_FSC2_SCH_GENR_DWNCNT_STRT_VAL_Field is HAL.UInt11;

   --  ETHSW FSC scheduler 2 general register
   type ETHSW_FSC2_SCH_GENR_Register is record
      --  Downcounter speed, 10/100 divider
      DWNCNT_SPD      : ETHSW_FSC2_SCH_GENR_DWNCNT_SPD_Field := 16#0#;
      --  unspecified
      Reserved_2_3    : HAL.UInt2 := 16#0#;
      --  Downcounter start value.
      DWNCNT_STRT_VAL : ETHSW_FSC2_SCH_GENR_DWNCNT_STRT_VAL_Field := 16#7FF#;
      --  unspecified
      Reserved_15_15  : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_SCH_GENR_Register use record
      DWNCNT_SPD      at 0 range 0 .. 1;
      Reserved_2_3    at 0 range 2 .. 3;
      DWNCNT_STRT_VAL at 0 range 4 .. 14;
      Reserved_15_15  at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FSC2_DWNCNT_SPDR_DWNCNTR_SPD_Field is HAL.UInt4;

   --  ETHSW FSC scheduler 2 downcounter speed setting register
   type ETHSW_FSC2_DWNCNT_SPDR_Register is record
      --  unspecified
      Reserved_0_4  : HAL.UInt5 := 16#0#;
      --  Downcounter speed, addend
      DWNCNTR_SPD   : ETHSW_FSC2_DWNCNT_SPDR_DWNCNTR_SPD_Field := 16#8#;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_DWNCNT_SPDR_Register use record
      Reserved_0_4  at 0 range 0 .. 4;
      DWNCNTR_SPD   at 0 range 5 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  ETHSW FSC scheduler 2 emergency disable control register
   type ETHSW_FSC2_EME_DIS_CR_Register is record
      --  Emergency disable MUX control
      EME_DIS_MUX_CTRL  : Boolean := True;
      --  Read-only. Current state of emergency disable MUX
      EME_DIS_MUX_STATE : Boolean := True;
      --  unspecified
      Reserved_2_15     : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_EME_DIS_CR_Register use record
      EME_DIS_MUX_CTRL  at 0 range 0 .. 0;
      EME_DIS_MUX_STATE at 0 range 1 .. 1;
      Reserved_2_15     at 0 range 2 .. 15;
   end record;

   subtype ETHSW_FSC2_EME_DIS_STATR_EME_DIS_STAT_Field is HAL.UInt9;

   --  ETHSW FSC scheduler 2 emergency disable port state register
   type ETHSW_FSC2_EME_DIS_STATR_Register is record
      --  Gate state in Emergency disable mode
      EME_DIS_STAT  : ETHSW_FSC2_EME_DIS_STATR_EME_DIS_STAT_Field := 16#FF#;
      --  unspecified
      Reserved_9_15 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_EME_DIS_STATR_Register use record
      EME_DIS_STAT  at 0 range 0 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
   end record;

   --  ETHSW FSC scheduler 2 table 0 general control and status register
   type ETHSW_FSC2_T0_TBL_GENR_Register is record
      --  Schedule table can be taken into use
      SCH_TBL_UPDATE : Boolean := False;
      --  Read-only. Schedule table currently in use
      SCH_TBL_IN_USE : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Last cycle number register enable/disable
      LST_CYC_EN     : Boolean := False;
      --  Read-only. Last cycle reached
      LST_CYC_RCHD   : Boolean := False;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Update
      UPDATE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T0_TBL_GENR_Register use record
      SCH_TBL_UPDATE at 0 range 0 .. 0;
      SCH_TBL_IN_USE at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      LST_CYC_EN     at 0 range 8 .. 8;
      LST_CYC_RCHD   at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      UPDATE         at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FSC2_T0_STRT_NSR_STARTTIME_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 2 table 0 start time nanosecond register
   type ETHSW_FSC2_T0_STRT_NSR_Register is record
      --  Time schedule table taken into use, nanoseconds part.
      STARTTIME_NS   : ETHSW_FSC2_T0_STRT_NSR_STARTTIME_NS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T0_STRT_NSR_Register use record
      STARTTIME_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC2_T0_STRT_SR_STARTTIME_S_Field is HAL.UInt8;

   --  ETHSW FSC scheduler 2 table 0 start time second register
   type ETHSW_FSC2_T0_STRT_SR_Register is record
      --  Time schedule table taken into use, seconds part.
      STARTTIME_S   : ETHSW_FSC2_T0_STRT_SR_STARTTIME_S_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T0_STRT_SR_Register use record
      STARTTIME_S   at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FSC2_T0_CYC_SUBNSR_CYCLETIME_SUBNS_Field is HAL.UInt24;

   --  ETHSW FSC scheduler 2 table 0 cycle time subnanosecond register
   type ETHSW_FSC2_T0_CYC_SUBNSR_Register is record
      --  unspecified
      Reserved_0_7    : HAL.UInt8 := 16#0#;
      --  Time each cycle is run, subnanoseconds part.
      CYCLETIME_SUBNS : ETHSW_FSC2_T0_CYC_SUBNSR_CYCLETIME_SUBNS_Field :=
                         16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T0_CYC_SUBNSR_Register use record
      Reserved_0_7    at 0 range 0 .. 7;
      CYCLETIME_SUBNS at 0 range 8 .. 31;
   end record;

   subtype ETHSW_FSC2_T0_CYC_NSR_CYCLETIME_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 2 table 0 cycle time nanosecond register
   type ETHSW_FSC2_T0_CYC_NSR_Register is record
      --  Time each cycle is run, nanoseconds part.
      CYCLETIME_NS   : ETHSW_FSC2_T0_CYC_NSR_CYCLETIME_NS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T0_CYC_NSR_Register use record
      CYCLETIME_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC2_T0_CYCTS_NSR_TIMESTAMP_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 2 table 0 cycle timestamp nanosecond register
   type ETHSW_FSC2_T0_CYCTS_NSR_Register is record
      --  Read-only. Timestamp from the start of the previous cycle,
      --  nanoseconds part.
      TIMESTAMP_NS   : ETHSW_FSC2_T0_CYCTS_NSR_TIMESTAMP_NS_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T0_CYCTS_NSR_Register use record
      TIMESTAMP_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC2_T0_CYCTS_SR_TIMESTAMP_S_Field is HAL.UInt8;

   --  ETHSW FSC scheduler 2 table 0 cycle timestamp second register
   type ETHSW_FSC2_T0_CYCTS_SR_Register is record
      --  Read-only. Timestamp from the start of the previous cycle, seconds
      --  part.
      TIMESTAMP_S   : ETHSW_FSC2_T0_CYCTS_SR_TIMESTAMP_S_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T0_CYCTS_SR_Register use record
      TIMESTAMP_S   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  ETHSW FSC scheduler 2 table 1 general control and status register
   type ETHSW_FSC2_T1_TBL_GENR_Register is record
      --  Schedule table can be taken into use
      SCH_TBL_UPDATE : Boolean := False;
      --  Read-only. Schedule table currently in use
      SCH_TBL_IN_USE : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Last cycle number register enable/disable
      LST_CYC_EN     : Boolean := False;
      --  Read-only. Last cycle reached
      LST_CYC_RCHD   : Boolean := False;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Update
      UPDATE         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T1_TBL_GENR_Register use record
      SCH_TBL_UPDATE at 0 range 0 .. 0;
      SCH_TBL_IN_USE at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      LST_CYC_EN     at 0 range 8 .. 8;
      LST_CYC_RCHD   at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      UPDATE         at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FSC2_T1_STRT_NSR_STARTTIME_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 2 table 1 start time nanosecond register
   type ETHSW_FSC2_T1_STRT_NSR_Register is record
      --  Time schedule table taken into use, nanoseconds part.
      STARTTIME_NS   : ETHSW_FSC2_T1_STRT_NSR_STARTTIME_NS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T1_STRT_NSR_Register use record
      STARTTIME_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC2_T1_STRT_SR_STARTTIME_S_Field is HAL.UInt8;

   --  ETHSW FSC scheduler 2 table 1 start time second register
   type ETHSW_FSC2_T1_STRT_SR_Register is record
      --  Time schedule table taken into use, seconds part.
      STARTTIME_S   : ETHSW_FSC2_T1_STRT_SR_STARTTIME_S_Field := 16#0#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T1_STRT_SR_Register use record
      STARTTIME_S   at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FSC2_T1_CYC_SUBNSR_CYCLETIME_SUBNS_Field is HAL.UInt24;

   --  ETHSW FSC scheduler 2 table 1 cycle time subnanosecond register
   type ETHSW_FSC2_T1_CYC_SUBNSR_Register is record
      --  unspecified
      Reserved_0_7    : HAL.UInt8 := 16#0#;
      --  Time each cycle is run, subnanoseconds part.
      CYCLETIME_SUBNS : ETHSW_FSC2_T1_CYC_SUBNSR_CYCLETIME_SUBNS_Field :=
                         16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T1_CYC_SUBNSR_Register use record
      Reserved_0_7    at 0 range 0 .. 7;
      CYCLETIME_SUBNS at 0 range 8 .. 31;
   end record;

   subtype ETHSW_FSC2_T1_CYC_NSR_CYCLETIME_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 2 table 1 cycle time nanosecond register
   type ETHSW_FSC2_T1_CYC_NSR_Register is record
      --  Time each cycle is run, nanoseconds part.
      CYCLETIME_NS   : ETHSW_FSC2_T1_CYC_NSR_CYCLETIME_NS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T1_CYC_NSR_Register use record
      CYCLETIME_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC2_T1_CYCTS_NSR_TIMESTAMP_NS_Field is HAL.UInt30;

   --  ETHSW FSC scheduler 2 table 1 cycle timestamp nanosecond register
   type ETHSW_FSC2_T1_CYCTS_NSR_Register is record
      --  Read-only. Timestamp from the start of the previous cycle,
      --  nanoseconds part.
      TIMESTAMP_NS   : ETHSW_FSC2_T1_CYCTS_NSR_TIMESTAMP_NS_Field;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T1_CYCTS_NSR_Register use record
      TIMESTAMP_NS   at 0 range 0 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETHSW_FSC2_T1_CYCTS_SR_TIMESTAMP_S_Field is HAL.UInt8;

   --  ETHSW FSC scheduler 2 table 1 cycle timestamp second register
   type ETHSW_FSC2_T1_CYCTS_SR_Register is record
      --  Read-only. Timestamp from the start of the previous cycle, seconds
      --  part.
      TIMESTAMP_S   : ETHSW_FSC2_T1_CYCTS_SR_TIMESTAMP_S_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FSC2_T1_CYCTS_SR_Register use record
      TIMESTAMP_S   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETHSW_FES0_PORT_STATER_FWD_ST_Field is HAL.UInt2;
   subtype ETHSW_FES0_PORT_STATER_MGMT_ST_Field is HAL.UInt2;
   subtype ETHSW_FES0_PORT_STATER_HW_MODE_Field is HAL.UInt2;
   subtype ETHSW_FES0_PORT_STATER_SPEED_SEL_Field is HAL.UInt2;

   --  ETHSW FES port 0 port State register
   type ETHSW_FES0_PORT_STATER_Register is record
      --  Port Forwarding state
      FWD_ST         : ETHSW_FES0_PORT_STATER_FWD_ST_Field := 16#2#;
      --  Port management state
      MGMT_ST        : ETHSW_FES0_PORT_STATER_MGMT_ST_Field := 16#0#;
      --  Port HW mode
      HW_MODE        : ETHSW_FES0_PORT_STATER_HW_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Speed select
      SPEED_SEL      : ETHSW_FES0_PORT_STATER_SPEED_SEL_Field := 16#0#;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  Fallback to Store-and-Forward
      FB_STF         : Boolean := False;
      --  RX Cut-through
      RX_CT          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_PORT_STATER_Register use record
      FWD_ST         at 0 range 0 .. 1;
      MGMT_ST        at 0 range 2 .. 3;
      HW_MODE        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SPEED_SEL      at 0 range 8 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      FB_STF         at 0 range 14 .. 14;
      RX_CT          at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES0_VLAN0R_PD_VLAN_Field is HAL.UInt12;
   subtype ETHSW_FES0_VLAN0R_PD_PCP_Field is HAL.UInt3;

   --  ETHSW FES port 0 port VLAN configuration register 0
   type ETHSW_FES0_VLAN0R_Register is record
      --  Port default VLAN
      PD_VLAN  : ETHSW_FES0_VLAN0R_PD_VLAN_Field := 16#FFF#;
      --  Port default PCP
      PD_PCP   : ETHSW_FES0_VLAN0R_PD_PCP_Field := 16#0#;
      --  Tagged/untagged
      TGD_UTGD : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_VLAN0R_Register use record
      PD_VLAN  at 0 range 0 .. 11;
      PD_PCP   at 0 range 12 .. 14;
      TGD_UTGD at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES0_VLAN1R_VLAN_PRIF_Field is HAL.UInt12;

   --  ETHSW FES port 0 port VLAN configuration register 1
   type ETHSW_FES0_VLAN1R_Register is record
      --  Default VLAN for Priority Tagged Frames
      VLAN_PRIF      : ETHSW_FES0_VLAN1R_VLAN_PRIF_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Use_DEI
      USE_DEI        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_VLAN1R_Register use record
      VLAN_PRIF      at 0 range 0 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      USE_DEI        at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES0_FWDM_CFGR_PORT_FWDM_Field is HAL.UInt3;

   --  ETHSW FES port 0 port forward mask configuration register
   type ETHSW_FES0_FWDM_CFGR_Register is record
      --  Port forward mask
      PORT_FWDM     : ETHSW_FES0_FWDM_CFGR_PORT_FWDM_Field := 16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FWDM_CFGR_Register use record
      PORT_FWDM     at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES0_PRIO_REGENLR_PCP0_Field is HAL.UInt3;
   subtype ETHSW_FES0_PRIO_REGENLR_PCP1_Field is HAL.UInt3;
   subtype ETHSW_FES0_PRIO_REGENLR_PCP2_Field is HAL.UInt3;
   subtype ETHSW_FES0_PRIO_REGENLR_PCP3_Field is HAL.UInt3;

   --  ETHSW FES port 0 priority regeneration table low register
   type ETHSW_FES0_PRIO_REGENLR_Register is record
      --  Priority, PCP0
      PCP0           : ETHSW_FES0_PRIO_REGENLR_PCP0_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Priority, PCP1
      PCP1           : ETHSW_FES0_PRIO_REGENLR_PCP1_Field := 16#1#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Priority, PCP2
      PCP2           : ETHSW_FES0_PRIO_REGENLR_PCP2_Field := 16#2#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Priority, PCP3
      PCP3           : ETHSW_FES0_PRIO_REGENLR_PCP3_Field := 16#3#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_PRIO_REGENLR_Register use record
      PCP0           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PCP1           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PCP2           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PCP3           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES0_PRIO_REGENHR_PCP4_Field is HAL.UInt3;
   subtype ETHSW_FES0_PRIO_REGENHR_PCP5_Field is HAL.UInt3;
   subtype ETHSW_FES0_PRIO_REGENHR_PCP6_Field is HAL.UInt3;
   subtype ETHSW_FES0_PRIO_REGENHR_PCP7_Field is HAL.UInt3;

   --  ETHSW FES port 0 priority regeneration table high register
   type ETHSW_FES0_PRIO_REGENHR_Register is record
      --  Priority, PCP4
      PCP4           : ETHSW_FES0_PRIO_REGENHR_PCP4_Field := 16#4#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Priority, PCP5
      PCP5           : ETHSW_FES0_PRIO_REGENHR_PCP5_Field := 16#5#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Priority, PCP6
      PCP6           : ETHSW_FES0_PRIO_REGENHR_PCP6_Field := 16#6#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Priority, PCP7
      PCP7           : ETHSW_FES0_PRIO_REGENHR_PCP7_Field := 16#7#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_PRIO_REGENHR_Register use record
      PCP4           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PCP5           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PCP6           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PCP7           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES0_FRAMESIZE0R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 0 frame size 0 configuration register
   type ETHSW_FES0_FRAMESIZE0R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES0_FRAMESIZE0R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FRAMESIZE0R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES0_FRAMESIZE1R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 0 frame size 1 configuration register
   type ETHSW_FES0_FRAMESIZE1R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES0_FRAMESIZE1R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FRAMESIZE1R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES0_FRAMESIZE2R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 0 frame size 2 configuration register
   type ETHSW_FES0_FRAMESIZE2R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES0_FRAMESIZE2R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FRAMESIZE2R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES0_FRAMESIZE3R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 0 frame size 3 configuration register
   type ETHSW_FES0_FRAMESIZE3R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES0_FRAMESIZE3R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FRAMESIZE3R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES0_FRAMESIZE4R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 0 frame size 4 configuration register
   type ETHSW_FES0_FRAMESIZE4R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES0_FRAMESIZE4R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FRAMESIZE4R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES0_FRAMESIZE5R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 0 frame size 5 configuration register
   type ETHSW_FES0_FRAMESIZE5R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES0_FRAMESIZE5R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FRAMESIZE5R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES0_FRAMESIZE6R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 0 frame size 6 configuration register
   type ETHSW_FES0_FRAMESIZE6R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES0_FRAMESIZE6R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FRAMESIZE6R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES0_FRAMESIZE7R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 0 frame size 7 configuration register
   type ETHSW_FES0_FRAMESIZE7R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES0_FRAMESIZE7R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FRAMESIZE7R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  ETHSW_FES0_FID_CFG0R_FWD_ST array element
   subtype ETHSW_FES0_FID_CFG0R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES0_FID_CFG0R_FWD_ST array
   type ETHSW_FES0_FID_CFG0R_FWD_ST_Field_Array is array (0 .. 7)
     of ETHSW_FES0_FID_CFG0R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 0 filtering identifier configuration register 0
   type ETHSW_FES0_FID_CFG0R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES0_FID_CFG0R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FID_CFG0R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES0_FID_CFG1R_FWD_ST array element
   subtype ETHSW_FES0_FID_CFG1R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES0_FID_CFG1R_FWD_ST array
   type ETHSW_FES0_FID_CFG1R_FWD_ST_Field_Array is array (8 .. 15)
     of ETHSW_FES0_FID_CFG1R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 0 filtering identifier configuration register 1
   type ETHSW_FES0_FID_CFG1R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES0_FID_CFG1R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FID_CFG1R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES0_FID_CFG2R_FWD_ST array element
   subtype ETHSW_FES0_FID_CFG2R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES0_FID_CFG2R_FWD_ST array
   type ETHSW_FES0_FID_CFG2R_FWD_ST_Field_Array is array (16 .. 23)
     of ETHSW_FES0_FID_CFG2R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 0 filtering identifier configuration register 2
   type ETHSW_FES0_FID_CFG2R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES0_FID_CFG2R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FID_CFG2R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES0_FID_CFG3R_FWD_ST array element
   subtype ETHSW_FES0_FID_CFG3R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES0_FID_CFG3R_FWD_ST array
   type ETHSW_FES0_FID_CFG3R_FWD_ST_Field_Array is array (24 .. 31)
     of ETHSW_FES0_FID_CFG3R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 0 filtering identifier configuration register 3
   type ETHSW_FES0_FID_CFG3R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES0_FID_CFG3R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FID_CFG3R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES0_FID_CFG4R_FWD_ST array element
   subtype ETHSW_FES0_FID_CFG4R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES0_FID_CFG4R_FWD_ST array
   type ETHSW_FES0_FID_CFG4R_FWD_ST_Field_Array is array (32 .. 39)
     of ETHSW_FES0_FID_CFG4R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 0 filtering identifier configuration register 4
   type ETHSW_FES0_FID_CFG4R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES0_FID_CFG4R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FID_CFG4R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES0_FID_CFG5R_FWD_ST array element
   subtype ETHSW_FES0_FID_CFG5R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES0_FID_CFG5R_FWD_ST array
   type ETHSW_FES0_FID_CFG5R_FWD_ST_Field_Array is array (40 .. 47)
     of ETHSW_FES0_FID_CFG5R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 0 filtering identifier configuration register 5
   type ETHSW_FES0_FID_CFG5R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES0_FID_CFG5R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FID_CFG5R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES0_FID_CFG6R_FWD_ST array element
   subtype ETHSW_FES0_FID_CFG6R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES0_FID_CFG6R_FWD_ST array
   type ETHSW_FES0_FID_CFG6R_FWD_ST_Field_Array is array (48 .. 55)
     of ETHSW_FES0_FID_CFG6R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 0 filtering identifier configuration register 6
   type ETHSW_FES0_FID_CFG6R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES0_FID_CFG6R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FID_CFG6R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES0_FID_CFG7R_FWD_ST array element
   subtype ETHSW_FES0_FID_CFG7R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES0_FID_CFG7R_FWD_ST array
   type ETHSW_FES0_FID_CFG7R_FWD_ST_Field_Array is array (56 .. 63)
     of ETHSW_FES0_FID_CFG7R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 0 filtering identifier configuration register 7
   type ETHSW_FES0_FID_CFG7R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES0_FID_CFG7R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FID_CFG7R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW FES port 0 buffer fill level capture register
   type ETHSW_FES0_FL_CAPTR_Register is record
      --  Capture
      CAPTURE       : Boolean := False;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_CAPTR_Register use record
      CAPTURE       at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q0_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 0 minimum fill level queue 0 register
   type ETHSW_FES0_FL_Q0_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES0_FL_Q0_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q0_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q1_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 0 minimum fill level queue 1 register
   type ETHSW_FES0_FL_Q1_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES0_FL_Q1_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q1_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q2_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 0 minimum fill level queue 2 register
   type ETHSW_FES0_FL_Q2_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES0_FL_Q2_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q2_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q3_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 0 minimum fill level queue 3 register
   type ETHSW_FES0_FL_Q3_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES0_FL_Q3_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q3_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q4_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 0 minimum fill level queue 4 register
   type ETHSW_FES0_FL_Q4_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES0_FL_Q4_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q4_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q5_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 0 minimum fill level queue 5 register
   type ETHSW_FES0_FL_Q5_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES0_FL_Q5_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q5_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q6_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 0 minimum fill level queue 6 register
   type ETHSW_FES0_FL_Q6_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES0_FL_Q6_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q6_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q7_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 0 minimum fill level queue 7 register
   type ETHSW_FES0_FL_Q7_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES0_FL_Q7_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q7_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q0_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 0 maximum fill level queue 0 register
   type ETHSW_FES0_FL_Q0_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES0_FL_Q0_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q0_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q1_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 0 maximum fill level queue 1 register
   type ETHSW_FES0_FL_Q1_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES0_FL_Q1_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q1_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q2_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 0 maximum fill level queue 2 register
   type ETHSW_FES0_FL_Q2_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES0_FL_Q2_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q2_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q3_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 0 maximum fill level queue 3 register
   type ETHSW_FES0_FL_Q3_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES0_FL_Q3_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q3_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q4_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 0 maximum fill level queue 4 register
   type ETHSW_FES0_FL_Q4_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES0_FL_Q4_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q4_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q5_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 0 maximum fill level queue 5 register
   type ETHSW_FES0_FL_Q5_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES0_FL_Q5_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q5_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q6_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 0 maximum fill level queue 6 register
   type ETHSW_FES0_FL_Q6_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES0_FL_Q6_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q6_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_FL_Q7_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 0 maximum fill level queue 7 register
   type ETHSW_FES0_FL_Q7_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES0_FL_Q7_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_FL_Q7_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES0_PTP_RX_SYNCD_NSHR_PTP_RX_SYNC_DELAY_NSH_Field is
     HAL.UInt8;

   --  ETHSW FES PTP RX sync delay nanosecond high register
   type ETHSW_FES0_PTP_RX_SYNCD_NSHR_Register is record
      --  RX Sync delay, nanoseconds high part
      PTP_RX_SYNC_DELAY_NSH : ETHSW_FES0_PTP_RX_SYNCD_NSHR_PTP_RX_SYNC_DELAY_NSH_Field :=
                               16#0#;
      --  unspecified
      Reserved_8_15         : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_PTP_RX_SYNCD_NSHR_Register use record
      PTP_RX_SYNC_DELAY_NSH at 0 range 0 .. 7;
      Reserved_8_15         at 0 range 8 .. 15;
   end record;

   --  ETHSW FES port 0 counter control register
   type ETHSW_FES0_CNT_CTRLR_Register is record
      --  Capture
      CAPTURE        : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Capture counter group 1
      CPT_CNT_GRP1   : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Capture counter group 3
      CPT_CNT_GRP3   : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Capture counter group 5
      CPT_CNT_GRP5   : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_CNT_CTRLR_Register use record
      CAPTURE        at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      CPT_CNT_GRP1   at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CPT_CNT_GRP3   at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CPT_CNT_GRP5   at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype ETHSW_FES0_CNT_CMDR_CNT_NUM_Field is HAL.UInt6;

   --  ETHSW FES port 0 counter command register
   type ETHSW_FES0_CNT_CMDR_Register is record
      --  Counter number
      CNT_NUM       : ETHSW_FES0_CNT_CMDR_CNT_NUM_Field := 16#0#;
      --  unspecified
      Reserved_6_14 : HAL.UInt9 := 16#0#;
      --  Transfer
      TRANSFER      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_CNT_CMDR_Register use record
      CNT_NUM       at 0 range 0 .. 5;
      Reserved_6_14 at 0 range 6 .. 14;
      TRANSFER      at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES0_IPO_CMDR_IPO_FIL_NUM_Field is HAL.UInt4;

   --  ETHSW FES port 0 IPO command register
   type ETHSW_FES0_IPO_CMDR_Register is record
      --  IPO Filter Number
      IPO_FIL_NUM   : ETHSW_FES0_IPO_CMDR_IPO_FIL_NUM_Field := 16#0#;
      --  unspecified
      Reserved_4_13 : HAL.UInt10 := 16#0#;
      --  Read/write
      RD_WR         : Boolean := False;
      --  Transfer
      TRANSFER      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_IPO_CMDR_Register use record
      IPO_FIL_NUM   at 0 range 0 .. 3;
      Reserved_4_13 at 0 range 4 .. 13;
      RD_WR         at 0 range 14 .. 14;
      TRANSFER      at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES0_ETH_ADDR_CFG0R_CMP_LENGTH_Field is HAL.UInt6;
   subtype ETHSW_FES0_ETH_ADDR_CFG0R_NEW_PRI_MSB_Field is HAL.UInt2;

   --  ETHSW FES port 0 IPO filter configuration register 0
   type ETHSW_FES0_ETH_ADDR_CFG0R_Register is record
      --  Enable
      ENABLE         : Boolean := False;
      --  Source/Destination Match
      SRC_DST_MATCH  : Boolean := False;
      --  Compared Length
      CMP_LENGTH     : ETHSW_FES0_ETH_ADDR_CFG0R_CMP_LENGTH_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Policer priority
      POL_PRIO       : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  New priority, MSBs
      NEW_PRI_MSB    : ETHSW_FES0_ETH_ADDR_CFG0R_NEW_PRI_MSB_Field := 16#0#;
      --  Preserve priority
      PRES_PRI       : Boolean := False;
      --  New priority, LSB
      NEW_PRI_LSB    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_ETH_ADDR_CFG0R_Register use record
      ENABLE         at 0 range 0 .. 0;
      SRC_DST_MATCH  at 0 range 1 .. 1;
      CMP_LENGTH     at 0 range 2 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      POL_PRIO       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      NEW_PRI_MSB    at 0 range 12 .. 13;
      PRES_PRI       at 0 range 14 .. 14;
      NEW_PRI_LSB    at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES0_ETH_ADDR_FWD_ALLOWR_FWD_ALLOW_MSK_Field is HAL.UInt3;

   --  ETHSW FES port 0 forward allow register
   type ETHSW_FES0_ETH_ADDR_FWD_ALLOWR_Register is record
      --  Forward allow mask
      FWD_ALLOW_MSK : ETHSW_FES0_ETH_ADDR_FWD_ALLOWR_FWD_ALLOW_MSK_Field :=
                       16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_ETH_ADDR_FWD_ALLOWR_Register use record
      FWD_ALLOW_MSK at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES0_ETH_ADDR_FWD_MIRRORR_FWD_MIRROR_MSK_Field is HAL.UInt3;

   --  ETHSW FES port 0 forward mirror register
   type ETHSW_FES0_ETH_ADDR_FWD_MIRRORR_Register is record
      --  Forward mirror mask
      FWD_MIRROR_MSK : ETHSW_FES0_ETH_ADDR_FWD_MIRRORR_FWD_MIRROR_MSK_Field :=
                        16#0#;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_ETH_ADDR_FWD_MIRRORR_Register use record
      FWD_MIRROR_MSK at 0 range 0 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES0_ETH_ADDR_CFG1R_POLICER_Field is HAL.UInt7;

   --  ETHSW FES port 0 IPO filter configuration register 1
   type ETHSW_FES0_ETH_ADDR_CFG1R_Register is record
      --  Policer
      POLICER        : ETHSW_FES0_ETH_ADDR_CFG1R_POLICER_Field := 16#0#;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  IPO Mark
      IPO_MARK       : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Compare Order
      CMP_ORDER      : Boolean := False;
      --  Cut-Through disable
      CT_DIS         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_ETH_ADDR_CFG1R_Register use record
      POLICER        at 0 range 0 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      IPO_MARK       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CMP_ORDER      at 0 range 14 .. 14;
      CT_DIS         at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES0_ETH_ADDR_0R_OCTET_1_Field is HAL.UInt8;
   subtype ETHSW_FES0_ETH_ADDR_0R_OCTET_2_Field is HAL.UInt8;

   --  ETHSW FES port 0 ethernet address part 0 register
   type ETHSW_FES0_ETH_ADDR_0R_Register is record
      --  1less thansup>stless than/sup> octet
      OCTET_1 : ETHSW_FES0_ETH_ADDR_0R_OCTET_1_Field := 16#0#;
      --  2less thansup>ndless than/sup> octet
      OCTET_2 : ETHSW_FES0_ETH_ADDR_0R_OCTET_2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_ETH_ADDR_0R_Register use record
      OCTET_1 at 0 range 0 .. 7;
      OCTET_2 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES0_ETH_ADDR_1R_OCTET_3_Field is HAL.UInt8;
   subtype ETHSW_FES0_ETH_ADDR_1R_OCTET_4_Field is HAL.UInt8;

   --  ETHSW FES port 0 ethernet address part 1 register
   type ETHSW_FES0_ETH_ADDR_1R_Register is record
      --  3less thansup>rdless than/sup> octet
      OCTET_3 : ETHSW_FES0_ETH_ADDR_1R_OCTET_3_Field := 16#0#;
      --  4less thansup>thless than/sup> octet
      OCTET_4 : ETHSW_FES0_ETH_ADDR_1R_OCTET_4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_ETH_ADDR_1R_Register use record
      OCTET_3 at 0 range 0 .. 7;
      OCTET_4 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES0_ETH_ADDR_2R_OCTET_5_Field is HAL.UInt8;
   subtype ETHSW_FES0_ETH_ADDR_2R_OCTET_6_Field is HAL.UInt8;

   --  ETHSW FES port 0 ethernet address part 2 register
   type ETHSW_FES0_ETH_ADDR_2R_Register is record
      --  5less thansup>thless than/sup> octet
      OCTET_5 : ETHSW_FES0_ETH_ADDR_2R_OCTET_5_Field := 16#0#;
      --  6less thansup>thless than/sup> octet
      OCTET_6 : ETHSW_FES0_ETH_ADDR_2R_OCTET_6_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES0_ETH_ADDR_2R_Register use record
      OCTET_5 at 0 range 0 .. 7;
      OCTET_6 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES1_PORT_STATER_FWD_ST_Field is HAL.UInt2;
   subtype ETHSW_FES1_PORT_STATER_MGMT_ST_Field is HAL.UInt2;
   subtype ETHSW_FES1_PORT_STATER_HW_MODE_Field is HAL.UInt2;
   subtype ETHSW_FES1_PORT_STATER_SPEED_SEL_Field is HAL.UInt2;

   --  ETHSW FES port 1 port State register
   type ETHSW_FES1_PORT_STATER_Register is record
      --  Port Forwarding state
      FWD_ST         : ETHSW_FES1_PORT_STATER_FWD_ST_Field := 16#2#;
      --  Port management state
      MGMT_ST        : ETHSW_FES1_PORT_STATER_MGMT_ST_Field := 16#0#;
      --  Port HW mode
      HW_MODE        : ETHSW_FES1_PORT_STATER_HW_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Speed select
      SPEED_SEL      : ETHSW_FES1_PORT_STATER_SPEED_SEL_Field := 16#0#;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  Fallback to Store-and-Forward
      FB_STF         : Boolean := False;
      --  RX Cut-through
      RX_CT          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_PORT_STATER_Register use record
      FWD_ST         at 0 range 0 .. 1;
      MGMT_ST        at 0 range 2 .. 3;
      HW_MODE        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SPEED_SEL      at 0 range 8 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      FB_STF         at 0 range 14 .. 14;
      RX_CT          at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES1_VLAN0R_PD_VLAN_Field is HAL.UInt12;
   subtype ETHSW_FES1_VLAN0R_PD_PCP_Field is HAL.UInt3;

   --  ETHSW FES port 1 port VLAN configuration register 0
   type ETHSW_FES1_VLAN0R_Register is record
      --  Port default VLAN
      PD_VLAN  : ETHSW_FES1_VLAN0R_PD_VLAN_Field := 16#FFF#;
      --  Port default PCP
      PD_PCP   : ETHSW_FES1_VLAN0R_PD_PCP_Field := 16#0#;
      --  Tagged/untagged
      TGD_UTGD : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_VLAN0R_Register use record
      PD_VLAN  at 0 range 0 .. 11;
      PD_PCP   at 0 range 12 .. 14;
      TGD_UTGD at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES1_VLAN1R_VLAN_PRIF_Field is HAL.UInt12;

   --  ETHSW FES port 1 port VLAN configuration register 1
   type ETHSW_FES1_VLAN1R_Register is record
      --  Default VLAN for Priority Tagged Frames
      VLAN_PRIF      : ETHSW_FES1_VLAN1R_VLAN_PRIF_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Use_DEI
      USE_DEI        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_VLAN1R_Register use record
      VLAN_PRIF      at 0 range 0 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      USE_DEI        at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES1_FWDM_CFGR_PORT_FWDM_Field is HAL.UInt3;

   --  ETHSW FES port 1 port forward mask configuration register
   type ETHSW_FES1_FWDM_CFGR_Register is record
      --  Port forward mask
      PORT_FWDM     : ETHSW_FES1_FWDM_CFGR_PORT_FWDM_Field := 16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FWDM_CFGR_Register use record
      PORT_FWDM     at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES1_PRIO_REGENLR_PCP0_Field is HAL.UInt3;
   subtype ETHSW_FES1_PRIO_REGENLR_PCP1_Field is HAL.UInt3;
   subtype ETHSW_FES1_PRIO_REGENLR_PCP2_Field is HAL.UInt3;
   subtype ETHSW_FES1_PRIO_REGENLR_PCP3_Field is HAL.UInt3;

   --  ETHSW FES port 1 priority regeneration table low register
   type ETHSW_FES1_PRIO_REGENLR_Register is record
      --  Priority, PCP0
      PCP0           : ETHSW_FES1_PRIO_REGENLR_PCP0_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Priority, PCP1
      PCP1           : ETHSW_FES1_PRIO_REGENLR_PCP1_Field := 16#1#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Priority, PCP2
      PCP2           : ETHSW_FES1_PRIO_REGENLR_PCP2_Field := 16#2#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Priority, PCP3
      PCP3           : ETHSW_FES1_PRIO_REGENLR_PCP3_Field := 16#3#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_PRIO_REGENLR_Register use record
      PCP0           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PCP1           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PCP2           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PCP3           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES1_PRIO_REGENHR_PCP4_Field is HAL.UInt3;
   subtype ETHSW_FES1_PRIO_REGENHR_PCP5_Field is HAL.UInt3;
   subtype ETHSW_FES1_PRIO_REGENHR_PCP6_Field is HAL.UInt3;
   subtype ETHSW_FES1_PRIO_REGENHR_PCP7_Field is HAL.UInt3;

   --  ETHSW FES port 1 priority regeneration table high register
   type ETHSW_FES1_PRIO_REGENHR_Register is record
      --  Priority, PCP4
      PCP4           : ETHSW_FES1_PRIO_REGENHR_PCP4_Field := 16#4#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Priority, PCP5
      PCP5           : ETHSW_FES1_PRIO_REGENHR_PCP5_Field := 16#5#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Priority, PCP6
      PCP6           : ETHSW_FES1_PRIO_REGENHR_PCP6_Field := 16#6#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Priority, PCP7
      PCP7           : ETHSW_FES1_PRIO_REGENHR_PCP7_Field := 16#7#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_PRIO_REGENHR_Register use record
      PCP4           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PCP5           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PCP6           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PCP7           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  ETHSW_FES1_TX_CTER_CTE array
   type ETHSW_FES1_TX_CTER_CTE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ETHSW_FES1_TX_CTER_CTE
   type ETHSW_FES1_TX_CTER_CTE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CTE as a value
            Val : HAL.UInt8;
         when True =>
            --  CTE as an array
            Arr : ETHSW_FES1_TX_CTER_CTE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ETHSW_FES1_TX_CTER_CTE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ETHSW FES port 1 TX cut-through enable register
   type ETHSW_FES1_TX_CTER_Register is record
      --  Cut-through enable/disable for queue 0
      CTE           : ETHSW_FES1_TX_CTER_CTE_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_TX_CTER_Register use record
      CTE           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   --  ETHSW_FES1_TX_PREE0R_PREE array
   type ETHSW_FES1_TX_PREE0R_PREE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ETHSW_FES1_TX_PREE0R_PREE
   type ETHSW_FES1_TX_PREE0R_PREE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PREE as a value
            Val : HAL.UInt8;
         when True =>
            --  PREE as an array
            Arr : ETHSW_FES1_TX_PREE0R_PREE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ETHSW_FES1_TX_PREE0R_PREE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ETHSW FES port 1 TX preemptable traffic selection register 0
   type ETHSW_FES1_TX_PREE0R_Register is record
      --  Preemption setting for queue 0
      PREE          : ETHSW_FES1_TX_PREE0R_PREE_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_TX_PREE0R_Register use record
      PREE          at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES1_TX_PREE1R_ADDFRAGSIZE_Field is HAL.UInt2;

   --  ETHSW FES port 1 TX preemptable traffic selection register 1
   type ETHSW_FES1_TX_PREE1R_Register is record
      --  AddFragSize
      ADDFRAGSIZE   : ETHSW_FES1_TX_PREE1R_ADDFRAGSIZE_Field := 16#0#;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_TX_PREE1R_Register use record
      ADDFRAGSIZE   at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   subtype ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI0_Field is HAL.UInt3;
   subtype ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI1_Field is HAL.UInt3;
   subtype ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI2_Field is HAL.UInt3;
   subtype ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI3_Field is HAL.UInt3;
   subtype ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI4_Field is HAL.UInt3;
   subtype ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI5_Field is HAL.UInt3;
   subtype ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI6_Field is HAL.UInt3;
   subtype ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI7_Field is HAL.UInt3;

   --  ETHSW FES port 1 queue table configuration register
   type ETHSW_FES1_QUEUE_TBLR_Register is record
      --  Queue for priority 0
      QUEUE_PRI0     : ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI0_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Queue for priority 1
      QUEUE_PRI1     : ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI1_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Queue for priority 2
      QUEUE_PRI2     : ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI2_Field := 16#1#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Queue for priority 3
      QUEUE_PRI3     : ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI3_Field := 16#1#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Queue for priority 4
      QUEUE_PRI4     : ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI4_Field := 16#2#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Queue for priority 5
      QUEUE_PRI5     : ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI5_Field := 16#2#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Queue for priority 6
      QUEUE_PRI6     : ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI6_Field := 16#3#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Queue for priority 7
      QUEUE_PRI7     : ETHSW_FES1_QUEUE_TBLR_QUEUE_PRI7_Field := 16#3#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_QUEUE_TBLR_Register use record
      QUEUE_PRI0     at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      QUEUE_PRI1     at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      QUEUE_PRI2     at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      QUEUE_PRI3     at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      QUEUE_PRI4     at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      QUEUE_PRI5     at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      QUEUE_PRI6     at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      QUEUE_PRI7     at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ETHSW_FES1_FRAMESIZE0R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 1 frame size 0 configuration register
   type ETHSW_FES1_FRAMESIZE0R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES1_FRAMESIZE0R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FRAMESIZE0R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES1_FRAMESIZE1R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 1 frame size 1 configuration register
   type ETHSW_FES1_FRAMESIZE1R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES1_FRAMESIZE1R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FRAMESIZE1R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES1_FRAMESIZE2R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 1 frame size 2 configuration register
   type ETHSW_FES1_FRAMESIZE2R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES1_FRAMESIZE2R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FRAMESIZE2R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES1_FRAMESIZE3R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 1 frame size 3 configuration register
   type ETHSW_FES1_FRAMESIZE3R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES1_FRAMESIZE3R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FRAMESIZE3R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES1_FRAMESIZE4R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 1 frame size 4 configuration register
   type ETHSW_FES1_FRAMESIZE4R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES1_FRAMESIZE4R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FRAMESIZE4R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES1_FRAMESIZE5R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 1 frame size 5 configuration register
   type ETHSW_FES1_FRAMESIZE5R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES1_FRAMESIZE5R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FRAMESIZE5R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES1_FRAMESIZE6R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 1 frame size 6 configuration register
   type ETHSW_FES1_FRAMESIZE6R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES1_FRAMESIZE6R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FRAMESIZE6R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES1_FRAMESIZE7R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 1 frame size 7 configuration register
   type ETHSW_FES1_FRAMESIZE7R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES1_FRAMESIZE7R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FRAMESIZE7R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  ETHSW_FES1_FID_CFG0R_FWD_ST array element
   subtype ETHSW_FES1_FID_CFG0R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES1_FID_CFG0R_FWD_ST array
   type ETHSW_FES1_FID_CFG0R_FWD_ST_Field_Array is array (0 .. 7)
     of ETHSW_FES1_FID_CFG0R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 1 filtering identifier configuration register 0
   type ETHSW_FES1_FID_CFG0R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES1_FID_CFG0R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FID_CFG0R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES1_FID_CFG1R_FWD_ST array element
   subtype ETHSW_FES1_FID_CFG1R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES1_FID_CFG1R_FWD_ST array
   type ETHSW_FES1_FID_CFG1R_FWD_ST_Field_Array is array (8 .. 15)
     of ETHSW_FES1_FID_CFG1R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 1 filtering identifier configuration register 1
   type ETHSW_FES1_FID_CFG1R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES1_FID_CFG1R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FID_CFG1R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES1_FID_CFG2R_FWD_ST array element
   subtype ETHSW_FES1_FID_CFG2R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES1_FID_CFG2R_FWD_ST array
   type ETHSW_FES1_FID_CFG2R_FWD_ST_Field_Array is array (16 .. 23)
     of ETHSW_FES1_FID_CFG2R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 1 filtering identifier configuration register 2
   type ETHSW_FES1_FID_CFG2R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES1_FID_CFG2R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FID_CFG2R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES1_FID_CFG3R_FWD_ST array element
   subtype ETHSW_FES1_FID_CFG3R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES1_FID_CFG3R_FWD_ST array
   type ETHSW_FES1_FID_CFG3R_FWD_ST_Field_Array is array (24 .. 31)
     of ETHSW_FES1_FID_CFG3R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 1 filtering identifier configuration register 3
   type ETHSW_FES1_FID_CFG3R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES1_FID_CFG3R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FID_CFG3R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES1_FID_CFG4R_FWD_ST array element
   subtype ETHSW_FES1_FID_CFG4R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES1_FID_CFG4R_FWD_ST array
   type ETHSW_FES1_FID_CFG4R_FWD_ST_Field_Array is array (32 .. 39)
     of ETHSW_FES1_FID_CFG4R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 1 filtering identifier configuration register 4
   type ETHSW_FES1_FID_CFG4R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES1_FID_CFG4R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FID_CFG4R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES1_FID_CFG5R_FWD_ST array element
   subtype ETHSW_FES1_FID_CFG5R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES1_FID_CFG5R_FWD_ST array
   type ETHSW_FES1_FID_CFG5R_FWD_ST_Field_Array is array (40 .. 47)
     of ETHSW_FES1_FID_CFG5R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 1 filtering identifier configuration register 5
   type ETHSW_FES1_FID_CFG5R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES1_FID_CFG5R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FID_CFG5R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES1_FID_CFG6R_FWD_ST array element
   subtype ETHSW_FES1_FID_CFG6R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES1_FID_CFG6R_FWD_ST array
   type ETHSW_FES1_FID_CFG6R_FWD_ST_Field_Array is array (48 .. 55)
     of ETHSW_FES1_FID_CFG6R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 1 filtering identifier configuration register 6
   type ETHSW_FES1_FID_CFG6R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES1_FID_CFG6R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FID_CFG6R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES1_FID_CFG7R_FWD_ST array element
   subtype ETHSW_FES1_FID_CFG7R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES1_FID_CFG7R_FWD_ST array
   type ETHSW_FES1_FID_CFG7R_FWD_ST_Field_Array is array (56 .. 63)
     of ETHSW_FES1_FID_CFG7R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 1 filtering identifier configuration register 7
   type ETHSW_FES1_FID_CFG7R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES1_FID_CFG7R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FID_CFG7R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW FES port 1 buffer fill level capture register
   type ETHSW_FES1_FL_CAPTR_Register is record
      --  Capture
      CAPTURE       : Boolean := False;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_CAPTR_Register use record
      CAPTURE       at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q0_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 1 minimum fill level queue 0 register
   type ETHSW_FES1_FL_Q0_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES1_FL_Q0_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q0_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q1_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 1 minimum fill level queue 1 register
   type ETHSW_FES1_FL_Q1_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES1_FL_Q1_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q1_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q2_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 1 minimum fill level queue 2 register
   type ETHSW_FES1_FL_Q2_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES1_FL_Q2_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q2_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q3_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 1 minimum fill level queue 3 register
   type ETHSW_FES1_FL_Q3_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES1_FL_Q3_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q3_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q4_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 1 minimum fill level queue 4 register
   type ETHSW_FES1_FL_Q4_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES1_FL_Q4_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q4_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q5_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 1 minimum fill level queue 5 register
   type ETHSW_FES1_FL_Q5_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES1_FL_Q5_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q5_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q6_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 1 minimum fill level queue 6 register
   type ETHSW_FES1_FL_Q6_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES1_FL_Q6_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q6_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q7_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 1 minimum fill level queue 7 register
   type ETHSW_FES1_FL_Q7_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES1_FL_Q7_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q7_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q0_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 1 maximum fill level queue 0 register
   type ETHSW_FES1_FL_Q0_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES1_FL_Q0_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q0_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q1_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 1 maximum fill level queue 1 register
   type ETHSW_FES1_FL_Q1_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES1_FL_Q1_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q1_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q2_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 1 maximum fill level queue 2 register
   type ETHSW_FES1_FL_Q2_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES1_FL_Q2_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q2_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q3_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 1 maximum fill level queue 3 register
   type ETHSW_FES1_FL_Q3_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES1_FL_Q3_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q3_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q4_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 1 maximum fill level queue 4 register
   type ETHSW_FES1_FL_Q4_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES1_FL_Q4_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q4_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q5_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 1 maximum fill level queue 5 register
   type ETHSW_FES1_FL_Q5_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES1_FL_Q5_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q5_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q6_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 1 maximum fill level queue 6 register
   type ETHSW_FES1_FL_Q6_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES1_FL_Q6_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q6_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_FL_Q7_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 1 maximum fill level queue 7 register
   type ETHSW_FES1_FL_Q7_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES1_FL_Q7_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_FL_Q7_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES1_PTP_RX_SYNCD_NSHR_PTP_RX_SYNC_DELAY_NSH_Field is
     HAL.UInt8;

   --  ETHSW FES PTP RX sync delay nanosecond high register
   type ETHSW_FES1_PTP_RX_SYNCD_NSHR_Register is record
      --  RX Sync delay, nanoseconds high part
      PTP_RX_SYNC_DELAY_NSH : ETHSW_FES1_PTP_RX_SYNCD_NSHR_PTP_RX_SYNC_DELAY_NSH_Field :=
                               16#0#;
      --  unspecified
      Reserved_8_15         : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_PTP_RX_SYNCD_NSHR_Register use record
      PTP_RX_SYNC_DELAY_NSH at 0 range 0 .. 7;
      Reserved_8_15         at 0 range 8 .. 15;
   end record;

   --  ETHSW FES port 1 counter control register
   type ETHSW_FES1_CNT_CTRLR_Register is record
      --  Capture
      CAPTURE        : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Capture counter group 1
      CPT_CNT_GRP1   : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Capture counter group 3
      CPT_CNT_GRP3   : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Capture counter group 5
      CPT_CNT_GRP5   : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_CNT_CTRLR_Register use record
      CAPTURE        at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      CPT_CNT_GRP1   at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CPT_CNT_GRP3   at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CPT_CNT_GRP5   at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype ETHSW_FES1_CNT_CMDR_CNT_NUM_Field is HAL.UInt6;

   --  ETHSW FES port 1 counter command register
   type ETHSW_FES1_CNT_CMDR_Register is record
      --  Counter number
      CNT_NUM       : ETHSW_FES1_CNT_CMDR_CNT_NUM_Field := 16#0#;
      --  unspecified
      Reserved_6_14 : HAL.UInt9 := 16#0#;
      --  Transfer
      TRANSFER      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_CNT_CMDR_Register use record
      CNT_NUM       at 0 range 0 .. 5;
      Reserved_6_14 at 0 range 6 .. 14;
      TRANSFER      at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES1_IPO_CMDR_IPO_FIL_NUM_Field is HAL.UInt4;

   --  ETHSW FES port 1 IPO command register
   type ETHSW_FES1_IPO_CMDR_Register is record
      --  IPO Filter Number
      IPO_FIL_NUM   : ETHSW_FES1_IPO_CMDR_IPO_FIL_NUM_Field := 16#0#;
      --  unspecified
      Reserved_4_13 : HAL.UInt10 := 16#0#;
      --  Read/write
      RD_WR         : Boolean := False;
      --  Transfer
      TRANSFER      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_IPO_CMDR_Register use record
      IPO_FIL_NUM   at 0 range 0 .. 3;
      Reserved_4_13 at 0 range 4 .. 13;
      RD_WR         at 0 range 14 .. 14;
      TRANSFER      at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES1_ETH_ADDR_CFG0R_CMP_LENGTH_Field is HAL.UInt6;
   subtype ETHSW_FES1_ETH_ADDR_CFG0R_NEW_PRI_MSB_Field is HAL.UInt2;

   --  ETHSW FES port 1 IPO filter configuration register 0
   type ETHSW_FES1_ETH_ADDR_CFG0R_Register is record
      --  Enable
      ENABLE         : Boolean := False;
      --  Source/Destination Match
      SRC_DST_MATCH  : Boolean := False;
      --  Compared Length
      CMP_LENGTH     : ETHSW_FES1_ETH_ADDR_CFG0R_CMP_LENGTH_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Policer priority
      POL_PRIO       : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  New priority, MSBs
      NEW_PRI_MSB    : ETHSW_FES1_ETH_ADDR_CFG0R_NEW_PRI_MSB_Field := 16#0#;
      --  Preserve priority
      PRES_PRI       : Boolean := False;
      --  New priority, LSB
      NEW_PRI_LSB    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_ETH_ADDR_CFG0R_Register use record
      ENABLE         at 0 range 0 .. 0;
      SRC_DST_MATCH  at 0 range 1 .. 1;
      CMP_LENGTH     at 0 range 2 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      POL_PRIO       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      NEW_PRI_MSB    at 0 range 12 .. 13;
      PRES_PRI       at 0 range 14 .. 14;
      NEW_PRI_LSB    at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES1_ETH_ADDR_FWD_ALLOWR_FWD_ALLOW_MSK_Field is HAL.UInt3;

   --  ETHSW FES port 1 forward allow register
   type ETHSW_FES1_ETH_ADDR_FWD_ALLOWR_Register is record
      --  Forward allow mask
      FWD_ALLOW_MSK : ETHSW_FES1_ETH_ADDR_FWD_ALLOWR_FWD_ALLOW_MSK_Field :=
                       16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_ETH_ADDR_FWD_ALLOWR_Register use record
      FWD_ALLOW_MSK at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES1_ETH_ADDR_FWD_MIRRORR_FWD_MIRROR_MSK_Field is HAL.UInt3;

   --  ETHSW FES port 1 forward mirror register
   type ETHSW_FES1_ETH_ADDR_FWD_MIRRORR_Register is record
      --  Forward mirror mask
      FWD_MIRROR_MSK : ETHSW_FES1_ETH_ADDR_FWD_MIRRORR_FWD_MIRROR_MSK_Field :=
                        16#0#;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_ETH_ADDR_FWD_MIRRORR_Register use record
      FWD_MIRROR_MSK at 0 range 0 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES1_ETH_ADDR_CFG1R_POLICER_Field is HAL.UInt7;

   --  ETHSW FES port 1 IPO filter configuration register 1
   type ETHSW_FES1_ETH_ADDR_CFG1R_Register is record
      --  Policer
      POLICER        : ETHSW_FES1_ETH_ADDR_CFG1R_POLICER_Field := 16#0#;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  IPO Mark
      IPO_MARK       : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Compare Order
      CMP_ORDER      : Boolean := False;
      --  Cut-Through disable
      CT_DIS         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_ETH_ADDR_CFG1R_Register use record
      POLICER        at 0 range 0 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      IPO_MARK       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CMP_ORDER      at 0 range 14 .. 14;
      CT_DIS         at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES1_ETH_ADDR_0R_OCTET_1_Field is HAL.UInt8;
   subtype ETHSW_FES1_ETH_ADDR_0R_OCTET_2_Field is HAL.UInt8;

   --  ETHSW FES port 1 ethernet address part 0 register
   type ETHSW_FES1_ETH_ADDR_0R_Register is record
      --  1less thansup>stless than/sup> octet
      OCTET_1 : ETHSW_FES1_ETH_ADDR_0R_OCTET_1_Field := 16#0#;
      --  2less thansup>ndless than/sup> octet
      OCTET_2 : ETHSW_FES1_ETH_ADDR_0R_OCTET_2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_ETH_ADDR_0R_Register use record
      OCTET_1 at 0 range 0 .. 7;
      OCTET_2 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES1_ETH_ADDR_1R_OCTET_3_Field is HAL.UInt8;
   subtype ETHSW_FES1_ETH_ADDR_1R_OCTET_4_Field is HAL.UInt8;

   --  ETHSW FES port 1 ethernet address part 1 register
   type ETHSW_FES1_ETH_ADDR_1R_Register is record
      --  3less thansup>rdless than/sup> octet
      OCTET_3 : ETHSW_FES1_ETH_ADDR_1R_OCTET_3_Field := 16#0#;
      --  4less thansup>thless than/sup> octet
      OCTET_4 : ETHSW_FES1_ETH_ADDR_1R_OCTET_4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_ETH_ADDR_1R_Register use record
      OCTET_3 at 0 range 0 .. 7;
      OCTET_4 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES1_ETH_ADDR_2R_OCTET_5_Field is HAL.UInt8;
   subtype ETHSW_FES1_ETH_ADDR_2R_OCTET_6_Field is HAL.UInt8;

   --  ETHSW FES port 1 ethernet address part 2 register
   type ETHSW_FES1_ETH_ADDR_2R_Register is record
      --  5less thansup>thless than/sup> octet
      OCTET_5 : ETHSW_FES1_ETH_ADDR_2R_OCTET_5_Field := 16#0#;
      --  6less thansup>thless than/sup> octet
      OCTET_6 : ETHSW_FES1_ETH_ADDR_2R_OCTET_6_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES1_ETH_ADDR_2R_Register use record
      OCTET_5 at 0 range 0 .. 7;
      OCTET_6 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES2_PORT_STATER_FWD_ST_Field is HAL.UInt2;
   subtype ETHSW_FES2_PORT_STATER_MGMT_ST_Field is HAL.UInt2;
   subtype ETHSW_FES2_PORT_STATER_HW_MODE_Field is HAL.UInt2;
   subtype ETHSW_FES2_PORT_STATER_SPEED_SEL_Field is HAL.UInt2;

   --  ETHSW FES port 2 port State register
   type ETHSW_FES2_PORT_STATER_Register is record
      --  Port Forwarding state
      FWD_ST         : ETHSW_FES2_PORT_STATER_FWD_ST_Field := 16#2#;
      --  Port management state
      MGMT_ST        : ETHSW_FES2_PORT_STATER_MGMT_ST_Field := 16#0#;
      --  Port HW mode
      HW_MODE        : ETHSW_FES2_PORT_STATER_HW_MODE_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Speed select
      SPEED_SEL      : ETHSW_FES2_PORT_STATER_SPEED_SEL_Field := 16#0#;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  Fallback to Store-and-Forward
      FB_STF         : Boolean := False;
      --  RX Cut-through
      RX_CT          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_PORT_STATER_Register use record
      FWD_ST         at 0 range 0 .. 1;
      MGMT_ST        at 0 range 2 .. 3;
      HW_MODE        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SPEED_SEL      at 0 range 8 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      FB_STF         at 0 range 14 .. 14;
      RX_CT          at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES2_VLAN0R_PD_VLAN_Field is HAL.UInt12;
   subtype ETHSW_FES2_VLAN0R_PD_PCP_Field is HAL.UInt3;

   --  ETHSW FES port 2 port VLAN configuration register 0
   type ETHSW_FES2_VLAN0R_Register is record
      --  Port default VLAN
      PD_VLAN  : ETHSW_FES2_VLAN0R_PD_VLAN_Field := 16#FFF#;
      --  Port default PCP
      PD_PCP   : ETHSW_FES2_VLAN0R_PD_PCP_Field := 16#0#;
      --  Tagged/untagged
      TGD_UTGD : Boolean := True;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_VLAN0R_Register use record
      PD_VLAN  at 0 range 0 .. 11;
      PD_PCP   at 0 range 12 .. 14;
      TGD_UTGD at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES2_VLAN1R_VLAN_PRIF_Field is HAL.UInt12;

   --  ETHSW FES port 2 port VLAN configuration register 1
   type ETHSW_FES2_VLAN1R_Register is record
      --  Default VLAN for Priority Tagged Frames
      VLAN_PRIF      : ETHSW_FES2_VLAN1R_VLAN_PRIF_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : HAL.UInt3 := 16#0#;
      --  Use_DEI
      USE_DEI        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_VLAN1R_Register use record
      VLAN_PRIF      at 0 range 0 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      USE_DEI        at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES2_FWDM_CFGR_PORT_FWDM_Field is HAL.UInt3;

   --  ETHSW FES port 2 port forward mask configuration register
   type ETHSW_FES2_FWDM_CFGR_Register is record
      --  Port forward mask
      PORT_FWDM     : ETHSW_FES2_FWDM_CFGR_PORT_FWDM_Field := 16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FWDM_CFGR_Register use record
      PORT_FWDM     at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES2_PRIO_REGENLR_PCP0_Field is HAL.UInt3;
   subtype ETHSW_FES2_PRIO_REGENLR_PCP1_Field is HAL.UInt3;
   subtype ETHSW_FES2_PRIO_REGENLR_PCP2_Field is HAL.UInt3;
   subtype ETHSW_FES2_PRIO_REGENLR_PCP3_Field is HAL.UInt3;

   --  ETHSW FES port 2 priority regeneration table low register
   type ETHSW_FES2_PRIO_REGENLR_Register is record
      --  Priority, PCP0
      PCP0           : ETHSW_FES2_PRIO_REGENLR_PCP0_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Priority, PCP1
      PCP1           : ETHSW_FES2_PRIO_REGENLR_PCP1_Field := 16#1#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Priority, PCP2
      PCP2           : ETHSW_FES2_PRIO_REGENLR_PCP2_Field := 16#2#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Priority, PCP3
      PCP3           : ETHSW_FES2_PRIO_REGENLR_PCP3_Field := 16#3#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_PRIO_REGENLR_Register use record
      PCP0           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PCP1           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PCP2           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PCP3           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES2_PRIO_REGENHR_PCP4_Field is HAL.UInt3;
   subtype ETHSW_FES2_PRIO_REGENHR_PCP5_Field is HAL.UInt3;
   subtype ETHSW_FES2_PRIO_REGENHR_PCP6_Field is HAL.UInt3;
   subtype ETHSW_FES2_PRIO_REGENHR_PCP7_Field is HAL.UInt3;

   --  ETHSW FES port 2 priority regeneration table high register
   type ETHSW_FES2_PRIO_REGENHR_Register is record
      --  Priority, PCP4
      PCP4           : ETHSW_FES2_PRIO_REGENHR_PCP4_Field := 16#4#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Priority, PCP5
      PCP5           : ETHSW_FES2_PRIO_REGENHR_PCP5_Field := 16#5#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Priority, PCP6
      PCP6           : ETHSW_FES2_PRIO_REGENHR_PCP6_Field := 16#6#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Priority, PCP7
      PCP7           : ETHSW_FES2_PRIO_REGENHR_PCP7_Field := 16#7#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_PRIO_REGENHR_Register use record
      PCP4           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PCP5           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PCP6           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PCP7           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   --  ETHSW_FES2_TX_CTER_CTE array
   type ETHSW_FES2_TX_CTER_CTE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ETHSW_FES2_TX_CTER_CTE
   type ETHSW_FES2_TX_CTER_CTE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CTE as a value
            Val : HAL.UInt8;
         when True =>
            --  CTE as an array
            Arr : ETHSW_FES2_TX_CTER_CTE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ETHSW_FES2_TX_CTER_CTE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ETHSW FES port 2 TX cut-through enable register
   type ETHSW_FES2_TX_CTER_Register is record
      --  Cut-through enable/disable for queue 0
      CTE           : ETHSW_FES2_TX_CTER_CTE_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_TX_CTER_Register use record
      CTE           at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   --  ETHSW_FES2_TX_PREE0R_PREE array
   type ETHSW_FES2_TX_PREE0R_PREE_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for ETHSW_FES2_TX_PREE0R_PREE
   type ETHSW_FES2_TX_PREE0R_PREE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PREE as a value
            Val : HAL.UInt8;
         when True =>
            --  PREE as an array
            Arr : ETHSW_FES2_TX_PREE0R_PREE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ETHSW_FES2_TX_PREE0R_PREE_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ETHSW FES port 2 TX preemptable traffic selection register 0
   type ETHSW_FES2_TX_PREE0R_Register is record
      --  Preemption setting for queue 0
      PREE          : ETHSW_FES2_TX_PREE0R_PREE_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_TX_PREE0R_Register use record
      PREE          at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES2_TX_PREE1R_ADDFRAGSIZE_Field is HAL.UInt2;

   --  ETHSW FES port 2 TX preemptable traffic selection register 1
   type ETHSW_FES2_TX_PREE1R_Register is record
      --  AddFragSize
      ADDFRAGSIZE   : ETHSW_FES2_TX_PREE1R_ADDFRAGSIZE_Field := 16#0#;
      --  unspecified
      Reserved_2_15 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_TX_PREE1R_Register use record
      ADDFRAGSIZE   at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   subtype ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI0_Field is HAL.UInt3;
   subtype ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI1_Field is HAL.UInt3;
   subtype ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI2_Field is HAL.UInt3;
   subtype ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI3_Field is HAL.UInt3;
   subtype ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI4_Field is HAL.UInt3;
   subtype ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI5_Field is HAL.UInt3;
   subtype ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI6_Field is HAL.UInt3;
   subtype ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI7_Field is HAL.UInt3;

   --  ETHSW FES port 2 queue table configuration register
   type ETHSW_FES2_QUEUE_TBLR_Register is record
      --  Queue for priority 0
      QUEUE_PRI0     : ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI0_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Queue for priority 1
      QUEUE_PRI1     : ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI1_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Queue for priority 2
      QUEUE_PRI2     : ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI2_Field := 16#1#;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Queue for priority 3
      QUEUE_PRI3     : ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI3_Field := 16#1#;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Queue for priority 4
      QUEUE_PRI4     : ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI4_Field := 16#2#;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Queue for priority 5
      QUEUE_PRI5     : ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI5_Field := 16#2#;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      --  Queue for priority 6
      QUEUE_PRI6     : ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI6_Field := 16#3#;
      --  unspecified
      Reserved_27_27 : HAL.Bit := 16#0#;
      --  Queue for priority 7
      QUEUE_PRI7     : ETHSW_FES2_QUEUE_TBLR_QUEUE_PRI7_Field := 16#3#;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_QUEUE_TBLR_Register use record
      QUEUE_PRI0     at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      QUEUE_PRI1     at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      QUEUE_PRI2     at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      QUEUE_PRI3     at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      QUEUE_PRI4     at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      QUEUE_PRI5     at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      QUEUE_PRI6     at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      QUEUE_PRI7     at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype ETHSW_FES2_FRAMESIZE0R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 2 frame size 0 configuration register
   type ETHSW_FES2_FRAMESIZE0R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES2_FRAMESIZE0R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FRAMESIZE0R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES2_FRAMESIZE1R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 2 frame size 1 configuration register
   type ETHSW_FES2_FRAMESIZE1R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES2_FRAMESIZE1R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FRAMESIZE1R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES2_FRAMESIZE2R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 2 frame size 2 configuration register
   type ETHSW_FES2_FRAMESIZE2R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES2_FRAMESIZE2R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FRAMESIZE2R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES2_FRAMESIZE3R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 2 frame size 3 configuration register
   type ETHSW_FES2_FRAMESIZE3R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES2_FRAMESIZE3R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FRAMESIZE3R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES2_FRAMESIZE4R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 2 frame size 4 configuration register
   type ETHSW_FES2_FRAMESIZE4R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES2_FRAMESIZE4R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FRAMESIZE4R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES2_FRAMESIZE5R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 2 frame size 5 configuration register
   type ETHSW_FES2_FRAMESIZE5R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES2_FRAMESIZE5R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FRAMESIZE5R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES2_FRAMESIZE6R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 2 frame size 6 configuration register
   type ETHSW_FES2_FRAMESIZE6R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES2_FRAMESIZE6R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FRAMESIZE6R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES2_FRAMESIZE7R_FRAMESIZE_Field is HAL.UInt11;

   --  ETHSW FES port 2 frame size 7 configuration register
   type ETHSW_FES2_FRAMESIZE7R_Register is record
      --  Max frame size
      FRAMESIZE      : ETHSW_FES2_FRAMESIZE7R_FRAMESIZE_Field := 16#7FF#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FRAMESIZE7R_Register use record
      FRAMESIZE      at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  ETHSW_FES2_FID_CFG0R_FWD_ST array element
   subtype ETHSW_FES2_FID_CFG0R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES2_FID_CFG0R_FWD_ST array
   type ETHSW_FES2_FID_CFG0R_FWD_ST_Field_Array is array (0 .. 7)
     of ETHSW_FES2_FID_CFG0R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 2 filtering identifier configuration register 0
   type ETHSW_FES2_FID_CFG0R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES2_FID_CFG0R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FID_CFG0R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES2_FID_CFG1R_FWD_ST array element
   subtype ETHSW_FES2_FID_CFG1R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES2_FID_CFG1R_FWD_ST array
   type ETHSW_FES2_FID_CFG1R_FWD_ST_Field_Array is array (8 .. 15)
     of ETHSW_FES2_FID_CFG1R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 2 filtering identifier configuration register 1
   type ETHSW_FES2_FID_CFG1R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES2_FID_CFG1R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FID_CFG1R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES2_FID_CFG2R_FWD_ST array element
   subtype ETHSW_FES2_FID_CFG2R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES2_FID_CFG2R_FWD_ST array
   type ETHSW_FES2_FID_CFG2R_FWD_ST_Field_Array is array (16 .. 23)
     of ETHSW_FES2_FID_CFG2R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 2 filtering identifier configuration register 2
   type ETHSW_FES2_FID_CFG2R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES2_FID_CFG2R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FID_CFG2R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES2_FID_CFG3R_FWD_ST array element
   subtype ETHSW_FES2_FID_CFG3R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES2_FID_CFG3R_FWD_ST array
   type ETHSW_FES2_FID_CFG3R_FWD_ST_Field_Array is array (24 .. 31)
     of ETHSW_FES2_FID_CFG3R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 2 filtering identifier configuration register 3
   type ETHSW_FES2_FID_CFG3R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES2_FID_CFG3R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FID_CFG3R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES2_FID_CFG4R_FWD_ST array element
   subtype ETHSW_FES2_FID_CFG4R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES2_FID_CFG4R_FWD_ST array
   type ETHSW_FES2_FID_CFG4R_FWD_ST_Field_Array is array (32 .. 39)
     of ETHSW_FES2_FID_CFG4R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 2 filtering identifier configuration register 4
   type ETHSW_FES2_FID_CFG4R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES2_FID_CFG4R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FID_CFG4R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES2_FID_CFG5R_FWD_ST array element
   subtype ETHSW_FES2_FID_CFG5R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES2_FID_CFG5R_FWD_ST array
   type ETHSW_FES2_FID_CFG5R_FWD_ST_Field_Array is array (40 .. 47)
     of ETHSW_FES2_FID_CFG5R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 2 filtering identifier configuration register 5
   type ETHSW_FES2_FID_CFG5R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES2_FID_CFG5R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FID_CFG5R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES2_FID_CFG6R_FWD_ST array element
   subtype ETHSW_FES2_FID_CFG6R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES2_FID_CFG6R_FWD_ST array
   type ETHSW_FES2_FID_CFG6R_FWD_ST_Field_Array is array (48 .. 55)
     of ETHSW_FES2_FID_CFG6R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 2 filtering identifier configuration register 6
   type ETHSW_FES2_FID_CFG6R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES2_FID_CFG6R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FID_CFG6R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW_FES2_FID_CFG7R_FWD_ST array element
   subtype ETHSW_FES2_FID_CFG7R_FWD_ST_Element is HAL.UInt2;

   --  ETHSW_FES2_FID_CFG7R_FWD_ST array
   type ETHSW_FES2_FID_CFG7R_FWD_ST_Field_Array is array (56 .. 63)
     of ETHSW_FES2_FID_CFG7R_FWD_ST_Element
     with Component_Size => 2, Size => 16;

   --  ETHSW FES port 2 filtering identifier configuration register 7
   type ETHSW_FES2_FID_CFG7R_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FWD_ST as a value
            Val : HAL.UInt16;
         when True =>
            --  FWD_ST as an array
            Arr : ETHSW_FES2_FID_CFG7R_FWD_ST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16, Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FID_CFG7R_Register use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  ETHSW FES port 2 buffer fill level capture register
   type ETHSW_FES2_FL_CAPTR_Register is record
      --  Capture
      CAPTURE       : Boolean := False;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_CAPTR_Register use record
      CAPTURE       at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q0_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 2 minimum fill level queue 0 register
   type ETHSW_FES2_FL_Q0_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES2_FL_Q0_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q0_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q1_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 2 minimum fill level queue 1 register
   type ETHSW_FES2_FL_Q1_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES2_FL_Q1_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q1_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q2_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 2 minimum fill level queue 2 register
   type ETHSW_FES2_FL_Q2_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES2_FL_Q2_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q2_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q3_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 2 minimum fill level queue 3 register
   type ETHSW_FES2_FL_Q3_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES2_FL_Q3_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q3_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q4_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 2 minimum fill level queue 4 register
   type ETHSW_FES2_FL_Q4_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES2_FL_Q4_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q4_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q5_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 2 minimum fill level queue 5 register
   type ETHSW_FES2_FL_Q5_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES2_FL_Q5_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q5_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q6_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 2 minimum fill level queue 6 register
   type ETHSW_FES2_FL_Q6_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES2_FL_Q6_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q6_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q7_MINR_FL_QY_MIN_Field is HAL.UInt5;

   --  ETHSW FES port 2 minimum fill level queue 7 register
   type ETHSW_FES2_FL_Q7_MINR_Register is record
      --  Minimum fill level for queue y
      FL_QY_MIN     : ETHSW_FES2_FL_Q7_MINR_FL_QY_MIN_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q7_MINR_Register use record
      FL_QY_MIN     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q0_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 2 maximum fill level queue 0 register
   type ETHSW_FES2_FL_Q0_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES2_FL_Q0_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q0_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q1_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 2 maximum fill level queue 1 register
   type ETHSW_FES2_FL_Q1_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES2_FL_Q1_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q1_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q2_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 2 maximum fill level queue 2 register
   type ETHSW_FES2_FL_Q2_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES2_FL_Q2_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q2_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q3_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 2 maximum fill level queue 3 register
   type ETHSW_FES2_FL_Q3_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES2_FL_Q3_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q3_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q4_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 2 maximum fill level queue 4 register
   type ETHSW_FES2_FL_Q4_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES2_FL_Q4_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q4_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q5_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 2 maximum fill level queue 5 register
   type ETHSW_FES2_FL_Q5_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES2_FL_Q5_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q5_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q6_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 2 maximum fill level queue 6 register
   type ETHSW_FES2_FL_Q6_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES2_FL_Q6_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q6_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_FL_Q7_MAXR_FL_QY_MAX_Field is HAL.UInt5;

   --  ETHSW FES port 2 maximum fill level queue 7 register
   type ETHSW_FES2_FL_Q7_MAXR_Register is record
      --  Maximum fill level for queue y
      FL_QY_MAX     : ETHSW_FES2_FL_Q7_MAXR_FL_QY_MAX_Field := 16#0#;
      --  unspecified
      Reserved_5_15 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_FL_Q7_MAXR_Register use record
      FL_QY_MAX     at 0 range 0 .. 4;
      Reserved_5_15 at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES2_PTP_RX_SYNCD_NSHR_PTP_RX_SYNC_DELAY_NSH_Field is
     HAL.UInt8;

   --  ETHSW FES PTP RX sync delay nanosecond high register
   type ETHSW_FES2_PTP_RX_SYNCD_NSHR_Register is record
      --  RX Sync delay, nanoseconds high part
      PTP_RX_SYNC_DELAY_NSH : ETHSW_FES2_PTP_RX_SYNCD_NSHR_PTP_RX_SYNC_DELAY_NSH_Field :=
                               16#0#;
      --  unspecified
      Reserved_8_15         : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_PTP_RX_SYNCD_NSHR_Register use record
      PTP_RX_SYNC_DELAY_NSH at 0 range 0 .. 7;
      Reserved_8_15         at 0 range 8 .. 15;
   end record;

   --  ETHSW FES port 2 counter control register
   type ETHSW_FES2_CNT_CTRLR_Register is record
      --  Capture
      CAPTURE        : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Capture counter group 1
      CPT_CNT_GRP1   : Boolean := False;
      --  unspecified
      Reserved_9_9   : HAL.Bit := 16#0#;
      --  Capture counter group 3
      CPT_CNT_GRP3   : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Capture counter group 5
      CPT_CNT_GRP5   : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_CNT_CTRLR_Register use record
      CAPTURE        at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      CPT_CNT_GRP1   at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CPT_CNT_GRP3   at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CPT_CNT_GRP5   at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
   end record;

   subtype ETHSW_FES2_CNT_CMDR_CNT_NUM_Field is HAL.UInt6;

   --  ETHSW FES port 2 counter command register
   type ETHSW_FES2_CNT_CMDR_Register is record
      --  Counter number
      CNT_NUM       : ETHSW_FES2_CNT_CMDR_CNT_NUM_Field := 16#0#;
      --  unspecified
      Reserved_6_14 : HAL.UInt9 := 16#0#;
      --  Transfer
      TRANSFER      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_CNT_CMDR_Register use record
      CNT_NUM       at 0 range 0 .. 5;
      Reserved_6_14 at 0 range 6 .. 14;
      TRANSFER      at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES2_IPO_CMDR_IPO_FIL_NUM_Field is HAL.UInt4;

   --  ETHSW FES port 2 IPO command register
   type ETHSW_FES2_IPO_CMDR_Register is record
      --  IPO Filter Number
      IPO_FIL_NUM   : ETHSW_FES2_IPO_CMDR_IPO_FIL_NUM_Field := 16#0#;
      --  unspecified
      Reserved_4_13 : HAL.UInt10 := 16#0#;
      --  Read/write
      RD_WR         : Boolean := False;
      --  Transfer
      TRANSFER      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_IPO_CMDR_Register use record
      IPO_FIL_NUM   at 0 range 0 .. 3;
      Reserved_4_13 at 0 range 4 .. 13;
      RD_WR         at 0 range 14 .. 14;
      TRANSFER      at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES2_ETH_ADDR_CFG0R_CMP_LENGTH_Field is HAL.UInt6;
   subtype ETHSW_FES2_ETH_ADDR_CFG0R_NEW_PRI_MSB_Field is HAL.UInt2;

   --  ETHSW FES port 2 IPO filter configuration register 0
   type ETHSW_FES2_ETH_ADDR_CFG0R_Register is record
      --  Enable
      ENABLE         : Boolean := False;
      --  Source/Destination Match
      SRC_DST_MATCH  : Boolean := False;
      --  Compared Length
      CMP_LENGTH     : ETHSW_FES2_ETH_ADDR_CFG0R_CMP_LENGTH_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Policer priority
      POL_PRIO       : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  New priority, MSBs
      NEW_PRI_MSB    : ETHSW_FES2_ETH_ADDR_CFG0R_NEW_PRI_MSB_Field := 16#0#;
      --  Preserve priority
      PRES_PRI       : Boolean := False;
      --  New priority, LSB
      NEW_PRI_LSB    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_ETH_ADDR_CFG0R_Register use record
      ENABLE         at 0 range 0 .. 0;
      SRC_DST_MATCH  at 0 range 1 .. 1;
      CMP_LENGTH     at 0 range 2 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      POL_PRIO       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      NEW_PRI_MSB    at 0 range 12 .. 13;
      PRES_PRI       at 0 range 14 .. 14;
      NEW_PRI_LSB    at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES2_ETH_ADDR_FWD_ALLOWR_FWD_ALLOW_MSK_Field is HAL.UInt3;

   --  ETHSW FES port 2 forward allow register
   type ETHSW_FES2_ETH_ADDR_FWD_ALLOWR_Register is record
      --  Forward allow mask
      FWD_ALLOW_MSK : ETHSW_FES2_ETH_ADDR_FWD_ALLOWR_FWD_ALLOW_MSK_Field :=
                       16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_ETH_ADDR_FWD_ALLOWR_Register use record
      FWD_ALLOW_MSK at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES2_ETH_ADDR_FWD_MIRRORR_FWD_MIRROR_MSK_Field is HAL.UInt3;

   --  ETHSW FES port 2 forward mirror register
   type ETHSW_FES2_ETH_ADDR_FWD_MIRRORR_Register is record
      --  Forward mirror mask
      FWD_MIRROR_MSK : ETHSW_FES2_ETH_ADDR_FWD_MIRRORR_FWD_MIRROR_MSK_Field :=
                        16#0#;
      --  unspecified
      Reserved_3_15  : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_ETH_ADDR_FWD_MIRRORR_Register use record
      FWD_MIRROR_MSK at 0 range 0 .. 2;
      Reserved_3_15  at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES2_ETH_ADDR_CFG1R_POLICER_Field is HAL.UInt7;

   --  ETHSW FES port 2 IPO filter configuration register 1
   type ETHSW_FES2_ETH_ADDR_CFG1R_Register is record
      --  Policer
      POLICER        : ETHSW_FES2_ETH_ADDR_CFG1R_POLICER_Field := 16#0#;
      --  unspecified
      Reserved_7_11  : HAL.UInt5 := 16#0#;
      --  IPO Mark
      IPO_MARK       : Boolean := False;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Compare Order
      CMP_ORDER      : Boolean := False;
      --  Cut-Through disable
      CT_DIS         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_ETH_ADDR_CFG1R_Register use record
      POLICER        at 0 range 0 .. 6;
      Reserved_7_11  at 0 range 7 .. 11;
      IPO_MARK       at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CMP_ORDER      at 0 range 14 .. 14;
      CT_DIS         at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES2_ETH_ADDR_0R_OCTET_1_Field is HAL.UInt8;
   subtype ETHSW_FES2_ETH_ADDR_0R_OCTET_2_Field is HAL.UInt8;

   --  ETHSW FES port 2 ethernet address part 0 register
   type ETHSW_FES2_ETH_ADDR_0R_Register is record
      --  1less thansup>stless than/sup> octet
      OCTET_1 : ETHSW_FES2_ETH_ADDR_0R_OCTET_1_Field := 16#0#;
      --  2less thansup>ndless than/sup> octet
      OCTET_2 : ETHSW_FES2_ETH_ADDR_0R_OCTET_2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_ETH_ADDR_0R_Register use record
      OCTET_1 at 0 range 0 .. 7;
      OCTET_2 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES2_ETH_ADDR_1R_OCTET_3_Field is HAL.UInt8;
   subtype ETHSW_FES2_ETH_ADDR_1R_OCTET_4_Field is HAL.UInt8;

   --  ETHSW FES port 2 ethernet address part 1 register
   type ETHSW_FES2_ETH_ADDR_1R_Register is record
      --  3less thansup>rdless than/sup> octet
      OCTET_3 : ETHSW_FES2_ETH_ADDR_1R_OCTET_3_Field := 16#0#;
      --  4less thansup>thless than/sup> octet
      OCTET_4 : ETHSW_FES2_ETH_ADDR_1R_OCTET_4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_ETH_ADDR_1R_Register use record
      OCTET_3 at 0 range 0 .. 7;
      OCTET_4 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES2_ETH_ADDR_2R_OCTET_5_Field is HAL.UInt8;
   subtype ETHSW_FES2_ETH_ADDR_2R_OCTET_6_Field is HAL.UInt8;

   --  ETHSW FES port 2 ethernet address part 2 register
   type ETHSW_FES2_ETH_ADDR_2R_Register is record
      --  5less thansup>thless than/sup> octet
      OCTET_5 : ETHSW_FES2_ETH_ADDR_2R_OCTET_5_Field := 16#0#;
      --  6less thansup>thless than/sup> octet
      OCTET_6 : ETHSW_FES2_ETH_ADDR_2R_OCTET_6_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES2_ETH_ADDR_2R_Register use record
      OCTET_5 at 0 range 0 .. 7;
      OCTET_6 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_IPC_IDR_DEV_ID_Field is HAL.UInt24;

   --  ETHSW FES IP core identification register
   type ETHSW_FES_IPC_IDR_Register is record
      --  unspecified
      Reserved_0_7 : HAL.UInt8;
      --  Read-only. Device ID
      DEV_ID       : ETHSW_FES_IPC_IDR_DEV_ID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_IPC_IDR_Register use record
      Reserved_0_7 at 0 range 0 .. 7;
      DEV_ID       at 0 range 8 .. 31;
   end record;

   subtype ETHSW_FES_GEN_CTRLR_MGMT_TRL_LGTH_Field is HAL.UInt2;
   subtype ETHSW_FES_GEN_CTRLR_MGMT_TRL_OFF_Field is HAL.UInt2;
   subtype ETHSW_FES_GEN_CTRLR_PTP_MOD_Field is HAL.UInt2;

   --  ETHSW FES general control register
   type ETHSW_FES_GEN_CTRLR_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Management Trailer Length
      MGMT_TRL_LGTH : ETHSW_FES_GEN_CTRLR_MGMT_TRL_LGTH_Field := 16#0#;
      --  Management Trailer Offset
      MGMT_TRL_OFF  : ETHSW_FES_GEN_CTRLR_MGMT_TRL_OFF_Field := 16#0#;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Policer configuration
      POL_CFG       : Boolean := False;
      --  Time trailer
      TIM_TRL       : Boolean := False;
      --  Modify Sync frames
      MOD_SYNCF     : Boolean := False;
      --  PTP Mode
      PTP_MOD       : ETHSW_FES_GEN_CTRLR_PTP_MOD_Field := 16#0#;
      --  Correction Disable
      CORR_DIS      : Boolean := False;
      --  Clear Dynamic MAC address table
      CLR_MAC_TAB   : Boolean := False;
      --  Init Request
      INIT_REQ      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_GEN_CTRLR_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      MGMT_TRL_LGTH at 0 range 2 .. 3;
      MGMT_TRL_OFF  at 0 range 4 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      POL_CFG       at 0 range 8 .. 8;
      TIM_TRL       at 0 range 9 .. 9;
      MOD_SYNCF     at 0 range 10 .. 10;
      PTP_MOD       at 0 range 11 .. 12;
      CORR_DIS      at 0 range 13 .. 13;
      CLR_MAC_TAB   at 0 range 14 .. 14;
      INIT_REQ      at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES_MT_CLEAR_MSKR_MAC_TAB_CLRM_Field is HAL.UInt3;

   --  ETHSW FES dynamic MAC table clear mask register
   type ETHSW_FES_MT_CLEAR_MSKR_Register is record
      --  MAC Table Clear Mask
      MAC_TAB_CLRM  : ETHSW_FES_MT_CLEAR_MSKR_MAC_TAB_CLRM_Field := 16#7#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_MT_CLEAR_MSKR_Register use record
      MAC_TAB_CLRM  at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES_MT_CLEAR_FIDR_FID_Field is HAL.UInt6;

   --  ETHSW FES dynamic MAC table clear FID register
   type ETHSW_FES_MT_CLEAR_FIDR_Register is record
      --  Filtering Identifier (FID)
      FID           : ETHSW_FES_MT_CLEAR_FIDR_FID_Field := 16#0#;
      --  unspecified
      Reserved_6_15 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_MT_CLEAR_FIDR_Register use record
      FID           at 0 range 0 .. 5;
      Reserved_6_15 at 0 range 6 .. 15;
   end record;

   subtype ETHSW_FES_ADDRESS_AGING_CFGR_LIFE_TIME_Field is HAL.UInt7;

   --  ETHSW FES address aging configuration register
   type ETHSW_FES_ADDRESS_AGING_CFGR_Register is record
      --  Address Lifetime
      LIFE_TIME     : ETHSW_FES_ADDRESS_AGING_CFGR_LIFE_TIME_Field := 16#12#;
      --  unspecified
      Reserved_7_15 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_ADDRESS_AGING_CFGR_Register use record
      LIFE_TIME     at 0 range 0 .. 6;
      Reserved_7_15 at 0 range 7 .. 15;
   end record;

   subtype ETHSW_FES_AGING_BASE_TIMEHR_BASE_TIMEH_Field is HAL.UInt8;

   --  ETHSW FES aging base time high register
   type ETHSW_FES_AGING_BASE_TIMEHR_Register is record
      --  Aging base time value bits (23:16)
      BASE_TIMEH    : ETHSW_FES_AGING_BASE_TIMEHR_BASE_TIMEH_Field := 16#7#;
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_AGING_BASE_TIMEHR_Register use record
      BASE_TIMEH    at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   --  ETHSW FES interrupt mask clear register
   type ETHSW_FES_INT_MASK_CLR_Register is record
      --  TX timestamp interrupt mask clear
      TX_TIMESTAMP_IMC : Boolean := False;
      --  RX timestamp interrupt mask clear
      RX_TIMESTAMP_IMC : Boolean := False;
      --  RX error interrupt mask clear
      RX_ERROR_IMC     : Boolean := False;
      --  Congested interrupt mask clear
      CONGESTED_IMC    : Boolean := False;
      --  unspecified
      Reserved_4_15    : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_INT_MASK_CLR_Register use record
      TX_TIMESTAMP_IMC at 0 range 0 .. 0;
      RX_TIMESTAMP_IMC at 0 range 1 .. 1;
      RX_ERROR_IMC     at 0 range 2 .. 2;
      CONGESTED_IMC    at 0 range 3 .. 3;
      Reserved_4_15    at 0 range 4 .. 15;
   end record;

   --  ETHSW FES interrupt mask set register
   type ETHSW_FES_INT_MASK_SETR_Register is record
      --  TX timestamp interrupt enable mask
      TX_TIMESTAMP_IE : Boolean := False;
      --  RX timestamp interrupt enable mask
      RX_TIMESTAMP_IE : Boolean := False;
      --  RX error interrupt enable mask
      RX_ERROR_IE     : Boolean := False;
      --  Congested interrupt enable mask
      CONGESTED_IE    : Boolean := False;
      --  unspecified
      Reserved_4_15   : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_INT_MASK_SETR_Register use record
      TX_TIMESTAMP_IE at 0 range 0 .. 0;
      RX_TIMESTAMP_IE at 0 range 1 .. 1;
      RX_ERROR_IE     at 0 range 2 .. 2;
      CONGESTED_IE    at 0 range 3 .. 3;
      Reserved_4_15   at 0 range 4 .. 15;
   end record;

   --  ETHSW FES interrupt status register
   type ETHSW_FES_INT_STATUSR_Register is record
      --  TX timestamp interrupt status
      TX_TIMESTAMP_IS : Boolean := False;
      --  RX timestamp interrupt status
      RX_TIMESTAMP_IS : Boolean := False;
      --  RX error interrupt status
      RX_ERROR_IS     : Boolean := False;
      --  Congested interrupt status
      CONGESTED_IS    : Boolean := False;
      --  unspecified
      Reserved_4_15   : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_INT_STATUSR_Register use record
      TX_TIMESTAMP_IS at 0 range 0 .. 0;
      RX_TIMESTAMP_IS at 0 range 1 .. 1;
      RX_ERROR_IS     at 0 range 2 .. 2;
      CONGESTED_IS    at 0 range 3 .. 3;
      Reserved_4_15   at 0 range 4 .. 15;
   end record;

   subtype ETHSW_FES_MAC_TABLE0R_PORT_NUM_Field is HAL.UInt4;

   --  ETHSW FES dynamic MAC table read 0 register
   type ETHSW_FES_MAC_TABLE0R_Register is record
      --  Read-only. Port number
      PORT_NUM      : ETHSW_FES_MAC_TABLE0R_PORT_NUM_Field := 16#0#;
      --  unspecified
      Reserved_4_14 : HAL.UInt11 := 16#0#;
      --  Transfer
      TRANSFER      : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_MAC_TABLE0R_Register use record
      PORT_NUM      at 0 range 0 .. 3;
      Reserved_4_14 at 0 range 4 .. 14;
      TRANSFER      at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES_MAC_TABLE1R_OCTET_1_Field is HAL.UInt8;
   subtype ETHSW_FES_MAC_TABLE1R_OCTET_2_Field is HAL.UInt8;

   --  ETHSW FES dynamic MAC table read 1 register
   type ETHSW_FES_MAC_TABLE1R_Register is record
      --  Read-only. Dynamic MAC Address Table Read: 1less thansup>stless
      --  than/sup> octet
      OCTET_1 : ETHSW_FES_MAC_TABLE1R_OCTET_1_Field;
      --  Read-only. Dynamic MAC Address Table Read: 2less thansup>ndless
      --  than/sup> octet
      OCTET_2 : ETHSW_FES_MAC_TABLE1R_OCTET_2_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_MAC_TABLE1R_Register use record
      OCTET_1 at 0 range 0 .. 7;
      OCTET_2 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_MAC_TABLE2R_OCTET_3_Field is HAL.UInt8;
   subtype ETHSW_FES_MAC_TABLE2R_OCTET_4_Field is HAL.UInt8;

   --  ETHSW FES dynamic MAC table read 2 register
   type ETHSW_FES_MAC_TABLE2R_Register is record
      --  Read-only. Dynamic MAC Address Table Read: 3less thansup>rdless
      --  than/sup> octet
      OCTET_3 : ETHSW_FES_MAC_TABLE2R_OCTET_3_Field;
      --  Read-only. Dynamic MAC Address Table Read: 4less thansup>thless
      --  than/sup> octet
      OCTET_4 : ETHSW_FES_MAC_TABLE2R_OCTET_4_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_MAC_TABLE2R_Register use record
      OCTET_3 at 0 range 0 .. 7;
      OCTET_4 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_MAC_TABLE3R_OCTET_5_Field is HAL.UInt8;
   subtype ETHSW_FES_MAC_TABLE3R_OCTET_6_Field is HAL.UInt8;

   --  ETHSW FES dynamic MAC table read 3 register
   type ETHSW_FES_MAC_TABLE3R_Register is record
      --  Read-only. Dynamic MAC Address Table Read: 5less thansup>thless
      --  than/sup> octet
      OCTET_5 : ETHSW_FES_MAC_TABLE3R_OCTET_5_Field;
      --  Read-only. Dynamic MAC Address Table Read: 6less thansup>thless
      --  than/sup> octet
      OCTET_6 : ETHSW_FES_MAC_TABLE3R_OCTET_6_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_MAC_TABLE3R_Register use record
      OCTET_5 at 0 range 0 .. 7;
      OCTET_6 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_MAC_TABLE4R_FID_Field is HAL.UInt6;

   --  ETHSW FES dynamic MAC table read 4 register
   type ETHSW_FES_MAC_TABLE4R_Register is record
      --  Read-only. FID
      FID           : ETHSW_FES_MAC_TABLE4R_FID_Field;
      --  unspecified
      Reserved_6_15 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_MAC_TABLE4R_Register use record
      FID           at 0 range 0 .. 5;
      Reserved_6_15 at 0 range 6 .. 15;
   end record;

   subtype ETHSW_FES_SMAC_CMDR_ROW_Field is HAL.UInt12;
   subtype ETHSW_FES_SMAC_CMDR_COLUMN_Field is HAL.UInt2;

   --  ETHSW FES static MAC address table R/W command register
   type ETHSW_FES_SMAC_CMDR_Register is record
      --  Row
      ROW      : ETHSW_FES_SMAC_CMDR_ROW_Field := 16#0#;
      --  Column
      COLUMN   : ETHSW_FES_SMAC_CMDR_COLUMN_Field := 16#0#;
      --  Read / write
      RD_WR    : Boolean := False;
      --  Transfer
      TRANSFER : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SMAC_CMDR_Register use record
      ROW      at 0 range 0 .. 11;
      COLUMN   at 0 range 12 .. 13;
      RD_WR    at 0 range 14 .. 14;
      TRANSFER at 0 range 15 .. 15;
   end record;

   --  ETHSW_FES_SMAC_CFGR_ROW_COL array element
   subtype ETHSW_FES_SMAC_CFGR_ROW_COL_Element is HAL.UInt2;

   --  ETHSW_FES_SMAC_CFGR_ROW_COL array
   type ETHSW_FES_SMAC_CFGR_ROW_COL_Field_Array is array (0 .. 3)
     of ETHSW_FES_SMAC_CFGR_ROW_COL_Element
     with Component_Size => 2, Size => 8;

   --  Type definition for ETHSW_FES_SMAC_CFGR_ROW_COL
   type ETHSW_FES_SMAC_CFGR_ROW_COL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ROW_COL as a value
            Val : HAL.UInt8;
         when True =>
            --  ROW_COL as an array
            Arr : ETHSW_FES_SMAC_CFGR_ROW_COL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ETHSW_FES_SMAC_CFGR_ROW_COL_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  ETHSW FES static MAC address table configuration register
   type ETHSW_FES_SMAC_CFGR_Register is record
      --  Row selection setting for column 0
      ROW_COL       : ETHSW_FES_SMAC_CFGR_ROW_COL_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SMAC_CFGR_Register use record
      ROW_COL       at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_SMAC_TABLE0R_FRAME_PRIO_Field is HAL.UInt3;

   --  ETHSW FES static MAC address table read/write 0 register
   type ETHSW_FES_SMAC_TABLE0R_Register is record
      --  unspecified
      Reserved_0_6   : HAL.UInt7 := 16#0#;
      --  Stream_number source/destination match
      STREAM_MATCH   : Boolean := False;
      --  Frame Priority
      FRAME_PRIO     : ETHSW_FES_SMAC_TABLE0R_FRAME_PRIO_Field := 16#0#;
      --  Modify Priority
      MOD_PRIO       : Boolean := False;
      --  Match VLAN
      MATCH_VLAN     : Boolean := False;
      --  Policer priority
      POLICER_PRIO   : Boolean := False;
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Entry usage
      ENTRY_USAGE    : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SMAC_TABLE0R_Register use record
      Reserved_0_6   at 0 range 0 .. 6;
      STREAM_MATCH   at 0 range 7 .. 7;
      FRAME_PRIO     at 0 range 8 .. 10;
      MOD_PRIO       at 0 range 11 .. 11;
      MATCH_VLAN     at 0 range 12 .. 12;
      POLICER_PRIO   at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      ENTRY_USAGE    at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES_SMAC_TABLE1R_OCTET_1_Field is HAL.UInt8;
   subtype ETHSW_FES_SMAC_TABLE1R_OCTET_2_Field is HAL.UInt8;

   --  ETHSW FES static MAC address table read/write 1 register
   type ETHSW_FES_SMAC_TABLE1R_Register is record
      --  Static MAC Address Table Read: 1less thansup>stless than/sup> octet
      OCTET_1 : ETHSW_FES_SMAC_TABLE1R_OCTET_1_Field := 16#0#;
      --  Static MAC Address Table Read: 2less thansup>ndless than/sup> octet
      OCTET_2 : ETHSW_FES_SMAC_TABLE1R_OCTET_2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SMAC_TABLE1R_Register use record
      OCTET_1 at 0 range 0 .. 7;
      OCTET_2 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_SMAC_TABLE2R_OCTET_3_Field is HAL.UInt8;
   subtype ETHSW_FES_SMAC_TABLE2R_OCTET_4_Field is HAL.UInt8;

   --  ETHSW FES static MAC address table read/write 2 register
   type ETHSW_FES_SMAC_TABLE2R_Register is record
      --  Static MAC Address Table Read: 3less thansup>rdless than/sup> octet
      OCTET_3 : ETHSW_FES_SMAC_TABLE2R_OCTET_3_Field := 16#0#;
      --  Static MAC Address Table Read: 4less thansup>thless than/sup> octet
      OCTET_4 : ETHSW_FES_SMAC_TABLE2R_OCTET_4_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SMAC_TABLE2R_Register use record
      OCTET_3 at 0 range 0 .. 7;
      OCTET_4 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_SMAC_TABLE3R_OCTET_5_Field is HAL.UInt8;
   subtype ETHSW_FES_SMAC_TABLE3R_OCTET_6_Field is HAL.UInt8;

   --  ETHSW FES static MAC address table read/write 3 register
   type ETHSW_FES_SMAC_TABLE3R_Register is record
      --  Static MAC Address Table Read: 5less thansup>thless than/sup> octet
      OCTET_5 : ETHSW_FES_SMAC_TABLE3R_OCTET_5_Field := 16#0#;
      --  Static MAC Address Table Read: 6less thansup>thless than/sup> octet
      OCTET_6 : ETHSW_FES_SMAC_TABLE3R_OCTET_6_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SMAC_TABLE3R_Register use record
      OCTET_5 at 0 range 0 .. 7;
      OCTET_6 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_SMAC_TABLE4R_FWD_PORT_MSK_Field is HAL.UInt3;

   --  ETHSW FES static MAC address table read/write 4 register
   type ETHSW_FES_SMAC_TABLE4R_Register is record
      --  Forward Port Mask
      FWD_PORT_MSK  : ETHSW_FES_SMAC_TABLE4R_FWD_PORT_MSK_Field := 16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SMAC_TABLE4R_Register use record
      FWD_PORT_MSK  at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES_SMAC_TABLE5R_POLICER_PORTS_Field is HAL.UInt3;

   --  ETHSW FES static MAC address table read/write 5 register
   type ETHSW_FES_SMAC_TABLE5R_Register is record
      --  Policed Ports
      POLICER_PORTS : ETHSW_FES_SMAC_TABLE5R_POLICER_PORTS_Field := 16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SMAC_TABLE5R_Register use record
      POLICER_PORTS at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES_SMAC_TABLE6R_POLICER_NUM_Field is HAL.UInt12;

   --  ETHSW FES static MAC address table read/write 6 register
   type ETHSW_FES_SMAC_TABLE6R_Register is record
      --  Policer Number
      POLICER_NUM    : ETHSW_FES_SMAC_TABLE6R_POLICER_NUM_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SMAC_TABLE6R_Register use record
      POLICER_NUM    at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype ETHSW_FES_SMAC_TABLE7R_VLAN_Field is HAL.UInt12;

   --  ETHSW FES static MAC address table read/write 7 register
   type ETHSW_FES_SMAC_TABLE7R_Register is record
      --  VLAN
      VLAN           : ETHSW_FES_SMAC_TABLE7R_VLAN_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SMAC_TABLE7R_Register use record
      VLAN           at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype ETHSW_FES_SEQ_REC_CMDR_ROW_Field is HAL.UInt10;

   --  ETHSW FES sequence recovery table R/W command register
   type ETHSW_FES_SEQ_REC_CMDR_Register is record
      --  Row
      ROW            : ETHSW_FES_SEQ_REC_CMDR_ROW_Field := 16#0#;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  Read / write
      RD_WR          : Boolean := False;
      --  Transfer
      TRANSFER       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SEQ_REC_CMDR_Register use record
      ROW            at 0 range 0 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      RD_WR          at 0 range 14 .. 14;
      TRANSFER       at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES_SEQ_REC_TABLE4R_HIST_LENGTH_Field is HAL.UInt5;
   subtype ETHSW_FES_SEQ_REC_TABLE4R_AGING_BRATE_Field is HAL.UInt2;
   subtype ETHSW_FES_SEQ_REC_TABLE4R_AGING_SCALE_Field is HAL.UInt2;

   --  ETHSW FES sequence recovery table read/write 4 register
   type ETHSW_FES_SEQ_REC_TABLE4R_Register is record
      --  History Length - 1
      HIST_LENGTH   : ETHSW_FES_SEQ_REC_TABLE4R_HIST_LENGTH_Field := 16#0#;
      --  Algorithm
      ALGORITHM     : Boolean := False;
      --  Individual recovery
      IND_REC       : Boolean := False;
      --  Accept non valid sequence
      ACC_NVAL_SEQ  : Boolean := False;
      --  unspecified
      Reserved_8_11 : HAL.UInt4 := 16#0#;
      --  Aging basic rate
      AGING_BRATE   : ETHSW_FES_SEQ_REC_TABLE4R_AGING_BRATE_Field := 16#0#;
      --  Aging rate scale
      AGING_SCALE   : ETHSW_FES_SEQ_REC_TABLE4R_AGING_SCALE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SEQ_REC_TABLE4R_Register use record
      HIST_LENGTH   at 0 range 0 .. 4;
      ALGORITHM     at 0 range 5 .. 5;
      IND_REC       at 0 range 6 .. 6;
      ACC_NVAL_SEQ  at 0 range 7 .. 7;
      Reserved_8_11 at 0 range 8 .. 11;
      AGING_BRATE   at 0 range 12 .. 13;
      AGING_SCALE   at 0 range 14 .. 15;
   end record;

   subtype ETHSW_FES_SEQ_GEN_CMDR_ENTITY_Field is HAL.UInt10;

   --  ETHSW FES sequence generation command register
   type ETHSW_FES_SEQ_GEN_CMDR_Register is record
      --  Entity
      ENTITY         : ETHSW_FES_SEQ_GEN_CMDR_ENTITY_Field := 16#0#;
      --  unspecified
      Reserved_10_12 : HAL.UInt3 := 16#0#;
      --  Reset
      RESET          : Boolean := False;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SEQ_GEN_CMDR_Register use record
      ENTITY         at 0 range 0 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      RESET          at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
   end record;

   subtype ETHSW_FES_STREAM_CMDR_ROW_Field is HAL.UInt10;

   --  ETHSW FES stream table R/W command register
   type ETHSW_FES_STREAM_CMDR_Register is record
      --  Row
      ROW            : ETHSW_FES_STREAM_CMDR_ROW_Field := 16#0#;
      --  unspecified
      Reserved_10_13 : HAL.UInt4 := 16#0#;
      --  Read / write
      RD_WR          : Boolean := False;
      --  Transfer
      TRANSFER       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_STREAM_CMDR_Register use record
      ROW            at 0 range 0 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      RD_WR          at 0 range 14 .. 14;
      TRANSFER       at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES_STREAM_TABLE0R_RMV_RTAG_Field is HAL.UInt3;

   --  ETHSW FES stream table read/write 0 register
   type ETHSW_FES_STREAM_TABLE0R_Register is record
      --  Remove R-TAGging input port vector
      RMV_RTAG      : ETHSW_FES_STREAM_TABLE0R_RMV_RTAG_Field := 16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_STREAM_TABLE0R_Register use record
      RMV_RTAG      at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES_STREAM_TABLE1R_ADD_RTAG_Field is HAL.UInt3;

   --  ETHSW FES stream table read/write 1 register
   type ETHSW_FES_STREAM_TABLE1R_Register is record
      --  Add R-TAGging output port vector
      ADD_RTAG      : ETHSW_FES_STREAM_TABLE1R_ADD_RTAG_Field := 16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_STREAM_TABLE1R_Register use record
      ADD_RTAG      at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES_STREAM_TABLE2R_FRER_GEN_TAB_ROW_Field is HAL.UInt12;

   --  ETHSW FES stream table read/write 2 register
   type ETHSW_FES_STREAM_TABLE2R_Register is record
      --  FRER sequence generation table row
      FRER_GEN_TAB_ROW : ETHSW_FES_STREAM_TABLE2R_FRER_GEN_TAB_ROW_Field :=
                          16#0#;
      --  unspecified
      Reserved_12_14   : HAL.UInt3 := 16#0#;
      --  FRER sequence generation enable
      FRER_SEQ_GEN     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_STREAM_TABLE2R_Register use record
      FRER_GEN_TAB_ROW at 0 range 0 .. 11;
      Reserved_12_14   at 0 range 12 .. 14;
      FRER_SEQ_GEN     at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES_STREAM_TABLE3R_FRER_REC_TAB_ROW_Field is HAL.UInt12;

   --  ETHSW FES stream table read/write 3 register
   type ETHSW_FES_STREAM_TABLE3R_Register is record
      --  FRER sequence recovery table row
      FRER_REC_TAB_ROW : ETHSW_FES_STREAM_TABLE3R_FRER_REC_TAB_ROW_Field :=
                          16#0#;
      --  unspecified
      Reserved_12_14   : HAL.UInt3 := 16#0#;
      --  FRER sequence recovery enable
      FRER_SEQ_REC     : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_STREAM_TABLE3R_Register use record
      FRER_REC_TAB_ROW at 0 range 0 .. 11;
      Reserved_12_14   at 0 range 12 .. 14;
      FRER_SEQ_REC     at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES_POLICER_CMDR_POLICER_NUM_Field is HAL.UInt12;

   --  ETHSW FES policer read/write command register
   type ETHSW_FES_POLICER_CMDR_Register is record
      --  Policer Number
      POLICER_NUM    : ETHSW_FES_POLICER_CMDR_POLICER_NUM_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : HAL.UInt2 := 16#0#;
      --  Read / write
      RD_WR          : Boolean := False;
      --  Transfer
      TRANSFER       : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_POLICER_CMDR_Register use record
      POLICER_NUM    at 0 range 0 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      RD_WR          at 0 range 14 .. 14;
      TRANSFER       at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES_POLICER1R_BASIC_RATE_Field is HAL.UInt8;
   subtype ETHSW_FES_POLICER1R_RATE_SCALE_Field is HAL.UInt3;

   --  ETHSW FES policer read/write 1 register
   type ETHSW_FES_POLICER1R_Register is record
      --  Basic Rate of Meter 0 (the meter for green)
      BASIC_RATE     : ETHSW_FES_POLICER1R_BASIC_RATE_Field := 16#0#;
      --  Rate Scale of Meter 0 (the meter for green)
      RATE_SCALE     : ETHSW_FES_POLICER1R_RATE_SCALE_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_POLICER1R_Register use record
      BASIC_RATE     at 0 range 0 .. 7;
      RATE_SCALE     at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   subtype ETHSW_FES_POLICER3R_BASIC_RATE_Field is HAL.UInt8;
   subtype ETHSW_FES_POLICER3R_RATE_SCALE_Field is HAL.UInt3;

   --  ETHSW FES policer read/write 3 register
   type ETHSW_FES_POLICER3R_Register is record
      --  Basic Rate of Meter 1 (the meter for yellow / red)
      BASIC_RATE     : ETHSW_FES_POLICER3R_BASIC_RATE_Field := 16#0#;
      --  Rate Scale of Meter 1 (the meter for yellow / red)
      RATE_SCALE     : ETHSW_FES_POLICER3R_RATE_SCALE_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_POLICER3R_Register use record
      BASIC_RATE     at 0 range 0 .. 7;
      RATE_SCALE     at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
   end record;

   --  ETHSW FES policer read/write 4 register
   type ETHSW_FES_POLICER4R_Register is record
      --  Color Blind
      COLOR_BLIND     : Boolean := False;
      --  Coupling Flag
      COUPLING_FLAG   : Boolean := False;
      --  Mark all Frames Red Enable
      MARK_ALL_RED_EN : Boolean := False;
      --  Mark all Frames Red
      MARK_ALL_RED    : Boolean := False;
      --  Drop on Yellow
      DROP_YELLOW     : Boolean := False;
      --  unspecified
      Reserved_5_15   : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_POLICER4R_Register use record
      COLOR_BLIND     at 0 range 0 .. 0;
      COUPLING_FLAG   at 0 range 1 .. 1;
      MARK_ALL_RED_EN at 0 range 2 .. 2;
      MARK_ALL_RED    at 0 range 3 .. 3;
      DROP_YELLOW     at 0 range 4 .. 4;
      Reserved_5_15   at 0 range 5 .. 15;
   end record;

   subtype ETHSW_FES_TS_CMDR_PORT_NUM_Field is HAL.UInt4;

   --  ETHSW FES timestamp command register
   type ETHSW_FES_TS_CMDR_Register is record
      --  Port Number
      PORT_NUM       : ETHSW_FES_TS_CMDR_PORT_NUM_Field := 16#0#;
      --  TX / RX
      TX_RX          : Boolean := False;
      --  unspecified
      Reserved_5_12  : HAL.UInt8 := 16#0#;
      --  Read-only. Error
      ERROR          : Boolean := False;
      --  Transfer
      TRANSFER       : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_TS_CMDR_Register use record
      PORT_NUM       at 0 range 0 .. 3;
      TX_RX          at 0 range 4 .. 4;
      Reserved_5_12  at 0 range 5 .. 12;
      ERROR          at 0 range 13 .. 13;
      TRANSFER       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES_TS_TIME_HIR_NANOSECONDS_Field is HAL.UInt14;
   subtype ETHSW_FES_TS_TIME_HIR_SECONDS_Field is HAL.UInt2;

   --  ETHSW FES timestamp time high register
   type ETHSW_FES_TS_TIME_HIR_Register is record
      --  Read-only. Nanoseconds, bits (29:16)
      NANOSECONDS : ETHSW_FES_TS_TIME_HIR_NANOSECONDS_Field;
      --  Read-only. Seconds, bits (0:1)
      SECONDS     : ETHSW_FES_TS_TIME_HIR_SECONDS_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_TS_TIME_HIR_Register use record
      NANOSECONDS at 0 range 0 .. 13;
      SECONDS     at 0 range 14 .. 15;
   end record;

   subtype ETHSW_FES_TS_MSG_0R_MSG_TYPE_Field is HAL.UInt4;
   subtype ETHSW_FES_TS_MSG_0R_TRANSP_SPEC_Field is HAL.UInt4;
   subtype ETHSW_FES_TS_MSG_0R_DOMAIN_NUM_Field is HAL.UInt8;

   --  ETHSW FES timestamp PTP message 0 register
   type ETHSW_FES_TS_MSG_0R_Register is record
      --  Read-only. Message type
      MSG_TYPE    : ETHSW_FES_TS_MSG_0R_MSG_TYPE_Field;
      --  Read-only. Transport specific
      TRANSP_SPEC : ETHSW_FES_TS_MSG_0R_TRANSP_SPEC_Field;
      --  Read-only. Domain number
      DOMAIN_NUM  : ETHSW_FES_TS_MSG_0R_DOMAIN_NUM_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_TS_MSG_0R_Register use record
      MSG_TYPE    at 0 range 0 .. 3;
      TRANSP_SPEC at 0 range 4 .. 7;
      DOMAIN_NUM  at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_TS_RX_STATUSR_TS_STATUS_IN_Field is HAL.UInt2;

   --  ETHSW FES timestamp status port vector RX register
   type ETHSW_FES_TS_RX_STATUSR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. Timestamp status input port vector
      TS_STATUS_IN  : ETHSW_FES_TS_RX_STATUSR_TS_STATUS_IN_Field;
      --  unspecified
      Reserved_3_15 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_TS_RX_STATUSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      TS_STATUS_IN  at 0 range 1 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES_TS_TX_STATUSR_TS_STATUS_OUT_Field is HAL.UInt2;

   --  ETHSW FES timestamp status port vector TX register
   type ETHSW_FES_TS_TX_STATUSR_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit;
      --  Read-only. Timestamp status output port vector
      TS_STATUS_OUT : ETHSW_FES_TS_TX_STATUSR_TS_STATUS_OUT_Field;
      --  unspecified
      Reserved_3_15 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_TS_TX_STATUSR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      TS_STATUS_OUT at 0 range 1 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES_VLAN_CMDR_VLAN_ID_Field is HAL.UInt12;

   --  ETHSW FES VLAN command register
   type ETHSW_FES_VLAN_CMDR_Register is record
      --  VLAN_ID
      VLAN_ID          : ETHSW_FES_VLAN_CMDR_VLAN_ID_Field := 16#0#;
      --  Read/Write
      RD_WR            : Boolean := False;
      --  Transfer VLAN_PORTS
      TRSFR_VLAN_PORTS : Boolean := False;
      --  Transfer VLAN_TAG
      TRSFR_VLAN_TAG   : Boolean := False;
      --  Transfer VLAN_FID
      TRSFR_VLAN_FID   : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_VLAN_CMDR_Register use record
      VLAN_ID          at 0 range 0 .. 11;
      RD_WR            at 0 range 12 .. 12;
      TRSFR_VLAN_PORTS at 0 range 13 .. 13;
      TRSFR_VLAN_TAG   at 0 range 14 .. 14;
      TRSFR_VLAN_FID   at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES_VLAN_PORTSR_VLAN_MEMBER_Field is HAL.UInt3;

   --  ETHSW FES port VLAN membership register
   type ETHSW_FES_VLAN_PORTSR_Register is record
      --  VLAN membership
      VLAN_MEMBER   : ETHSW_FES_VLAN_PORTSR_VLAN_MEMBER_Field := 16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_VLAN_PORTSR_Register use record
      VLAN_MEMBER   at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES_VLAN_TAGR_VLAN_TAG_Field is HAL.UInt3;

   --  ETHSW FES port VLAN tagging register
   type ETHSW_FES_VLAN_TAGR_Register is record
      --  VLAN tagging
      VLAN_TAG      : ETHSW_FES_VLAN_TAGR_VLAN_TAG_Field := 16#0#;
      --  unspecified
      Reserved_3_15 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_VLAN_TAGR_Register use record
      VLAN_TAG      at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES_VLAN_FIDR_FILTERING_ID_Field is HAL.UInt6;

   --  ETHSW FES Filtering ID register
   type ETHSW_FES_VLAN_FIDR_Register is record
      --  Filtering ID
      FILTERING_ID  : ETHSW_FES_VLAN_FIDR_FILTERING_ID_Field := 16#0#;
      --  unspecified
      Reserved_6_14 : HAL.UInt9 := 16#0#;
      --  Engineered Traffic
      ENG_TRAFFIC   : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_VLAN_FIDR_Register use record
      FILTERING_ID  at 0 range 0 .. 5;
      Reserved_6_14 at 0 range 6 .. 14;
      ENG_TRAFFIC   at 0 range 15 .. 15;
   end record;

   subtype ETHSW_FES_PORT_HIGHR_FES_PORT_HIGH_Field is HAL.UInt4;

   --  ETHSW FES FES_PORT_HIGH generic register
   type ETHSW_FES_PORT_HIGHR_Register is record
      --  Read-only. The value of generic FES_PORT_HIGH
      FES_PORT_HIGH : ETHSW_FES_PORT_HIGHR_FES_PORT_HIGH_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_PORT_HIGHR_Register use record
      FES_PORT_HIGH at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype ETHSW_FES_COUNTERSR_COUNTERS_Field is HAL.UInt3;

   --  ETHSW FES COUNTERS generic register
   type ETHSW_FES_COUNTERSR_Register is record
      --  Read-only. The value of generic COUNTERS
      COUNTERS      : ETHSW_FES_COUNTERSR_COUNTERS_Field;
      --  unspecified
      Reserved_3_15 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_COUNTERSR_Register use record
      COUNTERS      at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES_CT_PORTSR_CT_PORTS_Field is HAL.UInt12;

   --  ETHSW FES CT_PORTS generic register
   type ETHSW_FES_CT_PORTSR_Register is record
      --  Read-only. The value of generic CT_PORTS
      CT_PORTS       : ETHSW_FES_CT_PORTSR_CT_PORTS_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_CT_PORTSR_Register use record
      CT_PORTS       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype ETHSW_FES_TS_PORTSR_TS_PORTS_Field is HAL.UInt12;

   --  ETHSW FES TS_PORTS generic register
   type ETHSW_FES_TS_PORTSR_Register is record
      --  Read-only. The value of generic TS_PORTS
      TS_PORTS       : ETHSW_FES_TS_PORTSR_TS_PORTS_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_TS_PORTSR_Register use record
      TS_PORTS       at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype ETHSW_FES_SMAC_TABLE_ROWSR_SMAC_TABLE_ROWS_Field is HAL.UInt4;

   --  ETHSW FES SMAC_TABLE_ROWS generic register
   type ETHSW_FES_SMAC_TABLE_ROWSR_Register is record
      --  Read-only. The value of generic SMAC_TABLE_ROWS
      SMAC_TABLE_ROWS : ETHSW_FES_SMAC_TABLE_ROWSR_SMAC_TABLE_ROWS_Field;
      --  unspecified
      Reserved_4_15   : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SMAC_TABLE_ROWSR_Register use record
      SMAC_TABLE_ROWS at 0 range 0 .. 3;
      Reserved_4_15   at 0 range 4 .. 15;
   end record;

   subtype ETHSW_FES_POLICINGR_POLICING_Field is HAL.UInt2;

   --  ETHSW FES POLICING generic register
   type ETHSW_FES_POLICINGR_Register is record
      --  Read-only. The value of generic POLICING
      POLICING      : ETHSW_FES_POLICINGR_POLICING_Field;
      --  unspecified
      Reserved_2_15 : HAL.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_POLICINGR_Register use record
      POLICING      at 0 range 0 .. 1;
      Reserved_2_15 at 0 range 2 .. 15;
   end record;

   subtype ETHSW_FES_POLICERSR_POLICERS_Field is HAL.UInt4;

   --  ETHSW FES POLICERS generic register
   type ETHSW_FES_POLICERSR_Register is record
      --  Read-only. The value of generic POLICERS
      POLICERS      : ETHSW_FES_POLICERSR_POLICERS_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_POLICERSR_Register use record
      POLICERS      at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype ETHSW_FES_QUEUESR_QUEUES_Field is HAL.UInt4;

   --  ETHSW FES QUEUES generic register
   type ETHSW_FES_QUEUESR_Register is record
      --  Read-only. The value of generic QUEUES
      QUEUES        : ETHSW_FES_QUEUESR_QUEUES_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_QUEUESR_Register use record
      QUEUES        at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   --  ETHSW FES BUFFER_SIZE generic register
   type ETHSW_FES_BUFFER_SIZER_Register is record
      --  Read-only. The value of generic BUFFER_SIZE
      BUFFER_SIZE   : Boolean;
      --  unspecified
      Reserved_1_15 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_BUFFER_SIZER_Register use record
      BUFFER_SIZE   at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  ETHSW FES SHAPERS generic register
   type ETHSW_FES_SHAPERSR_Register is record
      --  Read-only. The value of generic SHAPERS
      SHAPERS       : Boolean;
      --  unspecified
      Reserved_1_15 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SHAPERSR_Register use record
      SHAPERS       at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   --  ETHSW FES GIGABIT generic register
   type ETHSW_FES_GIGABITR_Register is record
      --  Read-only. The value of generic GIGABIT
      GIGABIT       : Boolean;
      --  unspecified
      Reserved_1_15 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_GIGABITR_Register use record
      GIGABIT       at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype ETHSW_FES_HSR_PORTSR_HSR_PORTS_Field is HAL.UInt8;

   --  ETHSW FES HSR_PORTS generic register
   type ETHSW_FES_HSR_PORTSR_Register is record
      --  Read-only. The value of generic HSR_PORTS
      HSR_PORTS     : ETHSW_FES_HSR_PORTSR_HSR_PORTS_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_HSR_PORTSR_Register use record
      HSR_PORTS     at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_PRP_PORTSR_PRP_PORTS_Field is HAL.UInt8;

   --  ETHSW FES PRP_PORTS generic register
   type ETHSW_FES_PRP_PORTSR_Register is record
      --  Read-only. The value of generic PRP_PORTS
      PRP_PORTS     : ETHSW_FES_PRP_PORTSR_PRP_PORTS_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_PRP_PORTSR_Register use record
      PRP_PORTS     at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_SCHEDULED_PORTSR_SCHEDULED_PORTS_Field is HAL.UInt12;

   --  ETHSW FES SCHEDULED_PORTS generic register
   type ETHSW_FES_SCHEDULED_PORTSR_Register is record
      --  Read-only. The value of generic SCHEDULED_PORTS
      SCHEDULED_PORTS : ETHSW_FES_SCHEDULED_PORTSR_SCHEDULED_PORTS_Field;
      --  unspecified
      Reserved_12_15  : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_SCHEDULED_PORTSR_Register use record
      SCHEDULED_PORTS at 0 range 0 .. 11;
      Reserved_12_15  at 0 range 12 .. 15;
   end record;

   subtype ETHSW_PREEMPTABLE_PORTR_PREEMPTABLE_PORT_Field is HAL.UInt12;

   --  ETHSW FES PREEMPTABLE_PORT generic register
   type ETHSW_PREEMPTABLE_PORTR_Register is record
      --  Read-only. The value of generic PREEMPTABLE_PORT
      PREEMPTABLE_PORT : ETHSW_PREEMPTABLE_PORTR_PREEMPTABLE_PORT_Field;
      --  unspecified
      Reserved_12_15   : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_PREEMPTABLE_PORTR_Register use record
      PREEMPTABLE_PORT at 0 range 0 .. 11;
      Reserved_12_15   at 0 range 12 .. 15;
   end record;

   subtype ETHSW_FES_MACSECR_MACSEC_Field is HAL.UInt12;

   --  ETHSW FES MACSEC generic register
   type ETHSW_FES_MACSECR_Register is record
      --  Read-only. The value of generic MACSEC
      MACSEC         : ETHSW_FES_MACSECR_MACSEC_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_MACSECR_Register use record
      MACSEC         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype ETHSW_FES_MACSEC_CIPHERR_MACSEC_CIPHER_Field is HAL.UInt3;

   --  ETHSW FES MACSEC_CIPHER generic register
   type ETHSW_FES_MACSEC_CIPHERR_Register is record
      --  Read-only. The value of generic MACSEC_CIPHER
      MACSEC_CIPHER : ETHSW_FES_MACSEC_CIPHERR_MACSEC_CIPHER_Field;
      --  unspecified
      Reserved_3_15 : HAL.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_MACSEC_CIPHERR_Register use record
      MACSEC_CIPHER at 0 range 0 .. 2;
      Reserved_3_15 at 0 range 3 .. 15;
   end record;

   subtype ETHSW_FES_MGMT_PORTSR_MGMT_PORTS_Field is HAL.UInt12;

   --  ETHSW FES MGMT_PORTS generic register
   type ETHSW_FES_MGMT_PORTSR_Register is record
      --  Read-only. The value of generic MGMT_PORTS
      MGMT_PORTS     : ETHSW_FES_MGMT_PORTSR_MGMT_PORTS_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_MGMT_PORTSR_Register use record
      MGMT_PORTS     at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype ETHSW_FES_FRER_PORTSR_FRER_PORTS_Field is HAL.UInt8;

   --  ETHSW FES FRER_PORTS generic register
   type ETHSW_FES_FRER_PORTSR_Register is record
      --  Read-only. The value of generic FRER_PORTS
      FRER_PORTS    : ETHSW_FES_FRER_PORTSR_FRER_PORTS_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_FRER_PORTSR_Register use record
      FRER_PORTS    at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_FRER_ENTRIESR_FRER_ENTRIES_Field is HAL.UInt4;

   --  ETHSW FES FRER_ENTRIES generic register
   type ETHSW_FES_FRER_ENTRIESR_Register is record
      --  Read-only. The value of generic FRER_ENTRIES
      FRER_ENTRIES  : ETHSW_FES_FRER_ENTRIESR_FRER_ENTRIES_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_FRER_ENTRIESR_Register use record
      FRER_ENTRIES  at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype ETHSW_FES_FRER_STREAMSR_FRER_STREAMS_Field is HAL.UInt4;

   --  ETHSW FES FRER_STREAMS generic register
   type ETHSW_FES_FRER_STREAMSR_Register is record
      --  Read-only. The value of generic FRER_STREAMS
      FRER_STREAMS  : ETHSW_FES_FRER_STREAMSR_FRER_STREAMS_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_FRER_STREAMSR_Register use record
      FRER_STREAMS  at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype ETHSW_FES_FIDSR_FIDS_Field is HAL.UInt6;

   --  ETHSW FES FIDS generic register
   type ETHSW_FES_FIDSR_Register is record
      --  Read-only. The value of generic FIDS
      FIDS          : ETHSW_FES_FIDSR_FIDS_Field;
      --  unspecified
      Reserved_6_15 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_FIDSR_Register use record
      FIDS          at 0 range 0 .. 5;
      Reserved_6_15 at 0 range 6 .. 15;
   end record;

   subtype ETHSW_FES_DMA_PORTSR_DMA_PORTS_Field is HAL.UInt12;

   --  ETHSW FES DMA_PORTS generic register
   type ETHSW_FES_DMA_PORTSR_Register is record
      --  Read-only. The value of generic DMA_PORTS
      DMA_PORTS      : ETHSW_FES_DMA_PORTSR_DMA_PORTS_Field;
      --  unspecified
      Reserved_12_15 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_DMA_PORTSR_Register use record
      DMA_PORTS      at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype ETHSW_FES_DMA_TX_DESC_RINGR_DMA_TX_DESC_RING_Field is HAL.UInt4;

   --  ETHSW FES DMA_TX_DESC_RING generic register
   type ETHSW_FES_DMA_TX_DESC_RINGR_Register is record
      --  Read-only. The value of generic DMA_TX_DESC_RING
      DMA_TX_DESC_RING : ETHSW_FES_DMA_TX_DESC_RINGR_DMA_TX_DESC_RING_Field;
      --  unspecified
      Reserved_4_15    : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_DMA_TX_DESC_RINGR_Register use record
      DMA_TX_DESC_RING at 0 range 0 .. 3;
      Reserved_4_15    at 0 range 4 .. 15;
   end record;

   subtype ETHSW_FES_DMA_RX_DESC_RINGR_DMA_RX_DESC_RING_Field is HAL.UInt4;

   --  ETHSW FES DMA_RX_DESC_RING generic register
   type ETHSW_FES_DMA_RX_DESC_RINGR_Register is record
      --  Read-only. The value of generic DMA_RX_DESC_RING
      DMA_RX_DESC_RING : ETHSW_FES_DMA_RX_DESC_RINGR_DMA_RX_DESC_RING_Field;
      --  unspecified
      Reserved_4_15    : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_DMA_RX_DESC_RINGR_Register use record
      DMA_RX_DESC_RING at 0 range 0 .. 3;
      Reserved_4_15    at 0 range 4 .. 15;
   end record;

   --  ETHSW FES PSFP generic register
   type ETHSW_FES_PSFPR_Register is record
      --  Read-only. The value of generic PSFP
      PSFP          : Boolean;
      --  unspecified
      Reserved_1_15 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_PSFPR_Register use record
      PSFP          at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype ETHSW_FES_PSFP_STREAMSR_PSFP_STREAMS_Field is HAL.UInt4;

   --  ETHSW FES PSFP_STREAMS generic register
   type ETHSW_FES_PSFP_STREAMSR_Register is record
      --  Read-only. The value of generic PSFP_STREAMS
      PSFP_STREAMS  : ETHSW_FES_PSFP_STREAMSR_PSFP_STREAMS_Field;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_PSFP_STREAMSR_Register use record
      PSFP_STREAMS  at 0 range 0 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype ETHSW_FES_CFG_CLK_FREQR_CFG_CLK_FREQ_Field is HAL.UInt8;

   --  ETHSW FES CFG_CLK_FREQ register
   type ETHSW_FES_CFG_CLK_FREQR_Register is record
      --  Read-only. The value of generic CFG_CLK_FREQ
      CFG_CLK_FREQ  : ETHSW_FES_CFG_CLK_FREQR_CFG_CLK_FREQ_Field;
      --  unspecified
      Reserved_8_15 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_CFG_CLK_FREQR_Register use record
      CFG_CLK_FREQ  at 0 range 0 .. 7;
      Reserved_8_15 at 0 range 8 .. 15;
   end record;

   --  ETHSW FES DEBUG_IN register
   type ETHSW_FES_DEBUG_INR_Register is record
      --  Read-only. The value of generic DEBUG_IN
      DEBUG_IN      : Boolean;
      --  unspecified
      Reserved_1_15 : HAL.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_DEBUG_INR_Register use record
      DEBUG_IN      at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype ETHSW_FES_H_ADV_10R_HOLD_ADV_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_H_ADV_10R_HOLD_ADV_MII_Field is HAL.UInt8;

   --  ETHSW FES hold advance 10M register
   type ETHSW_FES_H_ADV_10R_Register is record
      --  Read-only. holdadvance_clk_cycles value
      HOLD_ADV_CLK : ETHSW_FES_H_ADV_10R_HOLD_ADV_CLK_Field;
      --  Read-only. holdadvance_mii_cycles value
      HOLD_ADV_MII : ETHSW_FES_H_ADV_10R_HOLD_ADV_MII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_H_ADV_10R_Register use record
      HOLD_ADV_CLK at 0 range 0 .. 7;
      HOLD_ADV_MII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_H_ADV_100R_HOLD_ADV_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_H_ADV_100R_HOLD_ADV_MII_Field is HAL.UInt8;

   --  ETHSW FES hold advance 100M register
   type ETHSW_FES_H_ADV_100R_Register is record
      --  Read-only. holdadvance_clk_cycles value
      HOLD_ADV_CLK : ETHSW_FES_H_ADV_100R_HOLD_ADV_CLK_Field;
      --  Read-only. holdadvance_mii_cycles value
      HOLD_ADV_MII : ETHSW_FES_H_ADV_100R_HOLD_ADV_MII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_H_ADV_100R_Register use record
      HOLD_ADV_CLK at 0 range 0 .. 7;
      HOLD_ADV_MII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_H_ADV_1000R_HOLD_ADV_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_H_ADV_1000R_HOLD_ADV_GMII_Field is HAL.UInt8;

   --  ETHSW FES hold advance 1000M register
   type ETHSW_FES_H_ADV_1000R_Register is record
      --  Read-only. holdadvance_clk_cycles value
      HOLD_ADV_CLK  : ETHSW_FES_H_ADV_1000R_HOLD_ADV_CLK_Field;
      --  Read-only. holdadvance_gmii_cycles value
      HOLD_ADV_GMII : ETHSW_FES_H_ADV_1000R_HOLD_ADV_GMII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_H_ADV_1000R_Register use record
      HOLD_ADV_CLK  at 0 range 0 .. 7;
      HOLD_ADV_GMII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_R_ADV_10R_REL_ADV_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_R_ADV_10R_REL_ADV_MII_Field is HAL.UInt8;

   --  ETHSW FES release advance 10M register
   type ETHSW_FES_R_ADV_10R_Register is record
      --  Read-only. releaseadvance_clk_cycles value
      REL_ADV_CLK : ETHSW_FES_R_ADV_10R_REL_ADV_CLK_Field;
      --  Read-only. releaseadvance_mii_cycles value
      REL_ADV_MII : ETHSW_FES_R_ADV_10R_REL_ADV_MII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_R_ADV_10R_Register use record
      REL_ADV_CLK at 0 range 0 .. 7;
      REL_ADV_MII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_R_ADV_100R_REL_ADV_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_R_ADV_100R_REL_ADV_MII_Field is HAL.UInt8;

   --  ETHSW FES release advance 100M register
   type ETHSW_FES_R_ADV_100R_Register is record
      --  Read-only. releaseadvance_clk_cycles value
      REL_ADV_CLK : ETHSW_FES_R_ADV_100R_REL_ADV_CLK_Field;
      --  Read-only. releaseadvance_mii_cycles value
      REL_ADV_MII : ETHSW_FES_R_ADV_100R_REL_ADV_MII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_R_ADV_100R_Register use record
      REL_ADV_CLK at 0 range 0 .. 7;
      REL_ADV_MII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_R_ADV_1000R_REL_ADV_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_R_ADV_1000R_REL_ADV_GMII_Field is HAL.UInt8;

   --  ETHSW FES release advance 1000M register
   type ETHSW_FES_R_ADV_1000R_Register is record
      --  Read-only. releaseadvance_clk_cycles value
      REL_ADV_CLK  : ETHSW_FES_R_ADV_1000R_REL_ADV_CLK_Field;
      --  Read-only. releaseadvance_gmii_cycles value
      REL_ADV_GMII : ETHSW_FES_R_ADV_1000R_REL_ADV_GMII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_R_ADV_1000R_Register use record
      REL_ADV_CLK  at 0 range 0 .. 7;
      REL_ADV_GMII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_I_TO_G_MIN_10R_I_TO_G_MIN_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_I_TO_G_MIN_10R_I_TO_G_MIN_MII_Field is HAL.UInt8;

   --  ETHSW FES minimum input to gate delay 10M register
   type ETHSW_FES_I_TO_G_MIN_10R_Register is record
      --  Read-only. inputtogate_clk_cycles value
      I_TO_G_MIN_CLK : ETHSW_FES_I_TO_G_MIN_10R_I_TO_G_MIN_CLK_Field;
      --  Read-only. inputtogate_mii_cycles value
      I_TO_G_MIN_MII : ETHSW_FES_I_TO_G_MIN_10R_I_TO_G_MIN_MII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_I_TO_G_MIN_10R_Register use record
      I_TO_G_MIN_CLK at 0 range 0 .. 7;
      I_TO_G_MIN_MII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_I_TO_G_MIN_100R_I_TO_G_MIN_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_I_TO_G_MIN_100R_I_TO_G_MIN_MII_Field is HAL.UInt8;

   --  ETHSW FES minimum input to gate delay 100M register
   type ETHSW_FES_I_TO_G_MIN_100R_Register is record
      --  Read-only. inputtogate_clk_cycles value
      I_TO_G_MIN_CLK : ETHSW_FES_I_TO_G_MIN_100R_I_TO_G_MIN_CLK_Field;
      --  Read-only. inputtogate_mii_cycles value
      I_TO_G_MIN_MII : ETHSW_FES_I_TO_G_MIN_100R_I_TO_G_MIN_MII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_I_TO_G_MIN_100R_Register use record
      I_TO_G_MIN_CLK at 0 range 0 .. 7;
      I_TO_G_MIN_MII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_I_TO_G_MIN_1000R_I_TO_G_MIN_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_I_TO_G_MIN_1000R_I_TO_G_MIN_GMII_Field is HAL.UInt8;

   --  ETHSW FES minimum input to gate delay 1000M register
   type ETHSW_FES_I_TO_G_MIN_1000R_Register is record
      --  Read-only. inputtogate_clk_cycles value
      I_TO_G_MIN_CLK  : ETHSW_FES_I_TO_G_MIN_1000R_I_TO_G_MIN_CLK_Field;
      --  Read-only. inputtogate_gmii_cycles value
      I_TO_G_MIN_GMII : ETHSW_FES_I_TO_G_MIN_1000R_I_TO_G_MIN_GMII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_I_TO_G_MIN_1000R_Register use record
      I_TO_G_MIN_CLK  at 0 range 0 .. 7;
      I_TO_G_MIN_GMII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_I_TO_G_MAX_10R_I_TO_G_MAX_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_I_TO_G_MAX_10R_I_TO_G_MAX_MII_Field is HAL.UInt8;

   --  ETHSW FES maximum input to gate delay 10M register
   type ETHSW_FES_I_TO_G_MAX_10R_Register is record
      --  Read-only. inputtogate_clk_cycles value
      I_TO_G_MAX_CLK : ETHSW_FES_I_TO_G_MAX_10R_I_TO_G_MAX_CLK_Field;
      --  Read-only. inputtogate_mii_cycles value
      I_TO_G_MAX_MII : ETHSW_FES_I_TO_G_MAX_10R_I_TO_G_MAX_MII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_I_TO_G_MAX_10R_Register use record
      I_TO_G_MAX_CLK at 0 range 0 .. 7;
      I_TO_G_MAX_MII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_I_TO_G_MAX_100R_I_TO_G_MAX_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_I_TO_G_MAX_100R_I_TO_G_MAX_MII_Field is HAL.UInt8;

   --  ETHSW FES maximum input to gate delay 100M register
   type ETHSW_FES_I_TO_G_MAX_100R_Register is record
      --  Read-only. inputtogate_clk_cycles value
      I_TO_G_MAX_CLK : ETHSW_FES_I_TO_G_MAX_100R_I_TO_G_MAX_CLK_Field;
      --  Read-only. inputtogate_mii_cycles value
      I_TO_G_MAX_MII : ETHSW_FES_I_TO_G_MAX_100R_I_TO_G_MAX_MII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_I_TO_G_MAX_100R_Register use record
      I_TO_G_MAX_CLK at 0 range 0 .. 7;
      I_TO_G_MAX_MII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_I_TO_G_MAX_1000R_I_TO_G_MAX_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_I_TO_G_MAX_1000R_I_TO_G_MAX_GMII_Field is HAL.UInt8;

   --  ETHSW FES maximum input to gate delay 1000M register
   type ETHSW_FES_I_TO_G_MAX_1000R_Register is record
      --  Read-only. inputtogate_clk_cycles value
      I_TO_G_MAX_CLK  : ETHSW_FES_I_TO_G_MAX_1000R_I_TO_G_MAX_CLK_Field;
      --  Read-only. inputtogate_gmii_cycles value
      I_TO_G_MAX_GMII : ETHSW_FES_I_TO_G_MAX_1000R_I_TO_G_MAX_GMII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_I_TO_G_MAX_1000R_Register use record
      I_TO_G_MAX_CLK  at 0 range 0 .. 7;
      I_TO_G_MAX_GMII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_G_TO_O_MIN_10R_G_TO_O_MIN_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_G_TO_O_MIN_10R_G_TO_O_MIN_MII_Field is HAL.UInt8;

   --  ETHSW FES minimum gate to output delay 10M register
   type ETHSW_FES_G_TO_O_MIN_10R_Register is record
      --  Read-only. gatetooutput_clk_cycles value
      G_TO_O_MIN_CLK : ETHSW_FES_G_TO_O_MIN_10R_G_TO_O_MIN_CLK_Field;
      --  Read-only. gatetooutput_mii_cycles value
      G_TO_O_MIN_MII : ETHSW_FES_G_TO_O_MIN_10R_G_TO_O_MIN_MII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_G_TO_O_MIN_10R_Register use record
      G_TO_O_MIN_CLK at 0 range 0 .. 7;
      G_TO_O_MIN_MII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_G_TO_O_MIN_100R_G_TO_O_MIN_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_G_TO_O_MIN_100R_G_TO_O_MIN_MII_Field is HAL.UInt8;

   --  ETHSW FES minimum gate to output delay 100M register
   type ETHSW_FES_G_TO_O_MIN_100R_Register is record
      --  Read-only. gatetooutput_clk_cycles value
      G_TO_O_MIN_CLK : ETHSW_FES_G_TO_O_MIN_100R_G_TO_O_MIN_CLK_Field;
      --  Read-only. gatetooutput_mii_cycles value
      G_TO_O_MIN_MII : ETHSW_FES_G_TO_O_MIN_100R_G_TO_O_MIN_MII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_G_TO_O_MIN_100R_Register use record
      G_TO_O_MIN_CLK at 0 range 0 .. 7;
      G_TO_O_MIN_MII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_G_TO_O_MIN_1000R_G_TO_O_MIN_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_G_TO_O_MIN_1000R_G_TO_O_MIN_GMII_Field is HAL.UInt8;

   --  ETHSW FES minimum gate to output delay 1000M register
   type ETHSW_FES_G_TO_O_MIN_1000R_Register is record
      --  Read-only. gatetooutput_clk_cycles value
      G_TO_O_MIN_CLK  : ETHSW_FES_G_TO_O_MIN_1000R_G_TO_O_MIN_CLK_Field;
      --  Read-only. gatetooutput_gmii_cycles value
      G_TO_O_MIN_GMII : ETHSW_FES_G_TO_O_MIN_1000R_G_TO_O_MIN_GMII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_G_TO_O_MIN_1000R_Register use record
      G_TO_O_MIN_CLK  at 0 range 0 .. 7;
      G_TO_O_MIN_GMII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_G_TO_O_MAX_10R_G_TO_O_MAX_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_G_TO_O_MAX_10R_G_TO_O_MAX_MII_Field is HAL.UInt8;

   --  ETHSW FES maximum gate to output delay 10M register
   type ETHSW_FES_G_TO_O_MAX_10R_Register is record
      --  Read-only. gatetooutput_clk_cycles value
      G_TO_O_MAX_CLK : ETHSW_FES_G_TO_O_MAX_10R_G_TO_O_MAX_CLK_Field;
      --  Read-only. gatetooutput_mii_cycles value
      G_TO_O_MAX_MII : ETHSW_FES_G_TO_O_MAX_10R_G_TO_O_MAX_MII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_G_TO_O_MAX_10R_Register use record
      G_TO_O_MAX_CLK at 0 range 0 .. 7;
      G_TO_O_MAX_MII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_G_TO_O_MAX_100R_G_TO_O_MAX_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_G_TO_O_MAX_100R_G_TO_O_MAX_MII_Field is HAL.UInt8;

   --  ETHSW FES maximum gate to output delay 100M register
   type ETHSW_FES_G_TO_O_MAX_100R_Register is record
      --  Read-only. gatetooutput_clk_cycles value
      G_TO_O_MAX_CLK : ETHSW_FES_G_TO_O_MAX_100R_G_TO_O_MAX_CLK_Field;
      --  Read-only. gatetooutput_mii_cycles value
      G_TO_O_MAX_MII : ETHSW_FES_G_TO_O_MAX_100R_G_TO_O_MAX_MII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_G_TO_O_MAX_100R_Register use record
      G_TO_O_MAX_CLK at 0 range 0 .. 7;
      G_TO_O_MAX_MII at 0 range 8 .. 15;
   end record;

   subtype ETHSW_FES_G_TO_O_MAX_1000R_G_TO_O_MAX_CLK_Field is HAL.UInt8;
   subtype ETHSW_FES_G_TO_O_MAX_1000R_G_TO_O_MAX_GMII_Field is HAL.UInt8;

   --  ETHSW FES maximum gate to output delay 1000M register
   type ETHSW_FES_G_TO_O_MAX_1000R_Register is record
      --  Read-only. gatetooutput_clk_cycles value
      G_TO_O_MAX_CLK  : ETHSW_FES_G_TO_O_MAX_1000R_G_TO_O_MAX_CLK_Field;
      --  Read-only. gatetooutput_gmii_cycles value
      G_TO_O_MAX_GMII : ETHSW_FES_G_TO_O_MAX_1000R_G_TO_O_MAX_GMII_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_G_TO_O_MAX_1000R_Register use record
      G_TO_O_MAX_CLK  at 0 range 0 .. 7;
      G_TO_O_MAX_GMII at 0 range 8 .. 15;
   end record;

   --  ETHSW_FES_CAPT0R_CAPTURE_PPPS array
   type ETHSW_FES_CAPT0R_CAPTURE_PPPS_Field_Array is array (0 .. 1)
     of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for ETHSW_FES_CAPT0R_CAPTURE_PPPS
   type ETHSW_FES_CAPT0R_CAPTURE_PPPS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CAPTURE_PPPS as a value
            Val : HAL.UInt2;
         when True =>
            --  CAPTURE_PPPS as an array
            Arr : ETHSW_FES_CAPT0R_CAPTURE_PPPS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for ETHSW_FES_CAPT0R_CAPTURE_PPPS_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  ETHSW FES capture status 0 register
   type ETHSW_FES_CAPT0R_Register is record
      --  Read-only. Capture PE
      CAPTURE_PE    : Boolean;
      --  unspecified
      Reserved_1_3  : HAL.UInt3;
      --  Read-only. Capture PPPS0
      CAPTURE_PPPS  : ETHSW_FES_CAPT0R_CAPTURE_PPPS_Field;
      --  unspecified
      Reserved_6_15 : HAL.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_CAPT0R_Register use record
      CAPTURE_PE    at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CAPTURE_PPPS  at 0 range 4 .. 5;
      Reserved_6_15 at 0 range 6 .. 15;
   end record;

   subtype ETHSW_FES_CAPT1R_ENTITY_Field is HAL.UInt12;

   --  ETHSW FES capture control 1 register
   type ETHSW_FES_CAPT1R_Register is record
      --  Entity
      ENTITY         : ETHSW_FES_CAPT1R_ENTITY_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_CAPT1R_Register use record
      ENTITY         at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
   end record;

   subtype ETHSW_FES_CAPT2R_PORT_Field is HAL.UInt4;
   subtype ETHSW_FES_CAPT2R_STREAM_Field is HAL.UInt12;

   --  ETHSW FES capture control 2 register
   type ETHSW_FES_CAPT2R_Register is record
      --  Port
      PORT   : ETHSW_FES_CAPT2R_PORT_Field := 16#0#;
      --  Stream
      STREAM : ETHSW_FES_CAPT2R_STREAM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_CAPT2R_Register use record
      PORT   at 0 range 0 .. 3;
      STREAM at 0 range 4 .. 15;
   end record;

   subtype ETHSW_FES_CAPT3R_PORT_Field is HAL.UInt4;
   subtype ETHSW_FES_CAPT3R_STREAM_Field is HAL.UInt12;

   --  ETHSW FES capture control 3 register
   type ETHSW_FES_CAPT3R_Register is record
      --  Port
      PORT   : ETHSW_FES_CAPT3R_PORT_Field := 16#0#;
      --  Stream
      STREAM : ETHSW_FES_CAPT3R_STREAM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_FES_CAPT3R_Register use record
      PORT   at 0 range 0 .. 3;
      STREAM at 0 range 4 .. 15;
   end record;

   subtype ETHSW_EIA_RGMII_P0_IDR_ID_Field is HAL.UInt8;
   subtype ETHSW_EIA_RGMII_P0_IDR_VERSION_Field is HAL.UInt8;

   --  ETHSW EIA port 0 RGMII adapter ID register
   type ETHSW_EIA_RGMII_P0_IDR_Register is record
      --  Read-only. Device ID
      ID      : ETHSW_EIA_RGMII_P0_IDR_ID_Field;
      --  Read-only. Version
      VERSION : ETHSW_EIA_RGMII_P0_IDR_VERSION_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_EIA_RGMII_P0_IDR_Register use record
      ID      at 0 range 0 .. 7;
      VERSION at 0 range 8 .. 15;
   end record;

   subtype ETHSW_EIA_RGMII_P0_LINK_STATUSR_AUTONEG_SPEED_Field is HAL.UInt2;

   --  ETHSW EIA port 0 RGMII adapter link status register
   type ETHSW_EIA_RGMII_P0_LINK_STATUSR_Register is record
      --  Read-only. Link status
      LINK_STATUS   : Boolean;
      --  Read-only. Autoneg speed
      AUTONEG_SPEED : ETHSW_EIA_RGMII_P0_LINK_STATUSR_AUTONEG_SPEED_Field;
      --  Read-only. Duplex status
      DUPLEX_STATUS : Boolean;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_EIA_RGMII_P0_LINK_STATUSR_Register use record
      LINK_STATUS   at 0 range 0 .. 0;
      AUTONEG_SPEED at 0 range 1 .. 2;
      DUPLEX_STATUS at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   subtype ETHSW_EIA_RMII_P1_IDR_ID_Field is HAL.UInt8;
   subtype ETHSW_EIA_RMII_P1_IDR_VERSION_Field is HAL.UInt8;

   --  ETHSW EIA port 1 RMII adapter ID register [alternate]
   type ETHSW_EIA_RMII_P1_IDR_Register is record
      --  Read-only. Device ID
      ID      : ETHSW_EIA_RMII_P1_IDR_ID_Field;
      --  Read-only. Version
      VERSION : ETHSW_EIA_RMII_P1_IDR_VERSION_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_EIA_RMII_P1_IDR_Register use record
      ID      at 0 range 0 .. 7;
      VERSION at 0 range 8 .. 15;
   end record;

   subtype ETHSW_EIA_RGMII_P1_IDR_ID_Field is HAL.UInt8;
   subtype ETHSW_EIA_RGMII_P1_IDR_VERSION_Field is HAL.UInt8;

   --  ETHSW EIA port 1 RGMII adapter ID register
   type ETHSW_EIA_RGMII_P1_IDR_Register is record
      --  Read-only. Device ID
      ID      : ETHSW_EIA_RGMII_P1_IDR_ID_Field;
      --  Read-only. Version
      VERSION : ETHSW_EIA_RGMII_P1_IDR_VERSION_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_EIA_RGMII_P1_IDR_Register use record
      ID      at 0 range 0 .. 7;
      VERSION at 0 range 8 .. 15;
   end record;

   subtype ETHSW_EIA_RGMII_P1_LINK_STATUSR_AUTONEG_SPEED_Field is HAL.UInt2;

   --  ETHSW EIA port 1 RGMII adapter link status register
   type ETHSW_EIA_RGMII_P1_LINK_STATUSR_Register is record
      --  Read-only. Link status
      LINK_STATUS   : Boolean;
      --  Read-only. Autoneg speed
      AUTONEG_SPEED : ETHSW_EIA_RGMII_P1_LINK_STATUSR_AUTONEG_SPEED_Field;
      --  Read-only. Duplex status
      DUPLEX_STATUS : Boolean;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_EIA_RGMII_P1_LINK_STATUSR_Register use record
      LINK_STATUS   at 0 range 0 .. 0;
      AUTONEG_SPEED at 0 range 1 .. 2;
      DUPLEX_STATUS at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   --  ETHSW EIA port 1 RMII adapter link status register [alternate]
   type ETHSW_EIA_RMII_P1_LINK_STATUSR_Register is record
      --  link status
      LINK_STATUS   : Boolean := False;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_EIA_RMII_P1_LINK_STATUSR_Register use record
      LINK_STATUS   at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   subtype ETHSW_EIA_RGMII_P2_IDR_ID_Field is HAL.UInt8;
   subtype ETHSW_EIA_RGMII_P2_IDR_VERSION_Field is HAL.UInt8;

   --  ETHSW EIA port 2 RGMII adapter ID register
   type ETHSW_EIA_RGMII_P2_IDR_Register is record
      --  Read-only. Device ID
      ID      : ETHSW_EIA_RGMII_P2_IDR_ID_Field;
      --  Read-only. Version
      VERSION : ETHSW_EIA_RGMII_P2_IDR_VERSION_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_EIA_RGMII_P2_IDR_Register use record
      ID      at 0 range 0 .. 7;
      VERSION at 0 range 8 .. 15;
   end record;

   subtype ETHSW_EIA_RMII_P2_IDR_ID_Field is HAL.UInt8;
   subtype ETHSW_EIA_RMII_P2_IDR_VERSION_Field is HAL.UInt8;

   --  ETHSW EIA port 2 RMII adapter ID register [alternate]
   type ETHSW_EIA_RMII_P2_IDR_Register is record
      --  Read-only. Device ID
      ID      : ETHSW_EIA_RMII_P2_IDR_ID_Field;
      --  Read-only. Version
      VERSION : ETHSW_EIA_RMII_P2_IDR_VERSION_Field;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_EIA_RMII_P2_IDR_Register use record
      ID      at 0 range 0 .. 7;
      VERSION at 0 range 8 .. 15;
   end record;

   subtype ETHSW_EIA_RGMII_P2_LINK_STATUSR_AUTONEG_SPEED_Field is HAL.UInt2;

   --  ETHSW EIA port 2 RGMII adapter link status register
   type ETHSW_EIA_RGMII_P2_LINK_STATUSR_Register is record
      --  Read-only. Link status
      LINK_STATUS   : Boolean;
      --  Read-only. Autoneg speed
      AUTONEG_SPEED : ETHSW_EIA_RGMII_P2_LINK_STATUSR_AUTONEG_SPEED_Field;
      --  Read-only. Duplex status
      DUPLEX_STATUS : Boolean;
      --  unspecified
      Reserved_4_15 : HAL.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_EIA_RGMII_P2_LINK_STATUSR_Register use record
      LINK_STATUS   at 0 range 0 .. 0;
      AUTONEG_SPEED at 0 range 1 .. 2;
      DUPLEX_STATUS at 0 range 3 .. 3;
      Reserved_4_15 at 0 range 4 .. 15;
   end record;

   --  ETHSW EIA port 2 RMII adapter link status register [alternate]
   type ETHSW_EIA_RMII_P2_LINK_STATUSR_Register is record
      --  link status
      LINK_STATUS   : Boolean := False;
      --  unspecified
      Reserved_1_15 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 16,
          Bit_Order => System.Low_Order_First;

   for ETHSW_EIA_RMII_P2_LINK_STATUSR_Register use record
      LINK_STATUS   at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type ETHSW_Disc is
     (Gmii_P1_Link_Statusr,
      Mii_P1_Link_Statusr,
      Gmii_P2_Idr,
      Mii_P2_Idr,
      Gmii_P2_Link_Statusr,
      Mii_P2_Link_Statusr,
      Gmii_P2_Rx_Delayr,
      Mii_P2_Rx_Delayr,
      Gmii_P2_Tx_Delayr,
      Mii_P2_Tx_Delayr);

   --  ETHSW register block
   type ETHSW_Peripheral
     (Discriminent : ETHSW_Disc := Gmii_P1_Link_Statusr)
   is record
      --  ETHSW AC device ID register
      ETHSW_AC_DEV_IDR                : aliased ETHSW_AC_DEV_IDR_Register;
      --  ETHSW AC int ID register
      ETHSW_AC_INT_IDR                : aliased HAL.UInt32;
      --  ETHSW AC revision ID register
      ETHSW_AC_REV_IDR                : aliased ETHSW_AC_REV_IDR_Register;
      --  ETHSW AC interface 0 ID register
      ETHSW_AC_IF0_IDR                : aliased HAL.UInt16;
      --  ETHSW AC interface 0 version register
      ETHSW_AC_IF0_VERR               : aliased ETHSW_AC_IF0_VERR_Register;
      --  ETHSW AC interface 0 base address register
      ETHSW_AC_IF0_BASER              : aliased HAL.UInt32;
      --  ETHSW AC interface 0 length register
      ETHSW_AC_IF0_LENR               : aliased HAL.UInt32;
      --  ETHSW AC interface 0 port mapping register
      ETHSW_AC_IF0_PORTR              : aliased ETHSW_AC_IF0_PORTR_Register;
      --  ETHSW AC interface 1 ID register
      ETHSW_AC_IF1_IDR                : aliased HAL.UInt16;
      --  ETHSW AC interface 1 version register
      ETHSW_AC_IF1_VERR               : aliased ETHSW_AC_IF1_VERR_Register;
      --  ETHSW AC interface 1 base address register
      ETHSW_AC_IF1_BASER              : aliased HAL.UInt32;
      --  ETHSW AC interface 1 length register
      ETHSW_AC_IF1_LENR               : aliased HAL.UInt32;
      --  ETHSW AC interface 1 port mapping register
      ETHSW_AC_IF1_PORTR              : aliased ETHSW_AC_IF1_PORTR_Register;
      --  ETHSW AC interface 2 ID register
      ETHSW_AC_IF2_IDR                : aliased HAL.UInt16;
      --  ETHSW AC interface 2 version register
      ETHSW_AC_IF2_VERR               : aliased ETHSW_AC_IF2_VERR_Register;
      --  ETHSW AC interface 2 base address register
      ETHSW_AC_IF2_BASER              : aliased HAL.UInt32;
      --  ETHSW AC interface 2 length register
      ETHSW_AC_IF2_LENR               : aliased HAL.UInt32;
      --  ETHSW AC interface 2 port mapping register
      ETHSW_AC_IF2_PORTR              : aliased ETHSW_AC_IF2_PORTR_Register;
      --  ETHSW AC interface 3 ID register
      ETHSW_AC_IF3_IDR                : aliased HAL.UInt16;
      --  ETHSW AC interface 3 version register
      ETHSW_AC_IF3_VERR               : aliased ETHSW_AC_IF3_VERR_Register;
      --  ETHSW AC interface 3 base address register
      ETHSW_AC_IF3_BASER              : aliased HAL.UInt32;
      --  ETHSW AC interface 3 length register
      ETHSW_AC_IF3_LENR               : aliased HAL.UInt32;
      --  ETHSW AC interface 3 port mapping register
      ETHSW_AC_IF3_PORTR              : aliased ETHSW_AC_IF3_PORTR_Register;
      --  ETHSW AC interface 4 ID register
      ETHSW_AC_IF4_IDR                : aliased HAL.UInt16;
      --  ETHSW AC interface 4 version register
      ETHSW_AC_IF4_VERR               : aliased ETHSW_AC_IF4_VERR_Register;
      --  ETHSW AC interface 4 base address register
      ETHSW_AC_IF4_BASER              : aliased HAL.UInt32;
      --  ETHSW AC interface 4 length register
      ETHSW_AC_IF4_LENR               : aliased HAL.UInt32;
      --  ETHSW AC interface 4 port mapping register
      ETHSW_AC_IF4_PORTR              : aliased ETHSW_AC_IF4_PORTR_Register;
      --  ETHSW AC interface 5 ID register
      ETHSW_AC_IF5_IDR                : aliased HAL.UInt16;
      --  ETHSW AC interface 5 version register
      ETHSW_AC_IF5_VERR               : aliased ETHSW_AC_IF5_VERR_Register;
      --  ETHSW AC interface 5 base address register
      ETHSW_AC_IF5_BASER              : aliased HAL.UInt32;
      --  ETHSW AC interface 5 length register
      ETHSW_AC_IF5_LENR               : aliased HAL.UInt32;
      --  ETHSW AC interface 5 port mapping register
      ETHSW_AC_IF5_PORTR              : aliased ETHSW_AC_IF5_PORTR_Register;
      --  ETHSW AC interface 6 ID register
      ETHSW_AC_IF6_IDR                : aliased HAL.UInt16;
      --  ETHSW AC interface 6 version register
      ETHSW_AC_IF6_VERR               : aliased ETHSW_AC_IF6_VERR_Register;
      --  ETHSW AC interface 6 base address register
      ETHSW_AC_IF6_BASER              : aliased HAL.UInt32;
      --  ETHSW AC interface 6 length register
      ETHSW_AC_IF6_LENR               : aliased HAL.UInt32;
      --  ETHSW AC interface 6 port mapping register
      ETHSW_AC_IF6_PORTR              : aliased ETHSW_AC_IF6_PORTR_Register;
      --  ETHSW AC interface 7 ID register
      ETHSW_AC_IF7_IDR                : aliased HAL.UInt16;
      --  ETHSW AC interface 7 version register
      ETHSW_AC_IF7_VERR               : aliased ETHSW_AC_IF7_VERR_Register;
      --  ETHSW AC interface 7 base address register
      ETHSW_AC_IF7_BASER              : aliased HAL.UInt32;
      --  ETHSW AC interface 7 length register
      ETHSW_AC_IF7_LENR               : aliased HAL.UInt32;
      --  ETHSW AC interface 7 port mapping register
      ETHSW_AC_IF7_PORTR              : aliased ETHSW_AC_IF7_PORTR_Register;
      --  ETHSW AC interface 8 ID register
      ETHSW_AC_IF8_IDR                : aliased HAL.UInt16;
      --  ETHSW AC interface 8 version register
      ETHSW_AC_IF8_VERR               : aliased ETHSW_AC_IF8_VERR_Register;
      --  ETHSW AC interface 8 base address register
      ETHSW_AC_IF8_BASER              : aliased HAL.UInt32;
      --  ETHSW AC interface 8 length register
      ETHSW_AC_IF8_LENR               : aliased HAL.UInt32;
      --  ETHSW AC interface 8 port mapping register
      ETHSW_AC_IF8_PORTR              : aliased ETHSW_AC_IF8_PORTR_Register;
      --  ETHSW AC interface 9 ID register
      ETHSW_AC_IF9_IDR                : aliased HAL.UInt16;
      --  ETHSW AC interface 9 version register
      ETHSW_AC_IF9_VERR               : aliased ETHSW_AC_IF9_VERR_Register;
      --  ETHSW AC interface 9 base address register
      ETHSW_AC_IF9_BASER              : aliased HAL.UInt32;
      --  ETHSW AC interface 9 length register
      ETHSW_AC_IF9_LENR               : aliased HAL.UInt32;
      --  ETHSW AC interface 9 port mapping register
      ETHSW_AC_IF9_PORTR              : aliased ETHSW_AC_IF9_PORTR_Register;
      --  ETHSW AC interface 10 ID register
      ETHSW_AC_IF10_IDR               : aliased HAL.UInt16;
      --  ETHSW AC interface 10 version register
      ETHSW_AC_IF10_VERR              : aliased ETHSW_AC_IF10_VERR_Register;
      --  ETHSW AC interface 10 base address register
      ETHSW_AC_IF10_BASER             : aliased HAL.UInt32;
      --  ETHSW AC interface 10 length register
      ETHSW_AC_IF10_LENR              : aliased HAL.UInt32;
      --  ETHSW AC interface 10 port mapping register
      ETHSW_AC_IF10_PORTR             : aliased ETHSW_AC_IF10_PORTR_Register;
      --  ETHSW AC interface 11 ID register
      ETHSW_AC_IF11_IDR               : aliased HAL.UInt16;
      --  ETHSW AC interface 11 version register
      ETHSW_AC_IF11_VERR              : aliased ETHSW_AC_IF11_VERR_Register;
      --  ETHSW AC interface 11 base address register
      ETHSW_AC_IF11_BASER             : aliased HAL.UInt32;
      --  ETHSW AC interface 11 length register
      ETHSW_AC_IF11_LENR              : aliased HAL.UInt32;
      --  ETHSW AC interface 11 port mapping register
      ETHSW_AC_IF11_PORTR             : aliased ETHSW_AC_IF11_PORTR_Register;
      --  ETHSW AC interface 12 ID register
      ETHSW_AC_IF12_IDR               : aliased HAL.UInt16;
      --  ETHSW AC interface 12 version register
      ETHSW_AC_IF12_VERR              : aliased ETHSW_AC_IF12_VERR_Register;
      --  ETHSW AC interface 12 base address register
      ETHSW_AC_IF12_BASER             : aliased HAL.UInt32;
      --  ETHSW AC interface 12 length register
      ETHSW_AC_IF12_LENR              : aliased HAL.UInt32;
      --  ETHSW AC interface 12 port mapping register
      ETHSW_AC_IF12_PORTR             : aliased ETHSW_AC_IF12_PORTR_Register;
      --  ETHSW AC interface 13 ID register
      ETHSW_AC_IF13_IDR               : aliased HAL.UInt16;
      --  ETHSW AC interface 13 version register
      ETHSW_AC_IF13_VERR              : aliased ETHSW_AC_IF13_VERR_Register;
      --  ETHSW AC interface 13 base address register
      ETHSW_AC_IF13_BASER             : aliased HAL.UInt32;
      --  ETHSW AC interface 13 length register
      ETHSW_AC_IF13_LENR              : aliased HAL.UInt32;
      --  ETHSW AC interface 13 port mapping register
      ETHSW_AC_IF13_PORTR             : aliased ETHSW_AC_IF13_PORTR_Register;
      --  ETHSW AC end of table register
      ETHSW_AC_EOTR                   : aliased HAL.UInt16;
      --  ETHSW IBC device ID register
      ETHSW_IBC_DEV_IDR               : aliased ETHSW_IBC_DEV_IDR_Register;
      --  ETHSW IBC IP core ID register
      ETHSW_IBC_INT_IDR               : aliased HAL.UInt32;
      --  ETHSW IBC general-purpose multiplexer control register
      ETHSW_IBC_GP_MUX_CTRLR          : aliased ETHSW_IBC_GP_MUX_CTRLR_Register;
      --  ETHSW IBC time interface mux demux control register
      ETHSW_IBC_TIME_MUX_CTRLR        : aliased ETHSW_IBC_TIME_MUX_CTRLR_Register;
      --  ETHSW IBC generic GP_MUXES register
      ETHSW_IBC_GP_MUXESR             : aliased ETHSW_IBC_GP_MUXESR_Register;
      --  ETHSW IBC generic GP_MUX_DEFAULT register
      ETHSW_IBC_GP_MUX_DEFAULTR       : aliased ETHSW_IBC_GP_MUX_DEFAULTR_Register;
      --  ETHSW IBC generic TIME_MUXES register
      ETHSW_IBC_TIME_MUXESR           : aliased ETHSW_IBC_TIME_MUXESR_Register;
      --  ETHSW IBC generic TIME_MUX_DEFAULT register
      ETHSW_IBC_TIME_MUX_DEFAULTR     : aliased ETHSW_IBC_TIME_MUX_DEFAULTR_Register;
      --  ETHSW IBC generic AUTOCONFIG0 register
      ETHSW_IBC_AUTOCONFIG0R          : aliased ETHSW_IBC_AUTOCONFIG0R_Register;
      --  ETHSW IBC generic AUTOCONFIG8 register
      ETHSW_IBC_AUTOCONFIG8R          : aliased HAL.UInt16;
      --  ETHSW IBC generic AUTOCONFIG9 register
      ETHSW_IBC_AUTOCONFIG9R          : aliased HAL.UInt16;
      --  ETHSW IBC generic AUTOCONFIG10 register
      ETHSW_IBC_AUTOCONFIG10R         : aliased HAL.UInt16;
      --  ETHSW IBC generic AUTOCONFIG12 register
      ETHSW_IBC_AUTOCONFIG12R         : aliased HAL.UInt16;
      --  ETHSW IBC generic AUTOCONFIG13 register
      ETHSW_IBC_AUTOCONFIG13R         : aliased HAL.UInt16;
      --  ETHSW IBC generic AUTOCONFIG14 register
      ETHSW_IBC_AUTOCONFIG14R         : aliased HAL.UInt16;
      --  ETHSW FTPS general register 0
      ETHSW_FTPS_GL0R                 : aliased ETHSW_FTPS_GL0R_Register;
      --  ETHSW FTPS general register 1
      ETHSW_FTPS_GL1R                 : aliased HAL.UInt32;
      --  ETHSW FTPS timestamper control register
      ETHSW_FTPS_TSCR                 : aliased ETHSW_FTPS_TSCR_Register;
      --  ETHSW FTPS timestamper interrupt mask register
      ETHSW_FTPS_TSIMR                : aliased ETHSW_FTPS_TSIMR_Register;
      --  ETHSW FTPS timestamper interrupt status register
      ETHSW_FTPS_TSISR                : aliased ETHSW_FTPS_TSISR_Register;
      --  ETHSW FTPS timestamp subnanosecond register
      ETHSW_FTPS_TS_SNSR              : aliased HAL.UInt32;
      --  ETHSW FTPS timestamp nanosecond register
      ETHSW_FTPS_TS_NSR               : aliased ETHSW_FTPS_TS_NSR_Register;
      --  ETHSW FTPS timestamp second low register
      ETHSW_FTPS_TS_SLR               : aliased HAL.UInt32;
      --  ETHSW FTPS timestamp second high register
      ETHSW_FTPS_TS_SHR               : aliased ETHSW_FTPS_TS_SHR_Register;
      --  ETHSW FTPS pulse counter register
      ETHSW_FTPS_PCNTR                : aliased HAL.UInt32;
      --  ETHSW FRTC0 general register
      ETHSW_FRTC0_GLR                 : aliased ETHSW_FRTC0_GLR_Register;
      --  ETHSW FRTC0 current time nanosecond register
      ETHSW_FRTC0_CUR_NSECR           : aliased ETHSW_FRTC0_CUR_NSECR_Register;
      --  ETHSW FRTC0 current time second low register
      ETHSW_FRTC0_CUR_SECLR           : aliased HAL.UInt32;
      --  ETHSW FRTC0 current time second high register
      ETHSW_FRTC0_CUR_SECHR           : aliased ETHSW_FRTC0_CUR_SECHR_Register;
      --  ETHSW FRTC0 time CC low register
      ETHSW_FRTC0_TIME_CCLR           : aliased HAL.UInt32;
      --  ETHSW FRTC0 time CC high register
      ETHSW_FRTC0_TIME_CCHR           : aliased ETHSW_FRTC0_TIME_CCHR_Register;
      --  ETHSW FRTC0 step size subnanosecond register
      ETHSW_FRTC0_STEP_SIZE_SNR       : aliased HAL.UInt32;
      --  ETHSW FRTC0 step size nanosecond register
      ETHSW_FRTC0_STEP_SIZE_NR        : aliased ETHSW_FRTC0_STEP_SIZE_NR_Register;
      --  ETHSW FRTC0 adjust nanosecond register
      ETHSW_FRTC0_ADJUST_NSECR        : aliased ETHSW_FRTC0_ADJUST_NSECR_Register;
      --  ETHSW FRTC0 adjust second low register
      ETHSW_FRTC0_ADJUST_SECLR        : aliased HAL.UInt32;
      --  ETHSW FRTC0 adjust second high register
      ETHSW_FRTC0_ADJUST_SECHR        : aliased ETHSW_FRTC0_ADJUST_SECHR_Register;
      --  ETHSW FRTC0 time command register
      ETHSW_FRTC0_TIME_CMDR           : aliased ETHSW_FRTC0_TIME_CMDR_Register;
      --  ETHSW FRTC0 generics low register
      ETHSW_FRTC0_GENERICS_LR         : aliased HAL.UInt32;
      --  ETHSW FRTC0 generics high register
      ETHSW_FRTC0_GENERICS_HR         : aliased ETHSW_FRTC0_GENERICS_HR_Register;
      --  ETHSW FRTC1 general register
      ETHSW_FRTC1_GLR                 : aliased ETHSW_FRTC1_GLR_Register;
      --  ETHSW FRTC1 current time nanosecond register
      ETHSW_FRTC1_CUR_NSECR           : aliased ETHSW_FRTC1_CUR_NSECR_Register;
      --  ETHSW FRTC1 current time second low register
      ETHSW_FRTC1_CUR_SECLR           : aliased HAL.UInt32;
      --  ETHSW FRTC1 current time second high register
      ETHSW_FRTC1_CUR_SECHR           : aliased ETHSW_FRTC1_CUR_SECHR_Register;
      --  ETHSW FRTC1 time CC low register
      ETHSW_FRTC1_TIME_CCLR           : aliased HAL.UInt32;
      --  ETHSW FRTC1 time CC high register
      ETHSW_FRTC1_TIME_CCHR           : aliased ETHSW_FRTC1_TIME_CCHR_Register;
      --  ETHSW FRTC1 step size subnanosecond register
      ETHSW_FRTC1_STEP_SIZE_SNR       : aliased HAL.UInt32;
      --  ETHSW FRTC1 step size nanosecond register
      ETHSW_FRTC1_STEP_SIZE_NR        : aliased ETHSW_FRTC1_STEP_SIZE_NR_Register;
      --  ETHSW FRTC1 adjust nanosecond register
      ETHSW_FRTC1_ADJUST_NSECR        : aliased ETHSW_FRTC1_ADJUST_NSECR_Register;
      --  ETHSW FRTC1 adjust second low register
      ETHSW_FRTC1_ADJUST_SECLR        : aliased HAL.UInt32;
      --  ETHSW FRTC1 adjust second high register
      ETHSW_FRTC1_ADJUST_SECHR        : aliased ETHSW_FRTC1_ADJUST_SECHR_Register;
      --  ETHSW FRTC1 time command register
      ETHSW_FRTC1_TIME_CMDR           : aliased ETHSW_FRTC1_TIME_CMDR_Register;
      --  ETHSW FRTC1 generics low register
      ETHSW_FRTC1_GENERICS_LR         : aliased HAL.UInt32;
      --  ETHSW FRTC1 generics high register
      ETHSW_FRTC1_GENERICS_HR         : aliased ETHSW_FRTC1_GENERICS_HR_Register;
      --  ETHSW FSC device ID register
      ETHSW_FSC_DEV_IDR               : aliased ETHSW_FSC_DEV_IDR_Register;
      --  ETHSW FSC INT ID register
      ETHSW_FSC_INT_IDR               : aliased HAL.UInt32;
      --  ETHSW FSC schedule table row access command register 0
      ETHSW_FSC_ROW_ACCESS_CMD0R      : aliased ETHSW_FSC_ROW_ACCESS_CMD0R_Register;
      --  ETHSW FSC schedule table row access command register 1
      ETHSW_FSC_ROW_ACCESS_CMD1R      : aliased ETHSW_FSC_ROW_ACCESS_CMD1R_Register;
      --  ETHSW FSC schedule table row data 0 register
      ETHSW_FSC_ROW_DATA0R            : aliased ETHSW_FSC_ROW_DATA0R_Register;
      --  ETHSW FSC schedule table row data 4 register
      ETHSW_FSC_ROW_DATA4R            : aliased HAL.UInt16;
      --  ETHSW FSC interrupt mask register
      ETHSW_FSC_IMR                   : aliased ETHSW_FSC_IMR_Register;
      --  ETHSW FSC interrupt status register
      ETHSW_FSC_ISR                   : aliased ETHSW_FSC_ISR_Register;
      --  ETHSW FSC generic scheduler register
      ETHSW_FSC_GEN_SCHR              : aliased HAL.UInt16;
      --  ETHSW FSC generic outputs register
      ETHSW_FSC_GEN_OUTR              : aliased ETHSW_FSC_GEN_OUTR_Register;
      --  ETHSW FSC generic table rows register
      ETHSW_FSC_GEN_TBL_RWR           : aliased ETHSW_FSC_GEN_TBL_RWR_Register;
      --  ETHSW FSC generic clock frequency register
      ETHSW_FSC_GEN_CLK_FRQR          : aliased ETHSW_FSC_GEN_CLK_FRQR_Register;
      --  ETHSW FSC scheduler 0 general register
      ETHSW_FSC0_SCH_GENR             : aliased ETHSW_FSC0_SCH_GENR_Register;
      --  ETHSW FSC scheduler 0 downcounter speed setting register
      ETHSW_FSC0_DWNCNT_SPDR          : aliased ETHSW_FSC0_DWNCNT_SPDR_Register;
      --  ETHSW FSC scheduler 0 emergency disable control register
      ETHSW_FSC0_EME_DIS_CR           : aliased ETHSW_FSC0_EME_DIS_CR_Register;
      --  ETHSW FSC scheduler 0 emergency disable port state register
      ETHSW_FSC0_EME_DIS_STATR        : aliased ETHSW_FSC0_EME_DIS_STATR_Register;
      --  ETHSW FSC scheduler 0 table 0 general control and status register
      ETHSW_FSC0_T0_TBL_GENR          : aliased ETHSW_FSC0_T0_TBL_GENR_Register;
      --  ETHSW FSC scheduler 0 table 0 start time nanosecond register
      ETHSW_FSC0_T0_STRT_NSR          : aliased ETHSW_FSC0_T0_STRT_NSR_Register;
      --  ETHSW FSC scheduler 0 table 0 start time second register
      ETHSW_FSC0_T0_STRT_SR           : aliased ETHSW_FSC0_T0_STRT_SR_Register;
      --  ETHSW FSC scheduler 0 table 0 cycle time subnanosecond register
      ETHSW_FSC0_T0_CYC_SUBNSR        : aliased ETHSW_FSC0_T0_CYC_SUBNSR_Register;
      --  ETHSW FSC scheduler 0 table 0 cycle time nanosecond register
      ETHSW_FSC0_T0_CYC_NSR           : aliased ETHSW_FSC0_T0_CYC_NSR_Register;
      --  ETHSW FSC scheduler 0 table 0 cycle timestamp nanosecond register
      ETHSW_FSC0_T0_CYCTS_NSR         : aliased ETHSW_FSC0_T0_CYCTS_NSR_Register;
      --  ETHSW FSC scheduler 0 table 0 cycle timestamp second register
      ETHSW_FSC0_T0_CYCTS_SR          : aliased ETHSW_FSC0_T0_CYCTS_SR_Register;
      --  ETHSW FSC scheduler 0 table 0 cycle counter register
      ETHSW_FSC0_T0_CYC_CNTR          : aliased HAL.UInt16;
      --  ETHSW FSC scheduler 0 table 0 last cycle register
      ETHSW_FSC0_T0_LST_CYCR          : aliased HAL.UInt16;
      --  ETHSW FSC scheduler 0 table 1 general control and status register
      ETHSW_FSC0_T1_TBL_GENR          : aliased ETHSW_FSC0_T1_TBL_GENR_Register;
      --  ETHSW FSC scheduler 0 table 1 start time nanosecond register
      ETHSW_FSC0_T1_STRT_NSR          : aliased ETHSW_FSC0_T1_STRT_NSR_Register;
      --  ETHSW FSC scheduler 0 table 1 start time second register
      ETHSW_FSC0_T1_STRT_SR           : aliased ETHSW_FSC0_T1_STRT_SR_Register;
      --  ETHSW FSC scheduler 0 table 1 cycle time subnanosecond register
      ETHSW_FSC0_T1_CYC_SUBNSR        : aliased ETHSW_FSC0_T1_CYC_SUBNSR_Register;
      --  ETHSW FSC scheduler 0 table 1 cycle time nanosecond register
      ETHSW_FSC0_T1_CYC_NSR           : aliased ETHSW_FSC0_T1_CYC_NSR_Register;
      --  ETHSW FSC scheduler 0 table 1 cycle timestamp nanosecond register
      ETHSW_FSC0_T1_CYCTS_NSR         : aliased ETHSW_FSC0_T1_CYCTS_NSR_Register;
      --  ETHSW FSC scheduler 0 table 1 cycle timestamp second register
      ETHSW_FSC0_T1_CYCTS_SR          : aliased ETHSW_FSC0_T1_CYCTS_SR_Register;
      --  ETHSW FSC scheduler 0 table 1 cycle counter register
      ETHSW_FSC0_T1_CYC_CNTR          : aliased HAL.UInt16;
      --  ETHSW FSC scheduler 0 table 1 last cycle register
      ETHSW_FSC0_T1_LST_CYCR          : aliased HAL.UInt16;
      --  ETHSW FSC scheduler 1 general register
      ETHSW_FSC1_SCH_GENR             : aliased ETHSW_FSC1_SCH_GENR_Register;
      --  ETHSW FSC scheduler 1 downcounter speed setting register
      ETHSW_FSC1_DWNCNT_SPDR          : aliased ETHSW_FSC1_DWNCNT_SPDR_Register;
      --  ETHSW FSC scheduler 1 emergency disable control register
      ETHSW_FSC1_EME_DIS_CR           : aliased ETHSW_FSC1_EME_DIS_CR_Register;
      --  ETHSW FSC scheduler 1 emergency disable port state register
      ETHSW_FSC1_EME_DIS_STATR        : aliased ETHSW_FSC1_EME_DIS_STATR_Register;
      --  ETHSW FSC scheduler 1 table 0 general control and status register
      ETHSW_FSC1_T0_TBL_GENR          : aliased ETHSW_FSC1_T0_TBL_GENR_Register;
      --  ETHSW FSC scheduler 1 table 0 start time nanosecond register
      ETHSW_FSC1_T0_STRT_NSR          : aliased ETHSW_FSC1_T0_STRT_NSR_Register;
      --  ETHSW FSC scheduler 1 table 0 start time second register
      ETHSW_FSC1_T0_STRT_SR           : aliased ETHSW_FSC1_T0_STRT_SR_Register;
      --  ETHSW FSC scheduler 1 table 0 cycle time subnanosecond register
      ETHSW_FSC1_T0_CYC_SUBNSR        : aliased ETHSW_FSC1_T0_CYC_SUBNSR_Register;
      --  ETHSW FSC scheduler 1 table 0 cycle time nanosecond register
      ETHSW_FSC1_T0_CYC_NSR           : aliased ETHSW_FSC1_T0_CYC_NSR_Register;
      --  ETHSW FSC scheduler 1 table 0 cycle timestamp nanosecond register
      ETHSW_FSC1_T0_CYCTS_NSR         : aliased ETHSW_FSC1_T0_CYCTS_NSR_Register;
      --  ETHSW FSC scheduler 1 table 0 cycle timestamp second register
      ETHSW_FSC1_T0_CYCTS_SR          : aliased ETHSW_FSC1_T0_CYCTS_SR_Register;
      --  ETHSW FSC scheduler 1 table 0 cycle counter register
      ETHSW_FSC1_T0_CYC_CNTR          : aliased HAL.UInt16;
      --  ETHSW FSC scheduler 1 table 0 last cycle register
      ETHSW_FSC1_T0_LST_CYCR          : aliased HAL.UInt16;
      --  ETHSW FSC scheduler 1 table 1 general control and status register
      ETHSW_FSC1_T1_TBL_GENR          : aliased ETHSW_FSC1_T1_TBL_GENR_Register;
      --  ETHSW FSC scheduler 1 table 1 start time nanosecond register
      ETHSW_FSC1_T1_STRT_NSR          : aliased ETHSW_FSC1_T1_STRT_NSR_Register;
      --  ETHSW FSC scheduler 1 table 1 start time second register
      ETHSW_FSC1_T1_STRT_SR           : aliased ETHSW_FSC1_T1_STRT_SR_Register;
      --  ETHSW FSC scheduler 1 table 1 cycle time subnanosecond register
      ETHSW_FSC1_T1_CYC_SUBNSR        : aliased ETHSW_FSC1_T1_CYC_SUBNSR_Register;
      --  ETHSW FSC scheduler 1 table 1 cycle time nanosecond register
      ETHSW_FSC1_T1_CYC_NSR           : aliased ETHSW_FSC1_T1_CYC_NSR_Register;
      --  ETHSW FSC scheduler 1 table 1 cycle timestamp nanosecond register
      ETHSW_FSC1_T1_CYCTS_NSR         : aliased ETHSW_FSC1_T1_CYCTS_NSR_Register;
      --  ETHSW FSC scheduler 1 table 1 cycle timestamp second register
      ETHSW_FSC1_T1_CYCTS_SR          : aliased ETHSW_FSC1_T1_CYCTS_SR_Register;
      --  ETHSW FSC scheduler 1 table 1 cycle counter register
      ETHSW_FSC1_T1_CYC_CNTR          : aliased HAL.UInt16;
      --  ETHSW FSC scheduler 1 table 1 last cycle register
      ETHSW_FSC1_T1_LST_CYCR          : aliased HAL.UInt16;
      --  ETHSW FSC scheduler 2 general register
      ETHSW_FSC2_SCH_GENR             : aliased ETHSW_FSC2_SCH_GENR_Register;
      --  ETHSW FSC scheduler 2 downcounter speed setting register
      ETHSW_FSC2_DWNCNT_SPDR          : aliased ETHSW_FSC2_DWNCNT_SPDR_Register;
      --  ETHSW FSC scheduler 2 emergency disable control register
      ETHSW_FSC2_EME_DIS_CR           : aliased ETHSW_FSC2_EME_DIS_CR_Register;
      --  ETHSW FSC scheduler 2 emergency disable port state register
      ETHSW_FSC2_EME_DIS_STATR        : aliased ETHSW_FSC2_EME_DIS_STATR_Register;
      --  ETHSW FSC scheduler 2 table 0 general control and status register
      ETHSW_FSC2_T0_TBL_GENR          : aliased ETHSW_FSC2_T0_TBL_GENR_Register;
      --  ETHSW FSC scheduler 2 table 0 start time nanosecond register
      ETHSW_FSC2_T0_STRT_NSR          : aliased ETHSW_FSC2_T0_STRT_NSR_Register;
      --  ETHSW FSC scheduler 2 table 0 start time second register
      ETHSW_FSC2_T0_STRT_SR           : aliased ETHSW_FSC2_T0_STRT_SR_Register;
      --  ETHSW FSC scheduler 2 table 0 cycle time subnanosecond register
      ETHSW_FSC2_T0_CYC_SUBNSR        : aliased ETHSW_FSC2_T0_CYC_SUBNSR_Register;
      --  ETHSW FSC scheduler 2 table 0 cycle time nanosecond register
      ETHSW_FSC2_T0_CYC_NSR           : aliased ETHSW_FSC2_T0_CYC_NSR_Register;
      --  ETHSW FSC scheduler 2 table 0 cycle timestamp nanosecond register
      ETHSW_FSC2_T0_CYCTS_NSR         : aliased ETHSW_FSC2_T0_CYCTS_NSR_Register;
      --  ETHSW FSC scheduler 2 table 0 cycle timestamp second register
      ETHSW_FSC2_T0_CYCTS_SR          : aliased ETHSW_FSC2_T0_CYCTS_SR_Register;
      --  ETHSW FSC scheduler 2 table 0 cycle counter register
      ETHSW_FSC2_T0_CYC_CNTR          : aliased HAL.UInt16;
      --  ETHSW FSC scheduler 2 table 0 last cycle register
      ETHSW_FSC2_T0_LST_CYCR          : aliased HAL.UInt16;
      --  ETHSW FSC scheduler 2 table 1 general control and status register
      ETHSW_FSC2_T1_TBL_GENR          : aliased ETHSW_FSC2_T1_TBL_GENR_Register;
      --  ETHSW FSC scheduler 2 table 1 start time nanosecond register
      ETHSW_FSC2_T1_STRT_NSR          : aliased ETHSW_FSC2_T1_STRT_NSR_Register;
      --  ETHSW FSC scheduler 2 table 1 start time second register
      ETHSW_FSC2_T1_STRT_SR           : aliased ETHSW_FSC2_T1_STRT_SR_Register;
      --  ETHSW FSC scheduler 2 table 1 cycle time subnanosecond register
      ETHSW_FSC2_T1_CYC_SUBNSR        : aliased ETHSW_FSC2_T1_CYC_SUBNSR_Register;
      --  ETHSW FSC scheduler 2 table 1 cycle time nanosecond register
      ETHSW_FSC2_T1_CYC_NSR           : aliased ETHSW_FSC2_T1_CYC_NSR_Register;
      --  ETHSW FSC scheduler 2 table 1 cycle timestamp nanosecond register
      ETHSW_FSC2_T1_CYCTS_NSR         : aliased ETHSW_FSC2_T1_CYCTS_NSR_Register;
      --  ETHSW FSC scheduler 2 table 1 cycle timestamp second register
      ETHSW_FSC2_T1_CYCTS_SR          : aliased ETHSW_FSC2_T1_CYCTS_SR_Register;
      --  ETHSW FSC scheduler 2 table 1 cycle counter register
      ETHSW_FSC2_T1_CYC_CNTR          : aliased HAL.UInt16;
      --  ETHSW FSC scheduler 2 table 1 last cycle register
      ETHSW_FSC2_T1_LST_CYCR          : aliased HAL.UInt16;
      --  ETHSW FES port 0 port State register
      ETHSW_FES0_PORT_STATER          : aliased ETHSW_FES0_PORT_STATER_Register;
      --  ETHSW FES port 0 port VLAN configuration register 0
      ETHSW_FES0_VLAN0R               : aliased ETHSW_FES0_VLAN0R_Register;
      --  ETHSW FES port 0 port VLAN configuration register 1
      ETHSW_FES0_VLAN1R               : aliased ETHSW_FES0_VLAN1R_Register;
      --  ETHSW FES port 0 port forward mask configuration register
      ETHSW_FES0_FWDM_CFGR            : aliased ETHSW_FES0_FWDM_CFGR_Register;
      --  ETHSW FES port 0 priority regeneration table low register
      ETHSW_FES0_PRIO_REGENLR         : aliased ETHSW_FES0_PRIO_REGENLR_Register;
      --  ETHSW FES port 0 priority regeneration table high register
      ETHSW_FES0_PRIO_REGENHR         : aliased ETHSW_FES0_PRIO_REGENHR_Register;
      --  ETHSW FES port 0 shaper 0 configuration register
      ETHSW_FES0_SHAPER0R             : aliased HAL.UInt16;
      --  ETHSW FES port 0 shaper 1 configuration register
      ETHSW_FES0_SHAPER1R             : aliased HAL.UInt16;
      --  ETHSW FES port 0 shaper 2 configuration register
      ETHSW_FES0_SHAPER2R             : aliased HAL.UInt16;
      --  ETHSW FES port 0 shaper 3 configuration register
      ETHSW_FES0_SHAPER3R             : aliased HAL.UInt16;
      --  ETHSW FES port 0 shaper 4 configuration register
      ETHSW_FES0_SHAPER4R             : aliased HAL.UInt16;
      --  ETHSW FES port 0 shaper 5 configuration register
      ETHSW_FES0_SHAPER5R             : aliased HAL.UInt16;
      --  ETHSW FES port 0 shaper 6 configuration register
      ETHSW_FES0_SHAPER6R             : aliased HAL.UInt16;
      --  ETHSW FES port 0 shaper 7 configuration register
      ETHSW_FES0_SHAPER7R             : aliased HAL.UInt16;
      --  ETHSW FES port 0 frame size 0 configuration register
      ETHSW_FES0_FRAMESIZE0R          : aliased ETHSW_FES0_FRAMESIZE0R_Register;
      --  ETHSW FES port 0 frame size 1 configuration register
      ETHSW_FES0_FRAMESIZE1R          : aliased ETHSW_FES0_FRAMESIZE1R_Register;
      --  ETHSW FES port 0 frame size 2 configuration register
      ETHSW_FES0_FRAMESIZE2R          : aliased ETHSW_FES0_FRAMESIZE2R_Register;
      --  ETHSW FES port 0 frame size 3 configuration register
      ETHSW_FES0_FRAMESIZE3R          : aliased ETHSW_FES0_FRAMESIZE3R_Register;
      --  ETHSW FES port 0 frame size 4 configuration register
      ETHSW_FES0_FRAMESIZE4R          : aliased ETHSW_FES0_FRAMESIZE4R_Register;
      --  ETHSW FES port 0 frame size 5 configuration register
      ETHSW_FES0_FRAMESIZE5R          : aliased ETHSW_FES0_FRAMESIZE5R_Register;
      --  ETHSW FES port 0 frame size 6 configuration register
      ETHSW_FES0_FRAMESIZE6R          : aliased ETHSW_FES0_FRAMESIZE6R_Register;
      --  ETHSW FES port 0 frame size 7 configuration register
      ETHSW_FES0_FRAMESIZE7R          : aliased ETHSW_FES0_FRAMESIZE7R_Register;
      --  ETHSW FES port 0 filtering identifier configuration register 0
      ETHSW_FES0_FID_CFG0R            : aliased ETHSW_FES0_FID_CFG0R_Register;
      --  ETHSW FES port 0 filtering identifier configuration register 1
      ETHSW_FES0_FID_CFG1R            : aliased ETHSW_FES0_FID_CFG1R_Register;
      --  ETHSW FES port 0 filtering identifier configuration register 2
      ETHSW_FES0_FID_CFG2R            : aliased ETHSW_FES0_FID_CFG2R_Register;
      --  ETHSW FES port 0 filtering identifier configuration register 3
      ETHSW_FES0_FID_CFG3R            : aliased ETHSW_FES0_FID_CFG3R_Register;
      --  ETHSW FES port 0 filtering identifier configuration register 4
      ETHSW_FES0_FID_CFG4R            : aliased ETHSW_FES0_FID_CFG4R_Register;
      --  ETHSW FES port 0 filtering identifier configuration register 5
      ETHSW_FES0_FID_CFG5R            : aliased ETHSW_FES0_FID_CFG5R_Register;
      --  ETHSW FES port 0 filtering identifier configuration register 6
      ETHSW_FES0_FID_CFG6R            : aliased ETHSW_FES0_FID_CFG6R_Register;
      --  ETHSW FES port 0 filtering identifier configuration register 7
      ETHSW_FES0_FID_CFG7R            : aliased ETHSW_FES0_FID_CFG7R_Register;
      --  ETHSW FES port 0 buffer fill level capture register
      ETHSW_FES0_FL_CAPTR             : aliased ETHSW_FES0_FL_CAPTR_Register;
      --  ETHSW FES port 0 buffer fill level sample counter register
      ETHSW_FES0_FL_SMPL_CNTR         : aliased HAL.UInt16;
      --  ETHSW FES port 0 minimum fill level queue 0 register
      ETHSW_FES0_FL_Q0_MINR           : aliased ETHSW_FES0_FL_Q0_MINR_Register;
      --  ETHSW FES port 0 minimum fill level queue 1 register
      ETHSW_FES0_FL_Q1_MINR           : aliased ETHSW_FES0_FL_Q1_MINR_Register;
      --  ETHSW FES port 0 minimum fill level queue 2 register
      ETHSW_FES0_FL_Q2_MINR           : aliased ETHSW_FES0_FL_Q2_MINR_Register;
      --  ETHSW FES port 0 minimum fill level queue 3 register
      ETHSW_FES0_FL_Q3_MINR           : aliased ETHSW_FES0_FL_Q3_MINR_Register;
      --  ETHSW FES port 0 minimum fill level queue 4 register
      ETHSW_FES0_FL_Q4_MINR           : aliased ETHSW_FES0_FL_Q4_MINR_Register;
      --  ETHSW FES port 0 minimum fill level queue 5 register
      ETHSW_FES0_FL_Q5_MINR           : aliased ETHSW_FES0_FL_Q5_MINR_Register;
      --  ETHSW FES port 0 minimum fill level queue 6 register
      ETHSW_FES0_FL_Q6_MINR           : aliased ETHSW_FES0_FL_Q6_MINR_Register;
      --  ETHSW FES port 0 minimum fill level queue 7 register
      ETHSW_FES0_FL_Q7_MINR           : aliased ETHSW_FES0_FL_Q7_MINR_Register;
      --  ETHSW FES port 0 maximum fill level queue 0 register
      ETHSW_FES0_FL_Q0_MAXR           : aliased ETHSW_FES0_FL_Q0_MAXR_Register;
      --  ETHSW FES port 0 maximum fill level queue 1 register
      ETHSW_FES0_FL_Q1_MAXR           : aliased ETHSW_FES0_FL_Q1_MAXR_Register;
      --  ETHSW FES port 0 maximum fill level queue 2 register
      ETHSW_FES0_FL_Q2_MAXR           : aliased ETHSW_FES0_FL_Q2_MAXR_Register;
      --  ETHSW FES port 0 maximum fill level queue 3 register
      ETHSW_FES0_FL_Q3_MAXR           : aliased ETHSW_FES0_FL_Q3_MAXR_Register;
      --  ETHSW FES port 0 maximum fill level queue 4 register
      ETHSW_FES0_FL_Q4_MAXR           : aliased ETHSW_FES0_FL_Q4_MAXR_Register;
      --  ETHSW FES port 0 maximum fill level queue 5 register
      ETHSW_FES0_FL_Q5_MAXR           : aliased ETHSW_FES0_FL_Q5_MAXR_Register;
      --  ETHSW FES port 0 maximum fill level queue 6 register
      ETHSW_FES0_FL_Q6_MAXR           : aliased ETHSW_FES0_FL_Q6_MAXR_Register;
      --  ETHSW FES port 0 maximum fill level queue 7 register
      ETHSW_FES0_FL_Q7_MAXR           : aliased ETHSW_FES0_FL_Q7_MAXR_Register;
      --  ETHSW FES PTP RX sync delay subnanosecond register
      ETHSW_FES0_PTP_RX_SYNCD_SNSR    : aliased HAL.UInt16;
      --  ETHSW FES PTP RX sync delay nanosecond low register
      ETHSW_FES0_PTP_RX_SYNCD_NSLR    : aliased HAL.UInt16;
      --  ETHSW FES PTP RX sync delay nanosecond high register
      ETHSW_FES0_PTP_RX_SYNCD_NSHR    : aliased ETHSW_FES0_PTP_RX_SYNCD_NSHR_Register;
      --  ETHSW FES PTP RX event delay subnanosecond register
      ETHSW_FES0_PTP_RX_EVENTD_SNSR   : aliased HAL.UInt16;
      --  ETHSW FES PTP RX event delay nanosecond register
      ETHSW_FES0_PTP_RX_EVENTD_NSR    : aliased HAL.UInt16;
      --  ETHSW FES PTP TX event delay subnanosecond register
      ETHSW_FES0_PTP_TX_EVENTD_SNSR   : aliased HAL.UInt16;
      --  ETHSW FES PTP TX event delay nanosecond register
      ETHSW_FES0_PTP_TX_EVENTD_NSR    : aliased HAL.UInt16;
      --  ETHSW FES port 0 counter control register
      ETHSW_FES0_CNT_CTRLR            : aliased ETHSW_FES0_CNT_CTRLR_Register;
      --  ETHSW FES port 0 counter command register
      ETHSW_FES0_CNT_CMDR             : aliased ETHSW_FES0_CNT_CMDR_Register;
      --  ETHSW FES port 0 counter value low register
      ETHSW_FES0_CNT_VAL_LOR          : aliased HAL.UInt16;
      --  ETHSW FES port 0 counter value high register
      ETHSW_FES0_CNT_VAL_HIR          : aliased HAL.UInt16;
      --  ETHSW FES port 0 IPO command register
      ETHSW_FES0_IPO_CMDR             : aliased ETHSW_FES0_IPO_CMDR_Register;
      --  ETHSW FES port 0 IPO filter configuration register 0
      ETHSW_FES0_ETH_ADDR_CFG0R       : aliased ETHSW_FES0_ETH_ADDR_CFG0R_Register;
      --  ETHSW FES port 0 forward allow register
      ETHSW_FES0_ETH_ADDR_FWD_ALLOWR  : aliased ETHSW_FES0_ETH_ADDR_FWD_ALLOWR_Register;
      --  ETHSW FES port 0 forward mirror register
      ETHSW_FES0_ETH_ADDR_FWD_MIRRORR : aliased ETHSW_FES0_ETH_ADDR_FWD_MIRRORR_Register;
      --  ETHSW FES port 0 IPO filter configuration register 1
      ETHSW_FES0_ETH_ADDR_CFG1R       : aliased ETHSW_FES0_ETH_ADDR_CFG1R_Register;
      --  ETHSW FES port 0 ethernet address part 0 register
      ETHSW_FES0_ETH_ADDR_0R          : aliased ETHSW_FES0_ETH_ADDR_0R_Register;
      --  ETHSW FES port 0 ethernet address part 1 register
      ETHSW_FES0_ETH_ADDR_1R          : aliased ETHSW_FES0_ETH_ADDR_1R_Register;
      --  ETHSW FES port 0 ethernet address part 2 register
      ETHSW_FES0_ETH_ADDR_2R          : aliased ETHSW_FES0_ETH_ADDR_2R_Register;
      --  ETHSW FES port 1 port State register
      ETHSW_FES1_PORT_STATER          : aliased ETHSW_FES1_PORT_STATER_Register;
      --  ETHSW FES port 1 port VLAN configuration register 0
      ETHSW_FES1_VLAN0R               : aliased ETHSW_FES1_VLAN0R_Register;
      --  ETHSW FES port 1 port VLAN configuration register 1
      ETHSW_FES1_VLAN1R               : aliased ETHSW_FES1_VLAN1R_Register;
      --  ETHSW FES port 1 port forward mask configuration register
      ETHSW_FES1_FWDM_CFGR            : aliased ETHSW_FES1_FWDM_CFGR_Register;
      --  ETHSW FES port 1 priority regeneration table low register
      ETHSW_FES1_PRIO_REGENLR         : aliased ETHSW_FES1_PRIO_REGENLR_Register;
      --  ETHSW FES port 1 priority regeneration table high register
      ETHSW_FES1_PRIO_REGENHR         : aliased ETHSW_FES1_PRIO_REGENHR_Register;
      --  ETHSW FES port 1 TX cut-through enable register
      ETHSW_FES1_TX_CTER              : aliased ETHSW_FES1_TX_CTER_Register;
      --  ETHSW FES port 1 TX preemptable traffic selection register 0
      ETHSW_FES1_TX_PREE0R            : aliased ETHSW_FES1_TX_PREE0R_Register;
      --  ETHSW FES port 1 TX preemptable traffic selection register 1
      ETHSW_FES1_TX_PREE1R            : aliased ETHSW_FES1_TX_PREE1R_Register;
      --  ETHSW FES port 1 queue table configuration register
      ETHSW_FES1_QUEUE_TBLR           : aliased ETHSW_FES1_QUEUE_TBLR_Register;
      --  ETHSW FES port 1 shaper 0 configuration register
      ETHSW_FES1_SHAPER0R             : aliased HAL.UInt16;
      --  ETHSW FES port 1 shaper 1 configuration register
      ETHSW_FES1_SHAPER1R             : aliased HAL.UInt16;
      --  ETHSW FES port 1 shaper 2 configuration register
      ETHSW_FES1_SHAPER2R             : aliased HAL.UInt16;
      --  ETHSW FES port 1 shaper 3 configuration register
      ETHSW_FES1_SHAPER3R             : aliased HAL.UInt16;
      --  ETHSW FES port 1 shaper 4 configuration register
      ETHSW_FES1_SHAPER4R             : aliased HAL.UInt16;
      --  ETHSW FES port 1 shaper 5 configuration register
      ETHSW_FES1_SHAPER5R             : aliased HAL.UInt16;
      --  ETHSW FES port 1 shaper 6 configuration register
      ETHSW_FES1_SHAPER6R             : aliased HAL.UInt16;
      --  ETHSW FES port 1 shaper 7 configuration register
      ETHSW_FES1_SHAPER7R             : aliased HAL.UInt16;
      --  ETHSW FES port 1 frame size 0 configuration register
      ETHSW_FES1_FRAMESIZE0R          : aliased ETHSW_FES1_FRAMESIZE0R_Register;
      --  ETHSW FES port 1 frame size 1 configuration register
      ETHSW_FES1_FRAMESIZE1R          : aliased ETHSW_FES1_FRAMESIZE1R_Register;
      --  ETHSW FES port 1 frame size 2 configuration register
      ETHSW_FES1_FRAMESIZE2R          : aliased ETHSW_FES1_FRAMESIZE2R_Register;
      --  ETHSW FES port 1 frame size 3 configuration register
      ETHSW_FES1_FRAMESIZE3R          : aliased ETHSW_FES1_FRAMESIZE3R_Register;
      --  ETHSW FES port 1 frame size 4 configuration register
      ETHSW_FES1_FRAMESIZE4R          : aliased ETHSW_FES1_FRAMESIZE4R_Register;
      --  ETHSW FES port 1 frame size 5 configuration register
      ETHSW_FES1_FRAMESIZE5R          : aliased ETHSW_FES1_FRAMESIZE5R_Register;
      --  ETHSW FES port 1 frame size 6 configuration register
      ETHSW_FES1_FRAMESIZE6R          : aliased ETHSW_FES1_FRAMESIZE6R_Register;
      --  ETHSW FES port 1 frame size 7 configuration register
      ETHSW_FES1_FRAMESIZE7R          : aliased ETHSW_FES1_FRAMESIZE7R_Register;
      --  ETHSW FES port 1 filtering identifier configuration register 0
      ETHSW_FES1_FID_CFG0R            : aliased ETHSW_FES1_FID_CFG0R_Register;
      --  ETHSW FES port 1 filtering identifier configuration register 1
      ETHSW_FES1_FID_CFG1R            : aliased ETHSW_FES1_FID_CFG1R_Register;
      --  ETHSW FES port 1 filtering identifier configuration register 2
      ETHSW_FES1_FID_CFG2R            : aliased ETHSW_FES1_FID_CFG2R_Register;
      --  ETHSW FES port 1 filtering identifier configuration register 3
      ETHSW_FES1_FID_CFG3R            : aliased ETHSW_FES1_FID_CFG3R_Register;
      --  ETHSW FES port 1 filtering identifier configuration register 4
      ETHSW_FES1_FID_CFG4R            : aliased ETHSW_FES1_FID_CFG4R_Register;
      --  ETHSW FES port 1 filtering identifier configuration register 5
      ETHSW_FES1_FID_CFG5R            : aliased ETHSW_FES1_FID_CFG5R_Register;
      --  ETHSW FES port 1 filtering identifier configuration register 6
      ETHSW_FES1_FID_CFG6R            : aliased ETHSW_FES1_FID_CFG6R_Register;
      --  ETHSW FES port 1 filtering identifier configuration register 7
      ETHSW_FES1_FID_CFG7R            : aliased ETHSW_FES1_FID_CFG7R_Register;
      --  ETHSW FES port 1 buffer fill level capture register
      ETHSW_FES1_FL_CAPTR             : aliased ETHSW_FES1_FL_CAPTR_Register;
      --  ETHSW FES port 1 buffer fill level sample counter register
      ETHSW_FES1_FL_SMPL_CNTR         : aliased HAL.UInt16;
      --  ETHSW FES port 1 minimum fill level queue 0 register
      ETHSW_FES1_FL_Q0_MINR           : aliased ETHSW_FES1_FL_Q0_MINR_Register;
      --  ETHSW FES port 1 minimum fill level queue 1 register
      ETHSW_FES1_FL_Q1_MINR           : aliased ETHSW_FES1_FL_Q1_MINR_Register;
      --  ETHSW FES port 1 minimum fill level queue 2 register
      ETHSW_FES1_FL_Q2_MINR           : aliased ETHSW_FES1_FL_Q2_MINR_Register;
      --  ETHSW FES port 1 minimum fill level queue 3 register
      ETHSW_FES1_FL_Q3_MINR           : aliased ETHSW_FES1_FL_Q3_MINR_Register;
      --  ETHSW FES port 1 minimum fill level queue 4 register
      ETHSW_FES1_FL_Q4_MINR           : aliased ETHSW_FES1_FL_Q4_MINR_Register;
      --  ETHSW FES port 1 minimum fill level queue 5 register
      ETHSW_FES1_FL_Q5_MINR           : aliased ETHSW_FES1_FL_Q5_MINR_Register;
      --  ETHSW FES port 1 minimum fill level queue 6 register
      ETHSW_FES1_FL_Q6_MINR           : aliased ETHSW_FES1_FL_Q6_MINR_Register;
      --  ETHSW FES port 1 minimum fill level queue 7 register
      ETHSW_FES1_FL_Q7_MINR           : aliased ETHSW_FES1_FL_Q7_MINR_Register;
      --  ETHSW FES port 1 maximum fill level queue 0 register
      ETHSW_FES1_FL_Q0_MAXR           : aliased ETHSW_FES1_FL_Q0_MAXR_Register;
      --  ETHSW FES port 1 maximum fill level queue 1 register
      ETHSW_FES1_FL_Q1_MAXR           : aliased ETHSW_FES1_FL_Q1_MAXR_Register;
      --  ETHSW FES port 1 maximum fill level queue 2 register
      ETHSW_FES1_FL_Q2_MAXR           : aliased ETHSW_FES1_FL_Q2_MAXR_Register;
      --  ETHSW FES port 1 maximum fill level queue 3 register
      ETHSW_FES1_FL_Q3_MAXR           : aliased ETHSW_FES1_FL_Q3_MAXR_Register;
      --  ETHSW FES port 1 maximum fill level queue 4 register
      ETHSW_FES1_FL_Q4_MAXR           : aliased ETHSW_FES1_FL_Q4_MAXR_Register;
      --  ETHSW FES port 1 maximum fill level queue 5 register
      ETHSW_FES1_FL_Q5_MAXR           : aliased ETHSW_FES1_FL_Q5_MAXR_Register;
      --  ETHSW FES port 1 maximum fill level queue 6 register
      ETHSW_FES1_FL_Q6_MAXR           : aliased ETHSW_FES1_FL_Q6_MAXR_Register;
      --  ETHSW FES port 1 maximum fill level queue 7 register
      ETHSW_FES1_FL_Q7_MAXR           : aliased ETHSW_FES1_FL_Q7_MAXR_Register;
      --  ETHSW FES PTP RX sync delay subnanosecond register
      ETHSW_FES1_PTP_RX_SYNCD_SNSR    : aliased HAL.UInt16;
      --  ETHSW FES PTP RX sync delay nanosecond low register
      ETHSW_FES1_PTP_RX_SYNCD_NSLR    : aliased HAL.UInt16;
      --  ETHSW FES PTP RX sync delay nanosecond high register
      ETHSW_FES1_PTP_RX_SYNCD_NSHR    : aliased ETHSW_FES1_PTP_RX_SYNCD_NSHR_Register;
      --  ETHSW FES PTP RX event delay subnanosecond register
      ETHSW_FES1_PTP_RX_EVENTD_SNSR   : aliased HAL.UInt16;
      --  ETHSW FES PTP RX event delay nanosecond register
      ETHSW_FES1_PTP_RX_EVENTD_NSR    : aliased HAL.UInt16;
      --  ETHSW FES PTP TX event delay subnanosecond register
      ETHSW_FES1_PTP_TX_EVENTD_SNSR   : aliased HAL.UInt16;
      --  ETHSW FES PTP TX event delay nanosecond register
      ETHSW_FES1_PTP_TX_EVENTD_NSR    : aliased HAL.UInt16;
      --  ETHSW FES port 1 counter control register
      ETHSW_FES1_CNT_CTRLR            : aliased ETHSW_FES1_CNT_CTRLR_Register;
      --  ETHSW FES port 1 counter command register
      ETHSW_FES1_CNT_CMDR             : aliased ETHSW_FES1_CNT_CMDR_Register;
      --  ETHSW FES port 1 counter value low register
      ETHSW_FES1_CNT_VAL_LOR          : aliased HAL.UInt16;
      --  ETHSW FES port 1 counter value high register
      ETHSW_FES1_CNT_VAL_HIR          : aliased HAL.UInt16;
      --  ETHSW FES port 1 IPO command register
      ETHSW_FES1_IPO_CMDR             : aliased ETHSW_FES1_IPO_CMDR_Register;
      --  ETHSW FES port 1 IPO filter configuration register 0
      ETHSW_FES1_ETH_ADDR_CFG0R       : aliased ETHSW_FES1_ETH_ADDR_CFG0R_Register;
      --  ETHSW FES port 1 forward allow register
      ETHSW_FES1_ETH_ADDR_FWD_ALLOWR  : aliased ETHSW_FES1_ETH_ADDR_FWD_ALLOWR_Register;
      --  ETHSW FES port 1 forward mirror register
      ETHSW_FES1_ETH_ADDR_FWD_MIRRORR : aliased ETHSW_FES1_ETH_ADDR_FWD_MIRRORR_Register;
      --  ETHSW FES port 1 IPO filter configuration register 1
      ETHSW_FES1_ETH_ADDR_CFG1R       : aliased ETHSW_FES1_ETH_ADDR_CFG1R_Register;
      --  ETHSW FES port 1 ethernet address part 0 register
      ETHSW_FES1_ETH_ADDR_0R          : aliased ETHSW_FES1_ETH_ADDR_0R_Register;
      --  ETHSW FES port 1 ethernet address part 1 register
      ETHSW_FES1_ETH_ADDR_1R          : aliased ETHSW_FES1_ETH_ADDR_1R_Register;
      --  ETHSW FES port 1 ethernet address part 2 register
      ETHSW_FES1_ETH_ADDR_2R          : aliased ETHSW_FES1_ETH_ADDR_2R_Register;
      --  ETHSW FES port 2 port State register
      ETHSW_FES2_PORT_STATER          : aliased ETHSW_FES2_PORT_STATER_Register;
      --  ETHSW FES port 2 port VLAN configuration register 0
      ETHSW_FES2_VLAN0R               : aliased ETHSW_FES2_VLAN0R_Register;
      --  ETHSW FES port 2 port VLAN configuration register 1
      ETHSW_FES2_VLAN1R               : aliased ETHSW_FES2_VLAN1R_Register;
      --  ETHSW FES port 2 port forward mask configuration register
      ETHSW_FES2_FWDM_CFGR            : aliased ETHSW_FES2_FWDM_CFGR_Register;
      --  ETHSW FES port 2 priority regeneration table low register
      ETHSW_FES2_PRIO_REGENLR         : aliased ETHSW_FES2_PRIO_REGENLR_Register;
      --  ETHSW FES port 2 priority regeneration table high register
      ETHSW_FES2_PRIO_REGENHR         : aliased ETHSW_FES2_PRIO_REGENHR_Register;
      --  ETHSW FES port 2 TX cut-through enable register
      ETHSW_FES2_TX_CTER              : aliased ETHSW_FES2_TX_CTER_Register;
      --  ETHSW FES port 2 TX preemptable traffic selection register 0
      ETHSW_FES2_TX_PREE0R            : aliased ETHSW_FES2_TX_PREE0R_Register;
      --  ETHSW FES port 2 TX preemptable traffic selection register 1
      ETHSW_FES2_TX_PREE1R            : aliased ETHSW_FES2_TX_PREE1R_Register;
      --  ETHSW FES port 2 queue table configuration register
      ETHSW_FES2_QUEUE_TBLR           : aliased ETHSW_FES2_QUEUE_TBLR_Register;
      --  ETHSW FES port 2 shaper 0 configuration register
      ETHSW_FES2_SHAPER0R             : aliased HAL.UInt16;
      --  ETHSW FES port 2 shaper 1 configuration register
      ETHSW_FES2_SHAPER1R             : aliased HAL.UInt16;
      --  ETHSW FES port 2 shaper 2 configuration register
      ETHSW_FES2_SHAPER2R             : aliased HAL.UInt16;
      --  ETHSW FES port 2 shaper 3 configuration register
      ETHSW_FES2_SHAPER3R             : aliased HAL.UInt16;
      --  ETHSW FES port 2 shaper 4 configuration register
      ETHSW_FES2_SHAPER4R             : aliased HAL.UInt16;
      --  ETHSW FES port 2 shaper 5 configuration register
      ETHSW_FES2_SHAPER5R             : aliased HAL.UInt16;
      --  ETHSW FES port 2 shaper 6 configuration register
      ETHSW_FES2_SHAPER6R             : aliased HAL.UInt16;
      --  ETHSW FES port 2 shaper 7 configuration register
      ETHSW_FES2_SHAPER7R             : aliased HAL.UInt16;
      --  ETHSW FES port 2 frame size 0 configuration register
      ETHSW_FES2_FRAMESIZE0R          : aliased ETHSW_FES2_FRAMESIZE0R_Register;
      --  ETHSW FES port 2 frame size 1 configuration register
      ETHSW_FES2_FRAMESIZE1R          : aliased ETHSW_FES2_FRAMESIZE1R_Register;
      --  ETHSW FES port 2 frame size 2 configuration register
      ETHSW_FES2_FRAMESIZE2R          : aliased ETHSW_FES2_FRAMESIZE2R_Register;
      --  ETHSW FES port 2 frame size 3 configuration register
      ETHSW_FES2_FRAMESIZE3R          : aliased ETHSW_FES2_FRAMESIZE3R_Register;
      --  ETHSW FES port 2 frame size 4 configuration register
      ETHSW_FES2_FRAMESIZE4R          : aliased ETHSW_FES2_FRAMESIZE4R_Register;
      --  ETHSW FES port 2 frame size 5 configuration register
      ETHSW_FES2_FRAMESIZE5R          : aliased ETHSW_FES2_FRAMESIZE5R_Register;
      --  ETHSW FES port 2 frame size 6 configuration register
      ETHSW_FES2_FRAMESIZE6R          : aliased ETHSW_FES2_FRAMESIZE6R_Register;
      --  ETHSW FES port 2 frame size 7 configuration register
      ETHSW_FES2_FRAMESIZE7R          : aliased ETHSW_FES2_FRAMESIZE7R_Register;
      --  ETHSW FES port 2 filtering identifier configuration register 0
      ETHSW_FES2_FID_CFG0R            : aliased ETHSW_FES2_FID_CFG0R_Register;
      --  ETHSW FES port 2 filtering identifier configuration register 1
      ETHSW_FES2_FID_CFG1R            : aliased ETHSW_FES2_FID_CFG1R_Register;
      --  ETHSW FES port 2 filtering identifier configuration register 2
      ETHSW_FES2_FID_CFG2R            : aliased ETHSW_FES2_FID_CFG2R_Register;
      --  ETHSW FES port 2 filtering identifier configuration register 3
      ETHSW_FES2_FID_CFG3R            : aliased ETHSW_FES2_FID_CFG3R_Register;
      --  ETHSW FES port 2 filtering identifier configuration register 4
      ETHSW_FES2_FID_CFG4R            : aliased ETHSW_FES2_FID_CFG4R_Register;
      --  ETHSW FES port 2 filtering identifier configuration register 5
      ETHSW_FES2_FID_CFG5R            : aliased ETHSW_FES2_FID_CFG5R_Register;
      --  ETHSW FES port 2 filtering identifier configuration register 6
      ETHSW_FES2_FID_CFG6R            : aliased ETHSW_FES2_FID_CFG6R_Register;
      --  ETHSW FES port 2 filtering identifier configuration register 7
      ETHSW_FES2_FID_CFG7R            : aliased ETHSW_FES2_FID_CFG7R_Register;
      --  ETHSW FES port 2 buffer fill level capture register
      ETHSW_FES2_FL_CAPTR             : aliased ETHSW_FES2_FL_CAPTR_Register;
      --  ETHSW FES port 2 buffer fill level sample counter register
      ETHSW_FES2_FL_SMPL_CNTR         : aliased HAL.UInt16;
      --  ETHSW FES port 2 minimum fill level queue 0 register
      ETHSW_FES2_FL_Q0_MINR           : aliased ETHSW_FES2_FL_Q0_MINR_Register;
      --  ETHSW FES port 2 minimum fill level queue 1 register
      ETHSW_FES2_FL_Q1_MINR           : aliased ETHSW_FES2_FL_Q1_MINR_Register;
      --  ETHSW FES port 2 minimum fill level queue 2 register
      ETHSW_FES2_FL_Q2_MINR           : aliased ETHSW_FES2_FL_Q2_MINR_Register;
      --  ETHSW FES port 2 minimum fill level queue 3 register
      ETHSW_FES2_FL_Q3_MINR           : aliased ETHSW_FES2_FL_Q3_MINR_Register;
      --  ETHSW FES port 2 minimum fill level queue 4 register
      ETHSW_FES2_FL_Q4_MINR           : aliased ETHSW_FES2_FL_Q4_MINR_Register;
      --  ETHSW FES port 2 minimum fill level queue 5 register
      ETHSW_FES2_FL_Q5_MINR           : aliased ETHSW_FES2_FL_Q5_MINR_Register;
      --  ETHSW FES port 2 minimum fill level queue 6 register
      ETHSW_FES2_FL_Q6_MINR           : aliased ETHSW_FES2_FL_Q6_MINR_Register;
      --  ETHSW FES port 2 minimum fill level queue 7 register
      ETHSW_FES2_FL_Q7_MINR           : aliased ETHSW_FES2_FL_Q7_MINR_Register;
      --  ETHSW FES port 2 maximum fill level queue 0 register
      ETHSW_FES2_FL_Q0_MAXR           : aliased ETHSW_FES2_FL_Q0_MAXR_Register;
      --  ETHSW FES port 2 maximum fill level queue 1 register
      ETHSW_FES2_FL_Q1_MAXR           : aliased ETHSW_FES2_FL_Q1_MAXR_Register;
      --  ETHSW FES port 2 maximum fill level queue 2 register
      ETHSW_FES2_FL_Q2_MAXR           : aliased ETHSW_FES2_FL_Q2_MAXR_Register;
      --  ETHSW FES port 2 maximum fill level queue 3 register
      ETHSW_FES2_FL_Q3_MAXR           : aliased ETHSW_FES2_FL_Q3_MAXR_Register;
      --  ETHSW FES port 2 maximum fill level queue 4 register
      ETHSW_FES2_FL_Q4_MAXR           : aliased ETHSW_FES2_FL_Q4_MAXR_Register;
      --  ETHSW FES port 2 maximum fill level queue 5 register
      ETHSW_FES2_FL_Q5_MAXR           : aliased ETHSW_FES2_FL_Q5_MAXR_Register;
      --  ETHSW FES port 2 maximum fill level queue 6 register
      ETHSW_FES2_FL_Q6_MAXR           : aliased ETHSW_FES2_FL_Q6_MAXR_Register;
      --  ETHSW FES port 2 maximum fill level queue 7 register
      ETHSW_FES2_FL_Q7_MAXR           : aliased ETHSW_FES2_FL_Q7_MAXR_Register;
      --  ETHSW FES PTP RX sync delay subnanosecond register
      ETHSW_FES2_PTP_RX_SYNCD_SNSR    : aliased HAL.UInt16;
      --  ETHSW FES PTP RX sync delay nanosecond low register
      ETHSW_FES2_PTP_RX_SYNCD_NSLR    : aliased HAL.UInt16;
      --  ETHSW FES PTP RX sync delay nanosecond high register
      ETHSW_FES2_PTP_RX_SYNCD_NSHR    : aliased ETHSW_FES2_PTP_RX_SYNCD_NSHR_Register;
      --  ETHSW FES PTP RX event delay subnanosecond register
      ETHSW_FES2_PTP_RX_EVENTD_SNSR   : aliased HAL.UInt16;
      --  ETHSW FES PTP RX event delay nanosecond register
      ETHSW_FES2_PTP_RX_EVENTD_NSR    : aliased HAL.UInt16;
      --  ETHSW FES PTP TX event delay subnanosecond register
      ETHSW_FES2_PTP_TX_EVENTD_SNSR   : aliased HAL.UInt16;
      --  ETHSW FES PTP TX event delay nanosecond register
      ETHSW_FES2_PTP_TX_EVENTD_NSR    : aliased HAL.UInt16;
      --  ETHSW FES port 2 counter control register
      ETHSW_FES2_CNT_CTRLR            : aliased ETHSW_FES2_CNT_CTRLR_Register;
      --  ETHSW FES port 2 counter command register
      ETHSW_FES2_CNT_CMDR             : aliased ETHSW_FES2_CNT_CMDR_Register;
      --  ETHSW FES port 2 counter value low register
      ETHSW_FES2_CNT_VAL_LOR          : aliased HAL.UInt16;
      --  ETHSW FES port 2 counter value high register
      ETHSW_FES2_CNT_VAL_HIR          : aliased HAL.UInt16;
      --  ETHSW FES port 2 IPO command register
      ETHSW_FES2_IPO_CMDR             : aliased ETHSW_FES2_IPO_CMDR_Register;
      --  ETHSW FES port 2 IPO filter configuration register 0
      ETHSW_FES2_ETH_ADDR_CFG0R       : aliased ETHSW_FES2_ETH_ADDR_CFG0R_Register;
      --  ETHSW FES port 2 forward allow register
      ETHSW_FES2_ETH_ADDR_FWD_ALLOWR  : aliased ETHSW_FES2_ETH_ADDR_FWD_ALLOWR_Register;
      --  ETHSW FES port 2 forward mirror register
      ETHSW_FES2_ETH_ADDR_FWD_MIRRORR : aliased ETHSW_FES2_ETH_ADDR_FWD_MIRRORR_Register;
      --  ETHSW FES port 2 IPO filter configuration register 1
      ETHSW_FES2_ETH_ADDR_CFG1R       : aliased ETHSW_FES2_ETH_ADDR_CFG1R_Register;
      --  ETHSW FES port 2 ethernet address part 0 register
      ETHSW_FES2_ETH_ADDR_0R          : aliased ETHSW_FES2_ETH_ADDR_0R_Register;
      --  ETHSW FES port 2 ethernet address part 1 register
      ETHSW_FES2_ETH_ADDR_1R          : aliased ETHSW_FES2_ETH_ADDR_1R_Register;
      --  ETHSW FES port 2 ethernet address part 2 register
      ETHSW_FES2_ETH_ADDR_2R          : aliased ETHSW_FES2_ETH_ADDR_2R_Register;
      --  ETHSW FES IP core identification register
      ETHSW_FES_IPC_IDR               : aliased ETHSW_FES_IPC_IDR_Register;
      --  ETHSW FES configuration ID register
      ETHSW_FES_CFG_IDR               : aliased HAL.UInt16;
      --  ETHSW FES revision ID register 0
      ETHSW_FES_REV_ID0R              : aliased HAL.UInt16;
      --  ETHSW FES revision ID register 1
      ETHSW_FES_REV_ID1R              : aliased HAL.UInt16;
      --  ETHSW FES revision ID register 2
      ETHSW_FES_REV_ID2R              : aliased HAL.UInt16;
      --  ETHSW FES general control register
      ETHSW_FES_GEN_CTRLR             : aliased ETHSW_FES_GEN_CTRLR_Register;
      --  ETHSW FES dynamic MAC table clear mask register
      ETHSW_FES_MT_CLEAR_MSKR         : aliased ETHSW_FES_MT_CLEAR_MSKR_Register;
      --  ETHSW FES dynamic MAC table clear FID register
      ETHSW_FES_MT_CLEAR_FIDR         : aliased ETHSW_FES_MT_CLEAR_FIDR_Register;
      --  ETHSW FES address aging configuration register
      ETHSW_FES_ADDRESS_AGING_CFGR    : aliased ETHSW_FES_ADDRESS_AGING_CFGR_Register;
      --  ETHSW FES aging base time low register
      ETHSW_FES_AGING_BASE_TIMELR     : aliased HAL.UInt16;
      --  ETHSW FES aging base time high register
      ETHSW_FES_AGING_BASE_TIMEHR     : aliased ETHSW_FES_AGING_BASE_TIMEHR_Register;
      --  ETHSW FES interrupt mask clear register
      ETHSW_FES_INT_MASK_CLR          : aliased ETHSW_FES_INT_MASK_CLR_Register;
      --  ETHSW FES interrupt mask set register
      ETHSW_FES_INT_MASK_SETR         : aliased ETHSW_FES_INT_MASK_SETR_Register;
      --  ETHSW FES interrupt status register
      ETHSW_FES_INT_STATUSR           : aliased ETHSW_FES_INT_STATUSR_Register;
      --  ETHSW FES dynamic MAC table read 0 register
      ETHSW_FES_MAC_TABLE0R           : aliased ETHSW_FES_MAC_TABLE0R_Register;
      --  ETHSW FES dynamic MAC table read 1 register
      ETHSW_FES_MAC_TABLE1R           : aliased ETHSW_FES_MAC_TABLE1R_Register;
      --  ETHSW FES dynamic MAC table read 2 register
      ETHSW_FES_MAC_TABLE2R           : aliased ETHSW_FES_MAC_TABLE2R_Register;
      --  ETHSW FES dynamic MAC table read 3 register
      ETHSW_FES_MAC_TABLE3R           : aliased ETHSW_FES_MAC_TABLE3R_Register;
      --  ETHSW FES dynamic MAC table read 4 register
      ETHSW_FES_MAC_TABLE4R           : aliased ETHSW_FES_MAC_TABLE4R_Register;
      --  ETHSW FES static MAC address table R/W command register
      ETHSW_FES_SMAC_CMDR             : aliased ETHSW_FES_SMAC_CMDR_Register;
      --  ETHSW FES static MAC address table configuration register
      ETHSW_FES_SMAC_CFGR             : aliased ETHSW_FES_SMAC_CFGR_Register;
      --  ETHSW FES static MAC address table read/write 0 register
      ETHSW_FES_SMAC_TABLE0R          : aliased ETHSW_FES_SMAC_TABLE0R_Register;
      --  ETHSW FES static MAC address table read/write 1 register
      ETHSW_FES_SMAC_TABLE1R          : aliased ETHSW_FES_SMAC_TABLE1R_Register;
      --  ETHSW FES static MAC address table read/write 2 register
      ETHSW_FES_SMAC_TABLE2R          : aliased ETHSW_FES_SMAC_TABLE2R_Register;
      --  ETHSW FES static MAC address table read/write 3 register
      ETHSW_FES_SMAC_TABLE3R          : aliased ETHSW_FES_SMAC_TABLE3R_Register;
      --  ETHSW FES static MAC address table read/write 4 register
      ETHSW_FES_SMAC_TABLE4R          : aliased ETHSW_FES_SMAC_TABLE4R_Register;
      --  ETHSW FES static MAC address table read/write 5 register
      ETHSW_FES_SMAC_TABLE5R          : aliased ETHSW_FES_SMAC_TABLE5R_Register;
      --  ETHSW FES static MAC address table read/write 6 register
      ETHSW_FES_SMAC_TABLE6R          : aliased ETHSW_FES_SMAC_TABLE6R_Register;
      --  ETHSW FES static MAC address table read/write 7 register
      ETHSW_FES_SMAC_TABLE7R          : aliased ETHSW_FES_SMAC_TABLE7R_Register;
      --  ETHSW FES sequence recovery table R/W command register
      ETHSW_FES_SEQ_REC_CMDR          : aliased ETHSW_FES_SEQ_REC_CMDR_Register;
      --  ETHSW FES sequence recovery table read/write 4 register
      ETHSW_FES_SEQ_REC_TABLE4R       : aliased ETHSW_FES_SEQ_REC_TABLE4R_Register;
      --  ETHSW FES sequence generation command register
      ETHSW_FES_SEQ_GEN_CMDR          : aliased ETHSW_FES_SEQ_GEN_CMDR_Register;
      --  ETHSW FES stream table R/W command register
      ETHSW_FES_STREAM_CMDR           : aliased ETHSW_FES_STREAM_CMDR_Register;
      --  ETHSW FES stream table read/write 0 register
      ETHSW_FES_STREAM_TABLE0R        : aliased ETHSW_FES_STREAM_TABLE0R_Register;
      --  ETHSW FES stream table read/write 1 register
      ETHSW_FES_STREAM_TABLE1R        : aliased ETHSW_FES_STREAM_TABLE1R_Register;
      --  ETHSW FES stream table read/write 2 register
      ETHSW_FES_STREAM_TABLE2R        : aliased ETHSW_FES_STREAM_TABLE2R_Register;
      --  ETHSW FES stream table read/write 3 register
      ETHSW_FES_STREAM_TABLE3R        : aliased ETHSW_FES_STREAM_TABLE3R_Register;
      --  ETHSW FES policer read/write command register
      ETHSW_FES_POLICER_CMDR          : aliased ETHSW_FES_POLICER_CMDR_Register;
      --  ETHSW FES policer read/write 0 register
      ETHSW_FES_POLICER0R             : aliased HAL.UInt16;
      --  ETHSW FES policer read/write 1 register
      ETHSW_FES_POLICER1R             : aliased ETHSW_FES_POLICER1R_Register;
      --  ETHSW FES policer read/write 2 register
      ETHSW_FES_POLICER2R             : aliased HAL.UInt16;
      --  ETHSW FES policer read/write 3 register
      ETHSW_FES_POLICER3R             : aliased ETHSW_FES_POLICER3R_Register;
      --  ETHSW FES policer read/write 4 register
      ETHSW_FES_POLICER4R             : aliased ETHSW_FES_POLICER4R_Register;
      --  ETHSW FES timestamp command register
      ETHSW_FES_TS_CMDR               : aliased ETHSW_FES_TS_CMDR_Register;
      --  ETHSW FES timestamp time low register
      ETHSW_FES_TS_TIME_LOR           : aliased HAL.UInt16;
      --  ETHSW FES timestamp time high register
      ETHSW_FES_TS_TIME_HIR           : aliased ETHSW_FES_TS_TIME_HIR_Register;
      --  ETHSW FES timestamp PTP message 0 register
      ETHSW_FES_TS_MSG_0R             : aliased ETHSW_FES_TS_MSG_0R_Register;
      --  ETHSW FES timestamp PTP message 1 register
      ETHSW_FES_TS_MSG_1R             : aliased HAL.UInt16;
      --  ETHSW FES timestamp status port vector RX register
      ETHSW_FES_TS_RX_STATUSR         : aliased ETHSW_FES_TS_RX_STATUSR_Register;
      --  ETHSW FES timestamp status port vector TX register
      ETHSW_FES_TS_TX_STATUSR         : aliased ETHSW_FES_TS_TX_STATUSR_Register;
      --  ETHSW FES VLAN command register
      ETHSW_FES_VLAN_CMDR             : aliased ETHSW_FES_VLAN_CMDR_Register;
      --  ETHSW FES port VLAN membership register
      ETHSW_FES_VLAN_PORTSR           : aliased ETHSW_FES_VLAN_PORTSR_Register;
      --  ETHSW FES port VLAN tagging register
      ETHSW_FES_VLAN_TAGR             : aliased ETHSW_FES_VLAN_TAGR_Register;
      --  ETHSW FES Filtering ID register
      ETHSW_FES_VLAN_FIDR             : aliased ETHSW_FES_VLAN_FIDR_Register;
      --  ETHSW FES FES_PORT_HIGH generic register
      ETHSW_FES_PORT_HIGHR            : aliased ETHSW_FES_PORT_HIGHR_Register;
      --  ETHSW FES COUNTERS generic register
      ETHSW_FES_COUNTERSR             : aliased ETHSW_FES_COUNTERSR_Register;
      --  ETHSW FES CT_PORTS generic register
      ETHSW_FES_CT_PORTSR             : aliased ETHSW_FES_CT_PORTSR_Register;
      --  ETHSW FES TS_PORTS generic register
      ETHSW_FES_TS_PORTSR             : aliased ETHSW_FES_TS_PORTSR_Register;
      --  ETHSW FES SMAC_TABLE_ROWS generic register
      ETHSW_FES_SMAC_TABLE_ROWSR      : aliased ETHSW_FES_SMAC_TABLE_ROWSR_Register;
      --  ETHSW FES POLICING generic register
      ETHSW_FES_POLICINGR             : aliased ETHSW_FES_POLICINGR_Register;
      --  ETHSW FES POLICERS generic register
      ETHSW_FES_POLICERSR             : aliased ETHSW_FES_POLICERSR_Register;
      --  ETHSW FES QUEUES generic register
      ETHSW_FES_QUEUESR               : aliased ETHSW_FES_QUEUESR_Register;
      --  ETHSW FES BUFFER_SIZE generic register
      ETHSW_FES_BUFFER_SIZER          : aliased ETHSW_FES_BUFFER_SIZER_Register;
      --  ETHSW FES SHAPERS generic register
      ETHSW_FES_SHAPERSR              : aliased ETHSW_FES_SHAPERSR_Register;
      --  ETHSW FES GIGABIT generic register
      ETHSW_FES_GIGABITR              : aliased ETHSW_FES_GIGABITR_Register;
      --  ETHSW FES HSR_PORTS generic register
      ETHSW_FES_HSR_PORTSR            : aliased ETHSW_FES_HSR_PORTSR_Register;
      --  ETHSW FES PRP_PORTS generic register
      ETHSW_FES_PRP_PORTSR            : aliased ETHSW_FES_PRP_PORTSR_Register;
      --  ETHSW FES SCHEDULED_PORTS generic register
      ETHSW_FES_SCHEDULED_PORTSR      : aliased ETHSW_FES_SCHEDULED_PORTSR_Register;
      --  ETHSW FES PREEMPTABLE_PORT generic register
      ETHSW_PREEMPTABLE_PORTR         : aliased ETHSW_PREEMPTABLE_PORTR_Register;
      --  ETHSW FES MACSEC generic register
      ETHSW_FES_MACSECR               : aliased ETHSW_FES_MACSECR_Register;
      --  ETHSW FES MACSEC_CIPHER generic register
      ETHSW_FES_MACSEC_CIPHERR        : aliased ETHSW_FES_MACSEC_CIPHERR_Register;
      --  ETHSW FES MGMT_PORTS generic register
      ETHSW_FES_MGMT_PORTSR           : aliased ETHSW_FES_MGMT_PORTSR_Register;
      --  ETHSW FES FRER_PORTS generic register
      ETHSW_FES_FRER_PORTSR           : aliased ETHSW_FES_FRER_PORTSR_Register;
      --  ETHSW FES FRER_ENTRIES generic register
      ETHSW_FES_FRER_ENTRIESR         : aliased ETHSW_FES_FRER_ENTRIESR_Register;
      --  ETHSW FES FRER_STREAMS generic register
      ETHSW_FES_FRER_STREAMSR         : aliased ETHSW_FES_FRER_STREAMSR_Register;
      --  ETHSW FES FIDS generic register
      ETHSW_FES_FIDSR                 : aliased ETHSW_FES_FIDSR_Register;
      --  ETHSW FES DMA_PORTS generic register
      ETHSW_FES_DMA_PORTSR            : aliased ETHSW_FES_DMA_PORTSR_Register;
      --  ETHSW FES DMA_TX_DESC_RING generic register
      ETHSW_FES_DMA_TX_DESC_RINGR     : aliased ETHSW_FES_DMA_TX_DESC_RINGR_Register;
      --  ETHSW FES DMA_RX_DESC_RING generic register
      ETHSW_FES_DMA_RX_DESC_RINGR     : aliased ETHSW_FES_DMA_RX_DESC_RINGR_Register;
      --  ETHSW FES PSFP generic register
      ETHSW_FES_PSFPR                 : aliased ETHSW_FES_PSFPR_Register;
      --  ETHSW FES PSFP_STREAMS generic register
      ETHSW_FES_PSFP_STREAMSR         : aliased ETHSW_FES_PSFP_STREAMSR_Register;
      --  ETHSW FES CFG_CLK_FREQ register
      ETHSW_FES_CFG_CLK_FREQR         : aliased ETHSW_FES_CFG_CLK_FREQR_Register;
      --  ETHSW FES DEBUG_IN register
      ETHSW_FES_DEBUG_INR             : aliased ETHSW_FES_DEBUG_INR_Register;
      --  ETHSW FES hold advance 10M register
      ETHSW_FES_H_ADV_10R             : aliased ETHSW_FES_H_ADV_10R_Register;
      --  ETHSW FES hold advance 100M register
      ETHSW_FES_H_ADV_100R            : aliased ETHSW_FES_H_ADV_100R_Register;
      --  ETHSW FES hold advance 1000M register
      ETHSW_FES_H_ADV_1000R           : aliased ETHSW_FES_H_ADV_1000R_Register;
      --  ETHSW FES release advance 10M register
      ETHSW_FES_R_ADV_10R             : aliased ETHSW_FES_R_ADV_10R_Register;
      --  ETHSW FES release advance 100M register
      ETHSW_FES_R_ADV_100R            : aliased ETHSW_FES_R_ADV_100R_Register;
      --  ETHSW FES release advance 1000M register
      ETHSW_FES_R_ADV_1000R           : aliased ETHSW_FES_R_ADV_1000R_Register;
      --  ETHSW FES minimum input to gate delay 10M register
      ETHSW_FES_I_TO_G_MIN_10R        : aliased ETHSW_FES_I_TO_G_MIN_10R_Register;
      --  ETHSW FES minimum input to gate delay 100M register
      ETHSW_FES_I_TO_G_MIN_100R       : aliased ETHSW_FES_I_TO_G_MIN_100R_Register;
      --  ETHSW FES minimum input to gate delay 1000M register
      ETHSW_FES_I_TO_G_MIN_1000R      : aliased ETHSW_FES_I_TO_G_MIN_1000R_Register;
      --  ETHSW FES maximum input to gate delay 10M register
      ETHSW_FES_I_TO_G_MAX_10R        : aliased ETHSW_FES_I_TO_G_MAX_10R_Register;
      --  ETHSW FES maximum input to gate delay 100M register
      ETHSW_FES_I_TO_G_MAX_100R       : aliased ETHSW_FES_I_TO_G_MAX_100R_Register;
      --  ETHSW FES maximum input to gate delay 1000M register
      ETHSW_FES_I_TO_G_MAX_1000R      : aliased ETHSW_FES_I_TO_G_MAX_1000R_Register;
      --  ETHSW FES minimum gate to output delay 10M register
      ETHSW_FES_G_TO_O_MIN_10R        : aliased ETHSW_FES_G_TO_O_MIN_10R_Register;
      --  ETHSW FES minimum gate to output delay 100M register
      ETHSW_FES_G_TO_O_MIN_100R       : aliased ETHSW_FES_G_TO_O_MIN_100R_Register;
      --  ETHSW FES minimum gate to output delay 1000M register
      ETHSW_FES_G_TO_O_MIN_1000R      : aliased ETHSW_FES_G_TO_O_MIN_1000R_Register;
      --  ETHSW FES maximum gate to output delay 10M register
      ETHSW_FES_G_TO_O_MAX_10R        : aliased ETHSW_FES_G_TO_O_MAX_10R_Register;
      --  ETHSW FES maximum gate to output delay 100M register
      ETHSW_FES_G_TO_O_MAX_100R       : aliased ETHSW_FES_G_TO_O_MAX_100R_Register;
      --  ETHSW FES maximum gate to output delay 1000M register
      ETHSW_FES_G_TO_O_MAX_1000R      : aliased ETHSW_FES_G_TO_O_MAX_1000R_Register;
      --  ETHSW FES capture status 0 register
      ETHSW_FES_CAPT0R                : aliased ETHSW_FES_CAPT0R_Register;
      --  ETHSW FES capture control 1 register
      ETHSW_FES_CAPT1R                : aliased ETHSW_FES_CAPT1R_Register;
      --  ETHSW FES capture control 2 register
      ETHSW_FES_CAPT2R                : aliased ETHSW_FES_CAPT2R_Register;
      --  ETHSW FES capture control 3 register
      ETHSW_FES_CAPT3R                : aliased ETHSW_FES_CAPT3R_Register;
      --  ETHSW FES sequence recovery timeouts low register
      ETHSW_FES_SEQ_REC_TOUT_LR       : aliased HAL.UInt16;
      --  ETHSW FES sequence recovery timeouts high register
      ETHSW_FES_SEQ_REC_TOUT_HR       : aliased HAL.UInt16;
      --  ETHSW FES vector recovery jump ahead low register
      ETHSW_FES_VECT_JUMP_LR          : aliased HAL.UInt16;
      --  ETHSW FES vector recovery jump ahead high register
      ETHSW_FES_VECT_JUMP_HR          : aliased HAL.UInt16;
      --  ETHSW FES vector recovery out of order frames low register
      ETHSW_FES_SEQ_REC_OOO_LR        : aliased HAL.UInt16;
      --  ETHSW FES vector recovery out of order frames high register
      ETHSW_FES_SEQ_REC_OOO_HR        : aliased HAL.UInt16;
      --  ETHSW FES input frames low register
      ETHSW_FES_FRAMES_IN_LR          : aliased HAL.UInt16;
      --  ETHSW FES input frames high register
      ETHSW_FES_FRAMES_IN_HR          : aliased HAL.UInt16;
      --  ETHSW FES output frames low register
      ETHSW_FES_FRAMES_OUT_LR         : aliased HAL.UInt16;
      --  ETHSW FES output frames high register
      ETHSW_FES_FRAMES_OUT_HR         : aliased HAL.UInt16;
      --  ETHSW FES vector recovery out of order frames low register
      ETHSW_FES_SEQ_REC_OOO2_LR       : aliased HAL.UInt16;
      --  ETHSW FES vector recovery out of order frames high register
      ETHSW_FES_SEQ_REC_OOO2_HR       : aliased HAL.UInt16;
      --  ETHSW FES vector recovery rogue frames low register
      ETHSW_FES_VECT_ROG_LR           : aliased HAL.UInt16;
      --  ETHSW FES vector recovery rogue frames high register
      ETHSW_FES_VECT_ROG_HR           : aliased HAL.UInt16;
      --  ETHSW FES sequence recovery tagless frames low register
      ETHSW_FES_SEQ_REC_TAGLESS_LR    : aliased HAL.UInt16;
      --  ETHSW FES sequence recovery tagless frames high register
      ETHSW_FES_SEQ_REC_TAGLESS_HR    : aliased HAL.UInt16;
      --  ETHSW FES sequence recovery frames seen before low register
      ETHSW_FES_SEQ_REC_SB_LR         : aliased HAL.UInt16;
      --  ETHSW FES sequence recovery frames seen before high register
      ETHSW_FES_SEQ_REC_SB_HR         : aliased HAL.UInt16;
      --  ETHSW EIA port 0 RGMII adapter ID register
      ETHSW_EIA_RGMII_P0_IDR          : aliased ETHSW_EIA_RGMII_P0_IDR_Register;
      --  ETHSW EIA port 0 RGMII adapter link status register
      ETHSW_EIA_RGMII_P0_LINK_STATUSR : aliased ETHSW_EIA_RGMII_P0_LINK_STATUSR_Register;
      --  ETHSW EIA port 0 RGMII adapter RX delay register
      ETHSW_EIA_RGMII_P0_RX_DELAYR    : aliased HAL.UInt16;
      --  ETHSW EIA port 0 RGMII adapter TX delay register
      ETHSW_EIA_RGMII_P0_TX_DELAYR    : aliased HAL.UInt16;
      --  ETHSW EIA port 1 RMII adapter ID register [alternate]
      ETHSW_EIA_RMII_P1_IDR           : aliased ETHSW_EIA_RMII_P1_IDR_Register;
      --  ETHSW EIA port 1 RGMII adapter ID register
      ETHSW_EIA_RGMII_P1_IDR          : aliased ETHSW_EIA_RGMII_P1_IDR_Register;
      --  ETHSW EIA port 1 RGMII adapter RX delay register
      ETHSW_EIA_RGMII_P1_RX_DELAYR    : aliased HAL.UInt16;
      --  ETHSW EIA port 1 RGMII adapter TX delay register
      ETHSW_EIA_RGMII_P1_TX_DELAYR    : aliased HAL.UInt16;
      --  ETHSW EIA port 1 RMII adapter RX delay register [alternate]
      ETHSW_EIA_RMII_P1_RX_DELAYR     : aliased HAL.UInt16;
      --  ETHSW EIA port 1 RMII adapter TX delay register [alternate]
      ETHSW_EIA_RMII_P1_TX_DELAYR     : aliased HAL.UInt16;
      case Discriminent is
         when Gmii_P1_Link_Statusr =>
            --  ETHSW EIA port 1 RGMII adapter link status register
            ETHSW_EIA_RGMII_P1_LINK_STATUSR : aliased ETHSW_EIA_RGMII_P1_LINK_STATUSR_Register;
         when Mii_P1_Link_Statusr =>
            --  ETHSW EIA port 1 RMII adapter link status register [alternate]
            ETHSW_EIA_RMII_P1_LINK_STATUSR : aliased ETHSW_EIA_RMII_P1_LINK_STATUSR_Register;
         when Gmii_P2_Idr =>
            --  ETHSW EIA port 2 RGMII adapter ID register
            ETHSW_EIA_RGMII_P2_IDR : aliased ETHSW_EIA_RGMII_P2_IDR_Register;
         when Mii_P2_Idr =>
            --  ETHSW EIA port 2 RMII adapter ID register [alternate]
            ETHSW_EIA_RMII_P2_IDR : aliased ETHSW_EIA_RMII_P2_IDR_Register;
         when Gmii_P2_Link_Statusr =>
            --  ETHSW EIA port 2 RGMII adapter link status register
            ETHSW_EIA_RGMII_P2_LINK_STATUSR : aliased ETHSW_EIA_RGMII_P2_LINK_STATUSR_Register;
         when Mii_P2_Link_Statusr =>
            --  ETHSW EIA port 2 RMII adapter link status register [alternate]
            ETHSW_EIA_RMII_P2_LINK_STATUSR : aliased ETHSW_EIA_RMII_P2_LINK_STATUSR_Register;
         when Gmii_P2_Rx_Delayr =>
            --  ETHSW EIA port 2 RGMII adapter RX delay register
            ETHSW_EIA_RGMII_P2_RX_DELAYR : aliased HAL.UInt16;
         when Mii_P2_Rx_Delayr =>
            --  ETHSW EIA port 2 RMII adapter RX delay register [alternate]
            ETHSW_EIA_RMII_P2_RX_DELAYR : aliased HAL.UInt16;
         when Gmii_P2_Tx_Delayr =>
            --  ETHSW EIA port 2 RGMII adapter TX delay register
            ETHSW_EIA_RGMII_P2_TX_DELAYR : aliased HAL.UInt16;
         when Mii_P2_Tx_Delayr =>
            --  ETHSW EIA port 2 RMII adapter TX delay register [alternate]
            ETHSW_EIA_RMII_P2_TX_DELAYR : aliased HAL.UInt16;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for ETHSW_Peripheral use record
      ETHSW_AC_DEV_IDR                at 16#0# range 0 .. 31;
      ETHSW_AC_INT_IDR                at 16#4# range 0 .. 31;
      ETHSW_AC_REV_IDR                at 16#8# range 0 .. 31;
      ETHSW_AC_IF0_IDR                at 16#1000# range 0 .. 15;
      ETHSW_AC_IF0_VERR               at 16#1002# range 0 .. 15;
      ETHSW_AC_IF0_BASER              at 16#1004# range 0 .. 31;
      ETHSW_AC_IF0_LENR               at 16#1008# range 0 .. 31;
      ETHSW_AC_IF0_PORTR              at 16#100C# range 0 .. 31;
      ETHSW_AC_IF1_IDR                at 16#1010# range 0 .. 15;
      ETHSW_AC_IF1_VERR               at 16#1012# range 0 .. 15;
      ETHSW_AC_IF1_BASER              at 16#1014# range 0 .. 31;
      ETHSW_AC_IF1_LENR               at 16#1018# range 0 .. 31;
      ETHSW_AC_IF1_PORTR              at 16#101C# range 0 .. 31;
      ETHSW_AC_IF2_IDR                at 16#1020# range 0 .. 15;
      ETHSW_AC_IF2_VERR               at 16#1022# range 0 .. 15;
      ETHSW_AC_IF2_BASER              at 16#1024# range 0 .. 31;
      ETHSW_AC_IF2_LENR               at 16#1028# range 0 .. 31;
      ETHSW_AC_IF2_PORTR              at 16#102C# range 0 .. 31;
      ETHSW_AC_IF3_IDR                at 16#1030# range 0 .. 15;
      ETHSW_AC_IF3_VERR               at 16#1032# range 0 .. 15;
      ETHSW_AC_IF3_BASER              at 16#1034# range 0 .. 31;
      ETHSW_AC_IF3_LENR               at 16#1038# range 0 .. 31;
      ETHSW_AC_IF3_PORTR              at 16#103C# range 0 .. 31;
      ETHSW_AC_IF4_IDR                at 16#1040# range 0 .. 15;
      ETHSW_AC_IF4_VERR               at 16#1042# range 0 .. 15;
      ETHSW_AC_IF4_BASER              at 16#1044# range 0 .. 31;
      ETHSW_AC_IF4_LENR               at 16#1048# range 0 .. 31;
      ETHSW_AC_IF4_PORTR              at 16#104C# range 0 .. 31;
      ETHSW_AC_IF5_IDR                at 16#1050# range 0 .. 15;
      ETHSW_AC_IF5_VERR               at 16#1052# range 0 .. 15;
      ETHSW_AC_IF5_BASER              at 16#1054# range 0 .. 31;
      ETHSW_AC_IF5_LENR               at 16#1058# range 0 .. 31;
      ETHSW_AC_IF5_PORTR              at 16#105C# range 0 .. 31;
      ETHSW_AC_IF6_IDR                at 16#1060# range 0 .. 15;
      ETHSW_AC_IF6_VERR               at 16#1062# range 0 .. 15;
      ETHSW_AC_IF6_BASER              at 16#1064# range 0 .. 31;
      ETHSW_AC_IF6_LENR               at 16#1068# range 0 .. 31;
      ETHSW_AC_IF6_PORTR              at 16#106C# range 0 .. 31;
      ETHSW_AC_IF7_IDR                at 16#1070# range 0 .. 15;
      ETHSW_AC_IF7_VERR               at 16#1072# range 0 .. 15;
      ETHSW_AC_IF7_BASER              at 16#1074# range 0 .. 31;
      ETHSW_AC_IF7_LENR               at 16#1078# range 0 .. 31;
      ETHSW_AC_IF7_PORTR              at 16#107C# range 0 .. 31;
      ETHSW_AC_IF8_IDR                at 16#1080# range 0 .. 15;
      ETHSW_AC_IF8_VERR               at 16#1082# range 0 .. 15;
      ETHSW_AC_IF8_BASER              at 16#1084# range 0 .. 31;
      ETHSW_AC_IF8_LENR               at 16#1088# range 0 .. 31;
      ETHSW_AC_IF8_PORTR              at 16#108C# range 0 .. 31;
      ETHSW_AC_IF9_IDR                at 16#1090# range 0 .. 15;
      ETHSW_AC_IF9_VERR               at 16#1092# range 0 .. 15;
      ETHSW_AC_IF9_BASER              at 16#1094# range 0 .. 31;
      ETHSW_AC_IF9_LENR               at 16#1098# range 0 .. 31;
      ETHSW_AC_IF9_PORTR              at 16#109C# range 0 .. 31;
      ETHSW_AC_IF10_IDR               at 16#10A0# range 0 .. 15;
      ETHSW_AC_IF10_VERR              at 16#10A2# range 0 .. 15;
      ETHSW_AC_IF10_BASER             at 16#10A4# range 0 .. 31;
      ETHSW_AC_IF10_LENR              at 16#10A8# range 0 .. 31;
      ETHSW_AC_IF10_PORTR             at 16#10AC# range 0 .. 31;
      ETHSW_AC_IF11_IDR               at 16#10B0# range 0 .. 15;
      ETHSW_AC_IF11_VERR              at 16#10B2# range 0 .. 15;
      ETHSW_AC_IF11_BASER             at 16#10B4# range 0 .. 31;
      ETHSW_AC_IF11_LENR              at 16#10B8# range 0 .. 31;
      ETHSW_AC_IF11_PORTR             at 16#10BC# range 0 .. 31;
      ETHSW_AC_IF12_IDR               at 16#10C0# range 0 .. 15;
      ETHSW_AC_IF12_VERR              at 16#10C2# range 0 .. 15;
      ETHSW_AC_IF12_BASER             at 16#10C4# range 0 .. 31;
      ETHSW_AC_IF12_LENR              at 16#10C8# range 0 .. 31;
      ETHSW_AC_IF12_PORTR             at 16#10CC# range 0 .. 31;
      ETHSW_AC_IF13_IDR               at 16#10D0# range 0 .. 15;
      ETHSW_AC_IF13_VERR              at 16#10D2# range 0 .. 15;
      ETHSW_AC_IF13_BASER             at 16#10D4# range 0 .. 31;
      ETHSW_AC_IF13_LENR              at 16#10D8# range 0 .. 31;
      ETHSW_AC_IF13_PORTR             at 16#10DC# range 0 .. 31;
      ETHSW_AC_EOTR                   at 16#10E0# range 0 .. 15;
      ETHSW_IBC_DEV_IDR               at 16#100000# range 0 .. 31;
      ETHSW_IBC_INT_IDR               at 16#100004# range 0 .. 31;
      ETHSW_IBC_GP_MUX_CTRLR          at 16#101000# range 0 .. 15;
      ETHSW_IBC_TIME_MUX_CTRLR        at 16#101100# range 0 .. 15;
      ETHSW_IBC_GP_MUXESR             at 16#102000# range 0 .. 15;
      ETHSW_IBC_GP_MUX_DEFAULTR       at 16#102002# range 0 .. 15;
      ETHSW_IBC_TIME_MUXESR           at 16#102004# range 0 .. 15;
      ETHSW_IBC_TIME_MUX_DEFAULTR     at 16#102006# range 0 .. 15;
      ETHSW_IBC_AUTOCONFIG0R          at 16#102100# range 0 .. 15;
      ETHSW_IBC_AUTOCONFIG8R          at 16#102110# range 0 .. 15;
      ETHSW_IBC_AUTOCONFIG9R          at 16#102112# range 0 .. 15;
      ETHSW_IBC_AUTOCONFIG10R         at 16#102114# range 0 .. 15;
      ETHSW_IBC_AUTOCONFIG12R         at 16#102118# range 0 .. 15;
      ETHSW_IBC_AUTOCONFIG13R         at 16#10211A# range 0 .. 15;
      ETHSW_IBC_AUTOCONFIG14R         at 16#10211C# range 0 .. 15;
      ETHSW_FTPS_GL0R                 at 16#120000# range 0 .. 31;
      ETHSW_FTPS_GL1R                 at 16#120004# range 0 .. 31;
      ETHSW_FTPS_TSCR                 at 16#121000# range 0 .. 31;
      ETHSW_FTPS_TSIMR                at 16#121008# range 0 .. 31;
      ETHSW_FTPS_TSISR                at 16#121010# range 0 .. 31;
      ETHSW_FTPS_TS_SNSR              at 16#121100# range 0 .. 31;
      ETHSW_FTPS_TS_NSR               at 16#121104# range 0 .. 31;
      ETHSW_FTPS_TS_SLR               at 16#121108# range 0 .. 31;
      ETHSW_FTPS_TS_SHR               at 16#12110C# range 0 .. 31;
      ETHSW_FTPS_PCNTR                at 16#121110# range 0 .. 31;
      ETHSW_FRTC0_GLR                 at 16#180000# range 0 .. 31;
      ETHSW_FRTC0_CUR_NSECR           at 16#181004# range 0 .. 31;
      ETHSW_FRTC0_CUR_SECLR           at 16#181008# range 0 .. 31;
      ETHSW_FRTC0_CUR_SECHR           at 16#18100C# range 0 .. 31;
      ETHSW_FRTC0_TIME_CCLR           at 16#181010# range 0 .. 31;
      ETHSW_FRTC0_TIME_CCHR           at 16#181014# range 0 .. 31;
      ETHSW_FRTC0_STEP_SIZE_SNR       at 16#181020# range 0 .. 31;
      ETHSW_FRTC0_STEP_SIZE_NR        at 16#181024# range 0 .. 31;
      ETHSW_FRTC0_ADJUST_NSECR        at 16#181034# range 0 .. 31;
      ETHSW_FRTC0_ADJUST_SECLR        at 16#181038# range 0 .. 31;
      ETHSW_FRTC0_ADJUST_SECHR        at 16#18103C# range 0 .. 31;
      ETHSW_FRTC0_TIME_CMDR           at 16#181040# range 0 .. 31;
      ETHSW_FRTC0_GENERICS_LR         at 16#182000# range 0 .. 31;
      ETHSW_FRTC0_GENERICS_HR         at 16#182004# range 0 .. 31;
      ETHSW_FRTC1_GLR                 at 16#190000# range 0 .. 31;
      ETHSW_FRTC1_CUR_NSECR           at 16#191004# range 0 .. 31;
      ETHSW_FRTC1_CUR_SECLR           at 16#191008# range 0 .. 31;
      ETHSW_FRTC1_CUR_SECHR           at 16#19100C# range 0 .. 31;
      ETHSW_FRTC1_TIME_CCLR           at 16#191010# range 0 .. 31;
      ETHSW_FRTC1_TIME_CCHR           at 16#191014# range 0 .. 31;
      ETHSW_FRTC1_STEP_SIZE_SNR       at 16#191020# range 0 .. 31;
      ETHSW_FRTC1_STEP_SIZE_NR        at 16#191024# range 0 .. 31;
      ETHSW_FRTC1_ADJUST_NSECR        at 16#191034# range 0 .. 31;
      ETHSW_FRTC1_ADJUST_SECLR        at 16#191038# range 0 .. 31;
      ETHSW_FRTC1_ADJUST_SECHR        at 16#19103C# range 0 .. 31;
      ETHSW_FRTC1_TIME_CMDR           at 16#191040# range 0 .. 31;
      ETHSW_FRTC1_GENERICS_LR         at 16#192000# range 0 .. 31;
      ETHSW_FRTC1_GENERICS_HR         at 16#192004# range 0 .. 31;
      ETHSW_FSC_DEV_IDR               at 16#1C0000# range 0 .. 31;
      ETHSW_FSC_INT_IDR               at 16#1C0004# range 0 .. 31;
      ETHSW_FSC_ROW_ACCESS_CMD0R      at 16#1C1000# range 0 .. 15;
      ETHSW_FSC_ROW_ACCESS_CMD1R      at 16#1C1002# range 0 .. 15;
      ETHSW_FSC_ROW_DATA0R            at 16#1C1010# range 0 .. 15;
      ETHSW_FSC_ROW_DATA4R            at 16#1C1018# range 0 .. 15;
      ETHSW_FSC_IMR                   at 16#1C1100# range 0 .. 15;
      ETHSW_FSC_ISR                   at 16#1C1102# range 0 .. 15;
      ETHSW_FSC_GEN_SCHR              at 16#1C4000# range 0 .. 15;
      ETHSW_FSC_GEN_OUTR              at 16#1C4002# range 0 .. 15;
      ETHSW_FSC_GEN_TBL_RWR           at 16#1C4004# range 0 .. 15;
      ETHSW_FSC_GEN_CLK_FRQR          at 16#1C4006# range 0 .. 15;
      ETHSW_FSC0_SCH_GENR             at 16#1D0000# range 0 .. 15;
      ETHSW_FSC0_DWNCNT_SPDR          at 16#1D0002# range 0 .. 15;
      ETHSW_FSC0_EME_DIS_CR           at 16#1D0020# range 0 .. 15;
      ETHSW_FSC0_EME_DIS_STATR        at 16#1D0030# range 0 .. 15;
      ETHSW_FSC0_T0_TBL_GENR          at 16#1D0800# range 0 .. 15;
      ETHSW_FSC0_T0_STRT_NSR          at 16#1D0814# range 0 .. 31;
      ETHSW_FSC0_T0_STRT_SR           at 16#1D0818# range 0 .. 15;
      ETHSW_FSC0_T0_CYC_SUBNSR        at 16#1D0820# range 0 .. 31;
      ETHSW_FSC0_T0_CYC_NSR           at 16#1D0824# range 0 .. 31;
      ETHSW_FSC0_T0_CYCTS_NSR         at 16#1D0834# range 0 .. 31;
      ETHSW_FSC0_T0_CYCTS_SR          at 16#1D0838# range 0 .. 31;
      ETHSW_FSC0_T0_CYC_CNTR          at 16#1D0840# range 0 .. 15;
      ETHSW_FSC0_T0_LST_CYCR          at 16#1D0844# range 0 .. 15;
      ETHSW_FSC0_T1_TBL_GENR          at 16#1D0900# range 0 .. 15;
      ETHSW_FSC0_T1_STRT_NSR          at 16#1D0914# range 0 .. 31;
      ETHSW_FSC0_T1_STRT_SR           at 16#1D0918# range 0 .. 15;
      ETHSW_FSC0_T1_CYC_SUBNSR        at 16#1D0920# range 0 .. 31;
      ETHSW_FSC0_T1_CYC_NSR           at 16#1D0924# range 0 .. 31;
      ETHSW_FSC0_T1_CYCTS_NSR         at 16#1D0934# range 0 .. 31;
      ETHSW_FSC0_T1_CYCTS_SR          at 16#1D0938# range 0 .. 31;
      ETHSW_FSC0_T1_CYC_CNTR          at 16#1D0940# range 0 .. 15;
      ETHSW_FSC0_T1_LST_CYCR          at 16#1D0944# range 0 .. 15;
      ETHSW_FSC1_SCH_GENR             at 16#1D1000# range 0 .. 15;
      ETHSW_FSC1_DWNCNT_SPDR          at 16#1D1002# range 0 .. 15;
      ETHSW_FSC1_EME_DIS_CR           at 16#1D1020# range 0 .. 15;
      ETHSW_FSC1_EME_DIS_STATR        at 16#1D1030# range 0 .. 15;
      ETHSW_FSC1_T0_TBL_GENR          at 16#1D1800# range 0 .. 15;
      ETHSW_FSC1_T0_STRT_NSR          at 16#1D1814# range 0 .. 31;
      ETHSW_FSC1_T0_STRT_SR           at 16#1D1818# range 0 .. 15;
      ETHSW_FSC1_T0_CYC_SUBNSR        at 16#1D1820# range 0 .. 31;
      ETHSW_FSC1_T0_CYC_NSR           at 16#1D1824# range 0 .. 31;
      ETHSW_FSC1_T0_CYCTS_NSR         at 16#1D1834# range 0 .. 31;
      ETHSW_FSC1_T0_CYCTS_SR          at 16#1D1838# range 0 .. 31;
      ETHSW_FSC1_T0_CYC_CNTR          at 16#1D1840# range 0 .. 15;
      ETHSW_FSC1_T0_LST_CYCR          at 16#1D1844# range 0 .. 15;
      ETHSW_FSC1_T1_TBL_GENR          at 16#1D1900# range 0 .. 15;
      ETHSW_FSC1_T1_STRT_NSR          at 16#1D1914# range 0 .. 31;
      ETHSW_FSC1_T1_STRT_SR           at 16#1D1918# range 0 .. 15;
      ETHSW_FSC1_T1_CYC_SUBNSR        at 16#1D1920# range 0 .. 31;
      ETHSW_FSC1_T1_CYC_NSR           at 16#1D1924# range 0 .. 31;
      ETHSW_FSC1_T1_CYCTS_NSR         at 16#1D1934# range 0 .. 31;
      ETHSW_FSC1_T1_CYCTS_SR          at 16#1D1938# range 0 .. 31;
      ETHSW_FSC1_T1_CYC_CNTR          at 16#1D1940# range 0 .. 15;
      ETHSW_FSC1_T1_LST_CYCR          at 16#1D1944# range 0 .. 15;
      ETHSW_FSC2_SCH_GENR             at 16#1D2000# range 0 .. 15;
      ETHSW_FSC2_DWNCNT_SPDR          at 16#1D2002# range 0 .. 15;
      ETHSW_FSC2_EME_DIS_CR           at 16#1D2020# range 0 .. 15;
      ETHSW_FSC2_EME_DIS_STATR        at 16#1D2030# range 0 .. 15;
      ETHSW_FSC2_T0_TBL_GENR          at 16#1D2800# range 0 .. 15;
      ETHSW_FSC2_T0_STRT_NSR          at 16#1D2814# range 0 .. 31;
      ETHSW_FSC2_T0_STRT_SR           at 16#1D2818# range 0 .. 15;
      ETHSW_FSC2_T0_CYC_SUBNSR        at 16#1D2820# range 0 .. 31;
      ETHSW_FSC2_T0_CYC_NSR           at 16#1D2824# range 0 .. 31;
      ETHSW_FSC2_T0_CYCTS_NSR         at 16#1D2834# range 0 .. 31;
      ETHSW_FSC2_T0_CYCTS_SR          at 16#1D2838# range 0 .. 31;
      ETHSW_FSC2_T0_CYC_CNTR          at 16#1D2840# range 0 .. 15;
      ETHSW_FSC2_T0_LST_CYCR          at 16#1D2844# range 0 .. 15;
      ETHSW_FSC2_T1_TBL_GENR          at 16#1D2900# range 0 .. 15;
      ETHSW_FSC2_T1_STRT_NSR          at 16#1D2914# range 0 .. 31;
      ETHSW_FSC2_T1_STRT_SR           at 16#1D2918# range 0 .. 15;
      ETHSW_FSC2_T1_CYC_SUBNSR        at 16#1D2920# range 0 .. 31;
      ETHSW_FSC2_T1_CYC_NSR           at 16#1D2924# range 0 .. 31;
      ETHSW_FSC2_T1_CYCTS_NSR         at 16#1D2934# range 0 .. 31;
      ETHSW_FSC2_T1_CYCTS_SR          at 16#1D2938# range 0 .. 31;
      ETHSW_FSC2_T1_CYC_CNTR          at 16#1D2940# range 0 .. 15;
      ETHSW_FSC2_T1_LST_CYCR          at 16#1D2944# range 0 .. 15;
      ETHSW_FES0_PORT_STATER          at 16#200000# range 0 .. 15;
      ETHSW_FES0_VLAN0R               at 16#200010# range 0 .. 15;
      ETHSW_FES0_VLAN1R               at 16#200012# range 0 .. 15;
      ETHSW_FES0_FWDM_CFGR            at 16#200014# range 0 .. 15;
      ETHSW_FES0_PRIO_REGENLR         at 16#200016# range 0 .. 15;
      ETHSW_FES0_PRIO_REGENHR         at 16#200018# range 0 .. 15;
      ETHSW_FES0_SHAPER0R             at 16#200030# range 0 .. 15;
      ETHSW_FES0_SHAPER1R             at 16#200032# range 0 .. 15;
      ETHSW_FES0_SHAPER2R             at 16#200034# range 0 .. 15;
      ETHSW_FES0_SHAPER3R             at 16#200036# range 0 .. 15;
      ETHSW_FES0_SHAPER4R             at 16#200038# range 0 .. 15;
      ETHSW_FES0_SHAPER5R             at 16#20003A# range 0 .. 15;
      ETHSW_FES0_SHAPER6R             at 16#20003C# range 0 .. 15;
      ETHSW_FES0_SHAPER7R             at 16#20003E# range 0 .. 15;
      ETHSW_FES0_FRAMESIZE0R          at 16#200040# range 0 .. 15;
      ETHSW_FES0_FRAMESIZE1R          at 16#200042# range 0 .. 15;
      ETHSW_FES0_FRAMESIZE2R          at 16#200044# range 0 .. 15;
      ETHSW_FES0_FRAMESIZE3R          at 16#200046# range 0 .. 15;
      ETHSW_FES0_FRAMESIZE4R          at 16#200048# range 0 .. 15;
      ETHSW_FES0_FRAMESIZE5R          at 16#20004A# range 0 .. 15;
      ETHSW_FES0_FRAMESIZE6R          at 16#20004C# range 0 .. 15;
      ETHSW_FES0_FRAMESIZE7R          at 16#20004E# range 0 .. 15;
      ETHSW_FES0_FID_CFG0R            at 16#200080# range 0 .. 15;
      ETHSW_FES0_FID_CFG1R            at 16#200082# range 0 .. 15;
      ETHSW_FES0_FID_CFG2R            at 16#200084# range 0 .. 15;
      ETHSW_FES0_FID_CFG3R            at 16#200086# range 0 .. 15;
      ETHSW_FES0_FID_CFG4R            at 16#200088# range 0 .. 15;
      ETHSW_FES0_FID_CFG5R            at 16#20008A# range 0 .. 15;
      ETHSW_FES0_FID_CFG6R            at 16#20008C# range 0 .. 15;
      ETHSW_FES0_FID_CFG7R            at 16#20008E# range 0 .. 15;
      ETHSW_FES0_FL_CAPTR             at 16#2000C0# range 0 .. 15;
      ETHSW_FES0_FL_SMPL_CNTR         at 16#2000C2# range 0 .. 15;
      ETHSW_FES0_FL_Q0_MINR           at 16#2000E0# range 0 .. 15;
      ETHSW_FES0_FL_Q1_MINR           at 16#2000E2# range 0 .. 15;
      ETHSW_FES0_FL_Q2_MINR           at 16#2000E4# range 0 .. 15;
      ETHSW_FES0_FL_Q3_MINR           at 16#2000E6# range 0 .. 15;
      ETHSW_FES0_FL_Q4_MINR           at 16#2000E8# range 0 .. 15;
      ETHSW_FES0_FL_Q5_MINR           at 16#2000EA# range 0 .. 15;
      ETHSW_FES0_FL_Q6_MINR           at 16#2000EC# range 0 .. 15;
      ETHSW_FES0_FL_Q7_MINR           at 16#2000EE# range 0 .. 15;
      ETHSW_FES0_FL_Q0_MAXR           at 16#2000F0# range 0 .. 15;
      ETHSW_FES0_FL_Q1_MAXR           at 16#2000F2# range 0 .. 15;
      ETHSW_FES0_FL_Q2_MAXR           at 16#2000F4# range 0 .. 15;
      ETHSW_FES0_FL_Q3_MAXR           at 16#2000F6# range 0 .. 15;
      ETHSW_FES0_FL_Q4_MAXR           at 16#2000F8# range 0 .. 15;
      ETHSW_FES0_FL_Q5_MAXR           at 16#2000FA# range 0 .. 15;
      ETHSW_FES0_FL_Q6_MAXR           at 16#2000FC# range 0 .. 15;
      ETHSW_FES0_FL_Q7_MAXR           at 16#2000FE# range 0 .. 15;
      ETHSW_FES0_PTP_RX_SYNCD_SNSR    at 16#204000# range 0 .. 15;
      ETHSW_FES0_PTP_RX_SYNCD_NSLR    at 16#204002# range 0 .. 15;
      ETHSW_FES0_PTP_RX_SYNCD_NSHR    at 16#204004# range 0 .. 15;
      ETHSW_FES0_PTP_RX_EVENTD_SNSR   at 16#204008# range 0 .. 15;
      ETHSW_FES0_PTP_RX_EVENTD_NSR    at 16#20400A# range 0 .. 15;
      ETHSW_FES0_PTP_TX_EVENTD_SNSR   at 16#204010# range 0 .. 15;
      ETHSW_FES0_PTP_TX_EVENTD_NSR    at 16#204012# range 0 .. 15;
      ETHSW_FES0_CNT_CTRLR            at 16#206000# range 0 .. 15;
      ETHSW_FES0_CNT_CMDR             at 16#206002# range 0 .. 15;
      ETHSW_FES0_CNT_VAL_LOR          at 16#206008# range 0 .. 15;
      ETHSW_FES0_CNT_VAL_HIR          at 16#20600A# range 0 .. 15;
      ETHSW_FES0_IPO_CMDR             at 16#208000# range 0 .. 15;
      ETHSW_FES0_ETH_ADDR_CFG0R       at 16#208010# range 0 .. 15;
      ETHSW_FES0_ETH_ADDR_FWD_ALLOWR  at 16#208012# range 0 .. 15;
      ETHSW_FES0_ETH_ADDR_FWD_MIRRORR at 16#208014# range 0 .. 15;
      ETHSW_FES0_ETH_ADDR_CFG1R       at 16#208016# range 0 .. 15;
      ETHSW_FES0_ETH_ADDR_0R          at 16#208018# range 0 .. 15;
      ETHSW_FES0_ETH_ADDR_1R          at 16#20801A# range 0 .. 15;
      ETHSW_FES0_ETH_ADDR_2R          at 16#20801C# range 0 .. 15;
      ETHSW_FES1_PORT_STATER          at 16#210000# range 0 .. 15;
      ETHSW_FES1_VLAN0R               at 16#210010# range 0 .. 15;
      ETHSW_FES1_VLAN1R               at 16#210012# range 0 .. 15;
      ETHSW_FES1_FWDM_CFGR            at 16#210014# range 0 .. 15;
      ETHSW_FES1_PRIO_REGENLR         at 16#210016# range 0 .. 15;
      ETHSW_FES1_PRIO_REGENHR         at 16#210018# range 0 .. 15;
      ETHSW_FES1_TX_CTER              at 16#21001A# range 0 .. 15;
      ETHSW_FES1_TX_PREE0R            at 16#21001C# range 0 .. 15;
      ETHSW_FES1_TX_PREE1R            at 16#21001E# range 0 .. 15;
      ETHSW_FES1_QUEUE_TBLR           at 16#210020# range 0 .. 31;
      ETHSW_FES1_SHAPER0R             at 16#210030# range 0 .. 15;
      ETHSW_FES1_SHAPER1R             at 16#210032# range 0 .. 15;
      ETHSW_FES1_SHAPER2R             at 16#210034# range 0 .. 15;
      ETHSW_FES1_SHAPER3R             at 16#210036# range 0 .. 15;
      ETHSW_FES1_SHAPER4R             at 16#210038# range 0 .. 15;
      ETHSW_FES1_SHAPER5R             at 16#21003A# range 0 .. 15;
      ETHSW_FES1_SHAPER6R             at 16#21003C# range 0 .. 15;
      ETHSW_FES1_SHAPER7R             at 16#21003E# range 0 .. 15;
      ETHSW_FES1_FRAMESIZE0R          at 16#210040# range 0 .. 15;
      ETHSW_FES1_FRAMESIZE1R          at 16#210042# range 0 .. 15;
      ETHSW_FES1_FRAMESIZE2R          at 16#210044# range 0 .. 15;
      ETHSW_FES1_FRAMESIZE3R          at 16#210046# range 0 .. 15;
      ETHSW_FES1_FRAMESIZE4R          at 16#210048# range 0 .. 15;
      ETHSW_FES1_FRAMESIZE5R          at 16#21004A# range 0 .. 15;
      ETHSW_FES1_FRAMESIZE6R          at 16#21004C# range 0 .. 15;
      ETHSW_FES1_FRAMESIZE7R          at 16#21004E# range 0 .. 15;
      ETHSW_FES1_FID_CFG0R            at 16#210080# range 0 .. 15;
      ETHSW_FES1_FID_CFG1R            at 16#210082# range 0 .. 15;
      ETHSW_FES1_FID_CFG2R            at 16#210084# range 0 .. 15;
      ETHSW_FES1_FID_CFG3R            at 16#210086# range 0 .. 15;
      ETHSW_FES1_FID_CFG4R            at 16#210088# range 0 .. 15;
      ETHSW_FES1_FID_CFG5R            at 16#21008A# range 0 .. 15;
      ETHSW_FES1_FID_CFG6R            at 16#21008C# range 0 .. 15;
      ETHSW_FES1_FID_CFG7R            at 16#21008E# range 0 .. 15;
      ETHSW_FES1_FL_CAPTR             at 16#2100C0# range 0 .. 15;
      ETHSW_FES1_FL_SMPL_CNTR         at 16#2100C2# range 0 .. 15;
      ETHSW_FES1_FL_Q0_MINR           at 16#2100E0# range 0 .. 15;
      ETHSW_FES1_FL_Q1_MINR           at 16#2100E2# range 0 .. 15;
      ETHSW_FES1_FL_Q2_MINR           at 16#2100E4# range 0 .. 15;
      ETHSW_FES1_FL_Q3_MINR           at 16#2100E6# range 0 .. 15;
      ETHSW_FES1_FL_Q4_MINR           at 16#2100E8# range 0 .. 15;
      ETHSW_FES1_FL_Q5_MINR           at 16#2100EA# range 0 .. 15;
      ETHSW_FES1_FL_Q6_MINR           at 16#2100EC# range 0 .. 15;
      ETHSW_FES1_FL_Q7_MINR           at 16#2100EE# range 0 .. 15;
      ETHSW_FES1_FL_Q0_MAXR           at 16#2100F0# range 0 .. 15;
      ETHSW_FES1_FL_Q1_MAXR           at 16#2100F2# range 0 .. 15;
      ETHSW_FES1_FL_Q2_MAXR           at 16#2100F4# range 0 .. 15;
      ETHSW_FES1_FL_Q3_MAXR           at 16#2100F6# range 0 .. 15;
      ETHSW_FES1_FL_Q4_MAXR           at 16#2100F8# range 0 .. 15;
      ETHSW_FES1_FL_Q5_MAXR           at 16#2100FA# range 0 .. 15;
      ETHSW_FES1_FL_Q6_MAXR           at 16#2100FC# range 0 .. 15;
      ETHSW_FES1_FL_Q7_MAXR           at 16#2100FE# range 0 .. 15;
      ETHSW_FES1_PTP_RX_SYNCD_SNSR    at 16#214000# range 0 .. 15;
      ETHSW_FES1_PTP_RX_SYNCD_NSLR    at 16#214002# range 0 .. 15;
      ETHSW_FES1_PTP_RX_SYNCD_NSHR    at 16#214004# range 0 .. 15;
      ETHSW_FES1_PTP_RX_EVENTD_SNSR   at 16#214008# range 0 .. 15;
      ETHSW_FES1_PTP_RX_EVENTD_NSR    at 16#21400A# range 0 .. 15;
      ETHSW_FES1_PTP_TX_EVENTD_SNSR   at 16#214010# range 0 .. 15;
      ETHSW_FES1_PTP_TX_EVENTD_NSR    at 16#214012# range 0 .. 15;
      ETHSW_FES1_CNT_CTRLR            at 16#216000# range 0 .. 15;
      ETHSW_FES1_CNT_CMDR             at 16#216002# range 0 .. 15;
      ETHSW_FES1_CNT_VAL_LOR          at 16#216008# range 0 .. 15;
      ETHSW_FES1_CNT_VAL_HIR          at 16#21600A# range 0 .. 15;
      ETHSW_FES1_IPO_CMDR             at 16#218000# range 0 .. 15;
      ETHSW_FES1_ETH_ADDR_CFG0R       at 16#218010# range 0 .. 15;
      ETHSW_FES1_ETH_ADDR_FWD_ALLOWR  at 16#218012# range 0 .. 15;
      ETHSW_FES1_ETH_ADDR_FWD_MIRRORR at 16#218014# range 0 .. 15;
      ETHSW_FES1_ETH_ADDR_CFG1R       at 16#218016# range 0 .. 15;
      ETHSW_FES1_ETH_ADDR_0R          at 16#218018# range 0 .. 15;
      ETHSW_FES1_ETH_ADDR_1R          at 16#21801A# range 0 .. 15;
      ETHSW_FES1_ETH_ADDR_2R          at 16#21801C# range 0 .. 15;
      ETHSW_FES2_PORT_STATER          at 16#220000# range 0 .. 15;
      ETHSW_FES2_VLAN0R               at 16#220010# range 0 .. 15;
      ETHSW_FES2_VLAN1R               at 16#220012# range 0 .. 15;
      ETHSW_FES2_FWDM_CFGR            at 16#220014# range 0 .. 15;
      ETHSW_FES2_PRIO_REGENLR         at 16#220016# range 0 .. 15;
      ETHSW_FES2_PRIO_REGENHR         at 16#220018# range 0 .. 15;
      ETHSW_FES2_TX_CTER              at 16#22001A# range 0 .. 15;
      ETHSW_FES2_TX_PREE0R            at 16#22001C# range 0 .. 15;
      ETHSW_FES2_TX_PREE1R            at 16#22001E# range 0 .. 15;
      ETHSW_FES2_QUEUE_TBLR           at 16#220020# range 0 .. 31;
      ETHSW_FES2_SHAPER0R             at 16#220030# range 0 .. 15;
      ETHSW_FES2_SHAPER1R             at 16#220032# range 0 .. 15;
      ETHSW_FES2_SHAPER2R             at 16#220034# range 0 .. 15;
      ETHSW_FES2_SHAPER3R             at 16#220036# range 0 .. 15;
      ETHSW_FES2_SHAPER4R             at 16#220038# range 0 .. 15;
      ETHSW_FES2_SHAPER5R             at 16#22003A# range 0 .. 15;
      ETHSW_FES2_SHAPER6R             at 16#22003C# range 0 .. 15;
      ETHSW_FES2_SHAPER7R             at 16#22003E# range 0 .. 15;
      ETHSW_FES2_FRAMESIZE0R          at 16#220040# range 0 .. 15;
      ETHSW_FES2_FRAMESIZE1R          at 16#220042# range 0 .. 15;
      ETHSW_FES2_FRAMESIZE2R          at 16#220044# range 0 .. 15;
      ETHSW_FES2_FRAMESIZE3R          at 16#220046# range 0 .. 15;
      ETHSW_FES2_FRAMESIZE4R          at 16#220048# range 0 .. 15;
      ETHSW_FES2_FRAMESIZE5R          at 16#22004A# range 0 .. 15;
      ETHSW_FES2_FRAMESIZE6R          at 16#22004C# range 0 .. 15;
      ETHSW_FES2_FRAMESIZE7R          at 16#22004E# range 0 .. 15;
      ETHSW_FES2_FID_CFG0R            at 16#220080# range 0 .. 15;
      ETHSW_FES2_FID_CFG1R            at 16#220082# range 0 .. 15;
      ETHSW_FES2_FID_CFG2R            at 16#220084# range 0 .. 15;
      ETHSW_FES2_FID_CFG3R            at 16#220086# range 0 .. 15;
      ETHSW_FES2_FID_CFG4R            at 16#220088# range 0 .. 15;
      ETHSW_FES2_FID_CFG5R            at 16#22008A# range 0 .. 15;
      ETHSW_FES2_FID_CFG6R            at 16#22008C# range 0 .. 15;
      ETHSW_FES2_FID_CFG7R            at 16#22008E# range 0 .. 15;
      ETHSW_FES2_FL_CAPTR             at 16#2200C0# range 0 .. 15;
      ETHSW_FES2_FL_SMPL_CNTR         at 16#2200C2# range 0 .. 15;
      ETHSW_FES2_FL_Q0_MINR           at 16#2200E0# range 0 .. 15;
      ETHSW_FES2_FL_Q1_MINR           at 16#2200E2# range 0 .. 15;
      ETHSW_FES2_FL_Q2_MINR           at 16#2200E4# range 0 .. 15;
      ETHSW_FES2_FL_Q3_MINR           at 16#2200E6# range 0 .. 15;
      ETHSW_FES2_FL_Q4_MINR           at 16#2200E8# range 0 .. 15;
      ETHSW_FES2_FL_Q5_MINR           at 16#2200EA# range 0 .. 15;
      ETHSW_FES2_FL_Q6_MINR           at 16#2200EC# range 0 .. 15;
      ETHSW_FES2_FL_Q7_MINR           at 16#2200EE# range 0 .. 15;
      ETHSW_FES2_FL_Q0_MAXR           at 16#2200F0# range 0 .. 15;
      ETHSW_FES2_FL_Q1_MAXR           at 16#2200F2# range 0 .. 15;
      ETHSW_FES2_FL_Q2_MAXR           at 16#2200F4# range 0 .. 15;
      ETHSW_FES2_FL_Q3_MAXR           at 16#2200F6# range 0 .. 15;
      ETHSW_FES2_FL_Q4_MAXR           at 16#2200F8# range 0 .. 15;
      ETHSW_FES2_FL_Q5_MAXR           at 16#2200FA# range 0 .. 15;
      ETHSW_FES2_FL_Q6_MAXR           at 16#2200FC# range 0 .. 15;
      ETHSW_FES2_FL_Q7_MAXR           at 16#2200FE# range 0 .. 15;
      ETHSW_FES2_PTP_RX_SYNCD_SNSR    at 16#224000# range 0 .. 15;
      ETHSW_FES2_PTP_RX_SYNCD_NSLR    at 16#224002# range 0 .. 15;
      ETHSW_FES2_PTP_RX_SYNCD_NSHR    at 16#224004# range 0 .. 15;
      ETHSW_FES2_PTP_RX_EVENTD_SNSR   at 16#224008# range 0 .. 15;
      ETHSW_FES2_PTP_RX_EVENTD_NSR    at 16#22400A# range 0 .. 15;
      ETHSW_FES2_PTP_TX_EVENTD_SNSR   at 16#224010# range 0 .. 15;
      ETHSW_FES2_PTP_TX_EVENTD_NSR    at 16#224012# range 0 .. 15;
      ETHSW_FES2_CNT_CTRLR            at 16#226000# range 0 .. 15;
      ETHSW_FES2_CNT_CMDR             at 16#226002# range 0 .. 15;
      ETHSW_FES2_CNT_VAL_LOR          at 16#226008# range 0 .. 15;
      ETHSW_FES2_CNT_VAL_HIR          at 16#22600A# range 0 .. 15;
      ETHSW_FES2_IPO_CMDR             at 16#228000# range 0 .. 15;
      ETHSW_FES2_ETH_ADDR_CFG0R       at 16#228010# range 0 .. 15;
      ETHSW_FES2_ETH_ADDR_FWD_ALLOWR  at 16#228012# range 0 .. 15;
      ETHSW_FES2_ETH_ADDR_FWD_MIRRORR at 16#228014# range 0 .. 15;
      ETHSW_FES2_ETH_ADDR_CFG1R       at 16#228016# range 0 .. 15;
      ETHSW_FES2_ETH_ADDR_0R          at 16#228018# range 0 .. 15;
      ETHSW_FES2_ETH_ADDR_1R          at 16#22801A# range 0 .. 15;
      ETHSW_FES2_ETH_ADDR_2R          at 16#22801C# range 0 .. 15;
      ETHSW_FES_IPC_IDR               at 16#800000# range 0 .. 31;
      ETHSW_FES_CFG_IDR               at 16#800004# range 0 .. 15;
      ETHSW_FES_REV_ID0R              at 16#800006# range 0 .. 15;
      ETHSW_FES_REV_ID1R              at 16#800008# range 0 .. 15;
      ETHSW_FES_REV_ID2R              at 16#80000A# range 0 .. 15;
      ETHSW_FES_GEN_CTRLR             at 16#800010# range 0 .. 15;
      ETHSW_FES_MT_CLEAR_MSKR         at 16#800012# range 0 .. 15;
      ETHSW_FES_MT_CLEAR_FIDR         at 16#800014# range 0 .. 15;
      ETHSW_FES_ADDRESS_AGING_CFGR    at 16#800020# range 0 .. 15;
      ETHSW_FES_AGING_BASE_TIMELR     at 16#800022# range 0 .. 15;
      ETHSW_FES_AGING_BASE_TIMEHR     at 16#800024# range 0 .. 15;
      ETHSW_FES_INT_MASK_CLR          at 16#800030# range 0 .. 15;
      ETHSW_FES_INT_MASK_SETR         at 16#800034# range 0 .. 15;
      ETHSW_FES_INT_STATUSR           at 16#800038# range 0 .. 15;
      ETHSW_FES_MAC_TABLE0R           at 16#800200# range 0 .. 15;
      ETHSW_FES_MAC_TABLE1R           at 16#800202# range 0 .. 15;
      ETHSW_FES_MAC_TABLE2R           at 16#800204# range 0 .. 15;
      ETHSW_FES_MAC_TABLE3R           at 16#800206# range 0 .. 15;
      ETHSW_FES_MAC_TABLE4R           at 16#800208# range 0 .. 15;
      ETHSW_FES_SMAC_CMDR             at 16#800220# range 0 .. 15;
      ETHSW_FES_SMAC_CFGR             at 16#800222# range 0 .. 15;
      ETHSW_FES_SMAC_TABLE0R          at 16#800230# range 0 .. 15;
      ETHSW_FES_SMAC_TABLE1R          at 16#800232# range 0 .. 15;
      ETHSW_FES_SMAC_TABLE2R          at 16#800234# range 0 .. 15;
      ETHSW_FES_SMAC_TABLE3R          at 16#800236# range 0 .. 15;
      ETHSW_FES_SMAC_TABLE4R          at 16#800238# range 0 .. 15;
      ETHSW_FES_SMAC_TABLE5R          at 16#80023A# range 0 .. 15;
      ETHSW_FES_SMAC_TABLE6R          at 16#80023C# range 0 .. 15;
      ETHSW_FES_SMAC_TABLE7R          at 16#80023E# range 0 .. 15;
      ETHSW_FES_SEQ_REC_CMDR          at 16#800300# range 0 .. 15;
      ETHSW_FES_SEQ_REC_TABLE4R       at 16#800318# range 0 .. 15;
      ETHSW_FES_SEQ_GEN_CMDR          at 16#800380# range 0 .. 15;
      ETHSW_FES_STREAM_CMDR           at 16#800400# range 0 .. 15;
      ETHSW_FES_STREAM_TABLE0R        at 16#800410# range 0 .. 15;
      ETHSW_FES_STREAM_TABLE1R        at 16#800412# range 0 .. 15;
      ETHSW_FES_STREAM_TABLE2R        at 16#800414# range 0 .. 15;
      ETHSW_FES_STREAM_TABLE3R        at 16#800416# range 0 .. 15;
      ETHSW_FES_POLICER_CMDR          at 16#800600# range 0 .. 15;
      ETHSW_FES_POLICER0R             at 16#800610# range 0 .. 15;
      ETHSW_FES_POLICER1R             at 16#800612# range 0 .. 15;
      ETHSW_FES_POLICER2R             at 16#800614# range 0 .. 15;
      ETHSW_FES_POLICER3R             at 16#800616# range 0 .. 15;
      ETHSW_FES_POLICER4R             at 16#800618# range 0 .. 15;
      ETHSW_FES_TS_CMDR               at 16#802000# range 0 .. 15;
      ETHSW_FES_TS_TIME_LOR           at 16#802008# range 0 .. 15;
      ETHSW_FES_TS_TIME_HIR           at 16#80200A# range 0 .. 15;
      ETHSW_FES_TS_MSG_0R             at 16#80200C# range 0 .. 15;
      ETHSW_FES_TS_MSG_1R             at 16#80200E# range 0 .. 15;
      ETHSW_FES_TS_RX_STATUSR         at 16#802010# range 0 .. 15;
      ETHSW_FES_TS_TX_STATUSR         at 16#802012# range 0 .. 15;
      ETHSW_FES_VLAN_CMDR             at 16#808000# range 0 .. 15;
      ETHSW_FES_VLAN_PORTSR           at 16#808008# range 0 .. 15;
      ETHSW_FES_VLAN_TAGR             at 16#80800A# range 0 .. 15;
      ETHSW_FES_VLAN_FIDR             at 16#80800C# range 0 .. 15;
      ETHSW_FES_PORT_HIGHR            at 16#80E000# range 0 .. 15;
      ETHSW_FES_COUNTERSR             at 16#80E002# range 0 .. 15;
      ETHSW_FES_CT_PORTSR             at 16#80E004# range 0 .. 15;
      ETHSW_FES_TS_PORTSR             at 16#80E006# range 0 .. 15;
      ETHSW_FES_SMAC_TABLE_ROWSR      at 16#80E008# range 0 .. 15;
      ETHSW_FES_POLICINGR             at 16#80E00A# range 0 .. 15;
      ETHSW_FES_POLICERSR             at 16#80E00C# range 0 .. 15;
      ETHSW_FES_QUEUESR               at 16#80E00E# range 0 .. 15;
      ETHSW_FES_BUFFER_SIZER          at 16#80E010# range 0 .. 15;
      ETHSW_FES_SHAPERSR              at 16#80E012# range 0 .. 15;
      ETHSW_FES_GIGABITR              at 16#80E014# range 0 .. 15;
      ETHSW_FES_HSR_PORTSR            at 16#80E016# range 0 .. 15;
      ETHSW_FES_PRP_PORTSR            at 16#80E018# range 0 .. 15;
      ETHSW_FES_SCHEDULED_PORTSR      at 16#80E01A# range 0 .. 15;
      ETHSW_PREEMPTABLE_PORTR         at 16#80E01C# range 0 .. 15;
      ETHSW_FES_MACSECR               at 16#80E01E# range 0 .. 15;
      ETHSW_FES_MACSEC_CIPHERR        at 16#80E020# range 0 .. 15;
      ETHSW_FES_MGMT_PORTSR           at 16#80E022# range 0 .. 15;
      ETHSW_FES_FRER_PORTSR           at 16#80E024# range 0 .. 15;
      ETHSW_FES_FRER_ENTRIESR         at 16#80E026# range 0 .. 15;
      ETHSW_FES_FRER_STREAMSR         at 16#80E028# range 0 .. 15;
      ETHSW_FES_FIDSR                 at 16#80E02A# range 0 .. 15;
      ETHSW_FES_DMA_PORTSR            at 16#80E02C# range 0 .. 15;
      ETHSW_FES_DMA_TX_DESC_RINGR     at 16#80E02E# range 0 .. 15;
      ETHSW_FES_DMA_RX_DESC_RINGR     at 16#80E030# range 0 .. 15;
      ETHSW_FES_PSFPR                 at 16#80E032# range 0 .. 15;
      ETHSW_FES_PSFP_STREAMSR         at 16#80E034# range 0 .. 15;
      ETHSW_FES_CFG_CLK_FREQR         at 16#80E100# range 0 .. 15;
      ETHSW_FES_DEBUG_INR             at 16#80E110# range 0 .. 15;
      ETHSW_FES_H_ADV_10R             at 16#80E200# range 0 .. 15;
      ETHSW_FES_H_ADV_100R            at 16#80E202# range 0 .. 15;
      ETHSW_FES_H_ADV_1000R           at 16#80E204# range 0 .. 15;
      ETHSW_FES_R_ADV_10R             at 16#80E208# range 0 .. 15;
      ETHSW_FES_R_ADV_100R            at 16#80E20A# range 0 .. 15;
      ETHSW_FES_R_ADV_1000R           at 16#80E20C# range 0 .. 15;
      ETHSW_FES_I_TO_G_MIN_10R        at 16#80E210# range 0 .. 15;
      ETHSW_FES_I_TO_G_MIN_100R       at 16#80E212# range 0 .. 15;
      ETHSW_FES_I_TO_G_MIN_1000R      at 16#80E214# range 0 .. 15;
      ETHSW_FES_I_TO_G_MAX_10R        at 16#80E218# range 0 .. 15;
      ETHSW_FES_I_TO_G_MAX_100R       at 16#80E21A# range 0 .. 15;
      ETHSW_FES_I_TO_G_MAX_1000R      at 16#80E21C# range 0 .. 15;
      ETHSW_FES_G_TO_O_MIN_10R        at 16#80E220# range 0 .. 15;
      ETHSW_FES_G_TO_O_MIN_100R       at 16#80E222# range 0 .. 15;
      ETHSW_FES_G_TO_O_MIN_1000R      at 16#80E224# range 0 .. 15;
      ETHSW_FES_G_TO_O_MAX_10R        at 16#80E228# range 0 .. 15;
      ETHSW_FES_G_TO_O_MAX_100R       at 16#80E22A# range 0 .. 15;
      ETHSW_FES_G_TO_O_MAX_1000R      at 16#80E22C# range 0 .. 15;
      ETHSW_FES_CAPT0R                at 16#80F000# range 0 .. 15;
      ETHSW_FES_CAPT1R                at 16#80F002# range 0 .. 15;
      ETHSW_FES_CAPT2R                at 16#80F004# range 0 .. 15;
      ETHSW_FES_CAPT3R                at 16#80F006# range 0 .. 15;
      ETHSW_FES_SEQ_REC_TOUT_LR       at 16#80F200# range 0 .. 15;
      ETHSW_FES_SEQ_REC_TOUT_HR       at 16#80F202# range 0 .. 15;
      ETHSW_FES_VECT_JUMP_LR          at 16#80F204# range 0 .. 15;
      ETHSW_FES_VECT_JUMP_HR          at 16#80F206# range 0 .. 15;
      ETHSW_FES_SEQ_REC_OOO_LR        at 16#80F208# range 0 .. 15;
      ETHSW_FES_SEQ_REC_OOO_HR        at 16#80F20A# range 0 .. 15;
      ETHSW_FES_FRAMES_IN_LR          at 16#80F300# range 0 .. 15;
      ETHSW_FES_FRAMES_IN_HR          at 16#80F302# range 0 .. 15;
      ETHSW_FES_FRAMES_OUT_LR         at 16#80F304# range 0 .. 15;
      ETHSW_FES_FRAMES_OUT_HR         at 16#80F306# range 0 .. 15;
      ETHSW_FES_SEQ_REC_OOO2_LR       at 16#80F308# range 0 .. 15;
      ETHSW_FES_SEQ_REC_OOO2_HR       at 16#80F30A# range 0 .. 15;
      ETHSW_FES_VECT_ROG_LR           at 16#80F30C# range 0 .. 15;
      ETHSW_FES_VECT_ROG_HR           at 16#80F30E# range 0 .. 15;
      ETHSW_FES_SEQ_REC_TAGLESS_LR    at 16#80F310# range 0 .. 15;
      ETHSW_FES_SEQ_REC_TAGLESS_HR    at 16#80F312# range 0 .. 15;
      ETHSW_FES_SEQ_REC_SB_LR         at 16#80F314# range 0 .. 15;
      ETHSW_FES_SEQ_REC_SB_HR         at 16#80F316# range 0 .. 15;
      ETHSW_EIA_RGMII_P0_IDR          at 16#1000000# range 0 .. 15;
      ETHSW_EIA_RGMII_P0_LINK_STATUSR at 16#1000002# range 0 .. 15;
      ETHSW_EIA_RGMII_P0_RX_DELAYR    at 16#1000020# range 0 .. 15;
      ETHSW_EIA_RGMII_P0_TX_DELAYR    at 16#1000022# range 0 .. 15;
      ETHSW_EIA_RMII_P1_IDR           at 16#1000100# range 0 .. 15;
      ETHSW_EIA_RGMII_P1_IDR          at 16#1000200# range 0 .. 15;
      ETHSW_EIA_RGMII_P1_RX_DELAYR    at 16#1000220# range 0 .. 15;
      ETHSW_EIA_RGMII_P1_TX_DELAYR    at 16#1000222# range 0 .. 15;
      ETHSW_EIA_RMII_P1_RX_DELAYR     at 16#1000320# range 0 .. 15;
      ETHSW_EIA_RMII_P1_TX_DELAYR     at 16#1000322# range 0 .. 15;
      ETHSW_EIA_RGMII_P1_LINK_STATUSR at 16#1000202# range 0 .. 15;
      ETHSW_EIA_RMII_P1_LINK_STATUSR  at 16#1000202# range 0 .. 15;
      ETHSW_EIA_RGMII_P2_IDR          at 16#1000400# range 0 .. 15;
      ETHSW_EIA_RMII_P2_IDR           at 16#1000400# range 0 .. 15;
      ETHSW_EIA_RGMII_P2_LINK_STATUSR at 16#1000402# range 0 .. 15;
      ETHSW_EIA_RMII_P2_LINK_STATUSR  at 16#1000402# range 0 .. 15;
      ETHSW_EIA_RGMII_P2_RX_DELAYR    at 16#1000420# range 0 .. 15;
      ETHSW_EIA_RMII_P2_RX_DELAYR     at 16#1000420# range 0 .. 15;
      ETHSW_EIA_RGMII_P2_TX_DELAYR    at 16#1000422# range 0 .. 15;
      ETHSW_EIA_RMII_P2_TX_DELAYR     at 16#1000422# range 0 .. 15;
   end record;

   --  ETHSW register block
   ETHSW_Periph : aliased ETHSW_Peripheral
     with Import, Address => ETHSW_Base;

   --  ETHSW register block
   ETHSW_S_Periph : aliased ETHSW_Peripheral
     with Import, Address => ETHSW_S_Base;

end STM32_SVD.ETHSW;
