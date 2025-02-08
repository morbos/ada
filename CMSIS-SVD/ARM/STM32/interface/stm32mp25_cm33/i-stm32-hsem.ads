--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.HSEM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype HSEM_R_PROCID_Field is Interfaces.Bit_Types.Byte;
   subtype HSEM_R_LOCKID_Field is Interfaces.Bit_Types.UInt4;

   --  HSEM register semaphore 0
   type HSEM_R_Register is record
      --  Semaphore PROCID Written by software -When the semaphore is free and
      --  the LOCK is written to 1, and the LOCKID matches the AHB bus master
      --  ID or CID, SEC and PRIV matches the AHB bus master definition, PROCID
      --  is set to the written data. - When the semaphore is unlocked, LOCK
      --  written to 0 and AHB bus master ID or CID matched LOCKID, SEC and
      --  PRIV matches the AHB bus master protection, the PROCID is cleared to
      --  0. - When the semaphore is unlocked, LOCK bit written to 0 and AHB
      --  bus master ID or CID does not match LOCKID and/or SEC or PRIV do not
      --  match the AHB bus master definition, the PROCID is not affected. -
      --  Write when LOCK bit is already 1 (semaphore locked), the PROCID is
      --  not affected. - An authorized read returns the stored PROCID value.
      PROCID         : HSEM_R_PROCID_Field := 16#0#;
      --  Semaphore LOCKID Written by software - When the semaphore is free and
      --  the LOCK bit is at the same time written to 1 and the LOCKID matches
      --  the AHB bus master ID or CID, SEC and PRIV matches the AHB bus master
      --  protection. - When the semaphore is unlocked (LOCK written to 0 and
      --  AHB bus master ID or CID matched LOCKID, SEC and PRIV matches the AHB
      --  bus master protection, the LOCKID is cleared to 0. - When the
      --  semaphore is unlocked (LOCK bit written to 0 or AHB bus master ID or
      --  CID does not match LOCKID and/or SEC or PRIV do not match AHB bus
      --  master protection, the LOCKID is not affected. - Write when LOCK bit
      --  is already 1 (semaphore locked), the LOCKID is not affected. - An
      --  authorized read returns the stored LOCKID value.
      LOCKID         : HSEM_R_LOCKID_Field := 16#0#;
      --  Semaphore secure Written by software - When the semaphore is free and
      --  the LOCK bit is at the same time written to 1, and the LOCKID matches
      --  the AHB bus master ID or CID, SEC and PRIV matches the AHB bus master
      --  definition. - When the semaphore is unlocked (LOCK written to 0 and
      --  AHB bus master ID or CID matched LOCKID, SEC and PRIV matches the AHB
      --  bus master definition, the SEC is cleared to 0. - When the semaphore
      --  is unlocked (LOCK bit written to 0 and AHB bus master ID or CID does
      --  not match LOCKID and/or SEC or PRIV do not match AHB bus master
      --  definition, the SEC is not affected. - Write when LOCK bit is already
      --  1 (semaphore locked), the SEC is not affected. - An authorized read
      --  returns the stored SEC value.
      SEC            : Boolean := False;
      --  Semaphore privilege Written by software - When the semaphore is free
      --  and the LOCK bit is at the same time written to 1, and the LOCKID
      --  matches the AHB bus master ID or CID, SEC and PRIV matches the AHB
      --  bus master definition. - When the semaphore is unlocked (LOCK written
      --  to 0 and AHB bus master ID or CID matched LOCKID, SEC and PRIV
      --  matches the AHB bus master definition, the PRIV is cleared to 0. -
      --  When the semaphore is unlocked (LOCK bit written to 0 and AHB bus
      --  master ID or CID does not match LOCKID and/or SEC or PRIV do not
      --  match AHB bus master definition, the PRIV is not affected. - Write
      --  when LOCK bit is already 1 (semaphore locked), the PRIV is not
      --  affected. - An authorized read returns the stored PRIV value.
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_14_29 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Read-only. Semaphore CID filter indication This bit is updated, with
      --  the CID filtering information in HSEM_GpCIDCFGR.CFEN and
      --  HSEM_CnCIDCFGR.CFEN, by HW when semaphore is locked. This bit is set
      --  only when CID filtering is enabled for at least one CID in both
      --  HSEM_GpCIDCFGR.CFEN and HSEM_CnCIDCFGR.CFEN. Read only by software.
      CFEN           : Boolean := False;
      --  Lock indication This bit can be written and read by software.
      LOCK           : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_R_Register use record
      PROCID         at 0 range 0 .. 7;
      LOCKID         at 0 range 8 .. 11;
      SEC            at 0 range 12 .. 12;
      PRIV           at 0 range 13 .. 13;
      Reserved_14_29 at 0 range 14 .. 29;
      CFEN           at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype HSEM_RLR_PROCID_Field is Interfaces.Bit_Types.Byte;
   subtype HSEM_RLR_LOCKID_Field is Interfaces.Bit_Types.UInt4;

   --  HSEM read lock register semaphore 0
   type HSEM_RLR_Register is record
      --  Read-only. Semaphore processor ID This field is read only by software
      --  at this address. - On a read when the semaphore is free: A read with
      --  a valid AHB bus master ID or CID and SEC and PRIV locks the semaphore
      --  and hardware sets the PROCID to 0. - When the semaphore is locked: A
      --  read with a valid AHB bus master ID or CID and SEC and PRIV returns
      --  the PROCID of the AHB bus master that has locked the semaphore.
      PROCID         : HSEM_RLR_PROCID_Field;
      --  Read-only. Semaphore LOCKID This field is read only by software at
      --  this address. On a read, when the semaphore is free, the hardware
      --  sets the LOCKID to the AHB bus master ID reading the semaphore. The
      --  LOCKID of the AHB bus master locking the semaphore is read. On a read
      --  when the semaphore is locked, this field returns the LOCKID of the
      --  AHB bus master that has locked the semaphore.
      LOCKID         : HSEM_RLR_LOCKID_Field;
      --  Read-only. Semaphore secure. This field is read only by software at
      --  this address. - When the semaphore is free: A read with a valid AHB
      --  bus master ID or CID and SEC and PRIV locks the semaphore and
      --  hardware sets the SEC to the valid AHB bus master security
      --  definition. - When the semaphore is locked: A read with a valid AHB
      --  bus master ID or CID and SEC and PRIV returns the SEC of the AHB bus
      --  master that has locked the semaphore.
      SEC            : Boolean;
      --  Read-only. Semaphore privilege This field is read only by software at
      --  this address. - When the semaphore is free: A read with a valid AHB
      --  bus master ID or CID and SEC and PRIV locks the semaphore and
      --  hardware sets the PRIV to the valid AHB bus master privileged
      --  definition. - When the semaphore is locked: A read with a valid AHB
      --  bus master ID or CID and SEC and PRIV returns the PRIV of the AHB bus
      --  master that has locked the semaphore.
      PRIV           : Boolean;
      --  unspecified
      Reserved_14_29 : Interfaces.Bit_Types.UInt16;
      --  Read-only. Semaphore CID filter indication This bit is updated by
      --  hardware when semaphore is locked with the CID filtering information
      --  in HSEM_GpCIDCFGR.CFEN and HSEM_CnCIDCFGR.CFEN. This bit is set only
      --  when CID filtering is enabled for at least one CID in both
      --  HSEM_GpCIDCFGR.CFEN and HSEM_CnCIDCFGR.CFEN.
      CFEN           : Boolean;
      --  Read-only. Lock indication This bit is read only by software at this
      --  address. - When the semaphore is free: A read with a valid AHB bus
      --  master ID or CID and SEC and PRIV locks the semaphore and returns 1.
      --  - When the semaphore is locked: A read with a valid AHB bus master ID
      --  or CID and SEC and PRIV returns 1 (the LOCKID and SEC and PRIV and
      --  PROCID reflect the already locked semaphore information).
      LOCK           : Boolean;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_RLR_Register use record
      PROCID         at 0 range 0 .. 7;
      LOCKID         at 0 range 8 .. 11;
      SEC            at 0 range 12 .. 12;
      PRIV           at 0 range 13 .. 13;
      Reserved_14_29 at 0 range 14 .. 29;
      CFEN           at 0 range 30 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype HSEM_C1IER_ISE_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM non-secure interrupt enable register
   type HSEM_C1IER_Register is record
      --  Non-secure Interrupt(n) semaphore x enable bit This bit is read and
      --  written by software. When semaphore x SECx is disabled, bit x can be
      --  accessed with secure and non-secure access. When semaphore x SECx is
      --  enabled, bit x is forced to 0 and cannot be accessed, write to this
      --  bit is discarded and a read returns 0. When semaphore x PRIVx is
      --  disabled, bit x can be accessed with privilege and unprivileged
      --  access. When semaphore x PRIVx is enabled, bit x can be accessed only
      --  with privileged access. Unprivileged write to this bit is discarded,
      --  unprivileged read returns 0. When semaphore x CID white list is
      --  disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed according the
      --  register global access definition shown above. When semaphore x CID
      --  white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x can only be
      --  accessed by the processor(s) as defined in the HSEM_CnCIDCFGR when
      --  the processor CID is part of the HSEM_GpCIDCFGR CID white list. When
      --  its CID is not in the white list bit x is reset to zero and can’t
      --  be accessed, writing to this bit is discarded and read return 0
      --  value.
      ISE            : HSEM_C1IER_ISE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C1IER_Register use record
      ISE            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_C1ICR_ISC_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM non-secure interrupt clear register
   type HSEM_C1ICR_Register is record
      --  Non-secure Interrupt(n) semaphore x clear bit This bit is written by
      --  software, and is always read 0. When semaphore x SECx is disabled,
      --  bit x can be accessed with secure and non-secure access. When
      --  semaphore x SECx is enabled, bit x cannot be accessed, write to this
      --  bit is discarded. When semaphore x PRIVx is disabled, bit x can be
      --  accessed with privileged and unprivileged access. When semaphore x
      --  PRIVx is enabled, bit x can only be accessed with privileged access.
      --  Unprivileged write to this bit is discarded. When semaphore x CID
      --  white list is disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed
      --  according to the register global access definition shown above. When
      --  semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x
      --  can be accessed only by the processor(s) as defined in the
      --  HSEM_CnCIDCFGR when the processor CID is part of the HSEM_GpCIDCFGR
      --  CID white list. When its CID is not in the white list bit x is reset
      --  to 0 and cannot be accessed, writing to this bit is discarded and
      --  read returns 0.
      ISC            : HSEM_C1ICR_ISC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C1ICR_Register use record
      ISC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_C1ISR_ISF_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM non-secure interrupt status register
   type HSEM_C1ISR_Register is record
      --  Read-only. Interrupt semaphore x status bit before enable (mask) This
      --  bit is set by hardware, and reset only by software. This bit is
      --  cleared by software writing the corresponding HSEM_CnICR bit.
      ISF            : HSEM_C1ISR_ISF_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C1ISR_Register use record
      ISF            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_C1MISR_MISF_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM non-secure interrupt status register
   type HSEM_C1MISR_Register is record
      --  Read-only. Masked non-secure interrupt(n) semaphore x status bit
      --  after enable (mask) This bit is set by hardware and read only by
      --  software. This bit is cleared by software writing the corresponding
      --  HSEM_CnICR bit. This bit is read as 0 when semaphore x status is
      --  masked in HSEM_CnIER bit x. When semaphore x SECx is disabled, bit x
      --  can be accessed with secure and non-secure access. When semaphore x
      --  SECx is enabled, bit x cannot be accessed, read returns 0. When
      --  semaphore x PRIVx is disabled, bit x can be accessed with privileged
      --  and unprivileged access. When semaphore x PRIVx is enabled, bit x can
      --  be accessed only with privileged access. Unprivileged read returns 0.
      --  When semaphore x CID white list is disabled by HSEM_GpCIDCFGR.CFEN,
      --  bit x can be accessed according the register global access definition
      --  shown above. When semaphore x CID white list is enabled by
      --  HSEM_GpCIDCFGR.CFEN, bit x can be accessed only by the processor(s)
      --  as defined in the HSEM_CnCIDCFGR when the processor CID is part of
      --  the HSEM_GpCIDCFGR CID white list. When its CID is not in the white
      --  list bit x is reset to 0 and cannot be accessed, read returns 0.
      MISF           : HSEM_C1MISR_MISF_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C1MISR_Register use record
      MISF           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_C2IER_ISE_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM non-secure interrupt enable register
   type HSEM_C2IER_Register is record
      --  Non-secure Interrupt(n) semaphore x enable bit This bit is read and
      --  written by software. When semaphore x SECx is disabled, bit x can be
      --  accessed with secure and non-secure access. When semaphore x SECx is
      --  enabled, bit x is forced to 0 and cannot be accessed, write to this
      --  bit is discarded and a read returns 0. When semaphore x PRIVx is
      --  disabled, bit x can be accessed with privilege and unprivileged
      --  access. When semaphore x PRIVx is enabled, bit x can be accessed only
      --  with privileged access. Unprivileged write to this bit is discarded,
      --  unprivileged read returns 0. When semaphore x CID white list is
      --  disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed according the
      --  register global access definition shown above. When semaphore x CID
      --  white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x can only be
      --  accessed by the processor(s) as defined in the HSEM_CnCIDCFGR when
      --  the processor CID is part of the HSEM_GpCIDCFGR CID white list. When
      --  its CID is not in the white list bit x is reset to zero and can’t
      --  be accessed, writing to this bit is discarded and read return 0
      --  value.
      ISE            : HSEM_C2IER_ISE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C2IER_Register use record
      ISE            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_C2ICR_ISC_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM non-secure interrupt clear register
   type HSEM_C2ICR_Register is record
      --  Non-secure Interrupt(n) semaphore x clear bit This bit is written by
      --  software, and is always read 0. When semaphore x SECx is disabled,
      --  bit x can be accessed with secure and non-secure access. When
      --  semaphore x SECx is enabled, bit x cannot be accessed, write to this
      --  bit is discarded. When semaphore x PRIVx is disabled, bit x can be
      --  accessed with privileged and unprivileged access. When semaphore x
      --  PRIVx is enabled, bit x can only be accessed with privileged access.
      --  Unprivileged write to this bit is discarded. When semaphore x CID
      --  white list is disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed
      --  according to the register global access definition shown above. When
      --  semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x
      --  can be accessed only by the processor(s) as defined in the
      --  HSEM_CnCIDCFGR when the processor CID is part of the HSEM_GpCIDCFGR
      --  CID white list. When its CID is not in the white list bit x is reset
      --  to 0 and cannot be accessed, writing to this bit is discarded and
      --  read returns 0.
      ISC            : HSEM_C2ICR_ISC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C2ICR_Register use record
      ISC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_C2ISR_ISF_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM non-secure interrupt status register
   type HSEM_C2ISR_Register is record
      --  Read-only. Interrupt semaphore x status bit before enable (mask) This
      --  bit is set by hardware, and reset only by software. This bit is
      --  cleared by software writing the corresponding HSEM_CnICR bit.
      ISF            : HSEM_C2ISR_ISF_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C2ISR_Register use record
      ISF            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_C2MISR_MISF_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM non-secure interrupt status register
   type HSEM_C2MISR_Register is record
      --  Read-only. Masked non-secure interrupt(n) semaphore x status bit
      --  after enable (mask) This bit is set by hardware and read only by
      --  software. This bit is cleared by software writing the corresponding
      --  HSEM_CnICR bit. This bit is read as 0 when semaphore x status is
      --  masked in HSEM_CnIER bit x. When semaphore x SECx is disabled, bit x
      --  can be accessed with secure and non-secure access. When semaphore x
      --  SECx is enabled, bit x cannot be accessed, read returns 0. When
      --  semaphore x PRIVx is disabled, bit x can be accessed with privileged
      --  and unprivileged access. When semaphore x PRIVx is enabled, bit x can
      --  be accessed only with privileged access. Unprivileged read returns 0.
      --  When semaphore x CID white list is disabled by HSEM_GpCIDCFGR.CFEN,
      --  bit x can be accessed according the register global access definition
      --  shown above. When semaphore x CID white list is enabled by
      --  HSEM_GpCIDCFGR.CFEN, bit x can be accessed only by the processor(s)
      --  as defined in the HSEM_CnCIDCFGR when the processor CID is part of
      --  the HSEM_GpCIDCFGR CID white list. When its CID is not in the white
      --  list bit x is reset to 0 and cannot be accessed, read returns 0.
      MISF           : HSEM_C2MISR_MISF_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C2MISR_Register use record
      MISF           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_C3IER_ISE_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM non-secure interrupt enable register
   type HSEM_C3IER_Register is record
      --  Non-secure Interrupt(n) semaphore x enable bit This bit is read and
      --  written by software. When semaphore x SECx is disabled, bit x can be
      --  accessed with secure and non-secure access. When semaphore x SECx is
      --  enabled, bit x is forced to 0 and cannot be accessed, write to this
      --  bit is discarded and a read returns 0. When semaphore x PRIVx is
      --  disabled, bit x can be accessed with privilege and unprivileged
      --  access. When semaphore x PRIVx is enabled, bit x can be accessed only
      --  with privileged access. Unprivileged write to this bit is discarded,
      --  unprivileged read returns 0. When semaphore x CID white list is
      --  disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed according the
      --  register global access definition shown above. When semaphore x CID
      --  white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x can only be
      --  accessed by the processor(s) as defined in the HSEM_CnCIDCFGR when
      --  the processor CID is part of the HSEM_GpCIDCFGR CID white list. When
      --  its CID is not in the white list bit x is reset to zero and can’t
      --  be accessed, writing to this bit is discarded and read return 0
      --  value.
      ISE            : HSEM_C3IER_ISE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C3IER_Register use record
      ISE            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_C3ICR_ISC_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM non-secure interrupt clear register
   type HSEM_C3ICR_Register is record
      --  Non-secure Interrupt(n) semaphore x clear bit This bit is written by
      --  software, and is always read 0. When semaphore x SECx is disabled,
      --  bit x can be accessed with secure and non-secure access. When
      --  semaphore x SECx is enabled, bit x cannot be accessed, write to this
      --  bit is discarded. When semaphore x PRIVx is disabled, bit x can be
      --  accessed with privileged and unprivileged access. When semaphore x
      --  PRIVx is enabled, bit x can only be accessed with privileged access.
      --  Unprivileged write to this bit is discarded. When semaphore x CID
      --  white list is disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed
      --  according to the register global access definition shown above. When
      --  semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x
      --  can be accessed only by the processor(s) as defined in the
      --  HSEM_CnCIDCFGR when the processor CID is part of the HSEM_GpCIDCFGR
      --  CID white list. When its CID is not in the white list bit x is reset
      --  to 0 and cannot be accessed, writing to this bit is discarded and
      --  read returns 0.
      ISC            : HSEM_C3ICR_ISC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C3ICR_Register use record
      ISC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_C3ISR_ISF_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM non-secure interrupt status register
   type HSEM_C3ISR_Register is record
      --  Read-only. Interrupt semaphore x status bit before enable (mask) This
      --  bit is set by hardware, and reset only by software. This bit is
      --  cleared by software writing the corresponding HSEM_CnICR bit.
      ISF            : HSEM_C3ISR_ISF_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C3ISR_Register use record
      ISF            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_C3MISR_MISF_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM non-secure interrupt status register
   type HSEM_C3MISR_Register is record
      --  Read-only. Masked non-secure interrupt(n) semaphore x status bit
      --  after enable (mask) This bit is set by hardware and read only by
      --  software. This bit is cleared by software writing the corresponding
      --  HSEM_CnICR bit. This bit is read as 0 when semaphore x status is
      --  masked in HSEM_CnIER bit x. When semaphore x SECx is disabled, bit x
      --  can be accessed with secure and non-secure access. When semaphore x
      --  SECx is enabled, bit x cannot be accessed, read returns 0. When
      --  semaphore x PRIVx is disabled, bit x can be accessed with privileged
      --  and unprivileged access. When semaphore x PRIVx is enabled, bit x can
      --  be accessed only with privileged access. Unprivileged read returns 0.
      --  When semaphore x CID white list is disabled by HSEM_GpCIDCFGR.CFEN,
      --  bit x can be accessed according the register global access definition
      --  shown above. When semaphore x CID white list is enabled by
      --  HSEM_GpCIDCFGR.CFEN, bit x can be accessed only by the processor(s)
      --  as defined in the HSEM_CnCIDCFGR when the processor CID is part of
      --  the HSEM_GpCIDCFGR CID white list. When its CID is not in the white
      --  list bit x is reset to 0 and cannot be accessed, read returns 0.
      MISF           : HSEM_C3MISR_MISF_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C3MISR_Register use record
      MISF           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_SC1IER_SISE_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM secure interrupt enable register
   type HSEM_SC1IER_Register is record
      --  Secure interrupt(n) semaphore x enable bit This bit is read and
      --  written by software. When semaphore x PRIVx is disabled, bit x can be
      --  accessed with secure privilege and secure unprivileged access. When
      --  semaphore x PRIVx is enabled, bit x can be accessed only with secure
      --  privilege access. secure unprivileged write to this bit is discarded,
      --  secure unprivileged read return 0 value. When semaphore x CID white
      --  list is disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed
      --  according the register global access definition shown above. When
      --  semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x
      --  can be accessed only by the secure processor(s) as defined in the
      --  HSEM_CnCIDCFGR when the processor CID is part of the HSEM_GpCIDCFGR
      --  CID white list. When its CID is not in the white list bit x is reset
      --  to 0 and cannot be accessed, writing to this bit is discarded and
      --  read returns 0.
      SISE           : HSEM_SC1IER_SISE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_SC1IER_Register use record
      SISE           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_SC1ICR_SISC_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM secure interrupt clear register
   type HSEM_SC1ICR_Register is record
      --  Secure interrupt(n) semaphore x clear bit This bit is written by
      --  software, and is always read 0. When semaphore x PRIVx is disabled,
      --  bit x can be accessed with secure privilege and secure unprivileged
      --  access. When semaphore x PRIVx is enabled, bit x can be accessed only
      --  with secure privilege access. Secure unprivileged write to this bit
      --  is discarded. When semaphore x CID white list is disabled by
      --  HSEM_GpCIDCFGR.CFEN, bit x can be accessed according the register
      --  global access definition shown above. When semaphore x CID white list
      --  is enabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed only by the
      --  secure processor(s) as defined in the HSEM_CnCIDCFGR when the
      --  processor CID is part of the HSEM_GpCIDCFGR CID white list. When its
      --  CID is not in the white list bit x is reset to 0 and cannot be
      --  accessed, writing to this bit is discarded and read returns 0.
      SISC           : HSEM_SC1ICR_SISC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_SC1ICR_Register use record
      SISC           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_SC1ISR_SISF_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM secure interrupt status register
   type HSEM_SC1ISR_Register is record
      --  Read-only. Secure interrupt(n) semaphore x status bit before enable
      --  (mask) This bit is set by hardware and read only by software. Bit is
      --  cleared by software writing the corresponding HSEM_SCnICR bit x. When
      --  semaphore x PRIVx is disabled, bit x can be accessed with secure
      --  privilege and secure unprivileged access. When semaphore x PRIVx is
      --  enabled, bit x can be accessed only with secure privilege access.
      --  Secure unprivileged read return 0 value. When semaphore x CID white
      --  list is disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed
      --  according the register global access definition shown above. When
      --  semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x
      --  can be accessed only by the secure processor(s) as defined in the
      --  HSEM_CnCIDCFGR when the processor CID is part of the HSEM_GpCIDCFGR
      --  CID white list. When its CID is not in the white list bit x is reset
      --  to 0 and cannot be accessed, read return 0 value.
      SISF           : HSEM_SC1ISR_SISF_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_SC1ISR_Register use record
      SISF           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_SC1MISR_SMISF_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM secure masked interrupt status register
   type HSEM_SC1MISR_Register is record
      --  Read-only. Secure masked interrupt(n) semaphore x status bit after
      --  enable (mask) This bit is set by hardware and read only by software.
      --  Bit is cleared by software writing the corresponding HSEM_SCnICR bit
      --  x. Bit is read as 0 when semaphore x status is masked in HSEM_SCnIER
      --  bit x. When semaphore x PRIVx is disabled, bit x can be accessed with
      --  secure privilege and secure unprivileged access. When semaphore x
      --  PRIVx is enabled, bit x can be accessed only with secure privilege
      --  access. Secure unprivileged read return 0 value. When semaphore x CID
      --  white list is disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed
      --  according the register global access definition shown above. When
      --  semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x
      --  can be accessed only by the secure processor(s) as defined in the
      --  HSEM_CnCIDCFGR when the processor CID is part of the HSEM_GpCIDCFGR
      --  CID white list. When its CID is not in the white list bit x is reset
      --  to 0 and cannot be accessed, read return 0 value.
      SMISF          : HSEM_SC1MISR_SMISF_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_SC1MISR_Register use record
      SMISF          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_SC2IER_SISE_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM secure interrupt enable register
   type HSEM_SC2IER_Register is record
      --  Secure interrupt(n) semaphore x enable bit This bit is read and
      --  written by software. When semaphore x PRIVx is disabled, bit x can be
      --  accessed with secure privilege and secure unprivileged access. When
      --  semaphore x PRIVx is enabled, bit x can be accessed only with secure
      --  privilege access. secure unprivileged write to this bit is discarded,
      --  secure unprivileged read return 0 value. When semaphore x CID white
      --  list is disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed
      --  according the register global access definition shown above. When
      --  semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x
      --  can be accessed only by the secure processor(s) as defined in the
      --  HSEM_CnCIDCFGR when the processor CID is part of the HSEM_GpCIDCFGR
      --  CID white list. When its CID is not in the white list bit x is reset
      --  to 0 and cannot be accessed, writing to this bit is discarded and
      --  read returns 0.
      SISE           : HSEM_SC2IER_SISE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_SC2IER_Register use record
      SISE           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_SC2ICR_SISC_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM secure interrupt clear register
   type HSEM_SC2ICR_Register is record
      --  Secure interrupt(n) semaphore x clear bit This bit is written by
      --  software, and is always read 0. When semaphore x PRIVx is disabled,
      --  bit x can be accessed with secure privilege and secure unprivileged
      --  access. When semaphore x PRIVx is enabled, bit x can be accessed only
      --  with secure privilege access. Secure unprivileged write to this bit
      --  is discarded. When semaphore x CID white list is disabled by
      --  HSEM_GpCIDCFGR.CFEN, bit x can be accessed according the register
      --  global access definition shown above. When semaphore x CID white list
      --  is enabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed only by the
      --  secure processor(s) as defined in the HSEM_CnCIDCFGR when the
      --  processor CID is part of the HSEM_GpCIDCFGR CID white list. When its
      --  CID is not in the white list bit x is reset to 0 and cannot be
      --  accessed, writing to this bit is discarded and read returns 0.
      SISC           : HSEM_SC2ICR_SISC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_SC2ICR_Register use record
      SISC           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_SC2ISR_SISF_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM secure interrupt status register
   type HSEM_SC2ISR_Register is record
      --  Read-only. Secure interrupt(n) semaphore x status bit before enable
      --  (mask) This bit is set by hardware and read only by software. Bit is
      --  cleared by software writing the corresponding HSEM_SCnICR bit x. When
      --  semaphore x PRIVx is disabled, bit x can be accessed with secure
      --  privilege and secure unprivileged access. When semaphore x PRIVx is
      --  enabled, bit x can be accessed only with secure privilege access.
      --  Secure unprivileged read return 0 value. When semaphore x CID white
      --  list is disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed
      --  according the register global access definition shown above. When
      --  semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x
      --  can be accessed only by the secure processor(s) as defined in the
      --  HSEM_CnCIDCFGR when the processor CID is part of the HSEM_GpCIDCFGR
      --  CID white list. When its CID is not in the white list bit x is reset
      --  to 0 and cannot be accessed, read return 0 value.
      SISF           : HSEM_SC2ISR_SISF_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_SC2ISR_Register use record
      SISF           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_SC2MISR_SMISF_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM secure masked interrupt status register
   type HSEM_SC2MISR_Register is record
      --  Read-only. Secure masked interrupt(n) semaphore x status bit after
      --  enable (mask) This bit is set by hardware and read only by software.
      --  Bit is cleared by software writing the corresponding HSEM_SCnICR bit
      --  x. Bit is read as 0 when semaphore x status is masked in HSEM_SCnIER
      --  bit x. When semaphore x PRIVx is disabled, bit x can be accessed with
      --  secure privilege and secure unprivileged access. When semaphore x
      --  PRIVx is enabled, bit x can be accessed only with secure privilege
      --  access. Secure unprivileged read return 0 value. When semaphore x CID
      --  white list is disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed
      --  according the register global access definition shown above. When
      --  semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x
      --  can be accessed only by the secure processor(s) as defined in the
      --  HSEM_CnCIDCFGR when the processor CID is part of the HSEM_GpCIDCFGR
      --  CID white list. When its CID is not in the white list bit x is reset
      --  to 0 and cannot be accessed, read return 0 value.
      SMISF          : HSEM_SC2MISR_SMISF_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_SC2MISR_Register use record
      SMISF          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_SC3IER_SISE_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM secure interrupt enable register
   type HSEM_SC3IER_Register is record
      --  Secure interrupt(n) semaphore x enable bit This bit is read and
      --  written by software. When semaphore x PRIVx is disabled, bit x can be
      --  accessed with secure privilege and secure unprivileged access. When
      --  semaphore x PRIVx is enabled, bit x can be accessed only with secure
      --  privilege access. secure unprivileged write to this bit is discarded,
      --  secure unprivileged read return 0 value. When semaphore x CID white
      --  list is disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed
      --  according the register global access definition shown above. When
      --  semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x
      --  can be accessed only by the secure processor(s) as defined in the
      --  HSEM_CnCIDCFGR when the processor CID is part of the HSEM_GpCIDCFGR
      --  CID white list. When its CID is not in the white list bit x is reset
      --  to 0 and cannot be accessed, writing to this bit is discarded and
      --  read returns 0.
      SISE           : HSEM_SC3IER_SISE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_SC3IER_Register use record
      SISE           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_SC3ICR_SISC_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM secure interrupt clear register
   type HSEM_SC3ICR_Register is record
      --  Secure interrupt(n) semaphore x clear bit This bit is written by
      --  software, and is always read 0. When semaphore x PRIVx is disabled,
      --  bit x can be accessed with secure privilege and secure unprivileged
      --  access. When semaphore x PRIVx is enabled, bit x can be accessed only
      --  with secure privilege access. Secure unprivileged write to this bit
      --  is discarded. When semaphore x CID white list is disabled by
      --  HSEM_GpCIDCFGR.CFEN, bit x can be accessed according the register
      --  global access definition shown above. When semaphore x CID white list
      --  is enabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed only by the
      --  secure processor(s) as defined in the HSEM_CnCIDCFGR when the
      --  processor CID is part of the HSEM_GpCIDCFGR CID white list. When its
      --  CID is not in the white list bit x is reset to 0 and cannot be
      --  accessed, writing to this bit is discarded and read returns 0.
      SISC           : HSEM_SC3ICR_SISC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_SC3ICR_Register use record
      SISC           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_SC3ISR_SISF_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM secure interrupt status register
   type HSEM_SC3ISR_Register is record
      --  Read-only. Secure interrupt(n) semaphore x status bit before enable
      --  (mask) This bit is set by hardware and read only by software. Bit is
      --  cleared by software writing the corresponding HSEM_SCnICR bit x. When
      --  semaphore x PRIVx is disabled, bit x can be accessed with secure
      --  privilege and secure unprivileged access. When semaphore x PRIVx is
      --  enabled, bit x can be accessed only with secure privilege access.
      --  Secure unprivileged read return 0 value. When semaphore x CID white
      --  list is disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed
      --  according the register global access definition shown above. When
      --  semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x
      --  can be accessed only by the secure processor(s) as defined in the
      --  HSEM_CnCIDCFGR when the processor CID is part of the HSEM_GpCIDCFGR
      --  CID white list. When its CID is not in the white list bit x is reset
      --  to 0 and cannot be accessed, read return 0 value.
      SISF           : HSEM_SC3ISR_SISF_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_SC3ISR_Register use record
      SISF           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_SC3MISR_SMISF_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM secure masked interrupt status register
   type HSEM_SC3MISR_Register is record
      --  Read-only. Secure masked interrupt(n) semaphore x status bit after
      --  enable (mask) This bit is set by hardware and read only by software.
      --  Bit is cleared by software writing the corresponding HSEM_SCnICR bit
      --  x. Bit is read as 0 when semaphore x status is masked in HSEM_SCnIER
      --  bit x. When semaphore x PRIVx is disabled, bit x can be accessed with
      --  secure privilege and secure unprivileged access. When semaphore x
      --  PRIVx is enabled, bit x can be accessed only with secure privilege
      --  access. Secure unprivileged read return 0 value. When semaphore x CID
      --  white list is disabled by HSEM_GpCIDCFGR.CFEN, bit x can be accessed
      --  according the register global access definition shown above. When
      --  semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN, bit x
      --  can be accessed only by the secure processor(s) as defined in the
      --  HSEM_CnCIDCFGR when the processor CID is part of the HSEM_GpCIDCFGR
      --  CID white list. When its CID is not in the white list bit x is reset
      --  to 0 and cannot be accessed, read return 0 value.
      SMISF          : HSEM_SC3MISR_SMISF_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_SC3MISR_Register use record
      SMISF          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_SECCFGR_SEC_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM security configuration register
   type HSEM_SECCFGR_Register is record
      --  Semaphore x security attribute This bit is set and cleared by
      --  software. When semaphore x CID white list is disabled by
      --  HSEM_GpCIDCFGR.CFEN, bit x can be written by any secure processor.
      --  When semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN,
      --  bit x can only be written by secure processor CIDs, which are part of
      --  the CID white list. All CIDs have read accesses to the register bit x
      --  value.
      SEC            : HSEM_SECCFGR_SEC_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_SECCFGR_Register use record
      SEC            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_PRIVCFGR_PRIV_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM privilege configuration register
   type HSEM_PRIVCFGR_Register is record
      --  Semaphore x privilege attribute This bit is set and cleared by
      --  software. When semaphore x SECx is disabled, bit x can be write
      --  accessed with secure privileged and non-secure privileged access.
      --  When semaphore x SECx is enabled, bit x can only be write accessed
      --  with secure privilege access. Non-secure privileged write access is
      --  discarded. Both secure and non-secure read return the register bit x
      --  value When semaphore x CID white list is disabled by
      --  HSEM_GpCIDCFGR.CFEN, bit x can be written by any privilege processor.
      --  When semaphore x CID white list is enabled by HSEM_GpCIDCFGR.CFEN,
      --  bit x can only be written by privileged processor CIDs, which are
      --  part of the CID white list. All CIDs have read accesses to the
      --  register bit x value.
      PRIV           : HSEM_PRIVCFGR_PRIV_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_C1CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  HSEM processor 1 CID configuration register
   type HSEM_C1CIDCFGR_Register is record
      --  processor[n] CID filtering enabled for HSEM_(S)CnIER, HSEM_(S)CnICR,
      --  HSEM_(S)CnISR, and HSEM_(S)CnMISR registers and for white list filter
      --  usage in HSEM_GpCIDCFGR.SEM_WLIST_Cn
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  processor[n] CID domain identification If CFEN = 0 these bits are
      --  ignored and there is no processor[n] CID filtering. Else:
      --  processor[n] CID domain identification number.
      CID           : HSEM_C1CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C1CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype HSEM_C2CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  HSEM processor 2 CID configuration register
   type HSEM_C2CIDCFGR_Register is record
      --  processor[n] CID filtering enabled for HSEM_(S)CnIER, HSEM_(S)CnICR,
      --  HSEM_(S)CnISR, and HSEM_(S)CnMISR registers and for white list filter
      --  usage in HSEM_GpCIDCFGR.SEM_WLIST_Cn
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  processor[n] CID domain identification If CFEN = 0 these bits are
      --  ignored and there is no processor[n] CID filtering. Else:
      --  processor[n] CID domain identification number.
      CID           : HSEM_C2CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C2CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype HSEM_C3CIDCFGR_CID_Field is Interfaces.Bit_Types.UInt3;

   --  HSEM processor 3 CID configuration register
   type HSEM_C3CIDCFGR_Register is record
      --  processor[n] CID filtering enabled for HSEM_(S)CnIER, HSEM_(S)CnICR,
      --  HSEM_(S)CnISR, and HSEM_(S)CnMISR registers and for white list filter
      --  usage in HSEM_GpCIDCFGR.SEM_WLIST_Cn
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  processor[n] CID domain identification If CFEN = 0 these bits are
      --  ignored and there is no processor[n] CID filtering. Else:
      --  processor[n] CID domain identification number.
      CID           : HSEM_C3CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C3CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype HSEM_CR_LOCKID_Field is Interfaces.Bit_Types.UInt4;
   subtype HSEM_CR_KEY_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM clear register
   type HSEM_CR_Register is record
      --  Write-only. Semaphore CID filtered. This field can be written by
      --  software, is always read 0.
      CFEN           : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Write-only. LOCKID of semaphores to be cleared This field can be
      --  written by software and is always read 0. This field indicates the
      --  LOCKID for which the semaphores are cleared when writing the HSEM_CR.
      LOCKID         : HSEM_CR_LOCKID_Field := 16#0#;
      --  Write-only. SEC value of semaphores to be cleared. This field can be
      --  written by software, is always read 0. Indicates the SEC for which
      --  the semaphores are cleared when writing the HSEM_CR
      SEC            : Boolean := False;
      --  Write-only. PRIV value of semaphores to be cleared. This field can be
      --  written by software, is always read 0. Indicates the PRIV for which
      --  the semaphores are cleared when writing the HSEM_CR.
      PRIV           : Boolean := False;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Write-only. Semaphore clear key This field can be written by software
      --  and is always read 0. If this key value does not match HSEM_KEYR.KEY,
      --  semaphores are not affected. If this key value matches HSEM_KEYR.KEY,
      --  all semaphores matching the LOCKID are cleared to the free state.
      KEY            : HSEM_CR_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_CR_Register use record
      CFEN           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      LOCKID         at 0 range 8 .. 11;
      SEC            at 0 range 12 .. 12;
      PRIV           at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      KEY            at 0 range 16 .. 31;
   end record;

   subtype HSEM_KEYR_KEY_Field is Interfaces.Bit_Types.UInt16;

   --  HSEM clear semaphore key register
   type HSEM_KEYR_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.Bit_Types.UInt16 := 16#0#;
      --  Semaphore clear key This field can be written and read by software.
      --  Key value to match when clearing semaphores.
      KEY           : HSEM_KEYR_KEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_KEYR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      KEY           at 0 range 16 .. 31;
   end record;

   subtype HSEM_G0CIDCFGR_SEM_WLIST_C_Field is Interfaces.Bit_Types.UInt3;

   --  HSEM CID configuration register
   type HSEM_G0CIDCFGR_Register is record
      --  Semaphore group p global CID filtering enable. This bit is set and
      --  cleared by software.
      CFEN           : Boolean := False;
      --  unspecified
      Reserved_1_15  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Semaphore group p CID filtering enable for processor n CID (n = 1 to
      --  3). This bit is set and cleared by software. If CID filtering is
      --  disabled in HSEM_GpCIDCFGR.CFEN, these bits are ignored, else: If CID
      --  filtering is disabled in HSEM_CnCIDCFGR.CFEN, bit n is ignored, (n =
      --  1 to 3) and HSEM_CnCIDCFGR.CID is black listed, else:
      SEM_WLIST_C    : HSEM_G0CIDCFGR_SEM_WLIST_C_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_G0CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      SEM_WLIST_C    at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HSEM_G1CIDCFGR_SEM_WLIST_C_Field is Interfaces.Bit_Types.UInt3;

   --  HSEM CID configuration register
   type HSEM_G1CIDCFGR_Register is record
      --  Semaphore group p global CID filtering enable. This bit is set and
      --  cleared by software.
      CFEN           : Boolean := False;
      --  unspecified
      Reserved_1_15  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Semaphore group p CID filtering enable for processor n CID (n = 1 to
      --  3). This bit is set and cleared by software. If CID filtering is
      --  disabled in HSEM_GpCIDCFGR.CFEN, these bits are ignored, else: If CID
      --  filtering is disabled in HSEM_CnCIDCFGR.CFEN, bit n is ignored, (n =
      --  1 to 3) and HSEM_CnCIDCFGR.CID is black listed, else:
      SEM_WLIST_C    : HSEM_G1CIDCFGR_SEM_WLIST_C_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_G1CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      SEM_WLIST_C    at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HSEM_G2CIDCFGR_SEM_WLIST_C_Field is Interfaces.Bit_Types.UInt3;

   --  HSEM CID configuration register
   type HSEM_G2CIDCFGR_Register is record
      --  Semaphore group p global CID filtering enable. This bit is set and
      --  cleared by software.
      CFEN           : Boolean := False;
      --  unspecified
      Reserved_1_15  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Semaphore group p CID filtering enable for processor n CID (n = 1 to
      --  3). This bit is set and cleared by software. If CID filtering is
      --  disabled in HSEM_GpCIDCFGR.CFEN, these bits are ignored, else: If CID
      --  filtering is disabled in HSEM_CnCIDCFGR.CFEN, bit n is ignored, (n =
      --  1 to 3) and HSEM_CnCIDCFGR.CID is black listed, else:
      SEM_WLIST_C    : HSEM_G2CIDCFGR_SEM_WLIST_C_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_G2CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      SEM_WLIST_C    at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HSEM_G3CIDCFGR_SEM_WLIST_C_Field is Interfaces.Bit_Types.UInt3;

   --  HSEM CID configuration register
   type HSEM_G3CIDCFGR_Register is record
      --  Semaphore group p global CID filtering enable. This bit is set and
      --  cleared by software.
      CFEN           : Boolean := False;
      --  unspecified
      Reserved_1_15  : Interfaces.Bit_Types.UInt15 := 16#0#;
      --  Semaphore group p CID filtering enable for processor n CID (n = 1 to
      --  3). This bit is set and cleared by software. If CID filtering is
      --  disabled in HSEM_GpCIDCFGR.CFEN, these bits are ignored, else: If CID
      --  filtering is disabled in HSEM_CnCIDCFGR.CFEN, bit n is ignored, (n =
      --  1 to 3) and HSEM_CnCIDCFGR.CID is black listed, else:
      SEM_WLIST_C    : HSEM_G3CIDCFGR_SEM_WLIST_C_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_G3CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      SEM_WLIST_C    at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  HSEM_HWCFGR2_MASTERID array element
   subtype HSEM_HWCFGR2_MASTERID_Element is Interfaces.Bit_Types.UInt4;

   --  HSEM_HWCFGR2_MASTERID array
   type HSEM_HWCFGR2_MASTERID_Field_Array is array (1 .. 4)
     of HSEM_HWCFGR2_MASTERID_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for HSEM_HWCFGR2_MASTERID
   type HSEM_HWCFGR2_MASTERID_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MASTERID as a value
            Val : Interfaces.Bit_Types.UInt16;
         when True =>
            --  MASTERID as an array
            Arr : HSEM_HWCFGR2_MASTERID_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for HSEM_HWCFGR2_MASTERID_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  HSEM hardware configuration register 2
   type HSEM_HWCFGR2_Register is record
      --  Read-only. Hardware configuration valid bus masters ID1
      MASTERID       : HSEM_HWCFGR2_MASTERID_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_HWCFGR2_Register use record
      MASTERID       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HSEM_HWCFGR1_NBSEM_Field is Interfaces.Bit_Types.Byte;
   subtype HSEM_HWCFGR1_NBINT_Field is Interfaces.Bit_Types.UInt4;
   subtype HSEM_HWCFGR1_CID_WIDTH_Field is Interfaces.Bit_Types.UInt4;

   --  HSEM hardware configuration register 1
   type HSEM_HWCFGR1_Register is record
      --  Read-only. Hardware configuration number of semaphores
      NBSEM          : HSEM_HWCFGR1_NBSEM_Field;
      --  Read-only. Hardware configuration number of interrupts/supported
      --  number of master ID.
      NBINT          : HSEM_HWCFGR1_NBINT_Field;
      --  Read-only. Hardware configuration compartment isolation bus width
      CID_WIDTH      : HSEM_HWCFGR1_CID_WIDTH_Field;
      --  Read-only. Hardware configuration security protection enable
      SECEN          : Boolean;
      --  Read-only. Hardware configuration privilege protection enable
      PRIVEN         : Boolean;
      --  Read-only. Hardware configuration compartment filtering enable
      CFEN           : Boolean;
      --  unspecified
      Reserved_19_31 : Interfaces.Bit_Types.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_HWCFGR1_Register use record
      NBSEM          at 0 range 0 .. 7;
      NBINT          at 0 range 8 .. 11;
      CID_WIDTH      at 0 range 12 .. 15;
      SECEN          at 0 range 16 .. 16;
      PRIVEN         at 0 range 17 .. 17;
      CFEN           at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HSEM_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype HSEM_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  HSEM version register
   type HSEM_VERR_Register is record
      --  Read-only. HSEM minor revision number
      MINREV        : HSEM_VERR_MINREV_Field;
      --  Read-only. HSEM major revision number
      MAJREV        : HSEM_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  HSEM address block description
   type HSEM_Peripheral is record
      --  HSEM register semaphore 0
      HSEM_R0        : aliased HSEM_R_Register;
      --  HSEM register semaphore 1
      HSEM_R1        : aliased HSEM_R_Register;
      --  HSEM register semaphore 2
      HSEM_R2        : aliased HSEM_R_Register;
      --  HSEM register semaphore 3
      HSEM_R3        : aliased HSEM_R_Register;
      --  HSEM register semaphore 4
      HSEM_R4        : aliased HSEM_R_Register;
      --  HSEM register semaphore 5
      HSEM_R5        : aliased HSEM_R_Register;
      --  HSEM register semaphore 6
      HSEM_R6        : aliased HSEM_R_Register;
      --  HSEM register semaphore 7
      HSEM_R7        : aliased HSEM_R_Register;
      --  HSEM register semaphore 8
      HSEM_R8        : aliased HSEM_R_Register;
      --  HSEM register semaphore 9
      HSEM_R9        : aliased HSEM_R_Register;
      --  HSEM register semaphore 10
      HSEM_R10       : aliased HSEM_R_Register;
      --  HSEM register semaphore 11
      HSEM_R11       : aliased HSEM_R_Register;
      --  HSEM register semaphore 12
      HSEM_R12       : aliased HSEM_R_Register;
      --  HSEM register semaphore 13
      HSEM_R13       : aliased HSEM_R_Register;
      --  HSEM register semaphore 14
      HSEM_R14       : aliased HSEM_R_Register;
      --  HSEM register semaphore 15
      HSEM_R15       : aliased HSEM_R_Register;
      --  HSEM read lock register semaphore 0
      HSEM_RLR0      : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 1
      HSEM_RLR1      : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 2
      HSEM_RLR2      : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 3
      HSEM_RLR3      : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 4
      HSEM_RLR4      : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 5
      HSEM_RLR5      : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 6
      HSEM_RLR6      : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 7
      HSEM_RLR7      : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 8
      HSEM_RLR8      : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 9
      HSEM_RLR9      : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 10
      HSEM_RLR10     : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 11
      HSEM_RLR11     : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 12
      HSEM_RLR12     : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 13
      HSEM_RLR13     : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 14
      HSEM_RLR14     : aliased HSEM_RLR_Register;
      --  HSEM read lock register semaphore 15
      HSEM_RLR15     : aliased HSEM_RLR_Register;
      --  HSEM non-secure interrupt enable register
      HSEM_C1IER     : aliased HSEM_C1IER_Register;
      --  HSEM non-secure interrupt clear register
      HSEM_C1ICR     : aliased HSEM_C1ICR_Register;
      --  HSEM non-secure interrupt status register
      HSEM_C1ISR     : aliased HSEM_C1ISR_Register;
      --  HSEM non-secure interrupt status register
      HSEM_C1MISR    : aliased HSEM_C1MISR_Register;
      --  HSEM non-secure interrupt enable register
      HSEM_C2IER     : aliased HSEM_C2IER_Register;
      --  HSEM non-secure interrupt clear register
      HSEM_C2ICR     : aliased HSEM_C2ICR_Register;
      --  HSEM non-secure interrupt status register
      HSEM_C2ISR     : aliased HSEM_C2ISR_Register;
      --  HSEM non-secure interrupt status register
      HSEM_C2MISR    : aliased HSEM_C2MISR_Register;
      --  HSEM non-secure interrupt enable register
      HSEM_C3IER     : aliased HSEM_C3IER_Register;
      --  HSEM non-secure interrupt clear register
      HSEM_C3ICR     : aliased HSEM_C3ICR_Register;
      --  HSEM non-secure interrupt status register
      HSEM_C3ISR     : aliased HSEM_C3ISR_Register;
      --  HSEM non-secure interrupt status register
      HSEM_C3MISR    : aliased HSEM_C3MISR_Register;
      --  HSEM secure interrupt enable register
      HSEM_SC1IER    : aliased HSEM_SC1IER_Register;
      --  HSEM secure interrupt clear register
      HSEM_SC1ICR    : aliased HSEM_SC1ICR_Register;
      --  HSEM secure interrupt status register
      HSEM_SC1ISR    : aliased HSEM_SC1ISR_Register;
      --  HSEM secure masked interrupt status register
      HSEM_SC1MISR   : aliased HSEM_SC1MISR_Register;
      --  HSEM secure interrupt enable register
      HSEM_SC2IER    : aliased HSEM_SC2IER_Register;
      --  HSEM secure interrupt clear register
      HSEM_SC2ICR    : aliased HSEM_SC2ICR_Register;
      --  HSEM secure interrupt status register
      HSEM_SC2ISR    : aliased HSEM_SC2ISR_Register;
      --  HSEM secure masked interrupt status register
      HSEM_SC2MISR   : aliased HSEM_SC2MISR_Register;
      --  HSEM secure interrupt enable register
      HSEM_SC3IER    : aliased HSEM_SC3IER_Register;
      --  HSEM secure interrupt clear register
      HSEM_SC3ICR    : aliased HSEM_SC3ICR_Register;
      --  HSEM secure interrupt status register
      HSEM_SC3ISR    : aliased HSEM_SC3ISR_Register;
      --  HSEM secure masked interrupt status register
      HSEM_SC3MISR   : aliased HSEM_SC3MISR_Register;
      --  HSEM security configuration register
      HSEM_SECCFGR   : aliased HSEM_SECCFGR_Register;
      --  HSEM privilege configuration register
      HSEM_PRIVCFGR  : aliased HSEM_PRIVCFGR_Register;
      --  HSEM processor 1 CID configuration register
      HSEM_C1CIDCFGR : aliased HSEM_C1CIDCFGR_Register;
      --  HSEM processor 2 CID configuration register
      HSEM_C2CIDCFGR : aliased HSEM_C2CIDCFGR_Register;
      --  HSEM processor 3 CID configuration register
      HSEM_C3CIDCFGR : aliased HSEM_C3CIDCFGR_Register;
      --  HSEM clear register
      HSEM_CR        : aliased HSEM_CR_Register;
      --  HSEM clear semaphore key register
      HSEM_KEYR      : aliased HSEM_KEYR_Register;
      --  HSEM CID configuration register
      HSEM_G0CIDCFGR : aliased HSEM_G0CIDCFGR_Register;
      --  HSEM CID configuration register
      HSEM_G1CIDCFGR : aliased HSEM_G1CIDCFGR_Register;
      --  HSEM CID configuration register
      HSEM_G2CIDCFGR : aliased HSEM_G2CIDCFGR_Register;
      --  HSEM CID configuration register
      HSEM_G3CIDCFGR : aliased HSEM_G3CIDCFGR_Register;
      --  HSEM hardware configuration register 2
      HSEM_HWCFGR2   : aliased HSEM_HWCFGR2_Register;
      --  HSEM hardware configuration register 1
      HSEM_HWCFGR1   : aliased HSEM_HWCFGR1_Register;
      --  HSEM version register
      HSEM_VERR      : aliased HSEM_VERR_Register;
      --  HSEM identification register
      HSEM_IPIDR     : aliased Interfaces.Bit_Types.UInt32;
      --  HSEM size identification register
      HSEM_SIDR      : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for HSEM_Peripheral use record
      HSEM_R0        at 16#0# range 0 .. 31;
      HSEM_R1        at 16#4# range 0 .. 31;
      HSEM_R2        at 16#8# range 0 .. 31;
      HSEM_R3        at 16#C# range 0 .. 31;
      HSEM_R4        at 16#10# range 0 .. 31;
      HSEM_R5        at 16#14# range 0 .. 31;
      HSEM_R6        at 16#18# range 0 .. 31;
      HSEM_R7        at 16#1C# range 0 .. 31;
      HSEM_R8        at 16#20# range 0 .. 31;
      HSEM_R9        at 16#24# range 0 .. 31;
      HSEM_R10       at 16#28# range 0 .. 31;
      HSEM_R11       at 16#2C# range 0 .. 31;
      HSEM_R12       at 16#30# range 0 .. 31;
      HSEM_R13       at 16#34# range 0 .. 31;
      HSEM_R14       at 16#38# range 0 .. 31;
      HSEM_R15       at 16#3C# range 0 .. 31;
      HSEM_RLR0      at 16#80# range 0 .. 31;
      HSEM_RLR1      at 16#84# range 0 .. 31;
      HSEM_RLR2      at 16#88# range 0 .. 31;
      HSEM_RLR3      at 16#8C# range 0 .. 31;
      HSEM_RLR4      at 16#90# range 0 .. 31;
      HSEM_RLR5      at 16#94# range 0 .. 31;
      HSEM_RLR6      at 16#98# range 0 .. 31;
      HSEM_RLR7      at 16#9C# range 0 .. 31;
      HSEM_RLR8      at 16#A0# range 0 .. 31;
      HSEM_RLR9      at 16#A4# range 0 .. 31;
      HSEM_RLR10     at 16#A8# range 0 .. 31;
      HSEM_RLR11     at 16#AC# range 0 .. 31;
      HSEM_RLR12     at 16#B0# range 0 .. 31;
      HSEM_RLR13     at 16#B4# range 0 .. 31;
      HSEM_RLR14     at 16#B8# range 0 .. 31;
      HSEM_RLR15     at 16#BC# range 0 .. 31;
      HSEM_C1IER     at 16#100# range 0 .. 31;
      HSEM_C1ICR     at 16#104# range 0 .. 31;
      HSEM_C1ISR     at 16#108# range 0 .. 31;
      HSEM_C1MISR    at 16#10C# range 0 .. 31;
      HSEM_C2IER     at 16#110# range 0 .. 31;
      HSEM_C2ICR     at 16#114# range 0 .. 31;
      HSEM_C2ISR     at 16#118# range 0 .. 31;
      HSEM_C2MISR    at 16#11C# range 0 .. 31;
      HSEM_C3IER     at 16#120# range 0 .. 31;
      HSEM_C3ICR     at 16#124# range 0 .. 31;
      HSEM_C3ISR     at 16#128# range 0 .. 31;
      HSEM_C3MISR    at 16#12C# range 0 .. 31;
      HSEM_SC1IER    at 16#180# range 0 .. 31;
      HSEM_SC1ICR    at 16#184# range 0 .. 31;
      HSEM_SC1ISR    at 16#188# range 0 .. 31;
      HSEM_SC1MISR   at 16#18C# range 0 .. 31;
      HSEM_SC2IER    at 16#190# range 0 .. 31;
      HSEM_SC2ICR    at 16#194# range 0 .. 31;
      HSEM_SC2ISR    at 16#198# range 0 .. 31;
      HSEM_SC2MISR   at 16#19C# range 0 .. 31;
      HSEM_SC3IER    at 16#1A0# range 0 .. 31;
      HSEM_SC3ICR    at 16#1A4# range 0 .. 31;
      HSEM_SC3ISR    at 16#1A8# range 0 .. 31;
      HSEM_SC3MISR   at 16#1AC# range 0 .. 31;
      HSEM_SECCFGR   at 16#200# range 0 .. 31;
      HSEM_PRIVCFGR  at 16#210# range 0 .. 31;
      HSEM_C1CIDCFGR at 16#220# range 0 .. 31;
      HSEM_C2CIDCFGR at 16#224# range 0 .. 31;
      HSEM_C3CIDCFGR at 16#228# range 0 .. 31;
      HSEM_CR        at 16#230# range 0 .. 31;
      HSEM_KEYR      at 16#234# range 0 .. 31;
      HSEM_G0CIDCFGR at 16#240# range 0 .. 31;
      HSEM_G1CIDCFGR at 16#244# range 0 .. 31;
      HSEM_G2CIDCFGR at 16#248# range 0 .. 31;
      HSEM_G3CIDCFGR at 16#24C# range 0 .. 31;
      HSEM_HWCFGR2   at 16#3EC# range 0 .. 31;
      HSEM_HWCFGR1   at 16#3F0# range 0 .. 31;
      HSEM_VERR      at 16#3F4# range 0 .. 31;
      HSEM_IPIDR     at 16#3F8# range 0 .. 31;
      HSEM_SIDR      at 16#3FC# range 0 .. 31;
   end record;

   --  HSEM address block description
   HSEM_Periph : aliased HSEM_Peripheral
     with Import, Address => HSEM_Base;

   --  HSEM address block description
   HSEM_S_Periph : aliased HSEM_Peripheral
     with Import, Address => HSEM_S_Base;

end Interfaces.STM32.HSEM;
