--  This spec has been automatically generated from STM32N657.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.RIFSC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  RIFSC RISC slave configuration register x
   type RIFSC_RISC_CR_Register is record
      --  Global lock
      GLOCK         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_CR_Register use record
      GLOCK         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  RIFSC_RISC_SECCFGR0_SEC array
   type RIFSC_RISC_SECCFGR0_SEC_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISC slave security configuration register 0
   type RIFSC_RISC_SECCFGR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt32;
         when True =>
            --  SEC as an array
            Arr : RIFSC_RISC_SECCFGR0_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_SECCFGR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_SECCFGR1_SEC array
   type RIFSC_RISC_SECCFGR1_SEC_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISC slave security configuration register 1
   type RIFSC_RISC_SECCFGR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt32;
         when True =>
            --  SEC as an array
            Arr : RIFSC_RISC_SECCFGR1_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_SECCFGR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_SECCFGR2_SEC array
   type RIFSC_RISC_SECCFGR2_SEC_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISC slave security configuration register 2
   type RIFSC_RISC_SECCFGR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt32;
         when True =>
            --  SEC as an array
            Arr : RIFSC_RISC_SECCFGR2_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_SECCFGR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_SECCFGR3_SEC array
   type RIFSC_RISC_SECCFGR3_SEC_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISC slave security configuration register 3
   type RIFSC_RISC_SECCFGR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt32;
         when True =>
            --  SEC as an array
            Arr : RIFSC_RISC_SECCFGR3_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_SECCFGR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_SECCFGR4_SEC array
   type RIFSC_RISC_SECCFGR4_SEC_Field_Array is array (128 .. 159) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISC slave security configuration register 4
   type RIFSC_RISC_SECCFGR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt32;
         when True =>
            --  SEC as an array
            Arr : RIFSC_RISC_SECCFGR4_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_SECCFGR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_SECCFGR5_SEC array
   type RIFSC_RISC_SECCFGR5_SEC_Field_Array is array (160 .. 191) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISC slave security configuration register 5
   type RIFSC_RISC_SECCFGR5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt32;
         when True =>
            --  SEC as an array
            Arr : RIFSC_RISC_SECCFGR5_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_SECCFGR5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_PRIVCFGR0_PRIV array
   type RIFSC_RISC_PRIVCFGR0_PRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISFC slave privileged register 0
   type RIFSC_RISC_PRIVCFGR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PRIV as an array
            Arr : RIFSC_RISC_PRIVCFGR0_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PRIVCFGR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_PRIVCFGR1_PRIV array
   type RIFSC_RISC_PRIVCFGR1_PRIV_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISFC slave privileged register 1
   type RIFSC_RISC_PRIVCFGR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PRIV as an array
            Arr : RIFSC_RISC_PRIVCFGR1_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PRIVCFGR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_PRIVCFGR2_PRIV array
   type RIFSC_RISC_PRIVCFGR2_PRIV_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISFC slave privileged register 2
   type RIFSC_RISC_PRIVCFGR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PRIV as an array
            Arr : RIFSC_RISC_PRIVCFGR2_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PRIVCFGR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_PRIVCFGR3_PRIV array
   type RIFSC_RISC_PRIVCFGR3_PRIV_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISFC slave privileged register 3
   type RIFSC_RISC_PRIVCFGR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PRIV as an array
            Arr : RIFSC_RISC_PRIVCFGR3_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PRIVCFGR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_PRIVCFGR4_PRIV array
   type RIFSC_RISC_PRIVCFGR4_PRIV_Field_Array is array (128 .. 159)
     of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISFC slave privileged register 4
   type RIFSC_RISC_PRIVCFGR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PRIV as an array
            Arr : RIFSC_RISC_PRIVCFGR4_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PRIVCFGR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_PRIVCFGR5_PRIV array
   type RIFSC_RISC_PRIVCFGR5_PRIV_Field_Array is array (160 .. 191)
     of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISFC slave privileged register 5
   type RIFSC_RISC_PRIVCFGR5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PRIV as an array
            Arr : RIFSC_RISC_PRIVCFGR5_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PRIVCFGR5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_RCFGLOCKR0_RLOCK array
   type RIFSC_RISC_RCFGLOCKR0_RLOCK_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISC slave resource configuration lock register 0
   type RIFSC_RISC_RCFGLOCKR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt32;
         when True =>
            --  RLOCK as an array
            Arr : RIFSC_RISC_RCFGLOCKR0_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_RCFGLOCKR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_RCFGLOCKR1_RLOCK array
   type RIFSC_RISC_RCFGLOCKR1_RLOCK_Field_Array is array (32 .. 63)
     of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISC slave resource configuration lock register 1
   type RIFSC_RISC_RCFGLOCKR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt32;
         when True =>
            --  RLOCK as an array
            Arr : RIFSC_RISC_RCFGLOCKR1_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_RCFGLOCKR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_RCFGLOCKR2_RLOCK array
   type RIFSC_RISC_RCFGLOCKR2_RLOCK_Field_Array is array (64 .. 95)
     of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISC slave resource configuration lock register 2
   type RIFSC_RISC_RCFGLOCKR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt32;
         when True =>
            --  RLOCK as an array
            Arr : RIFSC_RISC_RCFGLOCKR2_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_RCFGLOCKR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_RCFGLOCKR3_RLOCK array
   type RIFSC_RISC_RCFGLOCKR3_RLOCK_Field_Array is array (96 .. 127)
     of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISC slave resource configuration lock register 3
   type RIFSC_RISC_RCFGLOCKR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt32;
         when True =>
            --  RLOCK as an array
            Arr : RIFSC_RISC_RCFGLOCKR3_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_RCFGLOCKR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_RCFGLOCKR4_RLOCK array
   type RIFSC_RISC_RCFGLOCKR4_RLOCK_Field_Array is array (128 .. 159)
     of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISC slave resource configuration lock register 4
   type RIFSC_RISC_RCFGLOCKR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt32;
         when True =>
            --  RLOCK as an array
            Arr : RIFSC_RISC_RCFGLOCKR4_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_RCFGLOCKR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_RISC_RCFGLOCKR5_RLOCK array
   type RIFSC_RISC_RCFGLOCKR5_RLOCK_Field_Array is array (160 .. 191)
     of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC RISC slave resource configuration lock register 5
   type RIFSC_RISC_RCFGLOCKR5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt32;
         when True =>
            --  RLOCK as an array
            Arr : RIFSC_RISC_RCFGLOCKR5_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_RCFGLOCKR5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype RIFSC_RIMC_CR_DAPCID_Field is HAL.UInt3;

   --  RIFSC RIMC master configuration register
   type RIFSC_RIMC_CR_Register is record
      --  global lock
      GLOCK          : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#8#;
      --  debug access port compartment ID
      DAPCID         : RIFSC_RIMC_CR_DAPCID_Field := 16#7#;
      --  unspecified
      Reserved_11_31 : HAL.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RIMC_CR_Register use record
      GLOCK          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DAPCID         at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype RIFSC_RIMC_ATTR_MCID_Field is HAL.UInt3;

   --  RIFSC RIMC master attribute register 0
   type RIFSC_RIMC_ATTR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  master CID
      MCID           : RIFSC_RIMC_ATTR_MCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  master secure
      MSEC           : Boolean := False;
      --  master privileged
      MPRIV          : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RIMC_ATTR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      MCID           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MSEC           at 0 range 8 .. 8;
      MPRIV          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  RIFSC_PPSR0_PPEN array
   type RIFSC_PPSR0_PPEN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC peripheral protection status register 0
   type RIFSC_PPSR0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPEN as a value
            Val : HAL.UInt32;
         when True =>
            --  PPEN as an array
            Arr : RIFSC_PPSR0_PPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_PPSR0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_PPSR1_PPEN array
   type RIFSC_PPSR1_PPEN_Field_Array is array (32 .. 63) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC peripheral protection status register 1
   type RIFSC_PPSR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPEN as a value
            Val : HAL.UInt32;
         when True =>
            --  PPEN as an array
            Arr : RIFSC_PPSR1_PPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_PPSR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_PPSR2_PPEN array
   type RIFSC_PPSR2_PPEN_Field_Array is array (64 .. 95) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC peripheral protection status register 2
   type RIFSC_PPSR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPEN as a value
            Val : HAL.UInt32;
         when True =>
            --  PPEN as an array
            Arr : RIFSC_PPSR2_PPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_PPSR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_PPSR3_PPEN array
   type RIFSC_PPSR3_PPEN_Field_Array is array (96 .. 127) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC peripheral protection status register 3
   type RIFSC_PPSR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPEN as a value
            Val : HAL.UInt32;
         when True =>
            --  PPEN as an array
            Arr : RIFSC_PPSR3_PPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_PPSR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_PPSR4_PPEN array
   type RIFSC_PPSR4_PPEN_Field_Array is array (128 .. 159) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC peripheral protection status register 4
   type RIFSC_PPSR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPEN as a value
            Val : HAL.UInt32;
         when True =>
            --  PPEN as an array
            Arr : RIFSC_PPSR4_PPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_PPSR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RIFSC_PPSR5_PPEN array
   type RIFSC_PPSR5_PPEN_Field_Array is array (160 .. 191) of Boolean
     with Component_Size => 1, Size => 32;

   --  RIFSC peripheral protection status register 5
   type RIFSC_PPSR5_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPEN as a value
            Val : HAL.UInt32;
         when True =>
            --  PPEN as an array
            Arr : RIFSC_PPSR5_PPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_PPSR5_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Resource isolation framework security controller
   type RIFSC_Peripheral is record
      --  RIFSC RISC slave configuration register x
      RIFSC_RISC_CR         : aliased RIFSC_RISC_CR_Register;
      --  RIFSC RISC slave security configuration register 0
      RIFSC_RISC_SECCFGR0   : aliased RIFSC_RISC_SECCFGR0_Register;
      --  RIFSC RISC slave security configuration register 1
      RIFSC_RISC_SECCFGR1   : aliased RIFSC_RISC_SECCFGR1_Register;
      --  RIFSC RISC slave security configuration register 2
      RIFSC_RISC_SECCFGR2   : aliased RIFSC_RISC_SECCFGR2_Register;
      --  RIFSC RISC slave security configuration register 3
      RIFSC_RISC_SECCFGR3   : aliased RIFSC_RISC_SECCFGR3_Register;
      --  RIFSC RISC slave security configuration register 4
      RIFSC_RISC_SECCFGR4   : aliased RIFSC_RISC_SECCFGR4_Register;
      --  RIFSC RISC slave security configuration register 5
      RIFSC_RISC_SECCFGR5   : aliased RIFSC_RISC_SECCFGR5_Register;
      --  RIFSC RISFC slave privileged register 0
      RIFSC_RISC_PRIVCFGR0  : aliased RIFSC_RISC_PRIVCFGR0_Register;
      --  RIFSC RISFC slave privileged register 1
      RIFSC_RISC_PRIVCFGR1  : aliased RIFSC_RISC_PRIVCFGR1_Register;
      --  RIFSC RISFC slave privileged register 2
      RIFSC_RISC_PRIVCFGR2  : aliased RIFSC_RISC_PRIVCFGR2_Register;
      --  RIFSC RISFC slave privileged register 3
      RIFSC_RISC_PRIVCFGR3  : aliased RIFSC_RISC_PRIVCFGR3_Register;
      --  RIFSC RISFC slave privileged register 4
      RIFSC_RISC_PRIVCFGR4  : aliased RIFSC_RISC_PRIVCFGR4_Register;
      --  RIFSC RISFC slave privileged register 5
      RIFSC_RISC_PRIVCFGR5  : aliased RIFSC_RISC_PRIVCFGR5_Register;
      --  RIFSC RISC slave resource configuration lock register 0
      RIFSC_RISC_RCFGLOCKR0 : aliased RIFSC_RISC_RCFGLOCKR0_Register;
      --  RIFSC RISC slave resource configuration lock register 1
      RIFSC_RISC_RCFGLOCKR1 : aliased RIFSC_RISC_RCFGLOCKR1_Register;
      --  RIFSC RISC slave resource configuration lock register 2
      RIFSC_RISC_RCFGLOCKR2 : aliased RIFSC_RISC_RCFGLOCKR2_Register;
      --  RIFSC RISC slave resource configuration lock register 3
      RIFSC_RISC_RCFGLOCKR3 : aliased RIFSC_RISC_RCFGLOCKR3_Register;
      --  RIFSC RISC slave resource configuration lock register 4
      RIFSC_RISC_RCFGLOCKR4 : aliased RIFSC_RISC_RCFGLOCKR4_Register;
      --  RIFSC RISC slave resource configuration lock register 5
      RIFSC_RISC_RCFGLOCKR5 : aliased RIFSC_RISC_RCFGLOCKR5_Register;
      --  RIFSC RIMC master configuration register
      RIFSC_RIMC_CR         : aliased RIFSC_RIMC_CR_Register;
      --  RIFSC RIMC master attribute register 0
      RIFSC_RIMC_ATTR0      : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 1
      RIFSC_RIMC_ATTR1      : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 2
      RIFSC_RIMC_ATTR2      : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 3
      RIFSC_RIMC_ATTR3      : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 4
      RIFSC_RIMC_ATTR4      : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 5
      RIFSC_RIMC_ATTR5      : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 6
      RIFSC_RIMC_ATTR6      : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 7
      RIFSC_RIMC_ATTR7      : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 8
      RIFSC_RIMC_ATTR8      : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 9
      RIFSC_RIMC_ATTR9      : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 10
      RIFSC_RIMC_ATTR10     : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 11
      RIFSC_RIMC_ATTR11     : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC peripheral protection status register 0
      RIFSC_PPSR0           : aliased RIFSC_PPSR0_Register;
      --  RIFSC peripheral protection status register 1
      RIFSC_PPSR1           : aliased RIFSC_PPSR1_Register;
      --  RIFSC peripheral protection status register 2
      RIFSC_PPSR2           : aliased RIFSC_PPSR2_Register;
      --  RIFSC peripheral protection status register 3
      RIFSC_PPSR3           : aliased RIFSC_PPSR3_Register;
      --  RIFSC peripheral protection status register 4
      RIFSC_PPSR4           : aliased RIFSC_PPSR4_Register;
      --  RIFSC peripheral protection status register 5
      RIFSC_PPSR5           : aliased RIFSC_PPSR5_Register;
   end record
     with Volatile;

   for RIFSC_Peripheral use record
      RIFSC_RISC_CR         at 16#0# range 0 .. 31;
      RIFSC_RISC_SECCFGR0   at 16#10# range 0 .. 31;
      RIFSC_RISC_SECCFGR1   at 16#14# range 0 .. 31;
      RIFSC_RISC_SECCFGR2   at 16#18# range 0 .. 31;
      RIFSC_RISC_SECCFGR3   at 16#1C# range 0 .. 31;
      RIFSC_RISC_SECCFGR4   at 16#20# range 0 .. 31;
      RIFSC_RISC_SECCFGR5   at 16#24# range 0 .. 31;
      RIFSC_RISC_PRIVCFGR0  at 16#30# range 0 .. 31;
      RIFSC_RISC_PRIVCFGR1  at 16#34# range 0 .. 31;
      RIFSC_RISC_PRIVCFGR2  at 16#38# range 0 .. 31;
      RIFSC_RISC_PRIVCFGR3  at 16#3C# range 0 .. 31;
      RIFSC_RISC_PRIVCFGR4  at 16#40# range 0 .. 31;
      RIFSC_RISC_PRIVCFGR5  at 16#44# range 0 .. 31;
      RIFSC_RISC_RCFGLOCKR0 at 16#50# range 0 .. 31;
      RIFSC_RISC_RCFGLOCKR1 at 16#54# range 0 .. 31;
      RIFSC_RISC_RCFGLOCKR2 at 16#58# range 0 .. 31;
      RIFSC_RISC_RCFGLOCKR3 at 16#5C# range 0 .. 31;
      RIFSC_RISC_RCFGLOCKR4 at 16#60# range 0 .. 31;
      RIFSC_RISC_RCFGLOCKR5 at 16#64# range 0 .. 31;
      RIFSC_RIMC_CR         at 16#C00# range 0 .. 31;
      RIFSC_RIMC_ATTR0      at 16#C10# range 0 .. 31;
      RIFSC_RIMC_ATTR1      at 16#C14# range 0 .. 31;
      RIFSC_RIMC_ATTR2      at 16#C18# range 0 .. 31;
      RIFSC_RIMC_ATTR3      at 16#C1C# range 0 .. 31;
      RIFSC_RIMC_ATTR4      at 16#C20# range 0 .. 31;
      RIFSC_RIMC_ATTR5      at 16#C24# range 0 .. 31;
      RIFSC_RIMC_ATTR6      at 16#C28# range 0 .. 31;
      RIFSC_RIMC_ATTR7      at 16#C2C# range 0 .. 31;
      RIFSC_RIMC_ATTR8      at 16#C30# range 0 .. 31;
      RIFSC_RIMC_ATTR9      at 16#C34# range 0 .. 31;
      RIFSC_RIMC_ATTR10     at 16#C38# range 0 .. 31;
      RIFSC_RIMC_ATTR11     at 16#C3C# range 0 .. 31;
      RIFSC_PPSR0           at 16#FB0# range 0 .. 31;
      RIFSC_PPSR1           at 16#FB4# range 0 .. 31;
      RIFSC_PPSR2           at 16#FB8# range 0 .. 31;
      RIFSC_PPSR3           at 16#FBC# range 0 .. 31;
      RIFSC_PPSR4           at 16#FC0# range 0 .. 31;
      RIFSC_PPSR5           at 16#FC4# range 0 .. 31;
   end record;

   --  Resource isolation framework security controller
   RIFSC_Periph : aliased RIFSC_Peripheral
     with Import, Address => RIFSC_Base;

   --  Resource isolation framework security controller
   RIFSC_S_Periph : aliased RIFSC_Peripheral
     with Import, Address => RIFSC_S_Base;

end STM32_SVD.RIFSC;
