--  This spec has been automatically generated from STM32MP25_CM33.svd

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
      --  Global lock This bit locks the configuration of RIFSC RISC registers
      --  until next reset. This bit is cleared by default and, once set, it
      --  cannot be reset until global RIFSC reset.
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

   subtype RIFSC_RISC_PER0_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER0_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER0_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER0_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER0_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER0_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER0_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 0 CID configuration register
   type RIFSC_RISC_PER0_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER0_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER0_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER0_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER0_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 0 semaphore control register
   type RIFSC_RISC_PER0_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER0_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER0_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER1_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER1_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER1_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER1_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER1_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER1_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER1_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 1 CID configuration register
   type RIFSC_RISC_PER1_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER1_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER1_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER1_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER1_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 1 semaphore control register
   type RIFSC_RISC_PER1_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER1_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER1_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER2_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER2_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER2_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER2_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER2_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER2_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER2_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 2 CID configuration register
   type RIFSC_RISC_PER2_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER2_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER2_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER2_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER2_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 2 semaphore control register
   type RIFSC_RISC_PER2_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER2_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER2_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER3_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER3_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER3_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER3_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER3_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER3_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER3_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 3 CID configuration register
   type RIFSC_RISC_PER3_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER3_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER3_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER3_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER3_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 3 semaphore control register
   type RIFSC_RISC_PER3_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER3_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER3_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER4_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER4_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER4_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER4_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER4_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER4_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER4_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 4 CID configuration register
   type RIFSC_RISC_PER4_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER4_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER4_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER4_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER4_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 4 semaphore control register
   type RIFSC_RISC_PER4_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER4_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER4_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER5_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER5_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER5_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER5_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER5_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER5_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER5_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 5 CID configuration register
   type RIFSC_RISC_PER5_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER5_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER5_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER5_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER5_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 5 semaphore control register
   type RIFSC_RISC_PER5_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER5_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER5_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER6_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER6_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER6_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER6_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER6_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER6_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER6_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 6 CID configuration register
   type RIFSC_RISC_PER6_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER6_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER6_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER6_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER6_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 6 semaphore control register
   type RIFSC_RISC_PER6_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER6_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER6_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER7_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER7_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER7_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER7_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER7_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER7_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER7_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 7 CID configuration register
   type RIFSC_RISC_PER7_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER7_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER7_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER7_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER7_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 7 semaphore control register
   type RIFSC_RISC_PER7_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER7_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER7_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER8_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER8_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER8_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER8_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER8_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER8_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER8_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 8 CID configuration register
   type RIFSC_RISC_PER8_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER8_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER8_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER8_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER8_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 8 semaphore control register
   type RIFSC_RISC_PER8_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER8_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER8_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER9_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER9_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER9_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER9_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER9_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER9_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER9_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 9 CID configuration register
   type RIFSC_RISC_PER9_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER9_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER9_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER9_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER9_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 9 semaphore control register
   type RIFSC_RISC_PER9_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER9_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER9_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER10_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER10_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER10_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER10_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER10_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER10_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER10_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 10 CID configuration register
   type RIFSC_RISC_PER10_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER10_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER10_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER10_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER10_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 10 semaphore control register
   type RIFSC_RISC_PER10_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER10_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER10_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER11_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER11_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER11_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER11_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER11_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER11_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER11_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 11 CID configuration register
   type RIFSC_RISC_PER11_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER11_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER11_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER11_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER11_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 11 semaphore control register
   type RIFSC_RISC_PER11_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER11_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER11_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER12_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER12_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER12_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER12_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER12_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER12_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER12_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 12 CID configuration register
   type RIFSC_RISC_PER12_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER12_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER12_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER12_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER12_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 12 semaphore control register
   type RIFSC_RISC_PER12_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER12_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER12_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER13_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER13_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER13_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER13_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER13_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER13_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER13_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 13 CID configuration register
   type RIFSC_RISC_PER13_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER13_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER13_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER13_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER13_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 13 semaphore control register
   type RIFSC_RISC_PER13_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER13_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER13_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER14_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER14_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER14_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER14_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER14_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER14_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER14_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 14 CID configuration register
   type RIFSC_RISC_PER14_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER14_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER14_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER14_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER14_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 14 semaphore control register
   type RIFSC_RISC_PER14_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER14_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER14_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER15_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER15_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER15_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER15_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER15_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER15_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER15_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 15 CID configuration register
   type RIFSC_RISC_PER15_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER15_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER15_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER15_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER15_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 15 semaphore control register
   type RIFSC_RISC_PER15_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER15_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER15_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER16_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER16_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER16_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER16_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER16_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER16_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER16_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 16 CID configuration register
   type RIFSC_RISC_PER16_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER16_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER16_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER16_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER16_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 16 semaphore control register
   type RIFSC_RISC_PER16_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER16_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER16_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER17_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER17_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER17_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER17_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER17_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER17_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER17_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 17 CID configuration register
   type RIFSC_RISC_PER17_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER17_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER17_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER17_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER17_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 17 semaphore control register
   type RIFSC_RISC_PER17_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER17_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER17_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER18_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER18_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER18_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER18_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER18_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER18_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER18_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 18 CID configuration register
   type RIFSC_RISC_PER18_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER18_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER18_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER18_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER18_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 18 semaphore control register
   type RIFSC_RISC_PER18_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER18_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER18_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER19_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER19_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER19_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER19_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER19_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER19_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER19_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 19 CID configuration register
   type RIFSC_RISC_PER19_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER19_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER19_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER19_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER19_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 19 semaphore control register
   type RIFSC_RISC_PER19_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER19_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER19_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER20_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER20_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER20_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER20_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER20_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER20_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER20_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 20 CID configuration register
   type RIFSC_RISC_PER20_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER20_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER20_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER20_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER20_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 20 semaphore control register
   type RIFSC_RISC_PER20_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER20_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER20_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER21_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER21_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER21_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER21_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER21_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER21_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER21_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 21 CID configuration register
   type RIFSC_RISC_PER21_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER21_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER21_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER21_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER21_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 21 semaphore control register
   type RIFSC_RISC_PER21_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER21_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER21_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER22_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER22_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER22_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER22_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER22_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER22_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER22_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 22 CID configuration register
   type RIFSC_RISC_PER22_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER22_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER22_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER22_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER22_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 22 semaphore control register
   type RIFSC_RISC_PER22_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER22_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER22_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER23_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER23_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER23_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER23_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER23_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER23_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER23_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 23 CID configuration register
   type RIFSC_RISC_PER23_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER23_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER23_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER23_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER23_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 23 semaphore control register
   type RIFSC_RISC_PER23_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER23_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER23_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER24_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER24_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER24_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER24_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER24_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER24_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER24_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 24 CID configuration register
   type RIFSC_RISC_PER24_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER24_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER24_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER24_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER24_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 24 semaphore control register
   type RIFSC_RISC_PER24_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER24_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER24_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER25_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER25_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER25_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER25_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER25_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER25_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER25_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 25 CID configuration register
   type RIFSC_RISC_PER25_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER25_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER25_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER25_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER25_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 25 semaphore control register
   type RIFSC_RISC_PER25_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER25_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER25_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER26_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER26_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER26_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER26_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER26_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER26_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER26_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 26 CID configuration register
   type RIFSC_RISC_PER26_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER26_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER26_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER26_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER26_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 26 semaphore control register
   type RIFSC_RISC_PER26_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER26_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER26_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER27_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER27_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER27_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER27_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER27_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER27_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER27_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 27 CID configuration register
   type RIFSC_RISC_PER27_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER27_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER27_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER27_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER27_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 27 semaphore control register
   type RIFSC_RISC_PER27_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER27_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER27_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER28_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER28_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER28_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER28_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER28_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER28_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER28_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 28 CID configuration register
   type RIFSC_RISC_PER28_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER28_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER28_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER28_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER28_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 28 semaphore control register
   type RIFSC_RISC_PER28_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER28_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER28_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER29_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER29_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER29_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER29_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER29_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER29_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER29_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 29 CID configuration register
   type RIFSC_RISC_PER29_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER29_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER29_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER29_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER29_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 29 semaphore control register
   type RIFSC_RISC_PER29_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER29_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER29_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER30_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER30_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER30_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER30_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER30_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER30_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER30_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 30 CID configuration register
   type RIFSC_RISC_PER30_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER30_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER30_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER30_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER30_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 30 semaphore control register
   type RIFSC_RISC_PER30_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER30_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER30_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER31_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER31_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER31_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER31_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER31_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER31_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER31_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 31 CID configuration register
   type RIFSC_RISC_PER31_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER31_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER31_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER31_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER31_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 31 semaphore control register
   type RIFSC_RISC_PER31_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER31_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER31_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER32_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER32_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER32_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER32_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER32_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER32_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER32_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 32 CID configuration register
   type RIFSC_RISC_PER32_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER32_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER32_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER32_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER32_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 32 semaphore control register
   type RIFSC_RISC_PER32_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER32_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER32_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER33_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER33_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER33_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER33_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER33_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER33_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER33_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 33 CID configuration register
   type RIFSC_RISC_PER33_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER33_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER33_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER33_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER33_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 33 semaphore control register
   type RIFSC_RISC_PER33_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER33_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER33_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER34_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER34_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER34_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER34_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER34_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER34_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER34_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 34 CID configuration register
   type RIFSC_RISC_PER34_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER34_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER34_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER34_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER34_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 34 semaphore control register
   type RIFSC_RISC_PER34_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER34_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER34_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER35_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER35_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER35_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER35_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER35_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER35_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER35_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 35 CID configuration register
   type RIFSC_RISC_PER35_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER35_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER35_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER35_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER35_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 35 semaphore control register
   type RIFSC_RISC_PER35_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER35_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER35_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER36_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER36_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER36_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER36_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER36_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER36_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER36_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 36 CID configuration register
   type RIFSC_RISC_PER36_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER36_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER36_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER36_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER36_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 36 semaphore control register
   type RIFSC_RISC_PER36_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER36_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER36_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER37_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER37_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER37_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER37_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER37_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER37_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER37_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 37 CID configuration register
   type RIFSC_RISC_PER37_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER37_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER37_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER37_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER37_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 37 semaphore control register
   type RIFSC_RISC_PER37_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER37_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER37_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER38_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER38_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER38_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER38_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER38_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER38_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER38_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 38 CID configuration register
   type RIFSC_RISC_PER38_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER38_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER38_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER38_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER38_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 38 semaphore control register
   type RIFSC_RISC_PER38_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER38_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER38_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER39_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER39_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER39_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER39_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER39_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER39_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER39_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 39 CID configuration register
   type RIFSC_RISC_PER39_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER39_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER39_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER39_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER39_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 39 semaphore control register
   type RIFSC_RISC_PER39_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER39_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER39_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER40_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER40_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER40_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER40_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER40_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER40_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER40_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 40 CID configuration register
   type RIFSC_RISC_PER40_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER40_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER40_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER40_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER40_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 40 semaphore control register
   type RIFSC_RISC_PER40_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER40_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER40_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER41_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER41_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER41_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER41_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER41_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER41_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER41_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 41 CID configuration register
   type RIFSC_RISC_PER41_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER41_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER41_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER41_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER41_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 41 semaphore control register
   type RIFSC_RISC_PER41_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER41_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER41_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER42_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER42_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER42_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER42_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER42_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER42_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER42_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 42 CID configuration register
   type RIFSC_RISC_PER42_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER42_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER42_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER42_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER42_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 42 semaphore control register
   type RIFSC_RISC_PER42_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER42_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER42_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER43_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER43_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER43_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER43_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER43_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER43_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER43_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 43 CID configuration register
   type RIFSC_RISC_PER43_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER43_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER43_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER43_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER43_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 43 semaphore control register
   type RIFSC_RISC_PER43_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER43_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER43_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER44_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER44_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER44_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER44_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER44_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER44_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER44_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 44 CID configuration register
   type RIFSC_RISC_PER44_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER44_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER44_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER44_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER44_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 44 semaphore control register
   type RIFSC_RISC_PER44_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER44_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER44_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER45_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER45_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER45_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER45_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER45_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER45_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER45_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 45 CID configuration register
   type RIFSC_RISC_PER45_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER45_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER45_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER45_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER45_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 45 semaphore control register
   type RIFSC_RISC_PER45_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER45_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER45_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER46_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER46_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER46_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER46_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER46_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER46_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER46_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 46 CID configuration register
   type RIFSC_RISC_PER46_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER46_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER46_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER46_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER46_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 46 semaphore control register
   type RIFSC_RISC_PER46_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER46_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER46_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER47_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER47_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER47_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER47_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER47_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER47_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER47_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 47 CID configuration register
   type RIFSC_RISC_PER47_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER47_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER47_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER47_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER47_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 47 semaphore control register
   type RIFSC_RISC_PER47_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER47_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER47_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER48_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER48_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER48_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER48_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER48_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER48_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER48_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 48 CID configuration register
   type RIFSC_RISC_PER48_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER48_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER48_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER48_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER48_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 48 semaphore control register
   type RIFSC_RISC_PER48_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER48_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER48_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER49_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER49_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER49_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER49_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER49_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER49_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER49_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 49 CID configuration register
   type RIFSC_RISC_PER49_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER49_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER49_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER49_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER49_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 49 semaphore control register
   type RIFSC_RISC_PER49_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER49_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER49_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER50_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER50_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER50_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER50_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER50_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER50_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER50_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 50 CID configuration register
   type RIFSC_RISC_PER50_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER50_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER50_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER50_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER50_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 50 semaphore control register
   type RIFSC_RISC_PER50_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER50_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER50_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER51_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER51_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER51_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER51_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER51_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER51_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER51_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 51 CID configuration register
   type RIFSC_RISC_PER51_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER51_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER51_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER51_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER51_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 51 semaphore control register
   type RIFSC_RISC_PER51_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER51_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER51_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER52_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER52_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER52_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER52_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER52_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER52_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER52_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 52 CID configuration register
   type RIFSC_RISC_PER52_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER52_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER52_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER52_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER52_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 52 semaphore control register
   type RIFSC_RISC_PER52_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER52_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER52_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER53_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER53_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER53_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER53_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER53_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER53_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER53_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 53 CID configuration register
   type RIFSC_RISC_PER53_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER53_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER53_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER53_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER53_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 53 semaphore control register
   type RIFSC_RISC_PER53_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER53_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER53_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER54_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER54_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER54_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER54_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER54_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER54_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER54_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 54 CID configuration register
   type RIFSC_RISC_PER54_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER54_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER54_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER54_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER54_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 54 semaphore control register
   type RIFSC_RISC_PER54_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER54_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER54_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER55_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER55_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER55_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER55_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER55_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER55_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER55_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 55 CID configuration register
   type RIFSC_RISC_PER55_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER55_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER55_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER55_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER55_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 55 semaphore control register
   type RIFSC_RISC_PER55_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER55_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER55_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER56_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER56_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER56_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER56_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER56_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER56_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER56_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 56 CID configuration register
   type RIFSC_RISC_PER56_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER56_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER56_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER56_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER56_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 56 semaphore control register
   type RIFSC_RISC_PER56_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER56_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER56_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER57_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER57_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER57_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER57_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER57_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER57_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER57_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 57 CID configuration register
   type RIFSC_RISC_PER57_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER57_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER57_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER57_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER57_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 57 semaphore control register
   type RIFSC_RISC_PER57_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER57_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER57_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER58_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER58_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER58_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER58_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER58_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER58_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER58_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 58 CID configuration register
   type RIFSC_RISC_PER58_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER58_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER58_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER58_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER58_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 58 semaphore control register
   type RIFSC_RISC_PER58_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER58_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER58_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER59_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER59_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER59_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER59_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER59_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER59_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER59_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 59 CID configuration register
   type RIFSC_RISC_PER59_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER59_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER59_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER59_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER59_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 59 semaphore control register
   type RIFSC_RISC_PER59_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER59_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER59_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER60_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER60_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER60_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER60_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER60_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER60_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER60_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 60 CID configuration register
   type RIFSC_RISC_PER60_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER60_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER60_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER60_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER60_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 60 semaphore control register
   type RIFSC_RISC_PER60_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER60_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER60_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER61_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER61_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER61_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER61_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER61_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER61_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER61_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 61 CID configuration register
   type RIFSC_RISC_PER61_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER61_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER61_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER61_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER61_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 61 semaphore control register
   type RIFSC_RISC_PER61_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER61_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER61_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER62_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER62_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER62_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER62_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER62_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER62_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER62_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 62 CID configuration register
   type RIFSC_RISC_PER62_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER62_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER62_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER62_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER62_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 62 semaphore control register
   type RIFSC_RISC_PER62_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER62_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER62_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER63_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER63_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER63_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER63_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER63_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER63_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER63_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 63 CID configuration register
   type RIFSC_RISC_PER63_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER63_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER63_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER63_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER63_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 63 semaphore control register
   type RIFSC_RISC_PER63_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER63_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER63_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER64_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER64_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER64_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER64_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER64_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER64_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER64_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 64 CID configuration register
   type RIFSC_RISC_PER64_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER64_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER64_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER64_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER64_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 64 semaphore control register
   type RIFSC_RISC_PER64_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER64_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER64_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER65_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER65_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER65_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER65_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER65_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER65_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER65_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 65 CID configuration register
   type RIFSC_RISC_PER65_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER65_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER65_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER65_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER65_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 65 semaphore control register
   type RIFSC_RISC_PER65_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER65_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER65_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER66_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER66_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER66_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER66_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER66_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER66_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER66_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 66 CID configuration register
   type RIFSC_RISC_PER66_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER66_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER66_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER66_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER66_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 66 semaphore control register
   type RIFSC_RISC_PER66_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER66_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER66_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER67_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER67_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER67_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER67_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER67_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER67_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER67_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 67 CID configuration register
   type RIFSC_RISC_PER67_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER67_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER67_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER67_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER67_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 67 semaphore control register
   type RIFSC_RISC_PER67_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER67_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER67_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER68_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER68_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER68_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER68_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER68_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER68_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER68_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 68 CID configuration register
   type RIFSC_RISC_PER68_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER68_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER68_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER68_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER68_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 68 semaphore control register
   type RIFSC_RISC_PER68_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER68_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER68_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER69_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER69_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER69_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER69_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER69_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER69_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER69_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 69 CID configuration register
   type RIFSC_RISC_PER69_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER69_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER69_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER69_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER69_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 69 semaphore control register
   type RIFSC_RISC_PER69_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER69_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER69_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER70_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER70_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER70_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER70_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER70_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER70_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER70_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 70 CID configuration register
   type RIFSC_RISC_PER70_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER70_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER70_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER70_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER70_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 70 semaphore control register
   type RIFSC_RISC_PER70_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER70_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER70_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER71_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER71_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER71_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER71_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER71_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER71_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER71_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 71 CID configuration register
   type RIFSC_RISC_PER71_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER71_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER71_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER71_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER71_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 71 semaphore control register
   type RIFSC_RISC_PER71_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER71_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER71_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER72_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER72_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER72_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER72_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER72_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER72_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER72_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 72 CID configuration register
   type RIFSC_RISC_PER72_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER72_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER72_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER72_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER72_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 72 semaphore control register
   type RIFSC_RISC_PER72_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER72_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER72_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER73_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER73_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER73_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER73_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER73_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER73_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER73_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 73 CID configuration register
   type RIFSC_RISC_PER73_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER73_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER73_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER73_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER73_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 73 semaphore control register
   type RIFSC_RISC_PER73_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER73_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER73_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER74_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER74_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER74_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER74_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER74_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER74_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER74_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 74 CID configuration register
   type RIFSC_RISC_PER74_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER74_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER74_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER74_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER74_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 74 semaphore control register
   type RIFSC_RISC_PER74_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER74_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER74_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER75_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER75_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER75_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER75_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER75_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER75_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER75_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 75 CID configuration register
   type RIFSC_RISC_PER75_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER75_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER75_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER75_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER75_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 75 semaphore control register
   type RIFSC_RISC_PER75_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER75_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER75_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER76_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER76_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER76_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER76_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER76_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER76_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER76_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 76 CID configuration register
   type RIFSC_RISC_PER76_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER76_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER76_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER76_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER76_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 76 semaphore control register
   type RIFSC_RISC_PER76_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER76_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER76_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER77_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER77_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER77_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER77_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER77_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER77_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER77_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 77 CID configuration register
   type RIFSC_RISC_PER77_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER77_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER77_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER77_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER77_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 77 semaphore control register
   type RIFSC_RISC_PER77_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER77_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER77_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER78_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER78_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER78_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER78_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER78_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER78_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER78_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 78 CID configuration register
   type RIFSC_RISC_PER78_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER78_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER78_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER78_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER78_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 78 semaphore control register
   type RIFSC_RISC_PER78_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER78_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER78_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER79_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER79_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER79_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER79_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER79_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER79_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER79_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 79 CID configuration register
   type RIFSC_RISC_PER79_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER79_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER79_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER79_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER79_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 79 semaphore control register
   type RIFSC_RISC_PER79_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER79_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER79_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER80_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER80_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER80_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER80_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER80_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER80_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER80_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 80 CID configuration register
   type RIFSC_RISC_PER80_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER80_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER80_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER80_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER80_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 80 semaphore control register
   type RIFSC_RISC_PER80_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER80_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER80_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER81_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER81_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER81_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER81_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER81_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER81_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER81_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 81 CID configuration register
   type RIFSC_RISC_PER81_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER81_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER81_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER81_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER81_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 81 semaphore control register
   type RIFSC_RISC_PER81_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER81_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER81_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER82_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER82_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER82_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER82_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER82_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER82_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER82_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 82 CID configuration register
   type RIFSC_RISC_PER82_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER82_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER82_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER82_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER82_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 82 semaphore control register
   type RIFSC_RISC_PER82_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER82_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER82_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER83_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER83_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER83_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER83_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER83_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER83_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER83_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 83 CID configuration register
   type RIFSC_RISC_PER83_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER83_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER83_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER83_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER83_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 83 semaphore control register
   type RIFSC_RISC_PER83_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER83_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER83_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER84_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER84_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER84_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER84_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER84_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER84_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER84_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 84 CID configuration register
   type RIFSC_RISC_PER84_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER84_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER84_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER84_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER84_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 84 semaphore control register
   type RIFSC_RISC_PER84_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER84_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER84_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER85_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER85_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER85_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER85_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER85_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER85_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER85_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 85 CID configuration register
   type RIFSC_RISC_PER85_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER85_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER85_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER85_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER85_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 85 semaphore control register
   type RIFSC_RISC_PER85_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER85_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER85_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER86_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER86_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER86_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER86_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER86_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER86_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER86_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 86 CID configuration register
   type RIFSC_RISC_PER86_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER86_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER86_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER86_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER86_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 86 semaphore control register
   type RIFSC_RISC_PER86_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER86_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER86_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER87_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER87_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER87_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER87_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER87_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER87_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER87_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 87 CID configuration register
   type RIFSC_RISC_PER87_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER87_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER87_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER87_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER87_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 87 semaphore control register
   type RIFSC_RISC_PER87_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER87_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER87_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER88_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER88_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER88_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER88_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER88_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER88_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER88_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 88 CID configuration register
   type RIFSC_RISC_PER88_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER88_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER88_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER88_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER88_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 88 semaphore control register
   type RIFSC_RISC_PER88_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER88_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER88_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER89_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER89_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER89_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER89_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER89_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER89_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER89_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 89 CID configuration register
   type RIFSC_RISC_PER89_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER89_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER89_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER89_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER89_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 89 semaphore control register
   type RIFSC_RISC_PER89_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER89_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER89_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER90_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER90_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER90_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER90_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER90_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER90_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER90_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 90 CID configuration register
   type RIFSC_RISC_PER90_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER90_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER90_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER90_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER90_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 90 semaphore control register
   type RIFSC_RISC_PER90_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER90_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER90_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER91_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER91_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER91_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER91_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER91_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER91_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER91_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 91 CID configuration register
   type RIFSC_RISC_PER91_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER91_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER91_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER91_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER91_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 91 semaphore control register
   type RIFSC_RISC_PER91_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER91_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER91_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER92_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER92_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER92_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER92_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER92_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER92_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER92_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 92 CID configuration register
   type RIFSC_RISC_PER92_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER92_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER92_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER92_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER92_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 92 semaphore control register
   type RIFSC_RISC_PER92_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER92_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER92_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER93_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER93_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER93_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER93_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER93_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER93_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER93_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 93 CID configuration register
   type RIFSC_RISC_PER93_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER93_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER93_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER93_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER93_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 93 semaphore control register
   type RIFSC_RISC_PER93_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER93_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER93_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER94_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER94_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER94_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER94_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER94_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER94_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER94_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 94 CID configuration register
   type RIFSC_RISC_PER94_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER94_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER94_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER94_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER94_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 94 semaphore control register
   type RIFSC_RISC_PER94_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER94_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER94_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER95_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER95_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER95_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER95_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER95_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER95_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER95_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 95 CID configuration register
   type RIFSC_RISC_PER95_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER95_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER95_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER95_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER95_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 95 semaphore control register
   type RIFSC_RISC_PER95_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER95_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER95_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER96_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER96_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER96_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER96_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER96_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER96_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER96_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 96 CID configuration register
   type RIFSC_RISC_PER96_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER96_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER96_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER96_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER96_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 96 semaphore control register
   type RIFSC_RISC_PER96_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER96_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER96_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER97_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER97_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER97_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER97_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER97_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER97_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER97_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 97 CID configuration register
   type RIFSC_RISC_PER97_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER97_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER97_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER97_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER97_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 97 semaphore control register
   type RIFSC_RISC_PER97_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER97_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER97_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER98_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER98_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER98_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER98_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER98_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER98_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER98_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 98 CID configuration register
   type RIFSC_RISC_PER98_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER98_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER98_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER98_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER98_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 98 semaphore control register
   type RIFSC_RISC_PER98_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER98_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER98_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER99_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER99_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER99_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER99_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER99_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER99_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER99_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 99 CID configuration register
   type RIFSC_RISC_PER99_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER99_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER99_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER99_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER99_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 99 semaphore control register
   type RIFSC_RISC_PER99_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER99_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER99_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER100_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER100_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER100_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER100_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER100_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER100_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER100_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 100 CID configuration register
   type RIFSC_RISC_PER100_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER100_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER100_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER100_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER100_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 100 semaphore control register
   type RIFSC_RISC_PER100_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER100_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER100_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER101_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER101_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER101_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER101_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER101_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER101_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER101_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 101 CID configuration register
   type RIFSC_RISC_PER101_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER101_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER101_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER101_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER101_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 101 semaphore control register
   type RIFSC_RISC_PER101_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER101_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER101_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER102_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER102_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER102_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER102_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER102_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER102_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER102_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 102 CID configuration register
   type RIFSC_RISC_PER102_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER102_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER102_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER102_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER102_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 102 semaphore control register
   type RIFSC_RISC_PER102_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER102_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER102_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER103_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER103_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER103_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER103_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER103_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER103_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER103_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 103 CID configuration register
   type RIFSC_RISC_PER103_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER103_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER103_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER103_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER103_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 103 semaphore control register
   type RIFSC_RISC_PER103_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER103_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER103_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER104_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER104_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER104_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER104_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER104_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER104_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER104_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 104 CID configuration register
   type RIFSC_RISC_PER104_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER104_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER104_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER104_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER104_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 104 semaphore control register
   type RIFSC_RISC_PER104_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER104_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER104_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER105_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER105_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER105_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER105_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER105_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER105_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER105_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 105 CID configuration register
   type RIFSC_RISC_PER105_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER105_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER105_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER105_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER105_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 105 semaphore control register
   type RIFSC_RISC_PER105_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER105_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER105_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER106_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER106_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER106_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER106_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER106_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER106_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER106_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 106 CID configuration register
   type RIFSC_RISC_PER106_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER106_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER106_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER106_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER106_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 106 semaphore control register
   type RIFSC_RISC_PER106_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER106_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER106_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER107_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER107_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER107_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER107_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER107_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER107_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER107_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 107 CID configuration register
   type RIFSC_RISC_PER107_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER107_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER107_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER107_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER107_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 107 semaphore control register
   type RIFSC_RISC_PER107_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER107_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER107_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER108_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER108_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER108_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER108_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER108_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER108_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER108_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 108 CID configuration register
   type RIFSC_RISC_PER108_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER108_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER108_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER108_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER108_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 108 semaphore control register
   type RIFSC_RISC_PER108_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER108_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER108_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER109_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER109_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER109_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER109_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER109_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER109_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER109_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 109 CID configuration register
   type RIFSC_RISC_PER109_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER109_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER109_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER109_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER109_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 109 semaphore control register
   type RIFSC_RISC_PER109_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER109_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER109_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER110_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER110_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER110_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER110_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER110_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER110_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER110_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 110 CID configuration register
   type RIFSC_RISC_PER110_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER110_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER110_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER110_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER110_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 110 semaphore control register
   type RIFSC_RISC_PER110_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER110_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER110_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER111_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER111_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER111_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER111_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER111_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER111_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER111_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 111 CID configuration register
   type RIFSC_RISC_PER111_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER111_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER111_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER111_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER111_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 111 semaphore control register
   type RIFSC_RISC_PER111_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER111_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER111_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER112_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER112_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER112_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER112_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER112_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER112_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER112_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 112 CID configuration register
   type RIFSC_RISC_PER112_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER112_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER112_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER112_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER112_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 112 semaphore control register
   type RIFSC_RISC_PER112_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER112_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER112_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER113_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER113_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER113_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER113_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER113_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER113_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER113_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 113 CID configuration register
   type RIFSC_RISC_PER113_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER113_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER113_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER113_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER113_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 113 semaphore control register
   type RIFSC_RISC_PER113_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER113_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER113_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER114_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER114_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER114_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER114_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER114_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER114_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER114_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 114 CID configuration register
   type RIFSC_RISC_PER114_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER114_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER114_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER114_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER114_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 114 semaphore control register
   type RIFSC_RISC_PER114_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER114_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER114_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER115_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER115_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER115_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER115_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER115_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER115_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER115_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 115 CID configuration register
   type RIFSC_RISC_PER115_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER115_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER115_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER115_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER115_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 115 semaphore control register
   type RIFSC_RISC_PER115_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER115_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER115_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER116_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER116_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER116_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER116_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER116_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER116_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER116_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 116 CID configuration register
   type RIFSC_RISC_PER116_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER116_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER116_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER116_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER116_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 116 semaphore control register
   type RIFSC_RISC_PER116_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER116_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER116_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER117_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER117_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER117_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER117_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER117_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER117_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER117_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 117 CID configuration register
   type RIFSC_RISC_PER117_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER117_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER117_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER117_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER117_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 117 semaphore control register
   type RIFSC_RISC_PER117_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER117_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER117_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER118_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER118_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER118_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER118_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER118_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER118_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER118_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 118 CID configuration register
   type RIFSC_RISC_PER118_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER118_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER118_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER118_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER118_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 118 semaphore control register
   type RIFSC_RISC_PER118_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER118_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER118_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER119_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER119_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER119_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER119_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER119_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER119_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER119_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 119 CID configuration register
   type RIFSC_RISC_PER119_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER119_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER119_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER119_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER119_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 119 semaphore control register
   type RIFSC_RISC_PER119_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER119_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER119_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER120_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER120_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER120_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER120_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER120_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER120_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER120_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 120 CID configuration register
   type RIFSC_RISC_PER120_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER120_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER120_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER120_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER120_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 120 semaphore control register
   type RIFSC_RISC_PER120_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER120_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER120_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER121_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER121_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER121_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER121_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER121_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER121_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER121_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 121 CID configuration register
   type RIFSC_RISC_PER121_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER121_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER121_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER121_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER121_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 121 semaphore control register
   type RIFSC_RISC_PER121_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER121_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER121_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER122_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER122_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER122_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER122_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER122_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER122_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER122_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 122 CID configuration register
   type RIFSC_RISC_PER122_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER122_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER122_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER122_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER122_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 122 semaphore control register
   type RIFSC_RISC_PER122_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER122_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER122_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER123_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER123_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER123_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER123_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER123_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER123_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER123_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 123 CID configuration register
   type RIFSC_RISC_PER123_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER123_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER123_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER123_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER123_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 123 semaphore control register
   type RIFSC_RISC_PER123_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER123_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER123_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER124_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER124_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER124_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER124_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER124_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER124_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER124_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 124 CID configuration register
   type RIFSC_RISC_PER124_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER124_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER124_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER124_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER124_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 124 semaphore control register
   type RIFSC_RISC_PER124_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER124_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER124_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER125_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER125_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER125_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER125_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER125_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER125_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER125_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 125 CID configuration register
   type RIFSC_RISC_PER125_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER125_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER125_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER125_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER125_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 125 semaphore control register
   type RIFSC_RISC_PER125_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER125_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER125_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER126_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER126_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER126_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER126_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER126_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER126_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER126_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 126 CID configuration register
   type RIFSC_RISC_PER126_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER126_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER126_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER126_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER126_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 126 semaphore control register
   type RIFSC_RISC_PER126_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER126_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER126_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_PER127_CIDCFGR_SCID_Field is HAL.UInt3;

   --  RIFSC_RISC_PER127_CIDCFGR_SEMWLC array
   type RIFSC_RISC_PER127_CIDCFGR_SEMWLC_Field_Array is array (0 .. 7)
     of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RIFSC_RISC_PER127_CIDCFGR_SEMWLC
   type RIFSC_RISC_PER127_CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEMWLC as an array
            Arr : RIFSC_RISC_PER127_CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RIFSC_RISC_PER127_CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RIFSC RISC slave peripheral 127 CID configuration register
   type RIFSC_RISC_PER127_CIDCFGR_Register is record
      --  CID filtering enable For any CFEN value, access controls to
      --  peripheral y defined in RIFSC_RISC_PRIVCFGRx and RIFSC_RISC_SECCFGRx
      --  always apply. Note: When this bit is cleared from 1 by the trusted
      --  domain application, SEM_MUTEX is cleared to zero by RISC.
      CFEN           : Boolean := False;
      --  Semaphore enable to SEMCID in RIFSC_RISC_PERy_SEMCR. Note: This bit
      --  is not taken into account by RISC if the compartment filtering is off
      --  (CFEN = 0). When this bit is cleared from 1 by the trusted domain
      --  application, SEM_MUTEX is cleared to zero by RISC.
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Static CID The trusted domain application uses this bit field to
      --  statically define which compartment has access to the peripheral y
      --  when SEM_EN = 0. This CID is not taken into account by RISC when the
      --  semaphore is enabled Note: (SEM_EN = 1) or compartment filtering is
      --  off (CFEN = 0).
      SCID           : RIFSC_RISC_PER127_CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : HAL.UInt9 := 16#0#;
      --  Semaphore white list for compartment i Note: This bit is not taken
      --  into account by RISC when the semaphore is disabled (SEM_EN=0) or
      --  compartment filtering is off (CFEN=0).
      SEMWLC         : RIFSC_RISC_PER127_CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER127_CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_RISC_PER127_SEMCR_SEMCID_Field is HAL.UInt3;

   --  RIFSC RISC slave peripheral 127 semaphore control register
   type RIFSC_RISC_PER127_SEMCR_Register is record
      --  Semaphore mutex A white-listed application can set this bit to get
      --  exclusive access to peripheral y when SEM_EN is set in
      --  RIFSC_RISC_PERy_CIDCFGR (writes are ignored otherwise). Read 0:
      --  Semaphore is free to take. Read 1: Semaphore is taken. Write 0:
      --  Release semaphore. Write 1: Acquire semaphore. Note: When SEM_MUTEX =
      --  0, only applications belonging to white-listed compartments (defined
      --  with SEMWLCi bits in RIFSC_RISC_PERy_CIDCFGR) can acquire this
      --  semaphore. Note: When SEM_MUTEX = 1, only applications belonging to
      --  compartment SEMCID can release this semaphore. Note: This bit is
      --  cleared when CFEN or SEM_EN are cleared from 1 by the trusted domain
      --  application in RIFSC_RISC_PERy_CIDCFGR.
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID When SEM_EN and CFEN are set in
      --  RIFSC_RISC_PERy_CIDCFGR, this read-only bit field is updated with the
      --  CID value of the latest successful acquisition of
      --  RIFSC_RISC_PERy_SEMCR semaphore (SEM_MUTEX = 1). In all the other
      --  cases, this bit field stays unchanged.
      SEMCID        : RIFSC_RISC_PER127_SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_PER127_SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RIFSC_RISC_REG1_ACFGR_SRCID_Field is HAL.UInt3;

   --  RIFSC RISAL memory region 1 subregion z configuration register
   type RIFSC_RISC_REG1_ACFGR_Register is record
      --  Subregion enable
      SREN           : Boolean := True;
      --  Resource lock This bit is set to lock this subregion resource. This
      --  bit is set once, cleared only by RIFSC reset.
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Subregion CID When SREN = 1, this bit field defines which compartment
      --  has access to the subregion z of region x.
      SRCID          : RIFSC_RISC_REG1_ACFGR_SRCID_Field := 16#2#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Secure subregion This bit is taken into account only if SREN = 1.
      --  Note: Access control defined by PRIV and SRCID[2:0] also apply.
      SEC            : Boolean := False;
      --  Privileged subregion This bit is taken into account only if SREN = 1.
      --  Note: Access control defined by SEC and SRCID[2:0] also apply.
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_REG1_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RIFSC_RISC_REG1_BCFGR_SRCID_Field is HAL.UInt3;

   --  RIFSC RISAL memory region 1 subregion z configuration register
   type RIFSC_RISC_REG1_BCFGR_Register is record
      --  Subregion enable
      SREN           : Boolean := True;
      --  Resource lock This bit is set to lock this subregion resource. This
      --  bit is set once, cleared only by RIFSC reset.
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Subregion CID When SREN = 1, this bit field defines which compartment
      --  has access to the subregion z of region x.
      SRCID          : RIFSC_RISC_REG1_BCFGR_SRCID_Field := 16#3#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Secure subregion This bit is taken into account only if SREN = 1.
      --  Note: Access control defined by PRIV and SRCID[2:0] also apply.
      SEC            : Boolean := False;
      --  Privileged subregion This bit is taken into account only if SREN = 1.
      --  Note: Access control defined by SEC and SRCID[2:0] also apply.
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_REG1_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RIFSC_RISC_REG2_ACFGR_SRCID_Field is HAL.UInt3;

   --  RIFSC RISAL memory region 2 subregion z configuration register
   type RIFSC_RISC_REG2_ACFGR_Register is record
      --  Subregion enable
      SREN           : Boolean := True;
      --  Resource lock This bit is set to lock this subregion resource. This
      --  bit is set once, cleared only by RIFSC reset.
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Subregion CID When SREN = 1, this bit field defines which compartment
      --  has access to the subregion z of region x.
      SRCID          : RIFSC_RISC_REG2_ACFGR_SRCID_Field := 16#2#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Secure subregion This bit is taken into account only if SREN = 1.
      --  Note: Access control defined by PRIV and SRCID[2:0] also apply.
      SEC            : Boolean := False;
      --  Privileged subregion This bit is taken into account only if SREN = 1.
      --  Note: Access control defined by SEC and SRCID[2:0] also apply.
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_REG2_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RIFSC_RISC_REG2_BCFGR_SRCID_Field is HAL.UInt3;

   --  RIFSC RISAL memory region 2 subregion z configuration register
   type RIFSC_RISC_REG2_BCFGR_Register is record
      --  Subregion enable
      SREN           : Boolean := True;
      --  Resource lock This bit is set to lock this subregion resource. This
      --  bit is set once, cleared only by RIFSC reset.
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Subregion CID When SREN = 1, this bit field defines which compartment
      --  has access to the subregion z of region x.
      SRCID          : RIFSC_RISC_REG2_BCFGR_SRCID_Field := 16#3#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Secure subregion This bit is taken into account only if SREN = 1.
      --  Note: Access control defined by PRIV and SRCID[2:0] also apply.
      SEC            : Boolean := False;
      --  Privileged subregion This bit is taken into account only if SREN = 1.
      --  Note: Access control defined by SEC and SRCID[2:0] also apply.
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_REG2_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RIFSC_RISC_REG3_ACFGR_SRCID_Field is HAL.UInt3;

   --  RIFSC RISAL memory region 3 subregion z configuration register
   type RIFSC_RISC_REG3_ACFGR_Register is record
      --  Subregion enable
      SREN           : Boolean := True;
      --  Resource lock This bit is set to lock this subregion resource. This
      --  bit is set once, cleared only by RIFSC reset.
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Subregion CID When SREN = 1, this bit field defines which compartment
      --  has access to the subregion z of region x.
      SRCID          : RIFSC_RISC_REG3_ACFGR_SRCID_Field := 16#2#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Secure subregion This bit is taken into account only if SREN = 1.
      --  Note: Access control defined by PRIV and SRCID[2:0] also apply.
      SEC            : Boolean := False;
      --  Privileged subregion This bit is taken into account only if SREN = 1.
      --  Note: Access control defined by SEC and SRCID[2:0] also apply.
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_REG3_ACFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RIFSC_RISC_REG3_BCFGR_SRCID_Field is HAL.UInt3;

   --  RIFSC RISAL memory region 3 subregion z configuration register
   type RIFSC_RISC_REG3_BCFGR_Register is record
      --  Subregion enable
      SREN           : Boolean := True;
      --  Resource lock This bit is set to lock this subregion resource. This
      --  bit is set once, cleared only by RIFSC reset.
      RLOCK          : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Subregion CID When SREN = 1, this bit field defines which compartment
      --  has access to the subregion z of region x.
      SRCID          : RIFSC_RISC_REG3_BCFGR_SRCID_Field := 16#3#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Secure subregion This bit is taken into account only if SREN = 1.
      --  Note: Access control defined by PRIV and SRCID[2:0] also apply.
      SEC            : Boolean := False;
      --  Privileged subregion This bit is taken into account only if SREN = 1.
      --  Note: Access control defined by SEC and SRCID[2:0] also apply.
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RISC_REG3_BCFGR_Register use record
      SREN           at 0 range 0 .. 0;
      RLOCK          at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SRCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC            at 0 range 8 .. 8;
      PRIV           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RIFSC_RIMC_CR_TDCID_Field is HAL.UInt3;
   subtype RIFSC_RIMC_CR_DAPCID_Field is HAL.UInt3;

   --  RIFSC RIMC master configuration register
   type RIFSC_RIMC_CR_Register is record
      --  Global lock This bit is used to lock the configuration of RIFSC RIMC
      --  registers until next reset. This bit is cleared by default and, once
      --  set, it cannot be reset until global RIFSC reset. Note: Secure
      --  privileged write access only. Write only by debug domain and trusted
      --  domain CIDs, as defined in this register.
      GLOCK          : Boolean := False;
      --  Wake-up CPU done Setting this bit deactivates the wake-up CPU
      --  mechanism described in Section5.2: Resource isolation framework
      --  (RIF). Reading this bit always returns zero. Note: Secure privileged
      --  write access only. Write only by debug domain and trusted domain
      --  CIDs, as defined in this register (including this bit).
      WUCDONE        : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Read-Write-once. Trusted domain compartment ID Master with this
      --  compartment ID runs the application with the highest level of trust.
      --  TDCID[2:0] value is distributed in all the device. This bit field is
      --  write once (subsequent writes are ignored). Note: Secure privileged
      --  write access only. Write only by debug domain and trusted domain
      --  CIDs, as defined in this register.
      TDCID          : RIFSC_RIMC_CR_TDCID_Field := 16#1#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Debug access port compartment ID This bit field defines the CID of
      --  the DAP when GDPEN is set in RIFSC_RIMC_SR. When DAPCID[2:0] = 0x7,
      --  debugging tools have the highest level of debug access, if secure
      --  global debug profile is enabled in the BSEC peripheral. When GDPEN =
      --  0, DAPCID[2:0] can be written by trusted application (TDCID secure
      --  privileged). When GDPEN = 1, the DAP can also change this bit field
      --  regardless of the access type (secure, non-secure, privileged, or
      --  unprivileged).
      DAPCID         : RIFSC_RIMC_CR_DAPCID_Field := 16#7#;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  Read-only. Debug domain enable This read-only bit gives the status on
      --  the debug domain feature availability on this device.
      DDEN           : Boolean := True;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RIMC_CR_Register use record
      GLOCK          at 0 range 0 .. 0;
      WUCDONE        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      TDCID          at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DAPCID         at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      DDEN           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RIFSC RIMC master status register
   type RIFSC_RIMC_SR_Register is record
      --  Read-only. Global debug profile enable This read-only bit is set when
      --  the global-debug profile is activated in the device (CPU and MCU
      --  debugging allowed).
      GDPEN         : Boolean;
      --  Read-only. Wake-up CPU enable This read-only bit is set when the
      --  application properly initializes the wake-up CPU mechanism described
      --  in Section5.2: Resource isolation framework (RIF).
      WUCEN         : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RIMC_SR_Register use record
      GDPEN         at 0 range 0 .. 0;
      WUCEN         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype RIFSC_RIMC_ATTR_MCID_Field is HAL.UInt3;

   --  RIFSC RIMC master attribute register 0
   type RIFSC_RIMC_ATTR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  CID selection
      CIDSEL         : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Master CID Value of the CID flag on the interconnect for this master,
      --  programmed by the trusted domain. Valid only if indicated in RIF
      --  masters table in Section8.3. This bit field is not taken into account
      --  when CIDSEL = 0 in this register. This bit field cannot be written
      --  with a value of 0x7 (write to MCID[2:0] is ignored).
      MCID           : RIFSC_RIMC_ATTR_MCID_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Master secure Value of the secure flag on the interconnect for this
      --  master, programmed by the trusted domain.
      MSEC           : Boolean := False;
      --  Master privileged Value of the privileged flag on the interconnect
      --  for this master, programmed by the trusted domain.
      MPRIV          : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_RIMC_ATTR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      CIDSEL         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
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

   subtype RIFSC_HWCFGR2_CFG1_Field is HAL.UInt16;
   --  RIFSC_HWCFGR2_CFG array element
   subtype RIFSC_HWCFGR2_CFG_Element is HAL.UInt8;

   --  RIFSC_HWCFGR2_CFG array
   type RIFSC_HWCFGR2_CFG_Field_Array is array (2 .. 3)
     of RIFSC_HWCFGR2_CFG_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for RIFSC_HWCFGR2_CFG
   type RIFSC_HWCFGR2_CFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : HAL.UInt16;
         when True =>
            --  CFG as an array
            Arr : RIFSC_HWCFGR2_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for RIFSC_HWCFGR2_CFG_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  RIFSC hardware configuration register 2
   type RIFSC_HWCFGR2_Register is record
      --  Read-only. Hardware configuration 1 This bit field returns the
      --  generic value NUM_SP (0x80).
      CFG1 : RIFSC_HWCFGR2_CFG1_Field;
      --  Read-only. Hardware configuration 2 This bit field returns the
      --  generic value NUM_MP (0x10).
      CFG  : RIFSC_HWCFGR2_CFG_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_HWCFGR2_Register use record
      CFG1 at 0 range 0 .. 15;
      CFG  at 0 range 16 .. 31;
   end record;

   --  RIFSC_HWCFGR1_CFG array element
   subtype RIFSC_HWCFGR1_CFG_Element is HAL.UInt4;

   --  RIFSC_HWCFGR1_CFG array
   type RIFSC_HWCFGR1_CFG_Field_Array is array (1 .. 6)
     of RIFSC_HWCFGR1_CFG_Element
     with Component_Size => 4, Size => 24;

   --  Type definition for RIFSC_HWCFGR1_CFG
   type RIFSC_HWCFGR1_CFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : HAL.UInt24;
         when True =>
            --  CFG as an array
            Arr : RIFSC_HWCFGR1_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for RIFSC_HWCFGR1_CFG_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  RIFSC hardware configuration register 1
   type RIFSC_HWCFGR1_Register is record
      --  Read-only. Hardware configuration 1 This bit field returns the
      --  generic value RIF_ENABLED.
      CFG            : RIFSC_HWCFGR1_CFG_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_HWCFGR1_Register use record
      CFG            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype RIFSC_VERR_MINREV_Field is HAL.UInt4;
   subtype RIFSC_VERR_MAJREV_Field is HAL.UInt4;

   --  RIFSC version register
   type RIFSC_VERR_Register is record
      --  Read-only. RIFSC minor revision
      MINREV        : RIFSC_VERR_MINREV_Field;
      --  Read-only. RIFSC major revision
      MAJREV        : RIFSC_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIFSC_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RIFSC register block
   type RIFSC_Peripheral is record
      --  RIFSC RISC slave configuration register x
      RIFSC_RISC_CR             : aliased RIFSC_RISC_CR_Register;
      --  RIFSC RISC slave security configuration register 0
      RIFSC_RISC_SECCFGR0       : aliased RIFSC_RISC_SECCFGR0_Register;
      --  RIFSC RISC slave security configuration register 1
      RIFSC_RISC_SECCFGR1       : aliased RIFSC_RISC_SECCFGR1_Register;
      --  RIFSC RISC slave security configuration register 2
      RIFSC_RISC_SECCFGR2       : aliased RIFSC_RISC_SECCFGR2_Register;
      --  RIFSC RISC slave security configuration register 3
      RIFSC_RISC_SECCFGR3       : aliased RIFSC_RISC_SECCFGR3_Register;
      --  RIFSC RISC slave security configuration register 4
      RIFSC_RISC_SECCFGR4       : aliased RIFSC_RISC_SECCFGR4_Register;
      --  RIFSC RISC slave security configuration register 5
      RIFSC_RISC_SECCFGR5       : aliased RIFSC_RISC_SECCFGR5_Register;
      --  RIFSC RISFC slave privileged register 0
      RIFSC_RISC_PRIVCFGR0      : aliased RIFSC_RISC_PRIVCFGR0_Register;
      --  RIFSC RISFC slave privileged register 1
      RIFSC_RISC_PRIVCFGR1      : aliased RIFSC_RISC_PRIVCFGR1_Register;
      --  RIFSC RISFC slave privileged register 2
      RIFSC_RISC_PRIVCFGR2      : aliased RIFSC_RISC_PRIVCFGR2_Register;
      --  RIFSC RISFC slave privileged register 3
      RIFSC_RISC_PRIVCFGR3      : aliased RIFSC_RISC_PRIVCFGR3_Register;
      --  RIFSC RISFC slave privileged register 4
      RIFSC_RISC_PRIVCFGR4      : aliased RIFSC_RISC_PRIVCFGR4_Register;
      --  RIFSC RISFC slave privileged register 5
      RIFSC_RISC_PRIVCFGR5      : aliased RIFSC_RISC_PRIVCFGR5_Register;
      --  RIFSC RISC slave resource configuration lock register 0
      RIFSC_RISC_RCFGLOCKR0     : aliased RIFSC_RISC_RCFGLOCKR0_Register;
      --  RIFSC RISC slave resource configuration lock register 1
      RIFSC_RISC_RCFGLOCKR1     : aliased RIFSC_RISC_RCFGLOCKR1_Register;
      --  RIFSC RISC slave resource configuration lock register 2
      RIFSC_RISC_RCFGLOCKR2     : aliased RIFSC_RISC_RCFGLOCKR2_Register;
      --  RIFSC RISC slave resource configuration lock register 3
      RIFSC_RISC_RCFGLOCKR3     : aliased RIFSC_RISC_RCFGLOCKR3_Register;
      --  RIFSC RISC slave resource configuration lock register 4
      RIFSC_RISC_RCFGLOCKR4     : aliased RIFSC_RISC_RCFGLOCKR4_Register;
      --  RIFSC RISC slave resource configuration lock register 5
      RIFSC_RISC_RCFGLOCKR5     : aliased RIFSC_RISC_RCFGLOCKR5_Register;
      --  RIFSC RISC slave peripheral 0 CID configuration register
      RIFSC_RISC_PER0_CIDCFGR   : aliased RIFSC_RISC_PER0_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 0 semaphore control register
      RIFSC_RISC_PER0_SEMCR     : aliased RIFSC_RISC_PER0_SEMCR_Register;
      --  RIFSC RISC slave peripheral 1 CID configuration register
      RIFSC_RISC_PER1_CIDCFGR   : aliased RIFSC_RISC_PER1_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 1 semaphore control register
      RIFSC_RISC_PER1_SEMCR     : aliased RIFSC_RISC_PER1_SEMCR_Register;
      --  RIFSC RISC slave peripheral 2 CID configuration register
      RIFSC_RISC_PER2_CIDCFGR   : aliased RIFSC_RISC_PER2_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 2 semaphore control register
      RIFSC_RISC_PER2_SEMCR     : aliased RIFSC_RISC_PER2_SEMCR_Register;
      --  RIFSC RISC slave peripheral 3 CID configuration register
      RIFSC_RISC_PER3_CIDCFGR   : aliased RIFSC_RISC_PER3_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 3 semaphore control register
      RIFSC_RISC_PER3_SEMCR     : aliased RIFSC_RISC_PER3_SEMCR_Register;
      --  RIFSC RISC slave peripheral 4 CID configuration register
      RIFSC_RISC_PER4_CIDCFGR   : aliased RIFSC_RISC_PER4_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 4 semaphore control register
      RIFSC_RISC_PER4_SEMCR     : aliased RIFSC_RISC_PER4_SEMCR_Register;
      --  RIFSC RISC slave peripheral 5 CID configuration register
      RIFSC_RISC_PER5_CIDCFGR   : aliased RIFSC_RISC_PER5_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 5 semaphore control register
      RIFSC_RISC_PER5_SEMCR     : aliased RIFSC_RISC_PER5_SEMCR_Register;
      --  RIFSC RISC slave peripheral 6 CID configuration register
      RIFSC_RISC_PER6_CIDCFGR   : aliased RIFSC_RISC_PER6_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 6 semaphore control register
      RIFSC_RISC_PER6_SEMCR     : aliased RIFSC_RISC_PER6_SEMCR_Register;
      --  RIFSC RISC slave peripheral 7 CID configuration register
      RIFSC_RISC_PER7_CIDCFGR   : aliased RIFSC_RISC_PER7_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 7 semaphore control register
      RIFSC_RISC_PER7_SEMCR     : aliased RIFSC_RISC_PER7_SEMCR_Register;
      --  RIFSC RISC slave peripheral 8 CID configuration register
      RIFSC_RISC_PER8_CIDCFGR   : aliased RIFSC_RISC_PER8_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 8 semaphore control register
      RIFSC_RISC_PER8_SEMCR     : aliased RIFSC_RISC_PER8_SEMCR_Register;
      --  RIFSC RISC slave peripheral 9 CID configuration register
      RIFSC_RISC_PER9_CIDCFGR   : aliased RIFSC_RISC_PER9_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 9 semaphore control register
      RIFSC_RISC_PER9_SEMCR     : aliased RIFSC_RISC_PER9_SEMCR_Register;
      --  RIFSC RISC slave peripheral 10 CID configuration register
      RIFSC_RISC_PER10_CIDCFGR  : aliased RIFSC_RISC_PER10_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 10 semaphore control register
      RIFSC_RISC_PER10_SEMCR    : aliased RIFSC_RISC_PER10_SEMCR_Register;
      --  RIFSC RISC slave peripheral 11 CID configuration register
      RIFSC_RISC_PER11_CIDCFGR  : aliased RIFSC_RISC_PER11_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 11 semaphore control register
      RIFSC_RISC_PER11_SEMCR    : aliased RIFSC_RISC_PER11_SEMCR_Register;
      --  RIFSC RISC slave peripheral 12 CID configuration register
      RIFSC_RISC_PER12_CIDCFGR  : aliased RIFSC_RISC_PER12_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 12 semaphore control register
      RIFSC_RISC_PER12_SEMCR    : aliased RIFSC_RISC_PER12_SEMCR_Register;
      --  RIFSC RISC slave peripheral 13 CID configuration register
      RIFSC_RISC_PER13_CIDCFGR  : aliased RIFSC_RISC_PER13_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 13 semaphore control register
      RIFSC_RISC_PER13_SEMCR    : aliased RIFSC_RISC_PER13_SEMCR_Register;
      --  RIFSC RISC slave peripheral 14 CID configuration register
      RIFSC_RISC_PER14_CIDCFGR  : aliased RIFSC_RISC_PER14_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 14 semaphore control register
      RIFSC_RISC_PER14_SEMCR    : aliased RIFSC_RISC_PER14_SEMCR_Register;
      --  RIFSC RISC slave peripheral 15 CID configuration register
      RIFSC_RISC_PER15_CIDCFGR  : aliased RIFSC_RISC_PER15_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 15 semaphore control register
      RIFSC_RISC_PER15_SEMCR    : aliased RIFSC_RISC_PER15_SEMCR_Register;
      --  RIFSC RISC slave peripheral 16 CID configuration register
      RIFSC_RISC_PER16_CIDCFGR  : aliased RIFSC_RISC_PER16_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 16 semaphore control register
      RIFSC_RISC_PER16_SEMCR    : aliased RIFSC_RISC_PER16_SEMCR_Register;
      --  RIFSC RISC slave peripheral 17 CID configuration register
      RIFSC_RISC_PER17_CIDCFGR  : aliased RIFSC_RISC_PER17_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 17 semaphore control register
      RIFSC_RISC_PER17_SEMCR    : aliased RIFSC_RISC_PER17_SEMCR_Register;
      --  RIFSC RISC slave peripheral 18 CID configuration register
      RIFSC_RISC_PER18_CIDCFGR  : aliased RIFSC_RISC_PER18_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 18 semaphore control register
      RIFSC_RISC_PER18_SEMCR    : aliased RIFSC_RISC_PER18_SEMCR_Register;
      --  RIFSC RISC slave peripheral 19 CID configuration register
      RIFSC_RISC_PER19_CIDCFGR  : aliased RIFSC_RISC_PER19_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 19 semaphore control register
      RIFSC_RISC_PER19_SEMCR    : aliased RIFSC_RISC_PER19_SEMCR_Register;
      --  RIFSC RISC slave peripheral 20 CID configuration register
      RIFSC_RISC_PER20_CIDCFGR  : aliased RIFSC_RISC_PER20_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 20 semaphore control register
      RIFSC_RISC_PER20_SEMCR    : aliased RIFSC_RISC_PER20_SEMCR_Register;
      --  RIFSC RISC slave peripheral 21 CID configuration register
      RIFSC_RISC_PER21_CIDCFGR  : aliased RIFSC_RISC_PER21_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 21 semaphore control register
      RIFSC_RISC_PER21_SEMCR    : aliased RIFSC_RISC_PER21_SEMCR_Register;
      --  RIFSC RISC slave peripheral 22 CID configuration register
      RIFSC_RISC_PER22_CIDCFGR  : aliased RIFSC_RISC_PER22_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 22 semaphore control register
      RIFSC_RISC_PER22_SEMCR    : aliased RIFSC_RISC_PER22_SEMCR_Register;
      --  RIFSC RISC slave peripheral 23 CID configuration register
      RIFSC_RISC_PER23_CIDCFGR  : aliased RIFSC_RISC_PER23_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 23 semaphore control register
      RIFSC_RISC_PER23_SEMCR    : aliased RIFSC_RISC_PER23_SEMCR_Register;
      --  RIFSC RISC slave peripheral 24 CID configuration register
      RIFSC_RISC_PER24_CIDCFGR  : aliased RIFSC_RISC_PER24_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 24 semaphore control register
      RIFSC_RISC_PER24_SEMCR    : aliased RIFSC_RISC_PER24_SEMCR_Register;
      --  RIFSC RISC slave peripheral 25 CID configuration register
      RIFSC_RISC_PER25_CIDCFGR  : aliased RIFSC_RISC_PER25_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 25 semaphore control register
      RIFSC_RISC_PER25_SEMCR    : aliased RIFSC_RISC_PER25_SEMCR_Register;
      --  RIFSC RISC slave peripheral 26 CID configuration register
      RIFSC_RISC_PER26_CIDCFGR  : aliased RIFSC_RISC_PER26_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 26 semaphore control register
      RIFSC_RISC_PER26_SEMCR    : aliased RIFSC_RISC_PER26_SEMCR_Register;
      --  RIFSC RISC slave peripheral 27 CID configuration register
      RIFSC_RISC_PER27_CIDCFGR  : aliased RIFSC_RISC_PER27_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 27 semaphore control register
      RIFSC_RISC_PER27_SEMCR    : aliased RIFSC_RISC_PER27_SEMCR_Register;
      --  RIFSC RISC slave peripheral 28 CID configuration register
      RIFSC_RISC_PER28_CIDCFGR  : aliased RIFSC_RISC_PER28_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 28 semaphore control register
      RIFSC_RISC_PER28_SEMCR    : aliased RIFSC_RISC_PER28_SEMCR_Register;
      --  RIFSC RISC slave peripheral 29 CID configuration register
      RIFSC_RISC_PER29_CIDCFGR  : aliased RIFSC_RISC_PER29_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 29 semaphore control register
      RIFSC_RISC_PER29_SEMCR    : aliased RIFSC_RISC_PER29_SEMCR_Register;
      --  RIFSC RISC slave peripheral 30 CID configuration register
      RIFSC_RISC_PER30_CIDCFGR  : aliased RIFSC_RISC_PER30_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 30 semaphore control register
      RIFSC_RISC_PER30_SEMCR    : aliased RIFSC_RISC_PER30_SEMCR_Register;
      --  RIFSC RISC slave peripheral 31 CID configuration register
      RIFSC_RISC_PER31_CIDCFGR  : aliased RIFSC_RISC_PER31_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 31 semaphore control register
      RIFSC_RISC_PER31_SEMCR    : aliased RIFSC_RISC_PER31_SEMCR_Register;
      --  RIFSC RISC slave peripheral 32 CID configuration register
      RIFSC_RISC_PER32_CIDCFGR  : aliased RIFSC_RISC_PER32_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 32 semaphore control register
      RIFSC_RISC_PER32_SEMCR    : aliased RIFSC_RISC_PER32_SEMCR_Register;
      --  RIFSC RISC slave peripheral 33 CID configuration register
      RIFSC_RISC_PER33_CIDCFGR  : aliased RIFSC_RISC_PER33_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 33 semaphore control register
      RIFSC_RISC_PER33_SEMCR    : aliased RIFSC_RISC_PER33_SEMCR_Register;
      --  RIFSC RISC slave peripheral 34 CID configuration register
      RIFSC_RISC_PER34_CIDCFGR  : aliased RIFSC_RISC_PER34_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 34 semaphore control register
      RIFSC_RISC_PER34_SEMCR    : aliased RIFSC_RISC_PER34_SEMCR_Register;
      --  RIFSC RISC slave peripheral 35 CID configuration register
      RIFSC_RISC_PER35_CIDCFGR  : aliased RIFSC_RISC_PER35_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 35 semaphore control register
      RIFSC_RISC_PER35_SEMCR    : aliased RIFSC_RISC_PER35_SEMCR_Register;
      --  RIFSC RISC slave peripheral 36 CID configuration register
      RIFSC_RISC_PER36_CIDCFGR  : aliased RIFSC_RISC_PER36_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 36 semaphore control register
      RIFSC_RISC_PER36_SEMCR    : aliased RIFSC_RISC_PER36_SEMCR_Register;
      --  RIFSC RISC slave peripheral 37 CID configuration register
      RIFSC_RISC_PER37_CIDCFGR  : aliased RIFSC_RISC_PER37_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 37 semaphore control register
      RIFSC_RISC_PER37_SEMCR    : aliased RIFSC_RISC_PER37_SEMCR_Register;
      --  RIFSC RISC slave peripheral 38 CID configuration register
      RIFSC_RISC_PER38_CIDCFGR  : aliased RIFSC_RISC_PER38_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 38 semaphore control register
      RIFSC_RISC_PER38_SEMCR    : aliased RIFSC_RISC_PER38_SEMCR_Register;
      --  RIFSC RISC slave peripheral 39 CID configuration register
      RIFSC_RISC_PER39_CIDCFGR  : aliased RIFSC_RISC_PER39_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 39 semaphore control register
      RIFSC_RISC_PER39_SEMCR    : aliased RIFSC_RISC_PER39_SEMCR_Register;
      --  RIFSC RISC slave peripheral 40 CID configuration register
      RIFSC_RISC_PER40_CIDCFGR  : aliased RIFSC_RISC_PER40_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 40 semaphore control register
      RIFSC_RISC_PER40_SEMCR    : aliased RIFSC_RISC_PER40_SEMCR_Register;
      --  RIFSC RISC slave peripheral 41 CID configuration register
      RIFSC_RISC_PER41_CIDCFGR  : aliased RIFSC_RISC_PER41_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 41 semaphore control register
      RIFSC_RISC_PER41_SEMCR    : aliased RIFSC_RISC_PER41_SEMCR_Register;
      --  RIFSC RISC slave peripheral 42 CID configuration register
      RIFSC_RISC_PER42_CIDCFGR  : aliased RIFSC_RISC_PER42_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 42 semaphore control register
      RIFSC_RISC_PER42_SEMCR    : aliased RIFSC_RISC_PER42_SEMCR_Register;
      --  RIFSC RISC slave peripheral 43 CID configuration register
      RIFSC_RISC_PER43_CIDCFGR  : aliased RIFSC_RISC_PER43_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 43 semaphore control register
      RIFSC_RISC_PER43_SEMCR    : aliased RIFSC_RISC_PER43_SEMCR_Register;
      --  RIFSC RISC slave peripheral 44 CID configuration register
      RIFSC_RISC_PER44_CIDCFGR  : aliased RIFSC_RISC_PER44_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 44 semaphore control register
      RIFSC_RISC_PER44_SEMCR    : aliased RIFSC_RISC_PER44_SEMCR_Register;
      --  RIFSC RISC slave peripheral 45 CID configuration register
      RIFSC_RISC_PER45_CIDCFGR  : aliased RIFSC_RISC_PER45_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 45 semaphore control register
      RIFSC_RISC_PER45_SEMCR    : aliased RIFSC_RISC_PER45_SEMCR_Register;
      --  RIFSC RISC slave peripheral 46 CID configuration register
      RIFSC_RISC_PER46_CIDCFGR  : aliased RIFSC_RISC_PER46_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 46 semaphore control register
      RIFSC_RISC_PER46_SEMCR    : aliased RIFSC_RISC_PER46_SEMCR_Register;
      --  RIFSC RISC slave peripheral 47 CID configuration register
      RIFSC_RISC_PER47_CIDCFGR  : aliased RIFSC_RISC_PER47_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 47 semaphore control register
      RIFSC_RISC_PER47_SEMCR    : aliased RIFSC_RISC_PER47_SEMCR_Register;
      --  RIFSC RISC slave peripheral 48 CID configuration register
      RIFSC_RISC_PER48_CIDCFGR  : aliased RIFSC_RISC_PER48_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 48 semaphore control register
      RIFSC_RISC_PER48_SEMCR    : aliased RIFSC_RISC_PER48_SEMCR_Register;
      --  RIFSC RISC slave peripheral 49 CID configuration register
      RIFSC_RISC_PER49_CIDCFGR  : aliased RIFSC_RISC_PER49_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 49 semaphore control register
      RIFSC_RISC_PER49_SEMCR    : aliased RIFSC_RISC_PER49_SEMCR_Register;
      --  RIFSC RISC slave peripheral 50 CID configuration register
      RIFSC_RISC_PER50_CIDCFGR  : aliased RIFSC_RISC_PER50_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 50 semaphore control register
      RIFSC_RISC_PER50_SEMCR    : aliased RIFSC_RISC_PER50_SEMCR_Register;
      --  RIFSC RISC slave peripheral 51 CID configuration register
      RIFSC_RISC_PER51_CIDCFGR  : aliased RIFSC_RISC_PER51_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 51 semaphore control register
      RIFSC_RISC_PER51_SEMCR    : aliased RIFSC_RISC_PER51_SEMCR_Register;
      --  RIFSC RISC slave peripheral 52 CID configuration register
      RIFSC_RISC_PER52_CIDCFGR  : aliased RIFSC_RISC_PER52_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 52 semaphore control register
      RIFSC_RISC_PER52_SEMCR    : aliased RIFSC_RISC_PER52_SEMCR_Register;
      --  RIFSC RISC slave peripheral 53 CID configuration register
      RIFSC_RISC_PER53_CIDCFGR  : aliased RIFSC_RISC_PER53_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 53 semaphore control register
      RIFSC_RISC_PER53_SEMCR    : aliased RIFSC_RISC_PER53_SEMCR_Register;
      --  RIFSC RISC slave peripheral 54 CID configuration register
      RIFSC_RISC_PER54_CIDCFGR  : aliased RIFSC_RISC_PER54_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 54 semaphore control register
      RIFSC_RISC_PER54_SEMCR    : aliased RIFSC_RISC_PER54_SEMCR_Register;
      --  RIFSC RISC slave peripheral 55 CID configuration register
      RIFSC_RISC_PER55_CIDCFGR  : aliased RIFSC_RISC_PER55_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 55 semaphore control register
      RIFSC_RISC_PER55_SEMCR    : aliased RIFSC_RISC_PER55_SEMCR_Register;
      --  RIFSC RISC slave peripheral 56 CID configuration register
      RIFSC_RISC_PER56_CIDCFGR  : aliased RIFSC_RISC_PER56_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 56 semaphore control register
      RIFSC_RISC_PER56_SEMCR    : aliased RIFSC_RISC_PER56_SEMCR_Register;
      --  RIFSC RISC slave peripheral 57 CID configuration register
      RIFSC_RISC_PER57_CIDCFGR  : aliased RIFSC_RISC_PER57_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 57 semaphore control register
      RIFSC_RISC_PER57_SEMCR    : aliased RIFSC_RISC_PER57_SEMCR_Register;
      --  RIFSC RISC slave peripheral 58 CID configuration register
      RIFSC_RISC_PER58_CIDCFGR  : aliased RIFSC_RISC_PER58_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 58 semaphore control register
      RIFSC_RISC_PER58_SEMCR    : aliased RIFSC_RISC_PER58_SEMCR_Register;
      --  RIFSC RISC slave peripheral 59 CID configuration register
      RIFSC_RISC_PER59_CIDCFGR  : aliased RIFSC_RISC_PER59_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 59 semaphore control register
      RIFSC_RISC_PER59_SEMCR    : aliased RIFSC_RISC_PER59_SEMCR_Register;
      --  RIFSC RISC slave peripheral 60 CID configuration register
      RIFSC_RISC_PER60_CIDCFGR  : aliased RIFSC_RISC_PER60_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 60 semaphore control register
      RIFSC_RISC_PER60_SEMCR    : aliased RIFSC_RISC_PER60_SEMCR_Register;
      --  RIFSC RISC slave peripheral 61 CID configuration register
      RIFSC_RISC_PER61_CIDCFGR  : aliased RIFSC_RISC_PER61_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 61 semaphore control register
      RIFSC_RISC_PER61_SEMCR    : aliased RIFSC_RISC_PER61_SEMCR_Register;
      --  RIFSC RISC slave peripheral 62 CID configuration register
      RIFSC_RISC_PER62_CIDCFGR  : aliased RIFSC_RISC_PER62_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 62 semaphore control register
      RIFSC_RISC_PER62_SEMCR    : aliased RIFSC_RISC_PER62_SEMCR_Register;
      --  RIFSC RISC slave peripheral 63 CID configuration register
      RIFSC_RISC_PER63_CIDCFGR  : aliased RIFSC_RISC_PER63_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 63 semaphore control register
      RIFSC_RISC_PER63_SEMCR    : aliased RIFSC_RISC_PER63_SEMCR_Register;
      --  RIFSC RISC slave peripheral 64 CID configuration register
      RIFSC_RISC_PER64_CIDCFGR  : aliased RIFSC_RISC_PER64_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 64 semaphore control register
      RIFSC_RISC_PER64_SEMCR    : aliased RIFSC_RISC_PER64_SEMCR_Register;
      --  RIFSC RISC slave peripheral 65 CID configuration register
      RIFSC_RISC_PER65_CIDCFGR  : aliased RIFSC_RISC_PER65_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 65 semaphore control register
      RIFSC_RISC_PER65_SEMCR    : aliased RIFSC_RISC_PER65_SEMCR_Register;
      --  RIFSC RISC slave peripheral 66 CID configuration register
      RIFSC_RISC_PER66_CIDCFGR  : aliased RIFSC_RISC_PER66_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 66 semaphore control register
      RIFSC_RISC_PER66_SEMCR    : aliased RIFSC_RISC_PER66_SEMCR_Register;
      --  RIFSC RISC slave peripheral 67 CID configuration register
      RIFSC_RISC_PER67_CIDCFGR  : aliased RIFSC_RISC_PER67_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 67 semaphore control register
      RIFSC_RISC_PER67_SEMCR    : aliased RIFSC_RISC_PER67_SEMCR_Register;
      --  RIFSC RISC slave peripheral 68 CID configuration register
      RIFSC_RISC_PER68_CIDCFGR  : aliased RIFSC_RISC_PER68_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 68 semaphore control register
      RIFSC_RISC_PER68_SEMCR    : aliased RIFSC_RISC_PER68_SEMCR_Register;
      --  RIFSC RISC slave peripheral 69 CID configuration register
      RIFSC_RISC_PER69_CIDCFGR  : aliased RIFSC_RISC_PER69_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 69 semaphore control register
      RIFSC_RISC_PER69_SEMCR    : aliased RIFSC_RISC_PER69_SEMCR_Register;
      --  RIFSC RISC slave peripheral 70 CID configuration register
      RIFSC_RISC_PER70_CIDCFGR  : aliased RIFSC_RISC_PER70_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 70 semaphore control register
      RIFSC_RISC_PER70_SEMCR    : aliased RIFSC_RISC_PER70_SEMCR_Register;
      --  RIFSC RISC slave peripheral 71 CID configuration register
      RIFSC_RISC_PER71_CIDCFGR  : aliased RIFSC_RISC_PER71_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 71 semaphore control register
      RIFSC_RISC_PER71_SEMCR    : aliased RIFSC_RISC_PER71_SEMCR_Register;
      --  RIFSC RISC slave peripheral 72 CID configuration register
      RIFSC_RISC_PER72_CIDCFGR  : aliased RIFSC_RISC_PER72_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 72 semaphore control register
      RIFSC_RISC_PER72_SEMCR    : aliased RIFSC_RISC_PER72_SEMCR_Register;
      --  RIFSC RISC slave peripheral 73 CID configuration register
      RIFSC_RISC_PER73_CIDCFGR  : aliased RIFSC_RISC_PER73_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 73 semaphore control register
      RIFSC_RISC_PER73_SEMCR    : aliased RIFSC_RISC_PER73_SEMCR_Register;
      --  RIFSC RISC slave peripheral 74 CID configuration register
      RIFSC_RISC_PER74_CIDCFGR  : aliased RIFSC_RISC_PER74_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 74 semaphore control register
      RIFSC_RISC_PER74_SEMCR    : aliased RIFSC_RISC_PER74_SEMCR_Register;
      --  RIFSC RISC slave peripheral 75 CID configuration register
      RIFSC_RISC_PER75_CIDCFGR  : aliased RIFSC_RISC_PER75_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 75 semaphore control register
      RIFSC_RISC_PER75_SEMCR    : aliased RIFSC_RISC_PER75_SEMCR_Register;
      --  RIFSC RISC slave peripheral 76 CID configuration register
      RIFSC_RISC_PER76_CIDCFGR  : aliased RIFSC_RISC_PER76_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 76 semaphore control register
      RIFSC_RISC_PER76_SEMCR    : aliased RIFSC_RISC_PER76_SEMCR_Register;
      --  RIFSC RISC slave peripheral 77 CID configuration register
      RIFSC_RISC_PER77_CIDCFGR  : aliased RIFSC_RISC_PER77_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 77 semaphore control register
      RIFSC_RISC_PER77_SEMCR    : aliased RIFSC_RISC_PER77_SEMCR_Register;
      --  RIFSC RISC slave peripheral 78 CID configuration register
      RIFSC_RISC_PER78_CIDCFGR  : aliased RIFSC_RISC_PER78_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 78 semaphore control register
      RIFSC_RISC_PER78_SEMCR    : aliased RIFSC_RISC_PER78_SEMCR_Register;
      --  RIFSC RISC slave peripheral 79 CID configuration register
      RIFSC_RISC_PER79_CIDCFGR  : aliased RIFSC_RISC_PER79_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 79 semaphore control register
      RIFSC_RISC_PER79_SEMCR    : aliased RIFSC_RISC_PER79_SEMCR_Register;
      --  RIFSC RISC slave peripheral 80 CID configuration register
      RIFSC_RISC_PER80_CIDCFGR  : aliased RIFSC_RISC_PER80_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 80 semaphore control register
      RIFSC_RISC_PER80_SEMCR    : aliased RIFSC_RISC_PER80_SEMCR_Register;
      --  RIFSC RISC slave peripheral 81 CID configuration register
      RIFSC_RISC_PER81_CIDCFGR  : aliased RIFSC_RISC_PER81_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 81 semaphore control register
      RIFSC_RISC_PER81_SEMCR    : aliased RIFSC_RISC_PER81_SEMCR_Register;
      --  RIFSC RISC slave peripheral 82 CID configuration register
      RIFSC_RISC_PER82_CIDCFGR  : aliased RIFSC_RISC_PER82_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 82 semaphore control register
      RIFSC_RISC_PER82_SEMCR    : aliased RIFSC_RISC_PER82_SEMCR_Register;
      --  RIFSC RISC slave peripheral 83 CID configuration register
      RIFSC_RISC_PER83_CIDCFGR  : aliased RIFSC_RISC_PER83_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 83 semaphore control register
      RIFSC_RISC_PER83_SEMCR    : aliased RIFSC_RISC_PER83_SEMCR_Register;
      --  RIFSC RISC slave peripheral 84 CID configuration register
      RIFSC_RISC_PER84_CIDCFGR  : aliased RIFSC_RISC_PER84_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 84 semaphore control register
      RIFSC_RISC_PER84_SEMCR    : aliased RIFSC_RISC_PER84_SEMCR_Register;
      --  RIFSC RISC slave peripheral 85 CID configuration register
      RIFSC_RISC_PER85_CIDCFGR  : aliased RIFSC_RISC_PER85_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 85 semaphore control register
      RIFSC_RISC_PER85_SEMCR    : aliased RIFSC_RISC_PER85_SEMCR_Register;
      --  RIFSC RISC slave peripheral 86 CID configuration register
      RIFSC_RISC_PER86_CIDCFGR  : aliased RIFSC_RISC_PER86_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 86 semaphore control register
      RIFSC_RISC_PER86_SEMCR    : aliased RIFSC_RISC_PER86_SEMCR_Register;
      --  RIFSC RISC slave peripheral 87 CID configuration register
      RIFSC_RISC_PER87_CIDCFGR  : aliased RIFSC_RISC_PER87_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 87 semaphore control register
      RIFSC_RISC_PER87_SEMCR    : aliased RIFSC_RISC_PER87_SEMCR_Register;
      --  RIFSC RISC slave peripheral 88 CID configuration register
      RIFSC_RISC_PER88_CIDCFGR  : aliased RIFSC_RISC_PER88_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 88 semaphore control register
      RIFSC_RISC_PER88_SEMCR    : aliased RIFSC_RISC_PER88_SEMCR_Register;
      --  RIFSC RISC slave peripheral 89 CID configuration register
      RIFSC_RISC_PER89_CIDCFGR  : aliased RIFSC_RISC_PER89_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 89 semaphore control register
      RIFSC_RISC_PER89_SEMCR    : aliased RIFSC_RISC_PER89_SEMCR_Register;
      --  RIFSC RISC slave peripheral 90 CID configuration register
      RIFSC_RISC_PER90_CIDCFGR  : aliased RIFSC_RISC_PER90_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 90 semaphore control register
      RIFSC_RISC_PER90_SEMCR    : aliased RIFSC_RISC_PER90_SEMCR_Register;
      --  RIFSC RISC slave peripheral 91 CID configuration register
      RIFSC_RISC_PER91_CIDCFGR  : aliased RIFSC_RISC_PER91_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 91 semaphore control register
      RIFSC_RISC_PER91_SEMCR    : aliased RIFSC_RISC_PER91_SEMCR_Register;
      --  RIFSC RISC slave peripheral 92 CID configuration register
      RIFSC_RISC_PER92_CIDCFGR  : aliased RIFSC_RISC_PER92_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 92 semaphore control register
      RIFSC_RISC_PER92_SEMCR    : aliased RIFSC_RISC_PER92_SEMCR_Register;
      --  RIFSC RISC slave peripheral 93 CID configuration register
      RIFSC_RISC_PER93_CIDCFGR  : aliased RIFSC_RISC_PER93_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 93 semaphore control register
      RIFSC_RISC_PER93_SEMCR    : aliased RIFSC_RISC_PER93_SEMCR_Register;
      --  RIFSC RISC slave peripheral 94 CID configuration register
      RIFSC_RISC_PER94_CIDCFGR  : aliased RIFSC_RISC_PER94_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 94 semaphore control register
      RIFSC_RISC_PER94_SEMCR    : aliased RIFSC_RISC_PER94_SEMCR_Register;
      --  RIFSC RISC slave peripheral 95 CID configuration register
      RIFSC_RISC_PER95_CIDCFGR  : aliased RIFSC_RISC_PER95_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 95 semaphore control register
      RIFSC_RISC_PER95_SEMCR    : aliased RIFSC_RISC_PER95_SEMCR_Register;
      --  RIFSC RISC slave peripheral 96 CID configuration register
      RIFSC_RISC_PER96_CIDCFGR  : aliased RIFSC_RISC_PER96_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 96 semaphore control register
      RIFSC_RISC_PER96_SEMCR    : aliased RIFSC_RISC_PER96_SEMCR_Register;
      --  RIFSC RISC slave peripheral 97 CID configuration register
      RIFSC_RISC_PER97_CIDCFGR  : aliased RIFSC_RISC_PER97_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 97 semaphore control register
      RIFSC_RISC_PER97_SEMCR    : aliased RIFSC_RISC_PER97_SEMCR_Register;
      --  RIFSC RISC slave peripheral 98 CID configuration register
      RIFSC_RISC_PER98_CIDCFGR  : aliased RIFSC_RISC_PER98_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 98 semaphore control register
      RIFSC_RISC_PER98_SEMCR    : aliased RIFSC_RISC_PER98_SEMCR_Register;
      --  RIFSC RISC slave peripheral 99 CID configuration register
      RIFSC_RISC_PER99_CIDCFGR  : aliased RIFSC_RISC_PER99_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 99 semaphore control register
      RIFSC_RISC_PER99_SEMCR    : aliased RIFSC_RISC_PER99_SEMCR_Register;
      --  RIFSC RISC slave peripheral 100 CID configuration register
      RIFSC_RISC_PER100_CIDCFGR : aliased RIFSC_RISC_PER100_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 100 semaphore control register
      RIFSC_RISC_PER100_SEMCR   : aliased RIFSC_RISC_PER100_SEMCR_Register;
      --  RIFSC RISC slave peripheral 101 CID configuration register
      RIFSC_RISC_PER101_CIDCFGR : aliased RIFSC_RISC_PER101_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 101 semaphore control register
      RIFSC_RISC_PER101_SEMCR   : aliased RIFSC_RISC_PER101_SEMCR_Register;
      --  RIFSC RISC slave peripheral 102 CID configuration register
      RIFSC_RISC_PER102_CIDCFGR : aliased RIFSC_RISC_PER102_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 102 semaphore control register
      RIFSC_RISC_PER102_SEMCR   : aliased RIFSC_RISC_PER102_SEMCR_Register;
      --  RIFSC RISC slave peripheral 103 CID configuration register
      RIFSC_RISC_PER103_CIDCFGR : aliased RIFSC_RISC_PER103_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 103 semaphore control register
      RIFSC_RISC_PER103_SEMCR   : aliased RIFSC_RISC_PER103_SEMCR_Register;
      --  RIFSC RISC slave peripheral 104 CID configuration register
      RIFSC_RISC_PER104_CIDCFGR : aliased RIFSC_RISC_PER104_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 104 semaphore control register
      RIFSC_RISC_PER104_SEMCR   : aliased RIFSC_RISC_PER104_SEMCR_Register;
      --  RIFSC RISC slave peripheral 105 CID configuration register
      RIFSC_RISC_PER105_CIDCFGR : aliased RIFSC_RISC_PER105_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 105 semaphore control register
      RIFSC_RISC_PER105_SEMCR   : aliased RIFSC_RISC_PER105_SEMCR_Register;
      --  RIFSC RISC slave peripheral 106 CID configuration register
      RIFSC_RISC_PER106_CIDCFGR : aliased RIFSC_RISC_PER106_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 106 semaphore control register
      RIFSC_RISC_PER106_SEMCR   : aliased RIFSC_RISC_PER106_SEMCR_Register;
      --  RIFSC RISC slave peripheral 107 CID configuration register
      RIFSC_RISC_PER107_CIDCFGR : aliased RIFSC_RISC_PER107_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 107 semaphore control register
      RIFSC_RISC_PER107_SEMCR   : aliased RIFSC_RISC_PER107_SEMCR_Register;
      --  RIFSC RISC slave peripheral 108 CID configuration register
      RIFSC_RISC_PER108_CIDCFGR : aliased RIFSC_RISC_PER108_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 108 semaphore control register
      RIFSC_RISC_PER108_SEMCR   : aliased RIFSC_RISC_PER108_SEMCR_Register;
      --  RIFSC RISC slave peripheral 109 CID configuration register
      RIFSC_RISC_PER109_CIDCFGR : aliased RIFSC_RISC_PER109_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 109 semaphore control register
      RIFSC_RISC_PER109_SEMCR   : aliased RIFSC_RISC_PER109_SEMCR_Register;
      --  RIFSC RISC slave peripheral 110 CID configuration register
      RIFSC_RISC_PER110_CIDCFGR : aliased RIFSC_RISC_PER110_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 110 semaphore control register
      RIFSC_RISC_PER110_SEMCR   : aliased RIFSC_RISC_PER110_SEMCR_Register;
      --  RIFSC RISC slave peripheral 111 CID configuration register
      RIFSC_RISC_PER111_CIDCFGR : aliased RIFSC_RISC_PER111_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 111 semaphore control register
      RIFSC_RISC_PER111_SEMCR   : aliased RIFSC_RISC_PER111_SEMCR_Register;
      --  RIFSC RISC slave peripheral 112 CID configuration register
      RIFSC_RISC_PER112_CIDCFGR : aliased RIFSC_RISC_PER112_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 112 semaphore control register
      RIFSC_RISC_PER112_SEMCR   : aliased RIFSC_RISC_PER112_SEMCR_Register;
      --  RIFSC RISC slave peripheral 113 CID configuration register
      RIFSC_RISC_PER113_CIDCFGR : aliased RIFSC_RISC_PER113_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 113 semaphore control register
      RIFSC_RISC_PER113_SEMCR   : aliased RIFSC_RISC_PER113_SEMCR_Register;
      --  RIFSC RISC slave peripheral 114 CID configuration register
      RIFSC_RISC_PER114_CIDCFGR : aliased RIFSC_RISC_PER114_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 114 semaphore control register
      RIFSC_RISC_PER114_SEMCR   : aliased RIFSC_RISC_PER114_SEMCR_Register;
      --  RIFSC RISC slave peripheral 115 CID configuration register
      RIFSC_RISC_PER115_CIDCFGR : aliased RIFSC_RISC_PER115_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 115 semaphore control register
      RIFSC_RISC_PER115_SEMCR   : aliased RIFSC_RISC_PER115_SEMCR_Register;
      --  RIFSC RISC slave peripheral 116 CID configuration register
      RIFSC_RISC_PER116_CIDCFGR : aliased RIFSC_RISC_PER116_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 116 semaphore control register
      RIFSC_RISC_PER116_SEMCR   : aliased RIFSC_RISC_PER116_SEMCR_Register;
      --  RIFSC RISC slave peripheral 117 CID configuration register
      RIFSC_RISC_PER117_CIDCFGR : aliased RIFSC_RISC_PER117_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 117 semaphore control register
      RIFSC_RISC_PER117_SEMCR   : aliased RIFSC_RISC_PER117_SEMCR_Register;
      --  RIFSC RISC slave peripheral 118 CID configuration register
      RIFSC_RISC_PER118_CIDCFGR : aliased RIFSC_RISC_PER118_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 118 semaphore control register
      RIFSC_RISC_PER118_SEMCR   : aliased RIFSC_RISC_PER118_SEMCR_Register;
      --  RIFSC RISC slave peripheral 119 CID configuration register
      RIFSC_RISC_PER119_CIDCFGR : aliased RIFSC_RISC_PER119_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 119 semaphore control register
      RIFSC_RISC_PER119_SEMCR   : aliased RIFSC_RISC_PER119_SEMCR_Register;
      --  RIFSC RISC slave peripheral 120 CID configuration register
      RIFSC_RISC_PER120_CIDCFGR : aliased RIFSC_RISC_PER120_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 120 semaphore control register
      RIFSC_RISC_PER120_SEMCR   : aliased RIFSC_RISC_PER120_SEMCR_Register;
      --  RIFSC RISC slave peripheral 121 CID configuration register
      RIFSC_RISC_PER121_CIDCFGR : aliased RIFSC_RISC_PER121_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 121 semaphore control register
      RIFSC_RISC_PER121_SEMCR   : aliased RIFSC_RISC_PER121_SEMCR_Register;
      --  RIFSC RISC slave peripheral 122 CID configuration register
      RIFSC_RISC_PER122_CIDCFGR : aliased RIFSC_RISC_PER122_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 122 semaphore control register
      RIFSC_RISC_PER122_SEMCR   : aliased RIFSC_RISC_PER122_SEMCR_Register;
      --  RIFSC RISC slave peripheral 123 CID configuration register
      RIFSC_RISC_PER123_CIDCFGR : aliased RIFSC_RISC_PER123_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 123 semaphore control register
      RIFSC_RISC_PER123_SEMCR   : aliased RIFSC_RISC_PER123_SEMCR_Register;
      --  RIFSC RISC slave peripheral 124 CID configuration register
      RIFSC_RISC_PER124_CIDCFGR : aliased RIFSC_RISC_PER124_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 124 semaphore control register
      RIFSC_RISC_PER124_SEMCR   : aliased RIFSC_RISC_PER124_SEMCR_Register;
      --  RIFSC RISC slave peripheral 125 CID configuration register
      RIFSC_RISC_PER125_CIDCFGR : aliased RIFSC_RISC_PER125_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 125 semaphore control register
      RIFSC_RISC_PER125_SEMCR   : aliased RIFSC_RISC_PER125_SEMCR_Register;
      --  RIFSC RISC slave peripheral 126 CID configuration register
      RIFSC_RISC_PER126_CIDCFGR : aliased RIFSC_RISC_PER126_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 126 semaphore control register
      RIFSC_RISC_PER126_SEMCR   : aliased RIFSC_RISC_PER126_SEMCR_Register;
      --  RIFSC RISC slave peripheral 127 CID configuration register
      RIFSC_RISC_PER127_CIDCFGR : aliased RIFSC_RISC_PER127_CIDCFGR_Register;
      --  RIFSC RISC slave peripheral 127 semaphore control register
      RIFSC_RISC_PER127_SEMCR   : aliased RIFSC_RISC_PER127_SEMCR_Register;
      --  RIFSC RISAL memory region 1 subregion z configuration register
      RIFSC_RISC_REG1_ACFGR     : aliased RIFSC_RISC_REG1_ACFGR_Register;
      --  RIFSC RISAL memory region 1 subregion z configuration register
      RIFSC_RISC_REG1_BCFGR     : aliased RIFSC_RISC_REG1_BCFGR_Register;
      --  RIFSC RISAL memory region 2 subregion z configuration register
      RIFSC_RISC_REG2_ACFGR     : aliased RIFSC_RISC_REG2_ACFGR_Register;
      --  RIFSC RISAL memory region 2 subregion z configuration register
      RIFSC_RISC_REG2_BCFGR     : aliased RIFSC_RISC_REG2_BCFGR_Register;
      --  RIFSC RISAL memory region 3 subregion z configuration register
      RIFSC_RISC_REG3_ACFGR     : aliased RIFSC_RISC_REG3_ACFGR_Register;
      --  RIFSC RISAL memory region 3 subregion z configuration register
      RIFSC_RISC_REG3_BCFGR     : aliased RIFSC_RISC_REG3_BCFGR_Register;
      --  RIFSC RIMC master configuration register
      RIFSC_RIMC_CR             : aliased RIFSC_RIMC_CR_Register;
      --  RIFSC RIMC master status register
      RIFSC_RIMC_SR             : aliased RIFSC_RIMC_SR_Register;
      --  RIFSC RIMC master attribute register 0
      RIFSC_RIMC_ATTR0          : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 1
      RIFSC_RIMC_ATTR1          : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 2
      RIFSC_RIMC_ATTR2          : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 3
      RIFSC_RIMC_ATTR3          : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 4
      RIFSC_RIMC_ATTR4          : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 5
      RIFSC_RIMC_ATTR5          : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 6
      RIFSC_RIMC_ATTR6          : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 7
      RIFSC_RIMC_ATTR7          : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 8
      RIFSC_RIMC_ATTR8          : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 9
      RIFSC_RIMC_ATTR9          : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 10
      RIFSC_RIMC_ATTR10         : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 11
      RIFSC_RIMC_ATTR11         : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 12
      RIFSC_RIMC_ATTR12         : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 13
      RIFSC_RIMC_ATTR13         : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 14
      RIFSC_RIMC_ATTR14         : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC RIMC master attribute register 15
      RIFSC_RIMC_ATTR15         : aliased RIFSC_RIMC_ATTR_Register;
      --  RIFSC peripheral protection status register 0
      RIFSC_PPSR0               : aliased RIFSC_PPSR0_Register;
      --  RIFSC peripheral protection status register 1
      RIFSC_PPSR1               : aliased RIFSC_PPSR1_Register;
      --  RIFSC peripheral protection status register 2
      RIFSC_PPSR2               : aliased RIFSC_PPSR2_Register;
      --  RIFSC peripheral protection status register 3
      RIFSC_PPSR3               : aliased RIFSC_PPSR3_Register;
      --  RIFSC hardware configuration register 3
      RIFSC_HWCFGR3             : aliased HAL.UInt32;
      --  RIFSC hardware configuration register 2
      RIFSC_HWCFGR2             : aliased RIFSC_HWCFGR2_Register;
      --  RIFSC hardware configuration register 1
      RIFSC_HWCFGR1             : aliased RIFSC_HWCFGR1_Register;
      --  RIFSC version register
      RIFSC_VERR                : aliased RIFSC_VERR_Register;
      --  RIFSC identification register
      RIFSC_IPIDR               : aliased HAL.UInt32;
      --  RIFSC size identification register
      RIFSC_SIDR                : aliased HAL.UInt32;
   end record
     with Volatile;

   for RIFSC_Peripheral use record
      RIFSC_RISC_CR             at 16#0# range 0 .. 31;
      RIFSC_RISC_SECCFGR0       at 16#10# range 0 .. 31;
      RIFSC_RISC_SECCFGR1       at 16#14# range 0 .. 31;
      RIFSC_RISC_SECCFGR2       at 16#18# range 0 .. 31;
      RIFSC_RISC_SECCFGR3       at 16#1C# range 0 .. 31;
      RIFSC_RISC_SECCFGR4       at 16#20# range 0 .. 31;
      RIFSC_RISC_SECCFGR5       at 16#24# range 0 .. 31;
      RIFSC_RISC_PRIVCFGR0      at 16#30# range 0 .. 31;
      RIFSC_RISC_PRIVCFGR1      at 16#34# range 0 .. 31;
      RIFSC_RISC_PRIVCFGR2      at 16#38# range 0 .. 31;
      RIFSC_RISC_PRIVCFGR3      at 16#3C# range 0 .. 31;
      RIFSC_RISC_PRIVCFGR4      at 16#40# range 0 .. 31;
      RIFSC_RISC_PRIVCFGR5      at 16#44# range 0 .. 31;
      RIFSC_RISC_RCFGLOCKR0     at 16#50# range 0 .. 31;
      RIFSC_RISC_RCFGLOCKR1     at 16#54# range 0 .. 31;
      RIFSC_RISC_RCFGLOCKR2     at 16#58# range 0 .. 31;
      RIFSC_RISC_RCFGLOCKR3     at 16#5C# range 0 .. 31;
      RIFSC_RISC_RCFGLOCKR4     at 16#60# range 0 .. 31;
      RIFSC_RISC_RCFGLOCKR5     at 16#64# range 0 .. 31;
      RIFSC_RISC_PER0_CIDCFGR   at 16#100# range 0 .. 31;
      RIFSC_RISC_PER0_SEMCR     at 16#104# range 0 .. 31;
      RIFSC_RISC_PER1_CIDCFGR   at 16#108# range 0 .. 31;
      RIFSC_RISC_PER1_SEMCR     at 16#10C# range 0 .. 31;
      RIFSC_RISC_PER2_CIDCFGR   at 16#110# range 0 .. 31;
      RIFSC_RISC_PER2_SEMCR     at 16#114# range 0 .. 31;
      RIFSC_RISC_PER3_CIDCFGR   at 16#118# range 0 .. 31;
      RIFSC_RISC_PER3_SEMCR     at 16#11C# range 0 .. 31;
      RIFSC_RISC_PER4_CIDCFGR   at 16#120# range 0 .. 31;
      RIFSC_RISC_PER4_SEMCR     at 16#124# range 0 .. 31;
      RIFSC_RISC_PER5_CIDCFGR   at 16#128# range 0 .. 31;
      RIFSC_RISC_PER5_SEMCR     at 16#12C# range 0 .. 31;
      RIFSC_RISC_PER6_CIDCFGR   at 16#130# range 0 .. 31;
      RIFSC_RISC_PER6_SEMCR     at 16#134# range 0 .. 31;
      RIFSC_RISC_PER7_CIDCFGR   at 16#138# range 0 .. 31;
      RIFSC_RISC_PER7_SEMCR     at 16#13C# range 0 .. 31;
      RIFSC_RISC_PER8_CIDCFGR   at 16#140# range 0 .. 31;
      RIFSC_RISC_PER8_SEMCR     at 16#144# range 0 .. 31;
      RIFSC_RISC_PER9_CIDCFGR   at 16#148# range 0 .. 31;
      RIFSC_RISC_PER9_SEMCR     at 16#14C# range 0 .. 31;
      RIFSC_RISC_PER10_CIDCFGR  at 16#150# range 0 .. 31;
      RIFSC_RISC_PER10_SEMCR    at 16#154# range 0 .. 31;
      RIFSC_RISC_PER11_CIDCFGR  at 16#158# range 0 .. 31;
      RIFSC_RISC_PER11_SEMCR    at 16#15C# range 0 .. 31;
      RIFSC_RISC_PER12_CIDCFGR  at 16#160# range 0 .. 31;
      RIFSC_RISC_PER12_SEMCR    at 16#164# range 0 .. 31;
      RIFSC_RISC_PER13_CIDCFGR  at 16#168# range 0 .. 31;
      RIFSC_RISC_PER13_SEMCR    at 16#16C# range 0 .. 31;
      RIFSC_RISC_PER14_CIDCFGR  at 16#170# range 0 .. 31;
      RIFSC_RISC_PER14_SEMCR    at 16#174# range 0 .. 31;
      RIFSC_RISC_PER15_CIDCFGR  at 16#178# range 0 .. 31;
      RIFSC_RISC_PER15_SEMCR    at 16#17C# range 0 .. 31;
      RIFSC_RISC_PER16_CIDCFGR  at 16#180# range 0 .. 31;
      RIFSC_RISC_PER16_SEMCR    at 16#184# range 0 .. 31;
      RIFSC_RISC_PER17_CIDCFGR  at 16#188# range 0 .. 31;
      RIFSC_RISC_PER17_SEMCR    at 16#18C# range 0 .. 31;
      RIFSC_RISC_PER18_CIDCFGR  at 16#190# range 0 .. 31;
      RIFSC_RISC_PER18_SEMCR    at 16#194# range 0 .. 31;
      RIFSC_RISC_PER19_CIDCFGR  at 16#198# range 0 .. 31;
      RIFSC_RISC_PER19_SEMCR    at 16#19C# range 0 .. 31;
      RIFSC_RISC_PER20_CIDCFGR  at 16#1A0# range 0 .. 31;
      RIFSC_RISC_PER20_SEMCR    at 16#1A4# range 0 .. 31;
      RIFSC_RISC_PER21_CIDCFGR  at 16#1A8# range 0 .. 31;
      RIFSC_RISC_PER21_SEMCR    at 16#1AC# range 0 .. 31;
      RIFSC_RISC_PER22_CIDCFGR  at 16#1B0# range 0 .. 31;
      RIFSC_RISC_PER22_SEMCR    at 16#1B4# range 0 .. 31;
      RIFSC_RISC_PER23_CIDCFGR  at 16#1B8# range 0 .. 31;
      RIFSC_RISC_PER23_SEMCR    at 16#1BC# range 0 .. 31;
      RIFSC_RISC_PER24_CIDCFGR  at 16#1C0# range 0 .. 31;
      RIFSC_RISC_PER24_SEMCR    at 16#1C4# range 0 .. 31;
      RIFSC_RISC_PER25_CIDCFGR  at 16#1C8# range 0 .. 31;
      RIFSC_RISC_PER25_SEMCR    at 16#1CC# range 0 .. 31;
      RIFSC_RISC_PER26_CIDCFGR  at 16#1D0# range 0 .. 31;
      RIFSC_RISC_PER26_SEMCR    at 16#1D4# range 0 .. 31;
      RIFSC_RISC_PER27_CIDCFGR  at 16#1D8# range 0 .. 31;
      RIFSC_RISC_PER27_SEMCR    at 16#1DC# range 0 .. 31;
      RIFSC_RISC_PER28_CIDCFGR  at 16#1E0# range 0 .. 31;
      RIFSC_RISC_PER28_SEMCR    at 16#1E4# range 0 .. 31;
      RIFSC_RISC_PER29_CIDCFGR  at 16#1E8# range 0 .. 31;
      RIFSC_RISC_PER29_SEMCR    at 16#1EC# range 0 .. 31;
      RIFSC_RISC_PER30_CIDCFGR  at 16#1F0# range 0 .. 31;
      RIFSC_RISC_PER30_SEMCR    at 16#1F4# range 0 .. 31;
      RIFSC_RISC_PER31_CIDCFGR  at 16#1F8# range 0 .. 31;
      RIFSC_RISC_PER31_SEMCR    at 16#1FC# range 0 .. 31;
      RIFSC_RISC_PER32_CIDCFGR  at 16#200# range 0 .. 31;
      RIFSC_RISC_PER32_SEMCR    at 16#204# range 0 .. 31;
      RIFSC_RISC_PER33_CIDCFGR  at 16#208# range 0 .. 31;
      RIFSC_RISC_PER33_SEMCR    at 16#20C# range 0 .. 31;
      RIFSC_RISC_PER34_CIDCFGR  at 16#210# range 0 .. 31;
      RIFSC_RISC_PER34_SEMCR    at 16#214# range 0 .. 31;
      RIFSC_RISC_PER35_CIDCFGR  at 16#218# range 0 .. 31;
      RIFSC_RISC_PER35_SEMCR    at 16#21C# range 0 .. 31;
      RIFSC_RISC_PER36_CIDCFGR  at 16#220# range 0 .. 31;
      RIFSC_RISC_PER36_SEMCR    at 16#224# range 0 .. 31;
      RIFSC_RISC_PER37_CIDCFGR  at 16#228# range 0 .. 31;
      RIFSC_RISC_PER37_SEMCR    at 16#22C# range 0 .. 31;
      RIFSC_RISC_PER38_CIDCFGR  at 16#230# range 0 .. 31;
      RIFSC_RISC_PER38_SEMCR    at 16#234# range 0 .. 31;
      RIFSC_RISC_PER39_CIDCFGR  at 16#238# range 0 .. 31;
      RIFSC_RISC_PER39_SEMCR    at 16#23C# range 0 .. 31;
      RIFSC_RISC_PER40_CIDCFGR  at 16#240# range 0 .. 31;
      RIFSC_RISC_PER40_SEMCR    at 16#244# range 0 .. 31;
      RIFSC_RISC_PER41_CIDCFGR  at 16#248# range 0 .. 31;
      RIFSC_RISC_PER41_SEMCR    at 16#24C# range 0 .. 31;
      RIFSC_RISC_PER42_CIDCFGR  at 16#250# range 0 .. 31;
      RIFSC_RISC_PER42_SEMCR    at 16#254# range 0 .. 31;
      RIFSC_RISC_PER43_CIDCFGR  at 16#258# range 0 .. 31;
      RIFSC_RISC_PER43_SEMCR    at 16#25C# range 0 .. 31;
      RIFSC_RISC_PER44_CIDCFGR  at 16#260# range 0 .. 31;
      RIFSC_RISC_PER44_SEMCR    at 16#264# range 0 .. 31;
      RIFSC_RISC_PER45_CIDCFGR  at 16#268# range 0 .. 31;
      RIFSC_RISC_PER45_SEMCR    at 16#26C# range 0 .. 31;
      RIFSC_RISC_PER46_CIDCFGR  at 16#270# range 0 .. 31;
      RIFSC_RISC_PER46_SEMCR    at 16#274# range 0 .. 31;
      RIFSC_RISC_PER47_CIDCFGR  at 16#278# range 0 .. 31;
      RIFSC_RISC_PER47_SEMCR    at 16#27C# range 0 .. 31;
      RIFSC_RISC_PER48_CIDCFGR  at 16#280# range 0 .. 31;
      RIFSC_RISC_PER48_SEMCR    at 16#284# range 0 .. 31;
      RIFSC_RISC_PER49_CIDCFGR  at 16#288# range 0 .. 31;
      RIFSC_RISC_PER49_SEMCR    at 16#28C# range 0 .. 31;
      RIFSC_RISC_PER50_CIDCFGR  at 16#290# range 0 .. 31;
      RIFSC_RISC_PER50_SEMCR    at 16#294# range 0 .. 31;
      RIFSC_RISC_PER51_CIDCFGR  at 16#298# range 0 .. 31;
      RIFSC_RISC_PER51_SEMCR    at 16#29C# range 0 .. 31;
      RIFSC_RISC_PER52_CIDCFGR  at 16#2A0# range 0 .. 31;
      RIFSC_RISC_PER52_SEMCR    at 16#2A4# range 0 .. 31;
      RIFSC_RISC_PER53_CIDCFGR  at 16#2A8# range 0 .. 31;
      RIFSC_RISC_PER53_SEMCR    at 16#2AC# range 0 .. 31;
      RIFSC_RISC_PER54_CIDCFGR  at 16#2B0# range 0 .. 31;
      RIFSC_RISC_PER54_SEMCR    at 16#2B4# range 0 .. 31;
      RIFSC_RISC_PER55_CIDCFGR  at 16#2B8# range 0 .. 31;
      RIFSC_RISC_PER55_SEMCR    at 16#2BC# range 0 .. 31;
      RIFSC_RISC_PER56_CIDCFGR  at 16#2C0# range 0 .. 31;
      RIFSC_RISC_PER56_SEMCR    at 16#2C4# range 0 .. 31;
      RIFSC_RISC_PER57_CIDCFGR  at 16#2C8# range 0 .. 31;
      RIFSC_RISC_PER57_SEMCR    at 16#2CC# range 0 .. 31;
      RIFSC_RISC_PER58_CIDCFGR  at 16#2D0# range 0 .. 31;
      RIFSC_RISC_PER58_SEMCR    at 16#2D4# range 0 .. 31;
      RIFSC_RISC_PER59_CIDCFGR  at 16#2D8# range 0 .. 31;
      RIFSC_RISC_PER59_SEMCR    at 16#2DC# range 0 .. 31;
      RIFSC_RISC_PER60_CIDCFGR  at 16#2E0# range 0 .. 31;
      RIFSC_RISC_PER60_SEMCR    at 16#2E4# range 0 .. 31;
      RIFSC_RISC_PER61_CIDCFGR  at 16#2E8# range 0 .. 31;
      RIFSC_RISC_PER61_SEMCR    at 16#2EC# range 0 .. 31;
      RIFSC_RISC_PER62_CIDCFGR  at 16#2F0# range 0 .. 31;
      RIFSC_RISC_PER62_SEMCR    at 16#2F4# range 0 .. 31;
      RIFSC_RISC_PER63_CIDCFGR  at 16#2F8# range 0 .. 31;
      RIFSC_RISC_PER63_SEMCR    at 16#2FC# range 0 .. 31;
      RIFSC_RISC_PER64_CIDCFGR  at 16#300# range 0 .. 31;
      RIFSC_RISC_PER64_SEMCR    at 16#304# range 0 .. 31;
      RIFSC_RISC_PER65_CIDCFGR  at 16#308# range 0 .. 31;
      RIFSC_RISC_PER65_SEMCR    at 16#30C# range 0 .. 31;
      RIFSC_RISC_PER66_CIDCFGR  at 16#310# range 0 .. 31;
      RIFSC_RISC_PER66_SEMCR    at 16#314# range 0 .. 31;
      RIFSC_RISC_PER67_CIDCFGR  at 16#318# range 0 .. 31;
      RIFSC_RISC_PER67_SEMCR    at 16#31C# range 0 .. 31;
      RIFSC_RISC_PER68_CIDCFGR  at 16#320# range 0 .. 31;
      RIFSC_RISC_PER68_SEMCR    at 16#324# range 0 .. 31;
      RIFSC_RISC_PER69_CIDCFGR  at 16#328# range 0 .. 31;
      RIFSC_RISC_PER69_SEMCR    at 16#32C# range 0 .. 31;
      RIFSC_RISC_PER70_CIDCFGR  at 16#330# range 0 .. 31;
      RIFSC_RISC_PER70_SEMCR    at 16#334# range 0 .. 31;
      RIFSC_RISC_PER71_CIDCFGR  at 16#338# range 0 .. 31;
      RIFSC_RISC_PER71_SEMCR    at 16#33C# range 0 .. 31;
      RIFSC_RISC_PER72_CIDCFGR  at 16#340# range 0 .. 31;
      RIFSC_RISC_PER72_SEMCR    at 16#344# range 0 .. 31;
      RIFSC_RISC_PER73_CIDCFGR  at 16#348# range 0 .. 31;
      RIFSC_RISC_PER73_SEMCR    at 16#34C# range 0 .. 31;
      RIFSC_RISC_PER74_CIDCFGR  at 16#350# range 0 .. 31;
      RIFSC_RISC_PER74_SEMCR    at 16#354# range 0 .. 31;
      RIFSC_RISC_PER75_CIDCFGR  at 16#358# range 0 .. 31;
      RIFSC_RISC_PER75_SEMCR    at 16#35C# range 0 .. 31;
      RIFSC_RISC_PER76_CIDCFGR  at 16#360# range 0 .. 31;
      RIFSC_RISC_PER76_SEMCR    at 16#364# range 0 .. 31;
      RIFSC_RISC_PER77_CIDCFGR  at 16#368# range 0 .. 31;
      RIFSC_RISC_PER77_SEMCR    at 16#36C# range 0 .. 31;
      RIFSC_RISC_PER78_CIDCFGR  at 16#370# range 0 .. 31;
      RIFSC_RISC_PER78_SEMCR    at 16#374# range 0 .. 31;
      RIFSC_RISC_PER79_CIDCFGR  at 16#378# range 0 .. 31;
      RIFSC_RISC_PER79_SEMCR    at 16#37C# range 0 .. 31;
      RIFSC_RISC_PER80_CIDCFGR  at 16#380# range 0 .. 31;
      RIFSC_RISC_PER80_SEMCR    at 16#384# range 0 .. 31;
      RIFSC_RISC_PER81_CIDCFGR  at 16#388# range 0 .. 31;
      RIFSC_RISC_PER81_SEMCR    at 16#38C# range 0 .. 31;
      RIFSC_RISC_PER82_CIDCFGR  at 16#390# range 0 .. 31;
      RIFSC_RISC_PER82_SEMCR    at 16#394# range 0 .. 31;
      RIFSC_RISC_PER83_CIDCFGR  at 16#398# range 0 .. 31;
      RIFSC_RISC_PER83_SEMCR    at 16#39C# range 0 .. 31;
      RIFSC_RISC_PER84_CIDCFGR  at 16#3A0# range 0 .. 31;
      RIFSC_RISC_PER84_SEMCR    at 16#3A4# range 0 .. 31;
      RIFSC_RISC_PER85_CIDCFGR  at 16#3A8# range 0 .. 31;
      RIFSC_RISC_PER85_SEMCR    at 16#3AC# range 0 .. 31;
      RIFSC_RISC_PER86_CIDCFGR  at 16#3B0# range 0 .. 31;
      RIFSC_RISC_PER86_SEMCR    at 16#3B4# range 0 .. 31;
      RIFSC_RISC_PER87_CIDCFGR  at 16#3B8# range 0 .. 31;
      RIFSC_RISC_PER87_SEMCR    at 16#3BC# range 0 .. 31;
      RIFSC_RISC_PER88_CIDCFGR  at 16#3C0# range 0 .. 31;
      RIFSC_RISC_PER88_SEMCR    at 16#3C4# range 0 .. 31;
      RIFSC_RISC_PER89_CIDCFGR  at 16#3C8# range 0 .. 31;
      RIFSC_RISC_PER89_SEMCR    at 16#3CC# range 0 .. 31;
      RIFSC_RISC_PER90_CIDCFGR  at 16#3D0# range 0 .. 31;
      RIFSC_RISC_PER90_SEMCR    at 16#3D4# range 0 .. 31;
      RIFSC_RISC_PER91_CIDCFGR  at 16#3D8# range 0 .. 31;
      RIFSC_RISC_PER91_SEMCR    at 16#3DC# range 0 .. 31;
      RIFSC_RISC_PER92_CIDCFGR  at 16#3E0# range 0 .. 31;
      RIFSC_RISC_PER92_SEMCR    at 16#3E4# range 0 .. 31;
      RIFSC_RISC_PER93_CIDCFGR  at 16#3E8# range 0 .. 31;
      RIFSC_RISC_PER93_SEMCR    at 16#3EC# range 0 .. 31;
      RIFSC_RISC_PER94_CIDCFGR  at 16#3F0# range 0 .. 31;
      RIFSC_RISC_PER94_SEMCR    at 16#3F4# range 0 .. 31;
      RIFSC_RISC_PER95_CIDCFGR  at 16#3F8# range 0 .. 31;
      RIFSC_RISC_PER95_SEMCR    at 16#3FC# range 0 .. 31;
      RIFSC_RISC_PER96_CIDCFGR  at 16#400# range 0 .. 31;
      RIFSC_RISC_PER96_SEMCR    at 16#404# range 0 .. 31;
      RIFSC_RISC_PER97_CIDCFGR  at 16#408# range 0 .. 31;
      RIFSC_RISC_PER97_SEMCR    at 16#40C# range 0 .. 31;
      RIFSC_RISC_PER98_CIDCFGR  at 16#410# range 0 .. 31;
      RIFSC_RISC_PER98_SEMCR    at 16#414# range 0 .. 31;
      RIFSC_RISC_PER99_CIDCFGR  at 16#418# range 0 .. 31;
      RIFSC_RISC_PER99_SEMCR    at 16#41C# range 0 .. 31;
      RIFSC_RISC_PER100_CIDCFGR at 16#420# range 0 .. 31;
      RIFSC_RISC_PER100_SEMCR   at 16#424# range 0 .. 31;
      RIFSC_RISC_PER101_CIDCFGR at 16#428# range 0 .. 31;
      RIFSC_RISC_PER101_SEMCR   at 16#42C# range 0 .. 31;
      RIFSC_RISC_PER102_CIDCFGR at 16#430# range 0 .. 31;
      RIFSC_RISC_PER102_SEMCR   at 16#434# range 0 .. 31;
      RIFSC_RISC_PER103_CIDCFGR at 16#438# range 0 .. 31;
      RIFSC_RISC_PER103_SEMCR   at 16#43C# range 0 .. 31;
      RIFSC_RISC_PER104_CIDCFGR at 16#440# range 0 .. 31;
      RIFSC_RISC_PER104_SEMCR   at 16#444# range 0 .. 31;
      RIFSC_RISC_PER105_CIDCFGR at 16#448# range 0 .. 31;
      RIFSC_RISC_PER105_SEMCR   at 16#44C# range 0 .. 31;
      RIFSC_RISC_PER106_CIDCFGR at 16#450# range 0 .. 31;
      RIFSC_RISC_PER106_SEMCR   at 16#454# range 0 .. 31;
      RIFSC_RISC_PER107_CIDCFGR at 16#458# range 0 .. 31;
      RIFSC_RISC_PER107_SEMCR   at 16#45C# range 0 .. 31;
      RIFSC_RISC_PER108_CIDCFGR at 16#460# range 0 .. 31;
      RIFSC_RISC_PER108_SEMCR   at 16#464# range 0 .. 31;
      RIFSC_RISC_PER109_CIDCFGR at 16#468# range 0 .. 31;
      RIFSC_RISC_PER109_SEMCR   at 16#46C# range 0 .. 31;
      RIFSC_RISC_PER110_CIDCFGR at 16#470# range 0 .. 31;
      RIFSC_RISC_PER110_SEMCR   at 16#474# range 0 .. 31;
      RIFSC_RISC_PER111_CIDCFGR at 16#478# range 0 .. 31;
      RIFSC_RISC_PER111_SEMCR   at 16#47C# range 0 .. 31;
      RIFSC_RISC_PER112_CIDCFGR at 16#480# range 0 .. 31;
      RIFSC_RISC_PER112_SEMCR   at 16#484# range 0 .. 31;
      RIFSC_RISC_PER113_CIDCFGR at 16#488# range 0 .. 31;
      RIFSC_RISC_PER113_SEMCR   at 16#48C# range 0 .. 31;
      RIFSC_RISC_PER114_CIDCFGR at 16#490# range 0 .. 31;
      RIFSC_RISC_PER114_SEMCR   at 16#494# range 0 .. 31;
      RIFSC_RISC_PER115_CIDCFGR at 16#498# range 0 .. 31;
      RIFSC_RISC_PER115_SEMCR   at 16#49C# range 0 .. 31;
      RIFSC_RISC_PER116_CIDCFGR at 16#4A0# range 0 .. 31;
      RIFSC_RISC_PER116_SEMCR   at 16#4A4# range 0 .. 31;
      RIFSC_RISC_PER117_CIDCFGR at 16#4A8# range 0 .. 31;
      RIFSC_RISC_PER117_SEMCR   at 16#4AC# range 0 .. 31;
      RIFSC_RISC_PER118_CIDCFGR at 16#4B0# range 0 .. 31;
      RIFSC_RISC_PER118_SEMCR   at 16#4B4# range 0 .. 31;
      RIFSC_RISC_PER119_CIDCFGR at 16#4B8# range 0 .. 31;
      RIFSC_RISC_PER119_SEMCR   at 16#4BC# range 0 .. 31;
      RIFSC_RISC_PER120_CIDCFGR at 16#4C0# range 0 .. 31;
      RIFSC_RISC_PER120_SEMCR   at 16#4C4# range 0 .. 31;
      RIFSC_RISC_PER121_CIDCFGR at 16#4C8# range 0 .. 31;
      RIFSC_RISC_PER121_SEMCR   at 16#4CC# range 0 .. 31;
      RIFSC_RISC_PER122_CIDCFGR at 16#4D0# range 0 .. 31;
      RIFSC_RISC_PER122_SEMCR   at 16#4D4# range 0 .. 31;
      RIFSC_RISC_PER123_CIDCFGR at 16#4D8# range 0 .. 31;
      RIFSC_RISC_PER123_SEMCR   at 16#4DC# range 0 .. 31;
      RIFSC_RISC_PER124_CIDCFGR at 16#4E0# range 0 .. 31;
      RIFSC_RISC_PER124_SEMCR   at 16#4E4# range 0 .. 31;
      RIFSC_RISC_PER125_CIDCFGR at 16#4E8# range 0 .. 31;
      RIFSC_RISC_PER125_SEMCR   at 16#4EC# range 0 .. 31;
      RIFSC_RISC_PER126_CIDCFGR at 16#4F0# range 0 .. 31;
      RIFSC_RISC_PER126_SEMCR   at 16#4F4# range 0 .. 31;
      RIFSC_RISC_PER127_CIDCFGR at 16#4F8# range 0 .. 31;
      RIFSC_RISC_PER127_SEMCR   at 16#4FC# range 0 .. 31;
      RIFSC_RISC_REG1_ACFGR     at 16#900# range 0 .. 31;
      RIFSC_RISC_REG1_BCFGR     at 16#908# range 0 .. 31;
      RIFSC_RISC_REG2_ACFGR     at 16#910# range 0 .. 31;
      RIFSC_RISC_REG2_BCFGR     at 16#918# range 0 .. 31;
      RIFSC_RISC_REG3_ACFGR     at 16#920# range 0 .. 31;
      RIFSC_RISC_REG3_BCFGR     at 16#928# range 0 .. 31;
      RIFSC_RIMC_CR             at 16#C00# range 0 .. 31;
      RIFSC_RIMC_SR             at 16#C04# range 0 .. 31;
      RIFSC_RIMC_ATTR0          at 16#C10# range 0 .. 31;
      RIFSC_RIMC_ATTR1          at 16#C14# range 0 .. 31;
      RIFSC_RIMC_ATTR2          at 16#C18# range 0 .. 31;
      RIFSC_RIMC_ATTR3          at 16#C1C# range 0 .. 31;
      RIFSC_RIMC_ATTR4          at 16#C20# range 0 .. 31;
      RIFSC_RIMC_ATTR5          at 16#C24# range 0 .. 31;
      RIFSC_RIMC_ATTR6          at 16#C28# range 0 .. 31;
      RIFSC_RIMC_ATTR7          at 16#C2C# range 0 .. 31;
      RIFSC_RIMC_ATTR8          at 16#C30# range 0 .. 31;
      RIFSC_RIMC_ATTR9          at 16#C34# range 0 .. 31;
      RIFSC_RIMC_ATTR10         at 16#C38# range 0 .. 31;
      RIFSC_RIMC_ATTR11         at 16#C3C# range 0 .. 31;
      RIFSC_RIMC_ATTR12         at 16#C40# range 0 .. 31;
      RIFSC_RIMC_ATTR13         at 16#C44# range 0 .. 31;
      RIFSC_RIMC_ATTR14         at 16#C48# range 0 .. 31;
      RIFSC_RIMC_ATTR15         at 16#C4C# range 0 .. 31;
      RIFSC_PPSR0               at 16#FB0# range 0 .. 31;
      RIFSC_PPSR1               at 16#FB4# range 0 .. 31;
      RIFSC_PPSR2               at 16#FB8# range 0 .. 31;
      RIFSC_PPSR3               at 16#FBC# range 0 .. 31;
      RIFSC_HWCFGR3             at 16#FE8# range 0 .. 31;
      RIFSC_HWCFGR2             at 16#FEC# range 0 .. 31;
      RIFSC_HWCFGR1             at 16#FF0# range 0 .. 31;
      RIFSC_VERR                at 16#FF4# range 0 .. 31;
      RIFSC_IPIDR               at 16#FF8# range 0 .. 31;
      RIFSC_SIDR                at 16#FFC# range 0 .. 31;
   end record;

   --  RIFSC register block
   RIFSC_Periph : aliased RIFSC_Peripheral
     with Import, Address => RIFSC_Base;

   --  RIFSC register block
   RIFSC_S_Periph : aliased RIFSC_Peripheral
     with Import, Address => RIFSC_S_Base;

end STM32_SVD.RIFSC;
