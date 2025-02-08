--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.RISAB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  RISAB configuration register
   type RISAB_CR_Register is record
      --  Global lock This bit locks the configuration of RISAB registers until
      --  next reset. This bit is cleared by default and, once set, cannot be
      --  reset until global RISAB reset.
      GLOCK         : Boolean := False;
      --  unspecified
      Reserved_1_30 : HAL.UInt30 := 16#0#;
      --  Secure read/write illegal access disable When set, this bit allows
      --  secure read/write data accesses to non-secure blocks and pages
      --  (secure execute remains illegal).
      SRWIAD        : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CR_Register use record
      GLOCK         at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      SRWIAD        at 0 range 31 .. 31;
   end record;

   --  RISAB illegal access status register
   type RISAB_IASR_Register is record
      --  Read-only. configuration access error flag This bit is set when an
      --  illegal access to any RISAB configuration register is detected. This
      --  bit is cleared by setting the corresponding bit in RISAB_IACR.
      CAEF          : Boolean;
      --  Read-only. Illegal access error flag This bit is set when an illegal
      --  access is detected on the system bus. More details on the error can
      --  be found in RISAB_IAESR and RISAB_IADDR. This bit is cleared by
      --  setting the corresponding bit in RISAB_IACR.
      IAEF          : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_IASR_Register use record
      CAEF          at 0 range 0 .. 0;
      IAEF          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RISAB illegal access clear register
   type RISAB_IACR_Register is record
      --  Write-only. Configuration access error flag Set this bit to clear
      --  CAEF in RISAB_IASR.
      CAEF          : Boolean := False;
      --  Write-only. Illegal access error flag Set this bit to clear IAEF in
      --  RISAB_IASR, allowing the capture of new error information
      --  inRISAB_IAESR and RISAB_IADDR. Note: Clearing this bit does not clear
      --  RISAB_IADDR.
      IAEF          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_IACR_Register use record
      CAEF          at 0 range 0 .. 0;
      IAEF          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RISAB_RCFGLOCKR_RLOCK array
   type RISAB_RCFGLOCKR_RLOCK_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB configuration lock register
   type RISAB_RCFGLOCKR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RLOCK as a value
            Val : HAL.UInt32;
         when True =>
            --  RLOCK as an array
            Arr : RISAB_RCFGLOCKR_RLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_RCFGLOCKR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype RISAB_IAESR_IACID_Field is HAL.UInt3;

   --  RISAB illegal access error status register
   type RISAB_IAESR_Register is record
      --  Read-only. illegal access compartment ID When IAEF = 1 in RISAB_IASR,
      --  IACID[2:0] captures the compartment ID of the master that issued the
      --  illegal access on the system bus.
      IACID         : RISAB_IAESR_IACID_Field;
      --  unspecified
      Reserved_3_3  : HAL.Bit;
      --  Read-only. Illegal access privileged When IAEF = 1 in RISAB_IASR,
      --  IAPRIV captures the privilege state of the master that issued the
      --  illegal access on the system bus.
      IAPRIV        : Boolean;
      --  Read-only. Illegal access security When IAEF = 1 in RISAB_IASR, IASEC
      --  captures the security type of the illegal access that occurred on the
      --  system bus.
      IASEC         : Boolean;
      --  unspecified
      Reserved_6_6  : HAL.Bit;
      --  Read-only. Illegal access read/write When IAEF = 1 in RISAB_IASR,
      --  IANRW captures the access type of the illegal access that occurred on
      --  the system bus.
      IANRW         : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_IAESR_Register use record
      IACID         at 0 range 0 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      IAPRIV        at 0 range 4 .. 4;
      IASEC         at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      IANRW         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG0_SECCFGR_SEC array
   type RISAB_PG0_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG0_SECCFGR_SEC
   type RISAB_PG0_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG0_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG0_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 0 security configuration register
   type RISAB_PG0_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG0_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG0_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG1_SECCFGR_SEC array
   type RISAB_PG1_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG1_SECCFGR_SEC
   type RISAB_PG1_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG1_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG1_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 1 security configuration register
   type RISAB_PG1_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG1_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG1_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG2_SECCFGR_SEC array
   type RISAB_PG2_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG2_SECCFGR_SEC
   type RISAB_PG2_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG2_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG2_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 2 security configuration register
   type RISAB_PG2_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG2_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG2_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG3_SECCFGR_SEC array
   type RISAB_PG3_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG3_SECCFGR_SEC
   type RISAB_PG3_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG3_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG3_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 3 security configuration register
   type RISAB_PG3_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG3_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG3_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG4_SECCFGR_SEC array
   type RISAB_PG4_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG4_SECCFGR_SEC
   type RISAB_PG4_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG4_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG4_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 4 security configuration register
   type RISAB_PG4_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG4_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG4_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG5_SECCFGR_SEC array
   type RISAB_PG5_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG5_SECCFGR_SEC
   type RISAB_PG5_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG5_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG5_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 5 security configuration register
   type RISAB_PG5_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG5_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG5_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG6_SECCFGR_SEC array
   type RISAB_PG6_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG6_SECCFGR_SEC
   type RISAB_PG6_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG6_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG6_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 6 security configuration register
   type RISAB_PG6_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG6_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG6_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG7_SECCFGR_SEC array
   type RISAB_PG7_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG7_SECCFGR_SEC
   type RISAB_PG7_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG7_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG7_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 7 security configuration register
   type RISAB_PG7_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG7_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG7_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG8_SECCFGR_SEC array
   type RISAB_PG8_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG8_SECCFGR_SEC
   type RISAB_PG8_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG8_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG8_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 8 security configuration register
   type RISAB_PG8_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG8_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG8_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG9_SECCFGR_SEC array
   type RISAB_PG9_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG9_SECCFGR_SEC
   type RISAB_PG9_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG9_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG9_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 9 security configuration register
   type RISAB_PG9_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG9_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG9_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG10_SECCFGR_SEC array
   type RISAB_PG10_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG10_SECCFGR_SEC
   type RISAB_PG10_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG10_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG10_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 10 security configuration register
   type RISAB_PG10_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG10_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG10_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG11_SECCFGR_SEC array
   type RISAB_PG11_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG11_SECCFGR_SEC
   type RISAB_PG11_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG11_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG11_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 11 security configuration register
   type RISAB_PG11_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG11_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG11_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG12_SECCFGR_SEC array
   type RISAB_PG12_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG12_SECCFGR_SEC
   type RISAB_PG12_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG12_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG12_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 12 security configuration register
   type RISAB_PG12_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG12_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG12_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG13_SECCFGR_SEC array
   type RISAB_PG13_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG13_SECCFGR_SEC
   type RISAB_PG13_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG13_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG13_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 13 security configuration register
   type RISAB_PG13_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG13_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG13_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG14_SECCFGR_SEC array
   type RISAB_PG14_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG14_SECCFGR_SEC
   type RISAB_PG14_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG14_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG14_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 14 security configuration register
   type RISAB_PG14_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG14_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG14_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG15_SECCFGR_SEC array
   type RISAB_PG15_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG15_SECCFGR_SEC
   type RISAB_PG15_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG15_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG15_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 15 security configuration register
   type RISAB_PG15_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG15_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG15_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG16_SECCFGR_SEC array
   type RISAB_PG16_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG16_SECCFGR_SEC
   type RISAB_PG16_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG16_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG16_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 16 security configuration register
   type RISAB_PG16_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG16_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG16_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG17_SECCFGR_SEC array
   type RISAB_PG17_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG17_SECCFGR_SEC
   type RISAB_PG17_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG17_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG17_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 17 security configuration register
   type RISAB_PG17_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG17_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG17_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG18_SECCFGR_SEC array
   type RISAB_PG18_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG18_SECCFGR_SEC
   type RISAB_PG18_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG18_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG18_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 18 security configuration register
   type RISAB_PG18_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG18_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG18_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG19_SECCFGR_SEC array
   type RISAB_PG19_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG19_SECCFGR_SEC
   type RISAB_PG19_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG19_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG19_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 19 security configuration register
   type RISAB_PG19_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG19_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG19_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG20_SECCFGR_SEC array
   type RISAB_PG20_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG20_SECCFGR_SEC
   type RISAB_PG20_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG20_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG20_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 20 security configuration register
   type RISAB_PG20_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG20_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG20_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG21_SECCFGR_SEC array
   type RISAB_PG21_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG21_SECCFGR_SEC
   type RISAB_PG21_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG21_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG21_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 21 security configuration register
   type RISAB_PG21_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG21_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG21_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG22_SECCFGR_SEC array
   type RISAB_PG22_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG22_SECCFGR_SEC
   type RISAB_PG22_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG22_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG22_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 22 security configuration register
   type RISAB_PG22_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG22_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG22_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG23_SECCFGR_SEC array
   type RISAB_PG23_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG23_SECCFGR_SEC
   type RISAB_PG23_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG23_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG23_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 23 security configuration register
   type RISAB_PG23_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG23_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG23_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG24_SECCFGR_SEC array
   type RISAB_PG24_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG24_SECCFGR_SEC
   type RISAB_PG24_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG24_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG24_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 24 security configuration register
   type RISAB_PG24_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG24_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG24_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG25_SECCFGR_SEC array
   type RISAB_PG25_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG25_SECCFGR_SEC
   type RISAB_PG25_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG25_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG25_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 25 security configuration register
   type RISAB_PG25_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG25_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG25_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG26_SECCFGR_SEC array
   type RISAB_PG26_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG26_SECCFGR_SEC
   type RISAB_PG26_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG26_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG26_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 26 security configuration register
   type RISAB_PG26_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG26_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG26_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG27_SECCFGR_SEC array
   type RISAB_PG27_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG27_SECCFGR_SEC
   type RISAB_PG27_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG27_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG27_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 27 security configuration register
   type RISAB_PG27_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG27_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG27_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG28_SECCFGR_SEC array
   type RISAB_PG28_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG28_SECCFGR_SEC
   type RISAB_PG28_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG28_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG28_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 28 security configuration register
   type RISAB_PG28_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG28_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG28_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG29_SECCFGR_SEC array
   type RISAB_PG29_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG29_SECCFGR_SEC
   type RISAB_PG29_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG29_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG29_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 29 security configuration register
   type RISAB_PG29_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG29_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG29_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG30_SECCFGR_SEC array
   type RISAB_PG30_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG30_SECCFGR_SEC
   type RISAB_PG30_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG30_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG30_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 30 security configuration register
   type RISAB_PG30_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG30_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG30_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG31_SECCFGR_SEC array
   type RISAB_PG31_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG31_SECCFGR_SEC
   type RISAB_PG31_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : RISAB_PG31_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG31_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 31 security configuration register
   type RISAB_PG31_SECCFGR_Register is record
      --  Security configuration for block z
      SEC           : RISAB_PG31_SECCFGR_SEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG31_SECCFGR_Register use record
      SEC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG0_PRIVCFGR_PRIV array
   type RISAB_PG0_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG0_PRIVCFGR_PRIV
   type RISAB_PG0_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG0_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG0_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 0 default privileged configuration register
   type RISAB_PG0_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG0_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG0_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG1_PRIVCFGR_PRIV array
   type RISAB_PG1_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG1_PRIVCFGR_PRIV
   type RISAB_PG1_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG1_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG1_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 1 default privileged configuration register
   type RISAB_PG1_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG1_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG1_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG2_PRIVCFGR_PRIV array
   type RISAB_PG2_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG2_PRIVCFGR_PRIV
   type RISAB_PG2_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG2_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG2_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 2 default privileged configuration register
   type RISAB_PG2_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG2_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG2_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG3_PRIVCFGR_PRIV array
   type RISAB_PG3_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG3_PRIVCFGR_PRIV
   type RISAB_PG3_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG3_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG3_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 3 default privileged configuration register
   type RISAB_PG3_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG3_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG3_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG4_PRIVCFGR_PRIV array
   type RISAB_PG4_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG4_PRIVCFGR_PRIV
   type RISAB_PG4_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG4_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG4_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 4 default privileged configuration register
   type RISAB_PG4_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG4_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG4_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG5_PRIVCFGR_PRIV array
   type RISAB_PG5_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG5_PRIVCFGR_PRIV
   type RISAB_PG5_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG5_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG5_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 5 default privileged configuration register
   type RISAB_PG5_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG5_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG5_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG6_PRIVCFGR_PRIV array
   type RISAB_PG6_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG6_PRIVCFGR_PRIV
   type RISAB_PG6_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG6_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG6_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 6 default privileged configuration register
   type RISAB_PG6_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG6_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG6_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG7_PRIVCFGR_PRIV array
   type RISAB_PG7_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG7_PRIVCFGR_PRIV
   type RISAB_PG7_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG7_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG7_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 7 default privileged configuration register
   type RISAB_PG7_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG7_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG7_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG8_PRIVCFGR_PRIV array
   type RISAB_PG8_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG8_PRIVCFGR_PRIV
   type RISAB_PG8_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG8_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG8_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 8 default privileged configuration register
   type RISAB_PG8_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG8_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG8_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG9_PRIVCFGR_PRIV array
   type RISAB_PG9_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG9_PRIVCFGR_PRIV
   type RISAB_PG9_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG9_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG9_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 9 default privileged configuration register
   type RISAB_PG9_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG9_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG9_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG10_PRIVCFGR_PRIV array
   type RISAB_PG10_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG10_PRIVCFGR_PRIV
   type RISAB_PG10_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG10_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG10_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 10 default privileged configuration register
   type RISAB_PG10_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG10_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG10_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG11_PRIVCFGR_PRIV array
   type RISAB_PG11_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG11_PRIVCFGR_PRIV
   type RISAB_PG11_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG11_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG11_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 11 default privileged configuration register
   type RISAB_PG11_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG11_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG11_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG12_PRIVCFGR_PRIV array
   type RISAB_PG12_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG12_PRIVCFGR_PRIV
   type RISAB_PG12_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG12_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG12_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 12 default privileged configuration register
   type RISAB_PG12_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG12_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG12_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG13_PRIVCFGR_PRIV array
   type RISAB_PG13_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG13_PRIVCFGR_PRIV
   type RISAB_PG13_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG13_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG13_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 13 default privileged configuration register
   type RISAB_PG13_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG13_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG13_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG14_PRIVCFGR_PRIV array
   type RISAB_PG14_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG14_PRIVCFGR_PRIV
   type RISAB_PG14_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG14_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG14_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 14 default privileged configuration register
   type RISAB_PG14_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG14_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG14_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG15_PRIVCFGR_PRIV array
   type RISAB_PG15_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG15_PRIVCFGR_PRIV
   type RISAB_PG15_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG15_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG15_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 15 default privileged configuration register
   type RISAB_PG15_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG15_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG15_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG16_PRIVCFGR_PRIV array
   type RISAB_PG16_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG16_PRIVCFGR_PRIV
   type RISAB_PG16_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG16_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG16_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 16 default privileged configuration register
   type RISAB_PG16_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG16_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG16_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG17_PRIVCFGR_PRIV array
   type RISAB_PG17_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG17_PRIVCFGR_PRIV
   type RISAB_PG17_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG17_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG17_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 17 default privileged configuration register
   type RISAB_PG17_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG17_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG17_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG18_PRIVCFGR_PRIV array
   type RISAB_PG18_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG18_PRIVCFGR_PRIV
   type RISAB_PG18_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG18_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG18_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 18 default privileged configuration register
   type RISAB_PG18_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG18_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG18_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG19_PRIVCFGR_PRIV array
   type RISAB_PG19_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG19_PRIVCFGR_PRIV
   type RISAB_PG19_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG19_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG19_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 19 default privileged configuration register
   type RISAB_PG19_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG19_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG19_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG20_PRIVCFGR_PRIV array
   type RISAB_PG20_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG20_PRIVCFGR_PRIV
   type RISAB_PG20_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG20_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG20_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 20 default privileged configuration register
   type RISAB_PG20_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG20_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG20_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG21_PRIVCFGR_PRIV array
   type RISAB_PG21_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG21_PRIVCFGR_PRIV
   type RISAB_PG21_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG21_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG21_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 21 default privileged configuration register
   type RISAB_PG21_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG21_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG21_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG22_PRIVCFGR_PRIV array
   type RISAB_PG22_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG22_PRIVCFGR_PRIV
   type RISAB_PG22_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG22_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG22_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 22 default privileged configuration register
   type RISAB_PG22_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG22_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG22_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG23_PRIVCFGR_PRIV array
   type RISAB_PG23_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG23_PRIVCFGR_PRIV
   type RISAB_PG23_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG23_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG23_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 23 default privileged configuration register
   type RISAB_PG23_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG23_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG23_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG24_PRIVCFGR_PRIV array
   type RISAB_PG24_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG24_PRIVCFGR_PRIV
   type RISAB_PG24_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG24_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG24_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 24 default privileged configuration register
   type RISAB_PG24_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG24_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG24_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG25_PRIVCFGR_PRIV array
   type RISAB_PG25_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG25_PRIVCFGR_PRIV
   type RISAB_PG25_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG25_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG25_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 25 default privileged configuration register
   type RISAB_PG25_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG25_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG25_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG26_PRIVCFGR_PRIV array
   type RISAB_PG26_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG26_PRIVCFGR_PRIV
   type RISAB_PG26_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG26_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG26_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 26 default privileged configuration register
   type RISAB_PG26_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG26_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG26_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG27_PRIVCFGR_PRIV array
   type RISAB_PG27_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG27_PRIVCFGR_PRIV
   type RISAB_PG27_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG27_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG27_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 27 default privileged configuration register
   type RISAB_PG27_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG27_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG27_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG28_PRIVCFGR_PRIV array
   type RISAB_PG28_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG28_PRIVCFGR_PRIV
   type RISAB_PG28_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG28_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG28_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 28 default privileged configuration register
   type RISAB_PG28_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG28_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG28_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG29_PRIVCFGR_PRIV array
   type RISAB_PG29_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG29_PRIVCFGR_PRIV
   type RISAB_PG29_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG29_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG29_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 29 default privileged configuration register
   type RISAB_PG29_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG29_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG29_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG30_PRIVCFGR_PRIV array
   type RISAB_PG30_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG30_PRIVCFGR_PRIV
   type RISAB_PG30_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG30_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG30_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 30 default privileged configuration register
   type RISAB_PG30_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG30_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG30_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG31_PRIVCFGR_PRIV array
   type RISAB_PG31_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG31_PRIVCFGR_PRIV
   type RISAB_PG31_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG31_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG31_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 31 default privileged configuration register
   type RISAB_PG31_PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is activated for page y (CFEN = 1 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG31_PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG31_PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG0_C2PRIVCFGR_PRIV array
   type RISAB_PG0_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG0_C2PRIVCFGR_PRIV
   type RISAB_PG0_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG0_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG0_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 0 privileged configuration register for	compartment 2
   type RISAB_PG0_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG0_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG0_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG1_C2PRIVCFGR_PRIV array
   type RISAB_PG1_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG1_C2PRIVCFGR_PRIV
   type RISAB_PG1_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG1_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG1_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 1 privileged configuration register for	compartment 2
   type RISAB_PG1_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG1_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG1_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG2_C2PRIVCFGR_PRIV array
   type RISAB_PG2_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG2_C2PRIVCFGR_PRIV
   type RISAB_PG2_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG2_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG2_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 2 privileged configuration register for	compartment 2
   type RISAB_PG2_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG2_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG2_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG3_C2PRIVCFGR_PRIV array
   type RISAB_PG3_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG3_C2PRIVCFGR_PRIV
   type RISAB_PG3_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG3_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG3_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 3 privileged configuration register for	compartment 2
   type RISAB_PG3_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG3_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG3_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG4_C2PRIVCFGR_PRIV array
   type RISAB_PG4_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG4_C2PRIVCFGR_PRIV
   type RISAB_PG4_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG4_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG4_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 4 privileged configuration register for	compartment 2
   type RISAB_PG4_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG4_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG4_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG5_C2PRIVCFGR_PRIV array
   type RISAB_PG5_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG5_C2PRIVCFGR_PRIV
   type RISAB_PG5_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG5_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG5_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 5 privileged configuration register for	compartment 2
   type RISAB_PG5_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG5_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG5_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG6_C2PRIVCFGR_PRIV array
   type RISAB_PG6_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG6_C2PRIVCFGR_PRIV
   type RISAB_PG6_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG6_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG6_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 6 privileged configuration register for	compartment 2
   type RISAB_PG6_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG6_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG6_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG7_C2PRIVCFGR_PRIV array
   type RISAB_PG7_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG7_C2PRIVCFGR_PRIV
   type RISAB_PG7_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG7_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG7_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 7 privileged configuration register for	compartment 2
   type RISAB_PG7_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG7_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG7_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG8_C2PRIVCFGR_PRIV array
   type RISAB_PG8_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG8_C2PRIVCFGR_PRIV
   type RISAB_PG8_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG8_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG8_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 8 privileged configuration register for	compartment 2
   type RISAB_PG8_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG8_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG8_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG9_C2PRIVCFGR_PRIV array
   type RISAB_PG9_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG9_C2PRIVCFGR_PRIV
   type RISAB_PG9_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG9_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG9_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 9 privileged configuration register for	compartment 2
   type RISAB_PG9_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG9_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG9_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG10_C2PRIVCFGR_PRIV array
   type RISAB_PG10_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG10_C2PRIVCFGR_PRIV
   type RISAB_PG10_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG10_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG10_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 10 privileged configuration register for	compartment 2
   type RISAB_PG10_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG10_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG10_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG11_C2PRIVCFGR_PRIV array
   type RISAB_PG11_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG11_C2PRIVCFGR_PRIV
   type RISAB_PG11_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG11_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG11_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 11 privileged configuration register for	compartment 2
   type RISAB_PG11_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG11_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG11_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG12_C2PRIVCFGR_PRIV array
   type RISAB_PG12_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG12_C2PRIVCFGR_PRIV
   type RISAB_PG12_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG12_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG12_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 12 privileged configuration register for	compartment 2
   type RISAB_PG12_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG12_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG12_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG13_C2PRIVCFGR_PRIV array
   type RISAB_PG13_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG13_C2PRIVCFGR_PRIV
   type RISAB_PG13_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG13_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG13_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 13 privileged configuration register for	compartment 2
   type RISAB_PG13_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG13_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG13_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG14_C2PRIVCFGR_PRIV array
   type RISAB_PG14_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG14_C2PRIVCFGR_PRIV
   type RISAB_PG14_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG14_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG14_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 14 privileged configuration register for	compartment 2
   type RISAB_PG14_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG14_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG14_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG15_C2PRIVCFGR_PRIV array
   type RISAB_PG15_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG15_C2PRIVCFGR_PRIV
   type RISAB_PG15_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG15_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG15_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 15 privileged configuration register for	compartment 2
   type RISAB_PG15_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG15_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG15_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG16_C2PRIVCFGR_PRIV array
   type RISAB_PG16_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG16_C2PRIVCFGR_PRIV
   type RISAB_PG16_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG16_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG16_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 16 privileged configuration register for	compartment 2
   type RISAB_PG16_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG16_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG16_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG17_C2PRIVCFGR_PRIV array
   type RISAB_PG17_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG17_C2PRIVCFGR_PRIV
   type RISAB_PG17_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG17_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG17_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 17 privileged configuration register for	compartment 2
   type RISAB_PG17_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG17_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG17_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG18_C2PRIVCFGR_PRIV array
   type RISAB_PG18_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG18_C2PRIVCFGR_PRIV
   type RISAB_PG18_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG18_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG18_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 18 privileged configuration register for	compartment 2
   type RISAB_PG18_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG18_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG18_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG19_C2PRIVCFGR_PRIV array
   type RISAB_PG19_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG19_C2PRIVCFGR_PRIV
   type RISAB_PG19_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG19_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG19_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 19 privileged configuration register for	compartment 2
   type RISAB_PG19_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG19_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG19_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG20_C2PRIVCFGR_PRIV array
   type RISAB_PG20_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG20_C2PRIVCFGR_PRIV
   type RISAB_PG20_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG20_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG20_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 20 privileged configuration register for	compartment 2
   type RISAB_PG20_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG20_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG20_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG21_C2PRIVCFGR_PRIV array
   type RISAB_PG21_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG21_C2PRIVCFGR_PRIV
   type RISAB_PG21_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG21_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG21_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 21 privileged configuration register for	compartment 2
   type RISAB_PG21_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG21_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG21_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG22_C2PRIVCFGR_PRIV array
   type RISAB_PG22_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG22_C2PRIVCFGR_PRIV
   type RISAB_PG22_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG22_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG22_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 22 privileged configuration register for	compartment 2
   type RISAB_PG22_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG22_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG22_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG23_C2PRIVCFGR_PRIV array
   type RISAB_PG23_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG23_C2PRIVCFGR_PRIV
   type RISAB_PG23_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG23_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG23_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 23 privileged configuration register for	compartment 2
   type RISAB_PG23_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG23_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG23_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG24_C2PRIVCFGR_PRIV array
   type RISAB_PG24_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG24_C2PRIVCFGR_PRIV
   type RISAB_PG24_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG24_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG24_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 24 privileged configuration register for	compartment 2
   type RISAB_PG24_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG24_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG24_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG25_C2PRIVCFGR_PRIV array
   type RISAB_PG25_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG25_C2PRIVCFGR_PRIV
   type RISAB_PG25_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG25_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG25_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 25 privileged configuration register for	compartment 2
   type RISAB_PG25_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG25_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG25_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG26_C2PRIVCFGR_PRIV array
   type RISAB_PG26_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG26_C2PRIVCFGR_PRIV
   type RISAB_PG26_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG26_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG26_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 26 privileged configuration register for	compartment 2
   type RISAB_PG26_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG26_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG26_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG27_C2PRIVCFGR_PRIV array
   type RISAB_PG27_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG27_C2PRIVCFGR_PRIV
   type RISAB_PG27_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG27_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG27_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 27 privileged configuration register for	compartment 2
   type RISAB_PG27_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG27_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG27_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG28_C2PRIVCFGR_PRIV array
   type RISAB_PG28_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG28_C2PRIVCFGR_PRIV
   type RISAB_PG28_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG28_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG28_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 28 privileged configuration register for	compartment 2
   type RISAB_PG28_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG28_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG28_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG29_C2PRIVCFGR_PRIV array
   type RISAB_PG29_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG29_C2PRIVCFGR_PRIV
   type RISAB_PG29_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG29_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG29_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 29 privileged configuration register for	compartment 2
   type RISAB_PG29_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG29_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG29_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG30_C2PRIVCFGR_PRIV array
   type RISAB_PG30_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG30_C2PRIVCFGR_PRIV
   type RISAB_PG30_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG30_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG30_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 30 privileged configuration register for	compartment 2
   type RISAB_PG30_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG30_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG30_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_PG31_C2PRIVCFGR_PRIV array
   type RISAB_PG31_C2PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for RISAB_PG31_C2PRIVCFGR_PRIV
   type RISAB_PG31_C2PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : RISAB_PG31_C2PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RISAB_PG31_C2PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  RISAB page 31 privileged configuration register for	compartment 2
   type RISAB_PG31_C2PRIVCFGR_Register is record
      --  Privileged configuration for block z This bit is ignored if the
      --  filtering per compartment is not activated for page y (CFEN = 0 in
      --  RISAB_PGy_CIDCFGR). Note: Non-secure write to this bit is ignored if
      --  SECz is set in RISAB_PGy_SECCFGR.
      PRIV          : RISAB_PG31_C2PRIVCFGR_PRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG31_C2PRIVCFGR_Register use record
      PRIV          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RISAB_CID0PRIVCFGR_PPRIV array
   type RISAB_CID0PRIVCFGR_PPRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 0 privilege configuration register
   type RISAB_CID0PRIVCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PPRIV as an array
            Arr : RISAB_CID0PRIVCFGR_PPRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID0PRIVCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID0RDCFGR_PRDEN array
   type RISAB_CID0RDCFGR_PRDEN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 0 read configuration register
   type RISAB_CID0RDCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRDEN as a value
            Val : HAL.UInt32;
         when True =>
            --  PRDEN as an array
            Arr : RISAB_CID0RDCFGR_PRDEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID0RDCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID0WRCFGR_PWREN array
   type RISAB_CID0WRCFGR_PWREN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 0 write configuration register
   type RISAB_CID0WRCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PWREN as a value
            Val : HAL.UInt32;
         when True =>
            --  PWREN as an array
            Arr : RISAB_CID0WRCFGR_PWREN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID0WRCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID1PRIVCFGR_PPRIV array
   type RISAB_CID1PRIVCFGR_PPRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 1 privilege configuration register
   type RISAB_CID1PRIVCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PPRIV as an array
            Arr : RISAB_CID1PRIVCFGR_PPRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID1PRIVCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID1RDCFGR_PRDEN array
   type RISAB_CID1RDCFGR_PRDEN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 1 read configuration register
   type RISAB_CID1RDCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRDEN as a value
            Val : HAL.UInt32;
         when True =>
            --  PRDEN as an array
            Arr : RISAB_CID1RDCFGR_PRDEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID1RDCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID1WRCFGR_PWREN array
   type RISAB_CID1WRCFGR_PWREN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 1 write configuration register
   type RISAB_CID1WRCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PWREN as a value
            Val : HAL.UInt32;
         when True =>
            --  PWREN as an array
            Arr : RISAB_CID1WRCFGR_PWREN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID1WRCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID2PRIVCFGR_PPRIV array
   type RISAB_CID2PRIVCFGR_PPRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 2 privilege configuration register
   type RISAB_CID2PRIVCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PPRIV as an array
            Arr : RISAB_CID2PRIVCFGR_PPRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID2PRIVCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID2RDCFGR_PRDEN array
   type RISAB_CID2RDCFGR_PRDEN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 2 read configuration register
   type RISAB_CID2RDCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRDEN as a value
            Val : HAL.UInt32;
         when True =>
            --  PRDEN as an array
            Arr : RISAB_CID2RDCFGR_PRDEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID2RDCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID2WRCFGR_PWREN array
   type RISAB_CID2WRCFGR_PWREN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 2 write configuration register
   type RISAB_CID2WRCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PWREN as a value
            Val : HAL.UInt32;
         when True =>
            --  PWREN as an array
            Arr : RISAB_CID2WRCFGR_PWREN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID2WRCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID3PRIVCFGR_PPRIV array
   type RISAB_CID3PRIVCFGR_PPRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 3 privilege configuration register
   type RISAB_CID3PRIVCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PPRIV as an array
            Arr : RISAB_CID3PRIVCFGR_PPRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID3PRIVCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID3RDCFGR_PRDEN array
   type RISAB_CID3RDCFGR_PRDEN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 3 read configuration register
   type RISAB_CID3RDCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRDEN as a value
            Val : HAL.UInt32;
         when True =>
            --  PRDEN as an array
            Arr : RISAB_CID3RDCFGR_PRDEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID3RDCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID3WRCFGR_PWREN array
   type RISAB_CID3WRCFGR_PWREN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 3 write configuration register
   type RISAB_CID3WRCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PWREN as a value
            Val : HAL.UInt32;
         when True =>
            --  PWREN as an array
            Arr : RISAB_CID3WRCFGR_PWREN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID3WRCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID4PRIVCFGR_PPRIV array
   type RISAB_CID4PRIVCFGR_PPRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 4 privilege configuration register
   type RISAB_CID4PRIVCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PPRIV as an array
            Arr : RISAB_CID4PRIVCFGR_PPRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID4PRIVCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID4RDCFGR_PRDEN array
   type RISAB_CID4RDCFGR_PRDEN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 4 read configuration register
   type RISAB_CID4RDCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRDEN as a value
            Val : HAL.UInt32;
         when True =>
            --  PRDEN as an array
            Arr : RISAB_CID4RDCFGR_PRDEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID4RDCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID4WRCFGR_PWREN array
   type RISAB_CID4WRCFGR_PWREN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 4 write configuration register
   type RISAB_CID4WRCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PWREN as a value
            Val : HAL.UInt32;
         when True =>
            --  PWREN as an array
            Arr : RISAB_CID4WRCFGR_PWREN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID4WRCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID5PRIVCFGR_PPRIV array
   type RISAB_CID5PRIVCFGR_PPRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 5 privilege configuration register
   type RISAB_CID5PRIVCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PPRIV as an array
            Arr : RISAB_CID5PRIVCFGR_PPRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID5PRIVCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID5RDCFGR_PRDEN array
   type RISAB_CID5RDCFGR_PRDEN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 5 read configuration register
   type RISAB_CID5RDCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRDEN as a value
            Val : HAL.UInt32;
         when True =>
            --  PRDEN as an array
            Arr : RISAB_CID5RDCFGR_PRDEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID5RDCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID5WRCFGR_PWREN array
   type RISAB_CID5WRCFGR_PWREN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 5 write configuration register
   type RISAB_CID5WRCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PWREN as a value
            Val : HAL.UInt32;
         when True =>
            --  PWREN as an array
            Arr : RISAB_CID5WRCFGR_PWREN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID5WRCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID6PRIVCFGR_PPRIV array
   type RISAB_CID6PRIVCFGR_PPRIV_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 6 privilege configuration register
   type RISAB_CID6PRIVCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRIV as a value
            Val : HAL.UInt32;
         when True =>
            --  PPRIV as an array
            Arr : RISAB_CID6PRIVCFGR_PPRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID6PRIVCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID6RDCFGR_PRDEN array
   type RISAB_CID6RDCFGR_PRDEN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 6 read configuration register
   type RISAB_CID6RDCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRDEN as a value
            Val : HAL.UInt32;
         when True =>
            --  PRDEN as an array
            Arr : RISAB_CID6RDCFGR_PRDEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID6RDCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  RISAB_CID6WRCFGR_PWREN array
   type RISAB_CID6WRCFGR_PWREN_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  RISAB compartment 6 write configuration register
   type RISAB_CID6WRCFGR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PWREN as a value
            Val : HAL.UInt32;
         when True =>
            --  PWREN as an array
            Arr : RISAB_CID6WRCFGR_PWREN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_CID6WRCFGR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype RISAB_PG0_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 0 CID configuration register
   type RISAB_PG0_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG0_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG0_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG1_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 1 CID configuration register
   type RISAB_PG1_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG1_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG1_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG2_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 2 CID configuration register
   type RISAB_PG2_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG2_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG2_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG3_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 3 CID configuration register
   type RISAB_PG3_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG3_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG3_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG4_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 4 CID configuration register
   type RISAB_PG4_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG4_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG4_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG5_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 5 CID configuration register
   type RISAB_PG5_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG5_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG5_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG6_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 6 CID configuration register
   type RISAB_PG6_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG6_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG6_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG7_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 7 CID configuration register
   type RISAB_PG7_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG7_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG7_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG8_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 8 CID configuration register
   type RISAB_PG8_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG8_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG8_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG9_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 9 CID configuration register
   type RISAB_PG9_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG9_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG9_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG10_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 10 CID configuration register
   type RISAB_PG10_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG10_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG10_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG11_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 11 CID configuration register
   type RISAB_PG11_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG11_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG11_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG12_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 12 CID configuration register
   type RISAB_PG12_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG12_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG12_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG13_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 13 CID configuration register
   type RISAB_PG13_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG13_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG13_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG14_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 14 CID configuration register
   type RISAB_PG14_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG14_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG14_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG15_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 15 CID configuration register
   type RISAB_PG15_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG15_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG15_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG16_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 16 CID configuration register
   type RISAB_PG16_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG16_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG16_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG17_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 17 CID configuration register
   type RISAB_PG17_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG17_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG17_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG18_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 18 CID configuration register
   type RISAB_PG18_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG18_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG18_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG19_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 19 CID configuration register
   type RISAB_PG19_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG19_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG19_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG20_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 20 CID configuration register
   type RISAB_PG20_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG20_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG20_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG21_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 21 CID configuration register
   type RISAB_PG21_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG21_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG21_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG22_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 22 CID configuration register
   type RISAB_PG22_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG22_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG22_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG23_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 23 CID configuration register
   type RISAB_PG23_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG23_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG23_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG24_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 24 CID configuration register
   type RISAB_PG24_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG24_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG24_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG25_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 25 CID configuration register
   type RISAB_PG25_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG25_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG25_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG26_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 26 CID configuration register
   type RISAB_PG26_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG26_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG26_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG27_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 27 CID configuration register
   type RISAB_PG27_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG27_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG27_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG28_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 28 CID configuration register
   type RISAB_PG28_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG28_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG28_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG29_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 29 CID configuration register
   type RISAB_PG29_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG29_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG29_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG30_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 30 CID configuration register
   type RISAB_PG30_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG30_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG30_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype RISAB_PG31_CIDCFGR_DCCID_Field is HAL.UInt3;

   --  RISAB page 31 CID configuration register
   type RISAB_PG31_CIDCFGR_Register is record
      --  CID filtering enable Note: For any CFEN value, the access controls to
      --  page y, defined in RISAB_PGy_SECCFGR, and RISAB_zzPRIVCFGR (zz = PGy_
      --  if CFEN = 0, zz=PGy_C2 or CIDx if CFEN = 1) always apply.
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_1  : HAL.Bit := 16#0#;
      --  Delegated configuration enable This bit defines the access control of
      --  RISAB_PGy_SECCFGR, PPRIVy inRISAB_CIDxPRIVCFGR, PRDENy in
      --  RISAB_CIDxRDCFGR, and PWRENy inRISAB_CIDxWRCFGR. Note: When DCEN is
      --  set, the configuration application must be secure if at least one bit
      --  is set inRISAB_PGy_SECCFGR.
      DCEN          : Boolean := False;
      --  unspecified
      Reserved_3_3  : HAL.Bit := 16#0#;
      --  Delegated configuration CID The trusted domain application can use
      --  this bit field to statically define which compartment can program the
      --  security domain of page y, if DCEN = 1.
      DCCID         : RISAB_PG31_CIDCFGR_DCCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_PG31_CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_1  at 0 range 1 .. 1;
      DCEN          at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      DCCID         at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  RISAB_HWCFGR1_CFG array element
   subtype RISAB_HWCFGR1_CFG_Element is HAL.UInt4;

   --  RISAB_HWCFGR1_CFG array
   type RISAB_HWCFGR1_CFG_Field_Array is array (1 .. 7)
     of RISAB_HWCFGR1_CFG_Element
     with Component_Size => 4, Size => 28;

   --  Type definition for RISAB_HWCFGR1_CFG
   type RISAB_HWCFGR1_CFG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CFG as a value
            Val : HAL.UInt28;
         when True =>
            --  CFG as an array
            Arr : RISAB_HWCFGR1_CFG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 28;

   for RISAB_HWCFGR1_CFG_Field use record
      Val at 0 range 0 .. 27;
      Arr at 0 range 0 .. 27;
   end record;

   --  RISAB hardware configuration register 1
   type RISAB_HWCFGR1_Register is record
      --  Read-only. Hardware configuration 1 This bit field returns the
      --  generic value RIF_ENABLED.
      CFG            : RISAB_HWCFGR1_CFG_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_HWCFGR1_Register use record
      CFG            at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype RISAB_VERR_MINREV_Field is HAL.UInt4;
   subtype RISAB_VERR_MAJREV_Field is HAL.UInt4;

   --  RISAB version register
   type RISAB_VERR_Register is record
      --  Read-only. RISAB minor revision
      MINREV        : RISAB_VERR_MINREV_Field;
      --  Read-only. RISAB major revision
      MAJREV        : RISAB_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RISAB_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RISAB register block
   type RISAB_Peripheral is record
      --  RISAB configuration register
      RISAB_CR              : aliased RISAB_CR_Register;
      --  RISAB illegal access status register
      RISAB_IASR            : aliased RISAB_IASR_Register;
      --  RISAB illegal access clear register
      RISAB_IACR            : aliased RISAB_IACR_Register;
      --  RISAB configuration lock register
      RISAB_RCFGLOCKR       : aliased RISAB_RCFGLOCKR_Register;
      --  RISAB illegal access error status register
      RISAB_IAESR           : aliased RISAB_IAESR_Register;
      --  RISAB illegal address register
      RISAB_IADDR           : aliased HAL.UInt32;
      --  RISAB page 0 security configuration register
      RISAB_PG0_SECCFGR     : aliased RISAB_PG0_SECCFGR_Register;
      --  RISAB page 1 security configuration register
      RISAB_PG1_SECCFGR     : aliased RISAB_PG1_SECCFGR_Register;
      --  RISAB page 2 security configuration register
      RISAB_PG2_SECCFGR     : aliased RISAB_PG2_SECCFGR_Register;
      --  RISAB page 3 security configuration register
      RISAB_PG3_SECCFGR     : aliased RISAB_PG3_SECCFGR_Register;
      --  RISAB page 4 security configuration register
      RISAB_PG4_SECCFGR     : aliased RISAB_PG4_SECCFGR_Register;
      --  RISAB page 5 security configuration register
      RISAB_PG5_SECCFGR     : aliased RISAB_PG5_SECCFGR_Register;
      --  RISAB page 6 security configuration register
      RISAB_PG6_SECCFGR     : aliased RISAB_PG6_SECCFGR_Register;
      --  RISAB page 7 security configuration register
      RISAB_PG7_SECCFGR     : aliased RISAB_PG7_SECCFGR_Register;
      --  RISAB page 8 security configuration register
      RISAB_PG8_SECCFGR     : aliased RISAB_PG8_SECCFGR_Register;
      --  RISAB page 9 security configuration register
      RISAB_PG9_SECCFGR     : aliased RISAB_PG9_SECCFGR_Register;
      --  RISAB page 10 security configuration register
      RISAB_PG10_SECCFGR    : aliased RISAB_PG10_SECCFGR_Register;
      --  RISAB page 11 security configuration register
      RISAB_PG11_SECCFGR    : aliased RISAB_PG11_SECCFGR_Register;
      --  RISAB page 12 security configuration register
      RISAB_PG12_SECCFGR    : aliased RISAB_PG12_SECCFGR_Register;
      --  RISAB page 13 security configuration register
      RISAB_PG13_SECCFGR    : aliased RISAB_PG13_SECCFGR_Register;
      --  RISAB page 14 security configuration register
      RISAB_PG14_SECCFGR    : aliased RISAB_PG14_SECCFGR_Register;
      --  RISAB page 15 security configuration register
      RISAB_PG15_SECCFGR    : aliased RISAB_PG15_SECCFGR_Register;
      --  RISAB page 16 security configuration register
      RISAB_PG16_SECCFGR    : aliased RISAB_PG16_SECCFGR_Register;
      --  RISAB page 17 security configuration register
      RISAB_PG17_SECCFGR    : aliased RISAB_PG17_SECCFGR_Register;
      --  RISAB page 18 security configuration register
      RISAB_PG18_SECCFGR    : aliased RISAB_PG18_SECCFGR_Register;
      --  RISAB page 19 security configuration register
      RISAB_PG19_SECCFGR    : aliased RISAB_PG19_SECCFGR_Register;
      --  RISAB page 20 security configuration register
      RISAB_PG20_SECCFGR    : aliased RISAB_PG20_SECCFGR_Register;
      --  RISAB page 21 security configuration register
      RISAB_PG21_SECCFGR    : aliased RISAB_PG21_SECCFGR_Register;
      --  RISAB page 22 security configuration register
      RISAB_PG22_SECCFGR    : aliased RISAB_PG22_SECCFGR_Register;
      --  RISAB page 23 security configuration register
      RISAB_PG23_SECCFGR    : aliased RISAB_PG23_SECCFGR_Register;
      --  RISAB page 24 security configuration register
      RISAB_PG24_SECCFGR    : aliased RISAB_PG24_SECCFGR_Register;
      --  RISAB page 25 security configuration register
      RISAB_PG25_SECCFGR    : aliased RISAB_PG25_SECCFGR_Register;
      --  RISAB page 26 security configuration register
      RISAB_PG26_SECCFGR    : aliased RISAB_PG26_SECCFGR_Register;
      --  RISAB page 27 security configuration register
      RISAB_PG27_SECCFGR    : aliased RISAB_PG27_SECCFGR_Register;
      --  RISAB page 28 security configuration register
      RISAB_PG28_SECCFGR    : aliased RISAB_PG28_SECCFGR_Register;
      --  RISAB page 29 security configuration register
      RISAB_PG29_SECCFGR    : aliased RISAB_PG29_SECCFGR_Register;
      --  RISAB page 30 security configuration register
      RISAB_PG30_SECCFGR    : aliased RISAB_PG30_SECCFGR_Register;
      --  RISAB page 31 security configuration register
      RISAB_PG31_SECCFGR    : aliased RISAB_PG31_SECCFGR_Register;
      --  RISAB page 0 default privileged configuration register
      RISAB_PG0_PRIVCFGR    : aliased RISAB_PG0_PRIVCFGR_Register;
      --  RISAB page 1 default privileged configuration register
      RISAB_PG1_PRIVCFGR    : aliased RISAB_PG1_PRIVCFGR_Register;
      --  RISAB page 2 default privileged configuration register
      RISAB_PG2_PRIVCFGR    : aliased RISAB_PG2_PRIVCFGR_Register;
      --  RISAB page 3 default privileged configuration register
      RISAB_PG3_PRIVCFGR    : aliased RISAB_PG3_PRIVCFGR_Register;
      --  RISAB page 4 default privileged configuration register
      RISAB_PG4_PRIVCFGR    : aliased RISAB_PG4_PRIVCFGR_Register;
      --  RISAB page 5 default privileged configuration register
      RISAB_PG5_PRIVCFGR    : aliased RISAB_PG5_PRIVCFGR_Register;
      --  RISAB page 6 default privileged configuration register
      RISAB_PG6_PRIVCFGR    : aliased RISAB_PG6_PRIVCFGR_Register;
      --  RISAB page 7 default privileged configuration register
      RISAB_PG7_PRIVCFGR    : aliased RISAB_PG7_PRIVCFGR_Register;
      --  RISAB page 8 default privileged configuration register
      RISAB_PG8_PRIVCFGR    : aliased RISAB_PG8_PRIVCFGR_Register;
      --  RISAB page 9 default privileged configuration register
      RISAB_PG9_PRIVCFGR    : aliased RISAB_PG9_PRIVCFGR_Register;
      --  RISAB page 10 default privileged configuration register
      RISAB_PG10_PRIVCFGR   : aliased RISAB_PG10_PRIVCFGR_Register;
      --  RISAB page 11 default privileged configuration register
      RISAB_PG11_PRIVCFGR   : aliased RISAB_PG11_PRIVCFGR_Register;
      --  RISAB page 12 default privileged configuration register
      RISAB_PG12_PRIVCFGR   : aliased RISAB_PG12_PRIVCFGR_Register;
      --  RISAB page 13 default privileged configuration register
      RISAB_PG13_PRIVCFGR   : aliased RISAB_PG13_PRIVCFGR_Register;
      --  RISAB page 14 default privileged configuration register
      RISAB_PG14_PRIVCFGR   : aliased RISAB_PG14_PRIVCFGR_Register;
      --  RISAB page 15 default privileged configuration register
      RISAB_PG15_PRIVCFGR   : aliased RISAB_PG15_PRIVCFGR_Register;
      --  RISAB page 16 default privileged configuration register
      RISAB_PG16_PRIVCFGR   : aliased RISAB_PG16_PRIVCFGR_Register;
      --  RISAB page 17 default privileged configuration register
      RISAB_PG17_PRIVCFGR   : aliased RISAB_PG17_PRIVCFGR_Register;
      --  RISAB page 18 default privileged configuration register
      RISAB_PG18_PRIVCFGR   : aliased RISAB_PG18_PRIVCFGR_Register;
      --  RISAB page 19 default privileged configuration register
      RISAB_PG19_PRIVCFGR   : aliased RISAB_PG19_PRIVCFGR_Register;
      --  RISAB page 20 default privileged configuration register
      RISAB_PG20_PRIVCFGR   : aliased RISAB_PG20_PRIVCFGR_Register;
      --  RISAB page 21 default privileged configuration register
      RISAB_PG21_PRIVCFGR   : aliased RISAB_PG21_PRIVCFGR_Register;
      --  RISAB page 22 default privileged configuration register
      RISAB_PG22_PRIVCFGR   : aliased RISAB_PG22_PRIVCFGR_Register;
      --  RISAB page 23 default privileged configuration register
      RISAB_PG23_PRIVCFGR   : aliased RISAB_PG23_PRIVCFGR_Register;
      --  RISAB page 24 default privileged configuration register
      RISAB_PG24_PRIVCFGR   : aliased RISAB_PG24_PRIVCFGR_Register;
      --  RISAB page 25 default privileged configuration register
      RISAB_PG25_PRIVCFGR   : aliased RISAB_PG25_PRIVCFGR_Register;
      --  RISAB page 26 default privileged configuration register
      RISAB_PG26_PRIVCFGR   : aliased RISAB_PG26_PRIVCFGR_Register;
      --  RISAB page 27 default privileged configuration register
      RISAB_PG27_PRIVCFGR   : aliased RISAB_PG27_PRIVCFGR_Register;
      --  RISAB page 28 default privileged configuration register
      RISAB_PG28_PRIVCFGR   : aliased RISAB_PG28_PRIVCFGR_Register;
      --  RISAB page 29 default privileged configuration register
      RISAB_PG29_PRIVCFGR   : aliased RISAB_PG29_PRIVCFGR_Register;
      --  RISAB page 30 default privileged configuration register
      RISAB_PG30_PRIVCFGR   : aliased RISAB_PG30_PRIVCFGR_Register;
      --  RISAB page 31 default privileged configuration register
      RISAB_PG31_PRIVCFGR   : aliased RISAB_PG31_PRIVCFGR_Register;
      --  RISAB page 0 privileged configuration register for	compartment 2
      RISAB_PG0_C2PRIVCFGR  : aliased RISAB_PG0_C2PRIVCFGR_Register;
      --  RISAB page 1 privileged configuration register for	compartment 2
      RISAB_PG1_C2PRIVCFGR  : aliased RISAB_PG1_C2PRIVCFGR_Register;
      --  RISAB page 2 privileged configuration register for	compartment 2
      RISAB_PG2_C2PRIVCFGR  : aliased RISAB_PG2_C2PRIVCFGR_Register;
      --  RISAB page 3 privileged configuration register for	compartment 2
      RISAB_PG3_C2PRIVCFGR  : aliased RISAB_PG3_C2PRIVCFGR_Register;
      --  RISAB page 4 privileged configuration register for	compartment 2
      RISAB_PG4_C2PRIVCFGR  : aliased RISAB_PG4_C2PRIVCFGR_Register;
      --  RISAB page 5 privileged configuration register for	compartment 2
      RISAB_PG5_C2PRIVCFGR  : aliased RISAB_PG5_C2PRIVCFGR_Register;
      --  RISAB page 6 privileged configuration register for	compartment 2
      RISAB_PG6_C2PRIVCFGR  : aliased RISAB_PG6_C2PRIVCFGR_Register;
      --  RISAB page 7 privileged configuration register for	compartment 2
      RISAB_PG7_C2PRIVCFGR  : aliased RISAB_PG7_C2PRIVCFGR_Register;
      --  RISAB page 8 privileged configuration register for	compartment 2
      RISAB_PG8_C2PRIVCFGR  : aliased RISAB_PG8_C2PRIVCFGR_Register;
      --  RISAB page 9 privileged configuration register for	compartment 2
      RISAB_PG9_C2PRIVCFGR  : aliased RISAB_PG9_C2PRIVCFGR_Register;
      --  RISAB page 10 privileged configuration register for	compartment 2
      RISAB_PG10_C2PRIVCFGR : aliased RISAB_PG10_C2PRIVCFGR_Register;
      --  RISAB page 11 privileged configuration register for	compartment 2
      RISAB_PG11_C2PRIVCFGR : aliased RISAB_PG11_C2PRIVCFGR_Register;
      --  RISAB page 12 privileged configuration register for	compartment 2
      RISAB_PG12_C2PRIVCFGR : aliased RISAB_PG12_C2PRIVCFGR_Register;
      --  RISAB page 13 privileged configuration register for	compartment 2
      RISAB_PG13_C2PRIVCFGR : aliased RISAB_PG13_C2PRIVCFGR_Register;
      --  RISAB page 14 privileged configuration register for	compartment 2
      RISAB_PG14_C2PRIVCFGR : aliased RISAB_PG14_C2PRIVCFGR_Register;
      --  RISAB page 15 privileged configuration register for	compartment 2
      RISAB_PG15_C2PRIVCFGR : aliased RISAB_PG15_C2PRIVCFGR_Register;
      --  RISAB page 16 privileged configuration register for	compartment 2
      RISAB_PG16_C2PRIVCFGR : aliased RISAB_PG16_C2PRIVCFGR_Register;
      --  RISAB page 17 privileged configuration register for	compartment 2
      RISAB_PG17_C2PRIVCFGR : aliased RISAB_PG17_C2PRIVCFGR_Register;
      --  RISAB page 18 privileged configuration register for	compartment 2
      RISAB_PG18_C2PRIVCFGR : aliased RISAB_PG18_C2PRIVCFGR_Register;
      --  RISAB page 19 privileged configuration register for	compartment 2
      RISAB_PG19_C2PRIVCFGR : aliased RISAB_PG19_C2PRIVCFGR_Register;
      --  RISAB page 20 privileged configuration register for	compartment 2
      RISAB_PG20_C2PRIVCFGR : aliased RISAB_PG20_C2PRIVCFGR_Register;
      --  RISAB page 21 privileged configuration register for	compartment 2
      RISAB_PG21_C2PRIVCFGR : aliased RISAB_PG21_C2PRIVCFGR_Register;
      --  RISAB page 22 privileged configuration register for	compartment 2
      RISAB_PG22_C2PRIVCFGR : aliased RISAB_PG22_C2PRIVCFGR_Register;
      --  RISAB page 23 privileged configuration register for	compartment 2
      RISAB_PG23_C2PRIVCFGR : aliased RISAB_PG23_C2PRIVCFGR_Register;
      --  RISAB page 24 privileged configuration register for	compartment 2
      RISAB_PG24_C2PRIVCFGR : aliased RISAB_PG24_C2PRIVCFGR_Register;
      --  RISAB page 25 privileged configuration register for	compartment 2
      RISAB_PG25_C2PRIVCFGR : aliased RISAB_PG25_C2PRIVCFGR_Register;
      --  RISAB page 26 privileged configuration register for	compartment 2
      RISAB_PG26_C2PRIVCFGR : aliased RISAB_PG26_C2PRIVCFGR_Register;
      --  RISAB page 27 privileged configuration register for	compartment 2
      RISAB_PG27_C2PRIVCFGR : aliased RISAB_PG27_C2PRIVCFGR_Register;
      --  RISAB page 28 privileged configuration register for	compartment 2
      RISAB_PG28_C2PRIVCFGR : aliased RISAB_PG28_C2PRIVCFGR_Register;
      --  RISAB page 29 privileged configuration register for	compartment 2
      RISAB_PG29_C2PRIVCFGR : aliased RISAB_PG29_C2PRIVCFGR_Register;
      --  RISAB page 30 privileged configuration register for	compartment 2
      RISAB_PG30_C2PRIVCFGR : aliased RISAB_PG30_C2PRIVCFGR_Register;
      --  RISAB page 31 privileged configuration register for	compartment 2
      RISAB_PG31_C2PRIVCFGR : aliased RISAB_PG31_C2PRIVCFGR_Register;
      --  RISAB compartment 0 privilege configuration register
      RISAB_CID0PRIVCFGR    : aliased RISAB_CID0PRIVCFGR_Register;
      --  RISAB compartment 0 read configuration register
      RISAB_CID0RDCFGR      : aliased RISAB_CID0RDCFGR_Register;
      --  RISAB compartment 0 write configuration register
      RISAB_CID0WRCFGR      : aliased RISAB_CID0WRCFGR_Register;
      --  RISAB compartment 1 privilege configuration register
      RISAB_CID1PRIVCFGR    : aliased RISAB_CID1PRIVCFGR_Register;
      --  RISAB compartment 1 read configuration register
      RISAB_CID1RDCFGR      : aliased RISAB_CID1RDCFGR_Register;
      --  RISAB compartment 1 write configuration register
      RISAB_CID1WRCFGR      : aliased RISAB_CID1WRCFGR_Register;
      --  RISAB compartment 2 privilege configuration register
      RISAB_CID2PRIVCFGR    : aliased RISAB_CID2PRIVCFGR_Register;
      --  RISAB compartment 2 read configuration register
      RISAB_CID2RDCFGR      : aliased RISAB_CID2RDCFGR_Register;
      --  RISAB compartment 2 write configuration register
      RISAB_CID2WRCFGR      : aliased RISAB_CID2WRCFGR_Register;
      --  RISAB compartment 3 privilege configuration register
      RISAB_CID3PRIVCFGR    : aliased RISAB_CID3PRIVCFGR_Register;
      --  RISAB compartment 3 read configuration register
      RISAB_CID3RDCFGR      : aliased RISAB_CID3RDCFGR_Register;
      --  RISAB compartment 3 write configuration register
      RISAB_CID3WRCFGR      : aliased RISAB_CID3WRCFGR_Register;
      --  RISAB compartment 4 privilege configuration register
      RISAB_CID4PRIVCFGR    : aliased RISAB_CID4PRIVCFGR_Register;
      --  RISAB compartment 4 read configuration register
      RISAB_CID4RDCFGR      : aliased RISAB_CID4RDCFGR_Register;
      --  RISAB compartment 4 write configuration register
      RISAB_CID4WRCFGR      : aliased RISAB_CID4WRCFGR_Register;
      --  RISAB compartment 5 privilege configuration register
      RISAB_CID5PRIVCFGR    : aliased RISAB_CID5PRIVCFGR_Register;
      --  RISAB compartment 5 read configuration register
      RISAB_CID5RDCFGR      : aliased RISAB_CID5RDCFGR_Register;
      --  RISAB compartment 5 write configuration register
      RISAB_CID5WRCFGR      : aliased RISAB_CID5WRCFGR_Register;
      --  RISAB compartment 6 privilege configuration register
      RISAB_CID6PRIVCFGR    : aliased RISAB_CID6PRIVCFGR_Register;
      --  RISAB compartment 6 read configuration register
      RISAB_CID6RDCFGR      : aliased RISAB_CID6RDCFGR_Register;
      --  RISAB compartment 6 write configuration register
      RISAB_CID6WRCFGR      : aliased RISAB_CID6WRCFGR_Register;
      --  RISAB page 0 CID configuration register
      RISAB_PG0_CIDCFGR     : aliased RISAB_PG0_CIDCFGR_Register;
      --  RISAB page 1 CID configuration register
      RISAB_PG1_CIDCFGR     : aliased RISAB_PG1_CIDCFGR_Register;
      --  RISAB page 2 CID configuration register
      RISAB_PG2_CIDCFGR     : aliased RISAB_PG2_CIDCFGR_Register;
      --  RISAB page 3 CID configuration register
      RISAB_PG3_CIDCFGR     : aliased RISAB_PG3_CIDCFGR_Register;
      --  RISAB page 4 CID configuration register
      RISAB_PG4_CIDCFGR     : aliased RISAB_PG4_CIDCFGR_Register;
      --  RISAB page 5 CID configuration register
      RISAB_PG5_CIDCFGR     : aliased RISAB_PG5_CIDCFGR_Register;
      --  RISAB page 6 CID configuration register
      RISAB_PG6_CIDCFGR     : aliased RISAB_PG6_CIDCFGR_Register;
      --  RISAB page 7 CID configuration register
      RISAB_PG7_CIDCFGR     : aliased RISAB_PG7_CIDCFGR_Register;
      --  RISAB page 8 CID configuration register
      RISAB_PG8_CIDCFGR     : aliased RISAB_PG8_CIDCFGR_Register;
      --  RISAB page 9 CID configuration register
      RISAB_PG9_CIDCFGR     : aliased RISAB_PG9_CIDCFGR_Register;
      --  RISAB page 10 CID configuration register
      RISAB_PG10_CIDCFGR    : aliased RISAB_PG10_CIDCFGR_Register;
      --  RISAB page 11 CID configuration register
      RISAB_PG11_CIDCFGR    : aliased RISAB_PG11_CIDCFGR_Register;
      --  RISAB page 12 CID configuration register
      RISAB_PG12_CIDCFGR    : aliased RISAB_PG12_CIDCFGR_Register;
      --  RISAB page 13 CID configuration register
      RISAB_PG13_CIDCFGR    : aliased RISAB_PG13_CIDCFGR_Register;
      --  RISAB page 14 CID configuration register
      RISAB_PG14_CIDCFGR    : aliased RISAB_PG14_CIDCFGR_Register;
      --  RISAB page 15 CID configuration register
      RISAB_PG15_CIDCFGR    : aliased RISAB_PG15_CIDCFGR_Register;
      --  RISAB page 16 CID configuration register
      RISAB_PG16_CIDCFGR    : aliased RISAB_PG16_CIDCFGR_Register;
      --  RISAB page 17 CID configuration register
      RISAB_PG17_CIDCFGR    : aliased RISAB_PG17_CIDCFGR_Register;
      --  RISAB page 18 CID configuration register
      RISAB_PG18_CIDCFGR    : aliased RISAB_PG18_CIDCFGR_Register;
      --  RISAB page 19 CID configuration register
      RISAB_PG19_CIDCFGR    : aliased RISAB_PG19_CIDCFGR_Register;
      --  RISAB page 20 CID configuration register
      RISAB_PG20_CIDCFGR    : aliased RISAB_PG20_CIDCFGR_Register;
      --  RISAB page 21 CID configuration register
      RISAB_PG21_CIDCFGR    : aliased RISAB_PG21_CIDCFGR_Register;
      --  RISAB page 22 CID configuration register
      RISAB_PG22_CIDCFGR    : aliased RISAB_PG22_CIDCFGR_Register;
      --  RISAB page 23 CID configuration register
      RISAB_PG23_CIDCFGR    : aliased RISAB_PG23_CIDCFGR_Register;
      --  RISAB page 24 CID configuration register
      RISAB_PG24_CIDCFGR    : aliased RISAB_PG24_CIDCFGR_Register;
      --  RISAB page 25 CID configuration register
      RISAB_PG25_CIDCFGR    : aliased RISAB_PG25_CIDCFGR_Register;
      --  RISAB page 26 CID configuration register
      RISAB_PG26_CIDCFGR    : aliased RISAB_PG26_CIDCFGR_Register;
      --  RISAB page 27 CID configuration register
      RISAB_PG27_CIDCFGR    : aliased RISAB_PG27_CIDCFGR_Register;
      --  RISAB page 28 CID configuration register
      RISAB_PG28_CIDCFGR    : aliased RISAB_PG28_CIDCFGR_Register;
      --  RISAB page 29 CID configuration register
      RISAB_PG29_CIDCFGR    : aliased RISAB_PG29_CIDCFGR_Register;
      --  RISAB page 30 CID configuration register
      RISAB_PG30_CIDCFGR    : aliased RISAB_PG30_CIDCFGR_Register;
      --  RISAB page 31 CID configuration register
      RISAB_PG31_CIDCFGR    : aliased RISAB_PG31_CIDCFGR_Register;
      --  RISAB hardware configuration register 3
      RISAB_HWCFGR3         : aliased HAL.UInt32;
      --  RISAB hardware configuration register 2
      RISAB_HWCFGR2         : aliased HAL.UInt32;
      --  RISAB hardware configuration register 1
      RISAB_HWCFGR1         : aliased RISAB_HWCFGR1_Register;
      --  RISAB version register
      RISAB_VERR            : aliased RISAB_VERR_Register;
      --  RISAB identification register
      RISAB_IPIDR           : aliased HAL.UInt32;
      --  RISAB size identification register
      RISAB_SIDR            : aliased HAL.UInt32;
   end record
     with Volatile;

   for RISAB_Peripheral use record
      RISAB_CR              at 16#0# range 0 .. 31;
      RISAB_IASR            at 16#8# range 0 .. 31;
      RISAB_IACR            at 16#C# range 0 .. 31;
      RISAB_RCFGLOCKR       at 16#10# range 0 .. 31;
      RISAB_IAESR           at 16#20# range 0 .. 31;
      RISAB_IADDR           at 16#24# range 0 .. 31;
      RISAB_PG0_SECCFGR     at 16#100# range 0 .. 31;
      RISAB_PG1_SECCFGR     at 16#104# range 0 .. 31;
      RISAB_PG2_SECCFGR     at 16#108# range 0 .. 31;
      RISAB_PG3_SECCFGR     at 16#10C# range 0 .. 31;
      RISAB_PG4_SECCFGR     at 16#110# range 0 .. 31;
      RISAB_PG5_SECCFGR     at 16#114# range 0 .. 31;
      RISAB_PG6_SECCFGR     at 16#118# range 0 .. 31;
      RISAB_PG7_SECCFGR     at 16#11C# range 0 .. 31;
      RISAB_PG8_SECCFGR     at 16#120# range 0 .. 31;
      RISAB_PG9_SECCFGR     at 16#124# range 0 .. 31;
      RISAB_PG10_SECCFGR    at 16#128# range 0 .. 31;
      RISAB_PG11_SECCFGR    at 16#12C# range 0 .. 31;
      RISAB_PG12_SECCFGR    at 16#130# range 0 .. 31;
      RISAB_PG13_SECCFGR    at 16#134# range 0 .. 31;
      RISAB_PG14_SECCFGR    at 16#138# range 0 .. 31;
      RISAB_PG15_SECCFGR    at 16#13C# range 0 .. 31;
      RISAB_PG16_SECCFGR    at 16#140# range 0 .. 31;
      RISAB_PG17_SECCFGR    at 16#144# range 0 .. 31;
      RISAB_PG18_SECCFGR    at 16#148# range 0 .. 31;
      RISAB_PG19_SECCFGR    at 16#14C# range 0 .. 31;
      RISAB_PG20_SECCFGR    at 16#150# range 0 .. 31;
      RISAB_PG21_SECCFGR    at 16#154# range 0 .. 31;
      RISAB_PG22_SECCFGR    at 16#158# range 0 .. 31;
      RISAB_PG23_SECCFGR    at 16#15C# range 0 .. 31;
      RISAB_PG24_SECCFGR    at 16#160# range 0 .. 31;
      RISAB_PG25_SECCFGR    at 16#164# range 0 .. 31;
      RISAB_PG26_SECCFGR    at 16#168# range 0 .. 31;
      RISAB_PG27_SECCFGR    at 16#16C# range 0 .. 31;
      RISAB_PG28_SECCFGR    at 16#170# range 0 .. 31;
      RISAB_PG29_SECCFGR    at 16#174# range 0 .. 31;
      RISAB_PG30_SECCFGR    at 16#178# range 0 .. 31;
      RISAB_PG31_SECCFGR    at 16#17C# range 0 .. 31;
      RISAB_PG0_PRIVCFGR    at 16#200# range 0 .. 31;
      RISAB_PG1_PRIVCFGR    at 16#204# range 0 .. 31;
      RISAB_PG2_PRIVCFGR    at 16#208# range 0 .. 31;
      RISAB_PG3_PRIVCFGR    at 16#20C# range 0 .. 31;
      RISAB_PG4_PRIVCFGR    at 16#210# range 0 .. 31;
      RISAB_PG5_PRIVCFGR    at 16#214# range 0 .. 31;
      RISAB_PG6_PRIVCFGR    at 16#218# range 0 .. 31;
      RISAB_PG7_PRIVCFGR    at 16#21C# range 0 .. 31;
      RISAB_PG8_PRIVCFGR    at 16#220# range 0 .. 31;
      RISAB_PG9_PRIVCFGR    at 16#224# range 0 .. 31;
      RISAB_PG10_PRIVCFGR   at 16#228# range 0 .. 31;
      RISAB_PG11_PRIVCFGR   at 16#22C# range 0 .. 31;
      RISAB_PG12_PRIVCFGR   at 16#230# range 0 .. 31;
      RISAB_PG13_PRIVCFGR   at 16#234# range 0 .. 31;
      RISAB_PG14_PRIVCFGR   at 16#238# range 0 .. 31;
      RISAB_PG15_PRIVCFGR   at 16#23C# range 0 .. 31;
      RISAB_PG16_PRIVCFGR   at 16#240# range 0 .. 31;
      RISAB_PG17_PRIVCFGR   at 16#244# range 0 .. 31;
      RISAB_PG18_PRIVCFGR   at 16#248# range 0 .. 31;
      RISAB_PG19_PRIVCFGR   at 16#24C# range 0 .. 31;
      RISAB_PG20_PRIVCFGR   at 16#250# range 0 .. 31;
      RISAB_PG21_PRIVCFGR   at 16#254# range 0 .. 31;
      RISAB_PG22_PRIVCFGR   at 16#258# range 0 .. 31;
      RISAB_PG23_PRIVCFGR   at 16#25C# range 0 .. 31;
      RISAB_PG24_PRIVCFGR   at 16#260# range 0 .. 31;
      RISAB_PG25_PRIVCFGR   at 16#264# range 0 .. 31;
      RISAB_PG26_PRIVCFGR   at 16#268# range 0 .. 31;
      RISAB_PG27_PRIVCFGR   at 16#26C# range 0 .. 31;
      RISAB_PG28_PRIVCFGR   at 16#270# range 0 .. 31;
      RISAB_PG29_PRIVCFGR   at 16#274# range 0 .. 31;
      RISAB_PG30_PRIVCFGR   at 16#278# range 0 .. 31;
      RISAB_PG31_PRIVCFGR   at 16#27C# range 0 .. 31;
      RISAB_PG0_C2PRIVCFGR  at 16#600# range 0 .. 31;
      RISAB_PG1_C2PRIVCFGR  at 16#604# range 0 .. 31;
      RISAB_PG2_C2PRIVCFGR  at 16#608# range 0 .. 31;
      RISAB_PG3_C2PRIVCFGR  at 16#60C# range 0 .. 31;
      RISAB_PG4_C2PRIVCFGR  at 16#610# range 0 .. 31;
      RISAB_PG5_C2PRIVCFGR  at 16#614# range 0 .. 31;
      RISAB_PG6_C2PRIVCFGR  at 16#618# range 0 .. 31;
      RISAB_PG7_C2PRIVCFGR  at 16#61C# range 0 .. 31;
      RISAB_PG8_C2PRIVCFGR  at 16#620# range 0 .. 31;
      RISAB_PG9_C2PRIVCFGR  at 16#624# range 0 .. 31;
      RISAB_PG10_C2PRIVCFGR at 16#628# range 0 .. 31;
      RISAB_PG11_C2PRIVCFGR at 16#62C# range 0 .. 31;
      RISAB_PG12_C2PRIVCFGR at 16#630# range 0 .. 31;
      RISAB_PG13_C2PRIVCFGR at 16#634# range 0 .. 31;
      RISAB_PG14_C2PRIVCFGR at 16#638# range 0 .. 31;
      RISAB_PG15_C2PRIVCFGR at 16#63C# range 0 .. 31;
      RISAB_PG16_C2PRIVCFGR at 16#640# range 0 .. 31;
      RISAB_PG17_C2PRIVCFGR at 16#644# range 0 .. 31;
      RISAB_PG18_C2PRIVCFGR at 16#648# range 0 .. 31;
      RISAB_PG19_C2PRIVCFGR at 16#64C# range 0 .. 31;
      RISAB_PG20_C2PRIVCFGR at 16#650# range 0 .. 31;
      RISAB_PG21_C2PRIVCFGR at 16#654# range 0 .. 31;
      RISAB_PG22_C2PRIVCFGR at 16#658# range 0 .. 31;
      RISAB_PG23_C2PRIVCFGR at 16#65C# range 0 .. 31;
      RISAB_PG24_C2PRIVCFGR at 16#660# range 0 .. 31;
      RISAB_PG25_C2PRIVCFGR at 16#664# range 0 .. 31;
      RISAB_PG26_C2PRIVCFGR at 16#668# range 0 .. 31;
      RISAB_PG27_C2PRIVCFGR at 16#66C# range 0 .. 31;
      RISAB_PG28_C2PRIVCFGR at 16#670# range 0 .. 31;
      RISAB_PG29_C2PRIVCFGR at 16#674# range 0 .. 31;
      RISAB_PG30_C2PRIVCFGR at 16#678# range 0 .. 31;
      RISAB_PG31_C2PRIVCFGR at 16#67C# range 0 .. 31;
      RISAB_CID0PRIVCFGR    at 16#800# range 0 .. 31;
      RISAB_CID0RDCFGR      at 16#808# range 0 .. 31;
      RISAB_CID0WRCFGR      at 16#810# range 0 .. 31;
      RISAB_CID1PRIVCFGR    at 16#820# range 0 .. 31;
      RISAB_CID1RDCFGR      at 16#828# range 0 .. 31;
      RISAB_CID1WRCFGR      at 16#830# range 0 .. 31;
      RISAB_CID2PRIVCFGR    at 16#840# range 0 .. 31;
      RISAB_CID2RDCFGR      at 16#848# range 0 .. 31;
      RISAB_CID2WRCFGR      at 16#850# range 0 .. 31;
      RISAB_CID3PRIVCFGR    at 16#860# range 0 .. 31;
      RISAB_CID3RDCFGR      at 16#868# range 0 .. 31;
      RISAB_CID3WRCFGR      at 16#870# range 0 .. 31;
      RISAB_CID4PRIVCFGR    at 16#880# range 0 .. 31;
      RISAB_CID4RDCFGR      at 16#888# range 0 .. 31;
      RISAB_CID4WRCFGR      at 16#890# range 0 .. 31;
      RISAB_CID5PRIVCFGR    at 16#8A0# range 0 .. 31;
      RISAB_CID5RDCFGR      at 16#8A8# range 0 .. 31;
      RISAB_CID5WRCFGR      at 16#8B0# range 0 .. 31;
      RISAB_CID6PRIVCFGR    at 16#8C0# range 0 .. 31;
      RISAB_CID6RDCFGR      at 16#8C8# range 0 .. 31;
      RISAB_CID6WRCFGR      at 16#8D0# range 0 .. 31;
      RISAB_PG0_CIDCFGR     at 16#A00# range 0 .. 31;
      RISAB_PG1_CIDCFGR     at 16#A04# range 0 .. 31;
      RISAB_PG2_CIDCFGR     at 16#A08# range 0 .. 31;
      RISAB_PG3_CIDCFGR     at 16#A0C# range 0 .. 31;
      RISAB_PG4_CIDCFGR     at 16#A10# range 0 .. 31;
      RISAB_PG5_CIDCFGR     at 16#A14# range 0 .. 31;
      RISAB_PG6_CIDCFGR     at 16#A18# range 0 .. 31;
      RISAB_PG7_CIDCFGR     at 16#A1C# range 0 .. 31;
      RISAB_PG8_CIDCFGR     at 16#A20# range 0 .. 31;
      RISAB_PG9_CIDCFGR     at 16#A24# range 0 .. 31;
      RISAB_PG10_CIDCFGR    at 16#A28# range 0 .. 31;
      RISAB_PG11_CIDCFGR    at 16#A2C# range 0 .. 31;
      RISAB_PG12_CIDCFGR    at 16#A30# range 0 .. 31;
      RISAB_PG13_CIDCFGR    at 16#A34# range 0 .. 31;
      RISAB_PG14_CIDCFGR    at 16#A38# range 0 .. 31;
      RISAB_PG15_CIDCFGR    at 16#A3C# range 0 .. 31;
      RISAB_PG16_CIDCFGR    at 16#A40# range 0 .. 31;
      RISAB_PG17_CIDCFGR    at 16#A44# range 0 .. 31;
      RISAB_PG18_CIDCFGR    at 16#A48# range 0 .. 31;
      RISAB_PG19_CIDCFGR    at 16#A4C# range 0 .. 31;
      RISAB_PG20_CIDCFGR    at 16#A50# range 0 .. 31;
      RISAB_PG21_CIDCFGR    at 16#A54# range 0 .. 31;
      RISAB_PG22_CIDCFGR    at 16#A58# range 0 .. 31;
      RISAB_PG23_CIDCFGR    at 16#A5C# range 0 .. 31;
      RISAB_PG24_CIDCFGR    at 16#A60# range 0 .. 31;
      RISAB_PG25_CIDCFGR    at 16#A64# range 0 .. 31;
      RISAB_PG26_CIDCFGR    at 16#A68# range 0 .. 31;
      RISAB_PG27_CIDCFGR    at 16#A6C# range 0 .. 31;
      RISAB_PG28_CIDCFGR    at 16#A70# range 0 .. 31;
      RISAB_PG29_CIDCFGR    at 16#A74# range 0 .. 31;
      RISAB_PG30_CIDCFGR    at 16#A78# range 0 .. 31;
      RISAB_PG31_CIDCFGR    at 16#A7C# range 0 .. 31;
      RISAB_HWCFGR3         at 16#FE8# range 0 .. 31;
      RISAB_HWCFGR2         at 16#FEC# range 0 .. 31;
      RISAB_HWCFGR1         at 16#FF0# range 0 .. 31;
      RISAB_VERR            at 16#FF4# range 0 .. 31;
      RISAB_IPIDR           at 16#FF8# range 0 .. 31;
      RISAB_SIDR            at 16#FFC# range 0 .. 31;
   end record;

   --  RISAB register block
   RISAB_Periph : aliased RISAB_Peripheral
     with Import, Address => RISAB_Base;

   --  RISAB register block
   RISAB1_S_Periph : aliased RISAB_Peripheral
     with Import, Address => RISAB1_S_Base;

   --  RISAB register block
   RISAB2_Periph : aliased RISAB_Peripheral
     with Import, Address => RISAB2_Base;

   --  RISAB register block
   RISAB2_S_Periph : aliased RISAB_Peripheral
     with Import, Address => RISAB2_S_Base;

   --  RISAB register block
   RISAB3_Periph : aliased RISAB_Peripheral
     with Import, Address => RISAB3_Base;

   --  RISAB register block
   RISAB3_S_Periph : aliased RISAB_Peripheral
     with Import, Address => RISAB3_S_Base;

   --  RISAB register block
   RISAB4_Periph : aliased RISAB_Peripheral
     with Import, Address => RISAB4_Base;

   --  RISAB register block
   RISAB4_S_Periph : aliased RISAB_Peripheral
     with Import, Address => RISAB4_S_Base;

   --  RISAB register block
   RISAB5_Periph : aliased RISAB_Peripheral
     with Import, Address => RISAB5_Base;

   --  RISAB register block
   RISAB5_S_Periph : aliased RISAB_Peripheral
     with Import, Address => RISAB5_S_Base;

   --  RISAB register block
   RISAB6_Periph : aliased RISAB_Peripheral
     with Import, Address => RISAB6_Base;

   --  RISAB register block
   RISAB6_S_Periph : aliased RISAB_Peripheral
     with Import, Address => RISAB6_S_Base;

end STM32_SVD.RISAB;
