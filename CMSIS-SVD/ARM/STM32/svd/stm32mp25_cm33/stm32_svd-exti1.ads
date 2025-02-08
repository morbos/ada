--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.EXTI1 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  EXTI1_RTSR1_RT array
   type EXTI1_RTSR1_RT_Field_Array is array (0 .. 18) of Boolean
     with Component_Size => 1, Size => 19;

   --  Type definition for EXTI1_RTSR1_RT
   type EXTI1_RTSR1_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt19;
         when True =>
            --  RT as an array
            Arr : EXTI1_RTSR1_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 19;

   for EXTI1_RTSR1_RT_Field use record
      Val at 0 range 0 .. 18;
      Arr at 0 range 0 .. 18;
   end record;

   --  EXTI1 rising trigger selection register
   type EXTI1_RTSR1_Register is record
      --  Rising trigger event configuration bit of configurable event input x
      --  When SECx is disabled in EXTI1_SECCFGR1, RTx can be accessed with
      --  non-secure and secure access. When SECx is enabled in EXTI1_SECCFGR1,
      --  RTx can only be accessed with secure access. Non-secure write to RTx
      --  is discarded. Non-secure read returns 0. When PRIVx is disabled in
      --  EXTI1_PRIVCFGR1, RTx can be accessed with unprivileged and privileged
      --  access. When PRIVx is enabled in EXTI1_PRIVCFGR1, RTx can only be
      --  accessed with privileged access. Unprivileged write to RTx is
      --  discarded. Unprivileged read returns 0. When CID filtering is
      --  disabled in EXTI1_ExCIDCFGR, RTx can be accessed by any processor
      --  CID. When CID filtering is enabled in EXTI1_ExCIDCFGR, RTx can only
      --  be accessed by the allowed processor CID. Illegal CID write to RTx is
      --  discarded, and read returns 0. Note: The configurable event input is
      --  edge triggered. No glitch must be generated on this input. If a
      --  rising edge on the configurable event input occurs while writing to
      --  the register, the associated pending bit is not set. Note: Rising and
      --  falling edge triggers can be set for the same configurable event
      --  input. In this case, both edges generate a trigger.
      RT             : EXTI1_RTSR1_RT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_RTSR1_Register use record
      RT             at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  EXTI1_FTSR1_FT array
   type EXTI1_FTSR1_FT_Field_Array is array (0 .. 18) of Boolean
     with Component_Size => 1, Size => 19;

   --  Type definition for EXTI1_FTSR1_FT
   type EXTI1_FTSR1_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt19;
         when True =>
            --  FT as an array
            Arr : EXTI1_FTSR1_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 19;

   for EXTI1_FTSR1_FT_Field use record
      Val at 0 range 0 .. 18;
      Arr at 0 range 0 .. 18;
   end record;

   --  EXTI1 falling trigger selection register
   type EXTI1_FTSR1_Register is record
      --  Falling trigger event configuration bit of configurable event input x
      --  When SECx is disabled in EXTI1_SECCFGR1, FTx can be accessed with
      --  non-secure and secure access. When SECx is enabled in EXTI1_SECCFGR1,
      --  FTx can only be accessed with secure access. Non-secure write to FTx
      --  is discarded. Non-secure read returns 0. When PRIVx is disabled in
      --  EXTI1_PRIVCFGR1, FTx can be accessed with unprivileged and privileged
      --  access. When PRIVx is enabled in EXTI1_PRIVCFGR1, FTx can only be
      --  accessed with privileged access. Unprivileged write to FTx is
      --  discarded. Unprivileged read returns 0. When CID filtering is
      --  disabled in EXTI1_ExCIDCFGR, FTx can be accessed by any processor
      --  CID. When CID filtering is enabled in EXTI1_ExCIDCFGR, FTx can only
      --  be accessed by the allowed processor CID. Dis allowed CID CID write
      --  to FTx is discarded, and read returns0. Note: The configurable event
      --  input is edge triggered. No glitch must be generated on this input.
      --  If a falling edge on the configurable event input occurs while
      --  writing to the register, the associated pending bit is not set. Note:
      --  Rising and falling edge triggers can be set for the same configurable
      --  event input. In this case, both edges generate a trigger.
      FT             : EXTI1_FTSR1_FT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_FTSR1_Register use record
      FT             at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  EXTI1_SWIER1_SWI array
   type EXTI1_SWIER1_SWI_Field_Array is array (0 .. 18) of Boolean
     with Component_Size => 1, Size => 19;

   --  Type definition for EXTI1_SWIER1_SWI
   type EXTI1_SWIER1_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt19;
         when True =>
            --  SWI as an array
            Arr : EXTI1_SWIER1_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 19;

   for EXTI1_SWIER1_SWI_Field use record
      Val at 0 range 0 .. 18;
      Arr at 0 range 0 .. 18;
   end record;

   --  EXTI1 software interrupt event register
   type EXTI1_SWIER1_Register is record
      --  Software interrupt on event x When SECx is disabled in
      --  EXTI1_SECCFGR1, SWIx can be accessed with non-secure and secure
      --  access. When SECx is enabled in EXTI1_SECCFGR1, SWIx can only be
      --  accessed with secure access. Non-secure write to SWIx is discarded.
      --  Non-secure read returns 0. When PRIVx is disabled in
      --  EXTI1_PRIVCFGR1,SWIx can be accessed with unprivileged and privileged
      --  access. When PRIVx is enabled in EXTI1_PRIVCFGR1,SWIx can only be
      --  accessed with privileged access. Unprivileged write to SWIx is
      --  discarded. Unprivileged read returns 0. When CID filtering is
      --  disabled in EXTI1_ExCIDCFGR, SWIx can be accessed by any processor
      --  CID. When CID filtering is enabled in EXTI1_ExCIDCFGR, SWIx can only
      --  be accessed by the allowed processor CID. Dis allowed CID write to
      --  SWIx is discarded and read returns0. A software interrupt is
      --  generated whatever the setting in EXTI1_RTSR and EXTI1_FTSR. It
      --  always returns 0 when read.
      SWI            : EXTI1_SWIER1_SWI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_SWIER1_Register use record
      SWI            at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  EXTI1_RPR1_RPIF array
   type EXTI1_RPR1_RPIF_Field_Array is array (0 .. 18) of Boolean
     with Component_Size => 1, Size => 19;

   --  Type definition for EXTI1_RPR1_RPIF
   type EXTI1_RPR1_RPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : HAL.UInt19;
         when True =>
            --  RPIF as an array
            Arr : EXTI1_RPR1_RPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 19;

   for EXTI1_RPR1_RPIF_Field use record
      Val at 0 range 0 .. 18;
      Arr at 0 range 0 .. 18;
   end record;

   --  EXTI1 rising edge pending register
   type EXTI1_RPR1_Register is record
      --  Configurable event input x rising edge pending bit This bit is set
      --  when the selected rising edge event or an EXTI1_SWIER software
      --  trigger arrives on the configurable event line. This bit is cleared
      --  by writing a 1 into the bit. When SECx is disabled in EXTI1_SECCFGR1,
      --  RPIFx can be accessed with non-secure and secure access. When SECx is
      --  enabled in EXTI1_SECCFGR1, RPIFx can only be accessed with secure
      --  access. Non-secure write to RPIFx is discarded. Non-secure read
      --  returns 0. When PRIVx is disabled in EXTI1_PRIVCFGR1, RPIFx can be
      --  accessed with unprivileged and privileged access. When PRIVx is
      --  enabled in EXTI1_PRIVCFGR1, RPIFx can only be accessed with
      --  privileged access. Unprivileged write to RPIFx is discarded.
      --  Unprivileged read returns 0. When CID filtering is disabled in
      --  EXTI1_ExCIDCFGR, RPIFx can be accessed by any processor CID. When CID
      --  filtering is enabled in EXTI1_ExCIDCFGR, RPIFx can only be accessed
      --  by the allowed processor CID. Dis allowed CID write to RPIFx is
      --  discarded, and read returns0.
      RPIF           : EXTI1_RPR1_RPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_RPR1_Register use record
      RPIF           at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  EXTI1_FPR1_FPIF array
   type EXTI1_FPR1_FPIF_Field_Array is array (0 .. 18) of Boolean
     with Component_Size => 1, Size => 19;

   --  Type definition for EXTI1_FPR1_FPIF
   type EXTI1_FPR1_FPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : HAL.UInt19;
         when True =>
            --  FPIF as an array
            Arr : EXTI1_FPR1_FPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 19;

   for EXTI1_FPR1_FPIF_Field use record
      Val at 0 range 0 .. 18;
      Arr at 0 range 0 .. 18;
   end record;

   --  EXTI1 falling edge pending register
   type EXTI1_FPR1_Register is record
      --  configurable event input x falling edge pending bit This bit is set
      --  when the falling edge event arrives on the configurable event line.
      --  This bit is cleared by writing a 1 into this bit. When SECx is
      --  disabled in EXTI1_SECCFGR1, FPIFx can be accessed with non-secure and
      --  secure access. When SECx is enabled in EXTI1_SECCFGR1, FPIFx can only
      --  be accessed with secure access. Non-secure write to FPIFx is
      --  discarded. Non-secure read returns 0. When PRIVx is disabled in
      --  EXTI1_PRIVCFGR1, FPIFx can be accessed with unprivileged and
      --  privileged access. When PRIVx is enabled in EXTI1_PRIVCFGR1, FPIFx
      --  can only be accessed with privileged access. Unprivileged write to
      --  FPIFx is discarded. Unprivileged read returns 0. When CID filtering
      --  is disabled in EXTI1_ExCIDCFGR, FPIFx can be accessed by any
      --  processor CID. When CID filtering is enabled in EXTI1_ExCIDCFGR,
      --  FPIFx can only be accessed by the allowed processor CID. Dis allowed
      --  CID write to FPIFx is discarded, and read returns0.
      FPIF           : EXTI1_FPR1_FPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_31 : HAL.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_FPR1_Register use record
      FPIF           at 0 range 0 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  EXTI1_SECCFGR1_SEC array
   type EXTI1_SECCFGR1_SEC_Field_Array is array (0 .. 19) of Boolean
     with Component_Size => 1, Size => 20;

   --  Type definition for EXTI1_SECCFGR1_SEC
   type EXTI1_SECCFGR1_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt20;
         when True =>
            --  SEC as an array
            Arr : EXTI1_SECCFGR1_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for EXTI1_SECCFGR1_SEC_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  EXTI1_SECCFGR1_SEC array
   type EXTI1_SECCFGR1_SEC_Field_Array_1 is array (21 .. 31) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EXTI1_SECCFGR1_SEC
   type EXTI1_SECCFGR1_SEC_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt11;
         when True =>
            --  SEC as an array
            Arr : EXTI1_SECCFGR1_SEC_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EXTI1_SECCFGR1_SEC_Field_1 use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  EXTI1 security configuration register
   type EXTI1_SECCFGR1_Register is record
      --  Security enable on event input x
      SEC            : EXTI1_SECCFGR1_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Security enable on event input x When CID filtering is disabled in
      --  EXTI1_ExCIDCFGR, SECx can be accessed by any processor CID. When CID
      --  filtering is enabled in EXTI1_ExCIDCFGR, SECx can only be accessed by
      --  the allowed processor CID. Dis allowed CID write to SECx is discarded
      --  and read returns 0.
      SEC_1          : EXTI1_SECCFGR1_SEC_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_SECCFGR1_Register use record
      SEC            at 0 range 0 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      SEC_1          at 0 range 21 .. 31;
   end record;

   --  EXTI1_PRIVCFGR1_PRIV array
   type EXTI1_PRIVCFGR1_PRIV_Field_Array is array (0 .. 19) of Boolean
     with Component_Size => 1, Size => 20;

   --  Type definition for EXTI1_PRIVCFGR1_PRIV
   type EXTI1_PRIVCFGR1_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt20;
         when True =>
            --  PRIV as an array
            Arr : EXTI1_PRIVCFGR1_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 20;

   for EXTI1_PRIVCFGR1_PRIV_Field use record
      Val at 0 range 0 .. 19;
      Arr at 0 range 0 .. 19;
   end record;

   --  EXTI1_PRIVCFGR1_PRIV array
   type EXTI1_PRIVCFGR1_PRIV_Field_Array_1 is array (21 .. 31) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for EXTI1_PRIVCFGR1_PRIV
   type EXTI1_PRIVCFGR1_PRIV_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt11;
         when True =>
            --  PRIV as an array
            Arr : EXTI1_PRIVCFGR1_PRIV_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for EXTI1_PRIVCFGR1_PRIV_Field_1 use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  EXTI1 privilege configuration register
   type EXTI1_PRIVCFGR1_Register is record
      --  Privilege enable on event input x
      PRIV           : EXTI1_PRIVCFGR1_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_20 : HAL.Bit := 16#0#;
      --  Privilege enable on event input x When SECx is disabled in
      --  EXTI1_SECCFGR1, PRIVx can be accessed with secure and non-secure
      --  access. When SECx is enabled in EXTI1_SECCFGR1, PRIVx can only be
      --  written with secure access. Non-secure write to PRIVx is discarded.
      --  When CID filtering is disabled in EXTI1_ExCIDCFGR, PRIVx can be
      --  accessed by any processor CID. When CID filtering is enabled in
      --  EXTI1_ExCIDCFGR, PRIVx can only be accessed by the allowed processor
      --  CID. Dis allowed CID write to PRIVx is discarded and read returns 0.
      PRIV_1         : EXTI1_PRIVCFGR1_PRIV_Field_1 :=
                        (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_PRIVCFGR1_Register use record
      PRIV           at 0 range 0 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      PRIV_1         at 0 range 21 .. 31;
   end record;

   --  EXTI1_RTSR2_RT array
   type EXTI1_RTSR2_RT_Field_Array is array (43 .. 45) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI1_RTSR2_RT
   type EXTI1_RTSR2_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt3;
         when True =>
            --  RT as an array
            Arr : EXTI1_RTSR2_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI1_RTSR2_RT_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI1 rising trigger selection register
   type EXTI1_RTSR2_Register is record
      --  unspecified
      Reserved_0_10  : HAL.UInt11 := 16#0#;
      --  Rising trigger event configuration bit of configurable event input x
      --  When SECx is disabled in EXTI1_SECCFGR2, RTx can be accessed with
      --  non-secure and secure access. When SECx is enabled in EXTI1_SECCFGR2,
      --  RTx can only be accessed with secure access. Non-secure write to RTx
      --  is discarded. Non-secure read returns 0. When PRIVx is disabled in
      --  EXTI1_PRIVCFGR2, RTx can be accessed with unprivileged and privileged
      --  access. When PRIVx is enabled in EXTI1_PRIVCFGR2, RTx can only be
      --  accessed with privileged access. Unprivileged write to RTx is
      --  discarded. Unprivileged read returns 0. When CID filtering is
      --  disabled in EXTI1_ExCIDCFGR, RTx can be accessed by any processor
      --  CID. When CID filtering is enabled in EXTI1_ExCIDCFGR, RTx can only
      --  be accessed by the allowed processor CID. Illegal CID write to RTx is
      --  discarded and read returns 0. Note: The configurable event input is
      --  edge triggered. No glitch must be generated on this input. If a
      --  rising edge on the configurable event input occurs while writing to
      --  the register, the associated pending bit is not set. Note: Rising and
      --  falling edge triggers can be set for the same configurable event
      --  input. In this case, both edges generate a trigger.
      RT             : EXTI1_RTSR2_RT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_RTSR2_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      RT             at 0 range 11 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  EXTI1_FTSR2_FT array
   type EXTI1_FTSR2_FT_Field_Array is array (43 .. 45) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI1_FTSR2_FT
   type EXTI1_FTSR2_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt3;
         when True =>
            --  FT as an array
            Arr : EXTI1_FTSR2_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI1_FTSR2_FT_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI1 falling trigger selection register
   type EXTI1_FTSR2_Register is record
      --  unspecified
      Reserved_0_10  : HAL.UInt11 := 16#0#;
      --  Falling trigger event configuration bit of configurable event input x
      --  When SECx is disabled in EXTI1_SECCFGR2, FTx can be accessed with
      --  non-secure and secure access. When SECx is enabled in EXTI1_SECCFGR2,
      --  FTx can only be accessed with secure access. Non-secure write to FTx
      --  is discarded. Non-secure read returns 0. When PRIVx is disabled in
      --  EXTI1_PRIVCFGR2, FTx can be accessed with unprivileged and privileged
      --  access. When PRIVx is enabled in EXTI1_PRIVCFGR2, FTx can only be
      --  accessed with privileged access. Unprivileged write to FTx is
      --  discarded. Unprivileged read returns 0. When CID filtering is
      --  disabled in EXTI1_ExCIDCFGR, FTx can be accessed by any processor
      --  CID. When CID filtering is enabled in EXTI1_ExCIDCFGR, FTx can only
      --  be accessed by the allowed processor CID. Dis allowed CID write to
      --  FTx is discarded and read returns 0. Note: The configurable event
      --  input is edge triggered. No glitch must be generated on this input.
      --  If a falling edge on the configurable event input occurs while
      --  writing to the register, the associated pending bit is not set. Note:
      --  Rising and falling edge triggers can be set for the same configurable
      --  event input. In this case, both edges generate a trigger.
      FT             : EXTI1_FTSR2_FT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_FTSR2_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      FT             at 0 range 11 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  EXTI1_SWIER2_SWI array
   type EXTI1_SWIER2_SWI_Field_Array is array (43 .. 45) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI1_SWIER2_SWI
   type EXTI1_SWIER2_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt3;
         when True =>
            --  SWI as an array
            Arr : EXTI1_SWIER2_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI1_SWIER2_SWI_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI1 software interrupt event register
   type EXTI1_SWIER2_Register is record
      --  unspecified
      Reserved_0_10  : HAL.UInt11 := 16#0#;
      --  Software interrupt on event x When SECx is disabled in
      --  EXTI1_SECCFGR2, SWIx can be accessed with non-secure and secure
      --  access. When SECx is enabled in EXTI1_SECCFGR2, SWIx can only be
      --  accessed with secure access. Non-secure write to SWIx is discarded.
      --  Non-secure read returns 0. When PRIVx is disabled in EXTI1_PRIVCFGR2,
      --  SWIx can be accessed with unprivileged and privileged access. When
      --  PRIVx is enabled in EXTI1_PRIVCFGR2, SWIx can only be accessed with
      --  privileged access. Unprivileged write to SWIx is discarded.
      --  Unprivileged read returns 0. When CID filtering is disabled in
      --  EXTI1_ExCIDCFGR, SWIx can be accessed by any processor CID. When CID
      --  filtering is enabled in EXTI1_ExCIDCFGR, SWIx can only be accessed by
      --  the allowed processor CID. Dis allowed CID write to SWIx is discarded
      --  and read returns 0. A software interrupt is generated whatever the
      --  setting in EXTI1_RTSR and EXTI1_FTSR. It always returns 0 when read.
      SWI            : EXTI1_SWIER2_SWI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_SWIER2_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      SWI            at 0 range 11 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  EXTI1_RPR2_RPIF array
   type EXTI1_RPR2_RPIF_Field_Array is array (43 .. 45) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI1_RPR2_RPIF
   type EXTI1_RPR2_RPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : HAL.UInt3;
         when True =>
            --  RPIF as an array
            Arr : EXTI1_RPR2_RPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI1_RPR2_RPIF_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI1 rising edge pending register
   type EXTI1_RPR2_Register is record
      --  unspecified
      Reserved_0_10  : HAL.UInt11 := 16#0#;
      --  Configurable event input x rising edge pending bit This bit is set
      --  when the selected rising edge event or an EXTI1_SWIER software
      --  trigger arrives on the configurable event line. This bit is cleared
      --  by writing a 1 into the bit. When SECx is disabled in EXTI1_SECCFGR2,
      --  RPIFx can be accessed with non-secure and secure access. When SECx is
      --  enabled in EXTI1_SECCFGR2, RPIFx can only be accessed with secure
      --  access. Non-secure write to RPIFx is discarded. Non-secure read
      --  returns 0. When PRIVx is disabled in EXTI1_PRIVCFGR2, RPIFx can be
      --  accessed with unprivileged and privileged access. When PRIVx is
      --  enabled in EXTI1_PRIVCFGR2, this bit can only be accessed with
      --  privileged access. Unprivileged write to RPIFx is discarded.
      --  Unprivileged read returns 0. When CID filtering is disabled in
      --  EXTI1_ExCIDCFGR, RPIFx can be accessed by any processor CID. When CID
      --  filtering is enabled in EXTI1_ExCIDCFGR, this bit can only be
      --  accessed by the allowed processor CID. Dis allowed CID write to RPIFx
      --  is discarded and read returns 0.
      RPIF           : EXTI1_RPR2_RPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_RPR2_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      RPIF           at 0 range 11 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  EXTI1_FPR2_FPIF array
   type EXTI1_FPR2_FPIF_Field_Array is array (43 .. 45) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI1_FPR2_FPIF
   type EXTI1_FPR2_FPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : HAL.UInt3;
         when True =>
            --  FPIF as an array
            Arr : EXTI1_FPR2_FPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI1_FPR2_FPIF_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI1 falling edge pending register
   type EXTI1_FPR2_Register is record
      --  unspecified
      Reserved_0_10  : HAL.UInt11 := 16#0#;
      --  Configurable event input x falling edge pending bit This bit is set
      --  when the falling edge event arrives on the configurable event line.
      --  This bit is cleared by writing a 1 into the bit. When SECx is
      --  disabled in EXTI1_SECCFGR2, FPIFx can be accessed with non-secure and
      --  secure access. When SECx is enabled in EXTI1_SECCFGR2, FPIFx can only
      --  be accessed with secure access. Non-secure write to this FPIFx is
      --  discarded. Non-secure read returns 0. When PRIVx is disabled in
      --  EXTI1_PRIVCFGR2d, FPIFx can be accessed with unprivileged and
      --  privileged access. When PRIVx is enabled in EXTI1_PRIVCFGR2, FPIFx
      --  can only be accessed with privileged access. Unprivileged write to
      --  FPIFx is discarded. Unprivileged read returns 0. When CID filtering
      --  is disabled in EXTI1_ExCIDCFGR, FPIFx can be accessed by any
      --  processor CID. When CID filtering is enabled in EXTI1_ExCIDCFGR, this
      --  bit can only be accessed by the allowed processor CID. Dis allowed
      --  CID write to FPIFx is discarded and read returns 0.
      FPIF           : EXTI1_FPR2_FPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_FPR2_Register use record
      Reserved_0_10  at 0 range 0 .. 10;
      FPIF           at 0 range 11 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  EXTI1_SECCFGR2_SEC array
   type EXTI1_SECCFGR2_SEC_Field_Array is array (32 .. 34) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI1_SECCFGR2_SEC
   type EXTI1_SECCFGR2_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt3;
         when True =>
            --  SEC as an array
            Arr : EXTI1_SECCFGR2_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI1_SECCFGR2_SEC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI1_SECCFGR2_SEC array
   type EXTI1_SECCFGR2_SEC_Field_Array_1 is array (36 .. 50) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for EXTI1_SECCFGR2_SEC
   type EXTI1_SECCFGR2_SEC_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt15;
         when True =>
            --  SEC as an array
            Arr : EXTI1_SECCFGR2_SEC_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EXTI1_SECCFGR2_SEC_Field_1 use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  EXTI1_SECCFGR2_SEC array
   type EXTI1_SECCFGR2_SEC_Field_Array_2 is array (52 .. 57) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EXTI1_SECCFGR2_SEC
   type EXTI1_SECCFGR2_SEC_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt6;
         when True =>
            --  SEC as an array
            Arr : EXTI1_SECCFGR2_SEC_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EXTI1_SECCFGR2_SEC_Field_2 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EXTI1_SECCFGR2_SEC array
   type EXTI1_SECCFGR2_SEC_Field_Array_3 is array (59 .. 62) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for EXTI1_SECCFGR2_SEC
   type EXTI1_SECCFGR2_SEC_Field_3
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt4;
         when True =>
            --  SEC as an array
            Arr : EXTI1_SECCFGR2_SEC_Field_Array_3;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for EXTI1_SECCFGR2_SEC_Field_3 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  EXTI1 security enable register
   type EXTI1_SECCFGR2_Register is record
      --  Security enable on event input x
      SEC            : EXTI1_SECCFGR2_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Security enable on event input x
      SEC_1          : EXTI1_SECCFGR2_SEC_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Security enable on event input x
      SEC_2          : EXTI1_SECCFGR2_SEC_Field_2 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  Security enable on event input x When CID filtering is disabled in
      --  EXTI1_ExCIDCFGR, SECx can be accessed by any processor CID. When CID
      --  filtering is enabled in EXTI1_ExCIDCFGR, SECx can only be accessed by
      --  the allowed processor CID. Dis allowed CID write to SECx is discarded
      --  and read returns 0.
      SEC_3          : EXTI1_SECCFGR2_SEC_Field_3 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_SECCFGR2_Register use record
      SEC            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SEC_1          at 0 range 4 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SEC_2          at 0 range 20 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      SEC_3          at 0 range 27 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  EXTI1_PRIVCFGR2_PRIV array
   type EXTI1_PRIVCFGR2_PRIV_Field_Array is array (32 .. 34) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for EXTI1_PRIVCFGR2_PRIV
   type EXTI1_PRIVCFGR2_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt3;
         when True =>
            --  PRIV as an array
            Arr : EXTI1_PRIVCFGR2_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for EXTI1_PRIVCFGR2_PRIV_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  EXTI1_PRIVCFGR2_PRIV array
   type EXTI1_PRIVCFGR2_PRIV_Field_Array_1 is array (36 .. 50) of Boolean
     with Component_Size => 1, Size => 15;

   --  Type definition for EXTI1_PRIVCFGR2_PRIV
   type EXTI1_PRIVCFGR2_PRIV_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt15;
         when True =>
            --  PRIV as an array
            Arr : EXTI1_PRIVCFGR2_PRIV_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 15;

   for EXTI1_PRIVCFGR2_PRIV_Field_1 use record
      Val at 0 range 0 .. 14;
      Arr at 0 range 0 .. 14;
   end record;

   --  EXTI1_PRIVCFGR2_PRIV array
   type EXTI1_PRIVCFGR2_PRIV_Field_Array_2 is array (52 .. 57) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for EXTI1_PRIVCFGR2_PRIV
   type EXTI1_PRIVCFGR2_PRIV_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt6;
         when True =>
            --  PRIV as an array
            Arr : EXTI1_PRIVCFGR2_PRIV_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for EXTI1_PRIVCFGR2_PRIV_Field_2 use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  EXTI1_PRIVCFGR2_PRIV array
   type EXTI1_PRIVCFGR2_PRIV_Field_Array_3 is array (59 .. 62) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for EXTI1_PRIVCFGR2_PRIV
   type EXTI1_PRIVCFGR2_PRIV_Field_3
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt4;
         when True =>
            --  PRIV as an array
            Arr : EXTI1_PRIVCFGR2_PRIV_Field_Array_3;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for EXTI1_PRIVCFGR2_PRIV_Field_3 use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  EXTI1 privilege enable register
   type EXTI1_PRIVCFGR2_Register is record
      --  Privilege enable on event input x
      PRIV           : EXTI1_PRIVCFGR2_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Privilege enable on event input x
      PRIV_1         : EXTI1_PRIVCFGR2_PRIV_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Privilege enable on event input x
      PRIV_2         : EXTI1_PRIVCFGR2_PRIV_Field_2 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_26 : HAL.Bit := 16#0#;
      --  Privilege enable on event input x When SECx is disabled in
      --  EXTI1_SECCFGR2, PRIVx can be accessed with secure and non-secure
      --  access. When SECx is enabled in EXTI1_SECCFGR2, PRIVx can only be
      --  accessed with secure access. Non-secure write to PRIVx is discarded.
      --  When CID filtering is disabled in EXTI1_ExCIDCFGR, PRIVx can be
      --  accessed by any processor CID. When CID filtering is enabled in
      --  EXTI1_ExCIDCFGR, PRIVx can only be accessed by the allowed processor
      --  CID. Dis allowed CID write to PRIVx is discarded, and read returns 0.
      PRIV_3         : EXTI1_PRIVCFGR2_PRIV_Field_3 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_PRIVCFGR2_Register use record
      PRIV           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PRIV_1         at 0 range 4 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      PRIV_2         at 0 range 20 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      PRIV_3         at 0 range 27 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  EXTI1_RTSR3_RT array
   type EXTI1_RTSR3_RT_Field_Array is array (64 .. 65) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_RTSR3_RT
   type EXTI1_RTSR3_RT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt2;
         when True =>
            --  RT as an array
            Arr : EXTI1_RTSR3_RT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_RTSR3_RT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1_RTSR3_RT array
   type EXTI1_RTSR3_RT_Field_Array_1 is array (83 .. 84) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_RTSR3_RT
   type EXTI1_RTSR3_RT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RT as a value
            Val : HAL.UInt2;
         when True =>
            --  RT as an array
            Arr : EXTI1_RTSR3_RT_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_RTSR3_RT_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1 rising trigger selection register
   type EXTI1_RTSR3_Register is record
      --  Rising trigger event configuration bit of configurable event input x
      RT             : EXTI1_RTSR3_RT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Rising trigger event configuration bit of configurable event input 67
      RT67           : Boolean := False;
      --  unspecified
      Reserved_4_8   : HAL.UInt5 := 16#0#;
      --  Rising trigger event configuration bit of configurable event input 73
      RT73           : Boolean := False;
      --  unspecified
      Reserved_10_18 : HAL.UInt9 := 16#0#;
      --  Rising trigger event configuration bit of configurable event input x
      --  When SECx is disabled in EXTI1_SECCFGR3, RTx can be accessed with
      --  non-secure and secure access. When SECx is enabled in EXTI1_SECCFGR3,
      --  RTx can only be accessed with secure access. Non-secure write to RTx
      --  is discarded. Non-secure read returns 0. When PRIVx i disabled in
      --  EXTI1_PRIVCFGR3, RTx can be accessed with unprivileged and privileged
      --  access. When PRIVx is enabled in EXTI1_PRIVCFGR3, RTx can only be
      --  accessed with privileged access. Unprivileged write to RTx is
      --  discarded. Unprivileged read returns 0. When CID filtering is
      --  disabled in EXTI1_ExCIDCFGR, RTx can be accessed by any processor
      --  CID. When CID filtering is enabled in EXTI1_ExCIDCFGR, RTx can only
      --  be accessed by the allowed processor CID. Dis allowed CID write to
      --  RTx is discarded, and read returns 0. Note: The configurable event
      --  input is edge triggered. No glitch must be generated on this input.
      --  If a rising edge on the configurable event input occurs while writing
      --  to the register, the associated pending bit is not set. Note: Rising
      --  and falling edge triggers can be set for the same configurable event
      --  input. In this case, both edges generate a trigger.
      RT_1           : EXTI1_RTSR3_RT_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_RTSR3_Register use record
      RT             at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      RT67           at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      RT73           at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      RT_1           at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  EXTI1_FTSR3_FT array
   type EXTI1_FTSR3_FT_Field_Array is array (64 .. 65) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_FTSR3_FT
   type EXTI1_FTSR3_FT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt2;
         when True =>
            --  FT as an array
            Arr : EXTI1_FTSR3_FT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_FTSR3_FT_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1_FTSR3_FT array
   type EXTI1_FTSR3_FT_Field_Array_1 is array (83 .. 84) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_FTSR3_FT
   type EXTI1_FTSR3_FT_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FT as a value
            Val : HAL.UInt2;
         when True =>
            --  FT as an array
            Arr : EXTI1_FTSR3_FT_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_FTSR3_FT_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1 falling trigger selection register
   type EXTI1_FTSR3_Register is record
      --  Falling trigger event configuration bit of configurable event input x
      FT             : EXTI1_FTSR3_FT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Falling trigger event configuration bit of configurable event input
      --  67
      FT67           : Boolean := False;
      --  unspecified
      Reserved_4_8   : HAL.UInt5 := 16#0#;
      --  Falling trigger event configuration bit of configurable event input
      --  73
      FT73           : Boolean := False;
      --  unspecified
      Reserved_10_18 : HAL.UInt9 := 16#0#;
      --  Falling trigger event configuration bit of configurable event input x
      --  When SECx is disabled in EXTI1_SECCFGR3, FTx can be accessed with
      --  non-secure and secure access. When SECx is enabled in EXTI1_SECCFGR3,
      --  FTx can only be accessed with secure access. Non-secure write to FTx
      --  is discarded. Non-secure read returns 0. When PRIVx is disabled in
      --  EXTI1_PRIVCFGR3, FTx can be accessed with unprivileged and privileged
      --  access. When PRIVx is enabled in EXTI1_PRIVCFGR3, FTx can only be
      --  accessed with privileged access. Unprivileged write to FTx is
      --  discarded. Unprivileged read returns 0. When CID filtering is
      --  disabled in EXTI1_ExCIDCFGR, FTx can be accessed by any processor
      --  CID. When CID filtering is enabled in EXTI1_ExCIDCFGR, FTx can only
      --  be accessed by the allowed processor CID. Dis allowed CID write to
      --  FTx is discarded and read returns 0. Note: The configurable event
      --  input is edge triggered. No glitch must be generated on this input.
      --  If a falling edge on the configurable event input occurs while
      --  writing to the register, the associated pending bit is not set. Note:
      --  Rising and falling edge triggers can be set for the same configurable
      --  event input. In this case, both edges generate a trigger.
      FT_1           : EXTI1_FTSR3_FT_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_FTSR3_Register use record
      FT             at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      FT67           at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      FT73           at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      FT_1           at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  EXTI1_SWIER3_SWI array
   type EXTI1_SWIER3_SWI_Field_Array is array (64 .. 65) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_SWIER3_SWI
   type EXTI1_SWIER3_SWI_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt2;
         when True =>
            --  SWI as an array
            Arr : EXTI1_SWIER3_SWI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_SWIER3_SWI_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1_SWIER3_SWI array
   type EXTI1_SWIER3_SWI_Field_Array_1 is array (83 .. 84) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_SWIER3_SWI
   type EXTI1_SWIER3_SWI_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SWI as a value
            Val : HAL.UInt2;
         when True =>
            --  SWI as an array
            Arr : EXTI1_SWIER3_SWI_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_SWIER3_SWI_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1 software interrupt event register
   type EXTI1_SWIER3_Register is record
      --  Software interrupt on event x
      SWI            : EXTI1_SWIER3_SWI_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Software interrupt on event 67.
      SWI67          : Boolean := False;
      --  unspecified
      Reserved_4_8   : HAL.UInt5 := 16#0#;
      --  Software interrupt on event 73
      SWI73          : Boolean := False;
      --  unspecified
      Reserved_10_18 : HAL.UInt9 := 16#0#;
      --  Software interrupt on event x When SECx is disabled in
      --  EXTI1_SECCFGR3, SWIx can be accessed with non-secure and secure
      --  access. When SECx is enabled in EXTI1_SECCFGR3, SWIx can only be
      --  accessed with secure access. Non-secure write to SWIx is discarded.
      --  Non-secure read returns 0. When PRIVx is disabled in EXTI1_PRIVCFGR3,
      --  SWIx can be accessed with unprivileged and privileged access. When
      --  PRIVx is enabled in EXTI1_PRIVCFGR3, SWIx can only be accessed with
      --  privileged access. Unprivileged write to SWIx is discarded.
      --  Unprivileged read returns 0. When CID filtering is disabled in
      --  EXTI1_ExCIDCFGR, SWIx can be accessed by any processor CID. When CID
      --  filtering is enabled in EXTI1_ExCIDCFGR, SWIx can only be accessed by
      --  the allowed processor CID. Dis allowed CID write to SWIx is discarded
      --  and read returns 0. A software interrupt is generated whatever the
      --  setting in EXTI1_RTSR and EXTI1_FTSR. It always returns 0 when read.
      SWI_1          : EXTI1_SWIER3_SWI_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_SWIER3_Register use record
      SWI            at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SWI67          at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      SWI73          at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      SWI_1          at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  EXTI1_RPR3_RPIF array
   type EXTI1_RPR3_RPIF_Field_Array is array (64 .. 65) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_RPR3_RPIF
   type EXTI1_RPR3_RPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : HAL.UInt2;
         when True =>
            --  RPIF as an array
            Arr : EXTI1_RPR3_RPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_RPR3_RPIF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1_RPR3_RPIF array
   type EXTI1_RPR3_RPIF_Field_Array_1 is array (83 .. 84) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_RPR3_RPIF
   type EXTI1_RPR3_RPIF_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPIF as a value
            Val : HAL.UInt2;
         when True =>
            --  RPIF as an array
            Arr : EXTI1_RPR3_RPIF_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_RPR3_RPIF_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1 rising edge pending register
   type EXTI1_RPR3_Register is record
      --  configurable event input x rising edge pending bit
      RPIF           : EXTI1_RPR3_RPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  configurable event input 67 rising edge pending bit
      RPIF67         : Boolean := False;
      --  unspecified
      Reserved_4_8   : HAL.UInt5 := 16#0#;
      --  configurable event input 73 rising edge pending bit
      RPIF73         : Boolean := False;
      --  unspecified
      Reserved_10_18 : HAL.UInt9 := 16#0#;
      --  configurable event input x rising edge pending bit This bit is set
      --  when the selected rising edge event or an EXTI1_SWIER Software
      --  trigger arrives on the configurable event line. This bit is cleared
      --  by writing a 1 into the bit. When SECx is disabled in EXTI1_SECCFGR3,
      --  RPIFx can be accessed with non-secure and secure access. When SECx is
      --  enabled in EXTI1_SECCFGR3, RPIFx can only be accessed with secure
      --  access. Non-secure write to this RPIFx is discarded. Non-secure read
      --  returns 0. When PRIVx is disabled in EXTI1_PRIVCFGR3, RPIFx can be
      --  accessed with unprivileged and privileged access. When PRIVx is
      --  enabled in EXTI1_PRIVCFGR3, RPIFx can only be accessed with
      --  privileged access. Unprivileged write to RPIFx is discarded.
      --  Unprivileged read returns 0. When CID filtering is disabled in
      --  EXTI1_ExCIDCFGR, RPIFx can be accessed by any processor CID. When CID
      --  filtering is enabled in EXTI1_ExCIDCFGR, RPIFx can only be accessed
      --  by the allowed processor CID. Dis allowed CID write to RPIFx is
      --  discarded and read returns 0.
      RPIF_1         : EXTI1_RPR3_RPIF_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_RPR3_Register use record
      RPIF           at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      RPIF67         at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      RPIF73         at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      RPIF_1         at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  EXTI1_FPR3_FPIF array
   type EXTI1_FPR3_FPIF_Field_Array is array (64 .. 65) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_FPR3_FPIF
   type EXTI1_FPR3_FPIF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : HAL.UInt2;
         when True =>
            --  FPIF as an array
            Arr : EXTI1_FPR3_FPIF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_FPR3_FPIF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1_FPR3_FPIF array
   type EXTI1_FPR3_FPIF_Field_Array_1 is array (83 .. 84) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_FPR3_FPIF
   type EXTI1_FPR3_FPIF_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  FPIF as a value
            Val : HAL.UInt2;
         when True =>
            --  FPIF as an array
            Arr : EXTI1_FPR3_FPIF_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_FPR3_FPIF_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1 falling edge pending register
   type EXTI1_FPR3_Register is record
      --  configurable event input x falling edge pending bit
      FPIF           : EXTI1_FPR3_FPIF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  configurable 67 falling edge pending bit
      FPIF67         : Boolean := False;
      --  unspecified
      Reserved_4_8   : HAL.UInt5 := 16#0#;
      --  configurable event input 73 falling edge pending bit
      FPIF73         : Boolean := False;
      --  unspecified
      Reserved_10_18 : HAL.UInt9 := 16#0#;
      --  configurable event input x falling edge pending bit This bit is set
      --  when the falling edge event arrives on the configurable event line.
      --  This bit is cleared by writing a 1 into the bit. When SECx is
      --  disabled in EXTI1_SECCFGR3, FPIFx can be accessed with non-secure and
      --  secure access. When SECx is enabled in EXTI1_SECCFGR3, FPIFx can only
      --  be accessed with secure access. Non-secure write to FPIFx is
      --  discarded. Non-secure read returns 0. When PRIVx is disabled in
      --  EXTI1_PRIVCFGR3, FPIFx can be accessed with unprivileged and
      --  privileged access. When PRIVx is enabled in EXTI1_PRIVCFGR3, FPIFx
      --  can only be accessed with privileged access. Unprivileged write to
      --  FPIFx is discarded. Unprivileged read returns 0. When CID filtering
      --  is disabled in EXTI1_ExCIDCFGR, FPIFx can be accessed by any
      --  processor CID. When CID filtering is enabled in EXTI1_ExCIDCFGR,
      --  FPIFx can only be accessed by the allowed processor CID. Dis allowed
      --  CID write to FPIFx is discarded and read returns 0.
      FPIF_1         : EXTI1_FPR3_FPIF_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_FPR3_Register use record
      FPIF           at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      FPIF67         at 0 range 3 .. 3;
      Reserved_4_8   at 0 range 4 .. 8;
      FPIF73         at 0 range 9 .. 9;
      Reserved_10_18 at 0 range 10 .. 18;
      FPIF_1         at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  EXTI1_SECCFGR3_SEC array
   type EXTI1_SECCFGR3_SEC_Field_Array is array (64 .. 65) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_SECCFGR3_SEC
   type EXTI1_SECCFGR3_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt2;
         when True =>
            --  SEC as an array
            Arr : EXTI1_SECCFGR3_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_SECCFGR3_SEC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1_SECCFGR3_SEC array
   type EXTI1_SECCFGR3_SEC_Field_Array_1 is array (67 .. 68) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_SECCFGR3_SEC
   type EXTI1_SECCFGR3_SEC_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt2;
         when True =>
            --  SEC as an array
            Arr : EXTI1_SECCFGR3_SEC_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_SECCFGR3_SEC_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1_SECCFGR3_SEC array
   type EXTI1_SECCFGR3_SEC_Field_Array_2 is array (72 .. 84) of Boolean
     with Component_Size => 1, Size => 13;

   --  Type definition for EXTI1_SECCFGR3_SEC
   type EXTI1_SECCFGR3_SEC_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt13;
         when True =>
            --  SEC as an array
            Arr : EXTI1_SECCFGR3_SEC_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 13;

   for EXTI1_SECCFGR3_SEC_Field_2 use record
      Val at 0 range 0 .. 12;
      Arr at 0 range 0 .. 12;
   end record;

   --  EXTI1 security enable register
   type EXTI1_SECCFGR3_Register is record
      --  Security enable on event input x
      SEC            : EXTI1_SECCFGR3_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Security enable on event input x
      SEC_1          : EXTI1_SECCFGR3_SEC_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Security enable on event input 70
      SEC70          : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Security enable on event input x When CID filtering is disabled in
      --  EXTI1_ExCIDCFGR, SECx can be accessed by any processor CID. When CID
      --  filtering is enabled in EXTI1_ExCIDCFGR, SECx can only be accessed by
      --  the allowed processor CID. Dis allowed CID write to SECx is discarded
      --  and read returns 0.
      SEC_2          : EXTI1_SECCFGR3_SEC_Field_2 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_SECCFGR3_Register use record
      SEC            at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SEC_1          at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SEC70          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SEC_2          at 0 range 8 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  EXTI1_PRIVCFGR3_PRIV array
   type EXTI1_PRIVCFGR3_PRIV_Field_Array is array (64 .. 65) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_PRIVCFGR3_PRIV
   type EXTI1_PRIVCFGR3_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt2;
         when True =>
            --  PRIV as an array
            Arr : EXTI1_PRIVCFGR3_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_PRIVCFGR3_PRIV_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1_PRIVCFGR3_PRIV array
   type EXTI1_PRIVCFGR3_PRIV_Field_Array_1 is array (67 .. 68) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for EXTI1_PRIVCFGR3_PRIV
   type EXTI1_PRIVCFGR3_PRIV_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt2;
         when True =>
            --  PRIV as an array
            Arr : EXTI1_PRIVCFGR3_PRIV_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for EXTI1_PRIVCFGR3_PRIV_Field_1 use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  EXTI1_PRIVCFGR3_PRIV array
   type EXTI1_PRIVCFGR3_PRIV_Field_Array_2 is array (72 .. 84) of Boolean
     with Component_Size => 1, Size => 13;

   --  Type definition for EXTI1_PRIVCFGR3_PRIV
   type EXTI1_PRIVCFGR3_PRIV_Field_2
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt13;
         when True =>
            --  PRIV as an array
            Arr : EXTI1_PRIVCFGR3_PRIV_Field_Array_2;
      end case;
   end record
     with Unchecked_Union, Size => 13;

   for EXTI1_PRIVCFGR3_PRIV_Field_2 use record
      Val at 0 range 0 .. 12;
      Arr at 0 range 0 .. 12;
   end record;

   --  EXTI1 privilege enable register
   type EXTI1_PRIVCFGR3_Register is record
      --  Privilege enable on event input x
      PRIV           : EXTI1_PRIVCFGR3_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Privilege enable on event input x
      PRIV_1         : EXTI1_PRIVCFGR3_PRIV_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Privilege enable on event input 70
      PRIV70         : Boolean := False;
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  Privilege enable on event input x When SECx is disabled in
      --  EXTI1_SECCFGR3, PRIVx can be accessed with secure and non-secure
      --  access. When SECx is enabled in EXTI1_SECCFGR3, PRIVx can only be
      --  written with secure access. Non-secure write to PRIVx is discarded.
      --  When CID filtering is disabled in EXTI1_ExCIDCFGR, PRIVx can be
      --  accessed by any processor CID. When CID filtering is enabled in
      --  EXTI1_ExCIDCFGR, PRIVx can only be accessed by the allowed processor
      --  CID. Dis allowed CID write to PRIVx is discarded and read returns 0.
      PRIV_2         : EXTI1_PRIVCFGR3_PRIV_Field_2 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_PRIVCFGR3_Register use record
      PRIV           at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      PRIV_1         at 0 range 3 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      PRIV70         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PRIV_2         at 0 range 8 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  EXTI1_EXTICR1_EXTI array element
   subtype EXTI1_EXTICR1_EXTI_Element is HAL.UInt8;

   --  EXTI1_EXTICR1_EXTI array
   type EXTI1_EXTICR1_EXTI_Field_Array is array (0 .. 3)
     of EXTI1_EXTICR1_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI1 external interrupt selection register 1
   type EXTI1_EXTICR1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTI1_EXTICR1_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_EXTICR1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTI1_EXTICR2_EXTI array element
   subtype EXTI1_EXTICR2_EXTI_Element is HAL.UInt8;

   --  EXTI1_EXTICR2_EXTI array
   type EXTI1_EXTICR2_EXTI_Field_Array is array (4 .. 7)
     of EXTI1_EXTICR2_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI1 external interrupt selection register 2
   type EXTI1_EXTICR2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTI1_EXTICR2_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_EXTICR2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTI1_EXTICR3_EXTI array element
   subtype EXTI1_EXTICR3_EXTI_Element is HAL.UInt8;

   --  EXTI1_EXTICR3_EXTI array
   type EXTI1_EXTICR3_EXTI_Field_Array is array (8 .. 11)
     of EXTI1_EXTICR3_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI1 external interrupt selection register 3
   type EXTI1_EXTICR3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTI1_EXTICR3_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_EXTICR3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTI1_EXTICR4_EXTI array element
   subtype EXTI1_EXTICR4_EXTI_Element is HAL.UInt8;

   --  EXTI1_EXTICR4_EXTI array
   type EXTI1_EXTICR4_EXTI_Field_Array is array (12 .. 15)
     of EXTI1_EXTICR4_EXTI_Element
     with Component_Size => 8, Size => 32;

   --  EXTI1 external interrupt selection register 4
   type EXTI1_EXTICR4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXTI as a value
            Val : HAL.UInt32;
         when True =>
            --  EXTI as an array
            Arr : EXTI1_EXTICR4_EXTI_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_EXTICR4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  EXTI1 lock register
   type EXTI1_LOCKR_Register is record
      --  Global security privilege and CID configuration registers
      --  EXTI1_SECCFGRx, EXTI1_PRIVCFGRx,EXTI1_EnCIDCFGR and EXTI1_CmCIDCFGR
      --  lock. This bit is written once after reset.
      GLOCK         : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_LOCKR_Register use record
      GLOCK         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  EXTI1_C2EMR1_EM array
   type EXTI1_C2EMR1_EM_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for EXTI1_C2EMR1_EM
   type EXTI1_C2EMR1_EM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM as a value
            Val : HAL.UInt16;
         when True =>
            --  EM as an array
            Arr : EXTI1_C2EMR1_EM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for EXTI1_C2EMR1_EM_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  EXTI1 CPU2 wake-up with event mask register
   type EXTI1_C2EMR1_Register is record
      --  CPU2 wake-up with event on event input x When SECx is disabled in
      --  EXTI1_SECCFGR1, EMx can be accessed with non-secure and secure
      --  access. When SECx is enabled in EXTI1_SECCFGR1, EMx can only be
      --  accessed with secure access. Non-secure write to EMx is discarded.
      --  Non-secure read returns 0. When PRIVx is disabled in EXTI1_PRIVCFGR1,
      --  EMx can be accessed with privileged and unprivileged access. When
      --  PRIVx is enabled in EXTI1_PRIVCFGR1, EMx can only be accessed with
      --  privileged access. Unprivileged write to EMx is discarded, and read
      --  returns 0. When CID filtering is disabled in EXTI1_ExCIDCFGR, EMx can
      --  be accessed by any processor CID. When CID filtering is enabled in
      --  EXTI1_ExCIDCFGR, EMx can only be accessed by theallowed processor
      --  CID. Disallowed CID write to EMx is discarded, and read returns0.
      EM             : EXTI1_C2EMR1_EM_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_C2EMR1_Register use record
      EM             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTI1 CPU2 wake-up with event mask register
   type EXTI1_C2EMR3_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  CPU2 wake-up with event mask on event input 65 When SEC65 is disabled
      --  in EXTI1_SECCFGR3, EM65 can be accessed with non-secure and secure
      --  access. When SEC65 is enabled in EXTI1_SECCFGR3, EM65 can only be
      --  accessed with secure access. Non-secure write to EM65 is discarded.
      --  Non-secure read returns 0. When PRIV65 is disabled in
      --  EXTI1_PRIVCFGR3, EM65 can be accessed with privileged and
      --  unprivileged access. When PRIV65 is enabled in EXTI1_PRIVCFGR3, EM65
      --  can only be accessed with privileged access. Unprivileged write to
      --  EM65 is discarded and read returns 0. When CID filtering is disabled
      --  in EXTI1_E65CIDCFGR, EM65 can be accessed by any processor CID. When
      --  CID filtering is enabled in EXTI1_E65CIDCFGR, EM65 can only be
      --  accessed by the allowed processor CID. Disallowed CID write to EM65
      --  is discarded and read returns0.
      EM65          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_C2EMR3_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      EM65          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype EXTI1_E0CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E0CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E0CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E0CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E1CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E1CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E1CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E1CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E2CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E2CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E2CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E2CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E3CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E3CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E3CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E3CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E4CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E4CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E4CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E4CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E5CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E5CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E5CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E5CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E6CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E6CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E6CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E6CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E7CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E7CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E7CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E7CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E8CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E8CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E8CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E8CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E9CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E9CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E9CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E9CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E10CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E10CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E10CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E10CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E11CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E11CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E11CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E11CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E12CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E12CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E12CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E12CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E13CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E13CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E13CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E13CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E14CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E14CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E14CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E14CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E15CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E15CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E15CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E15CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E16CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E16CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E16CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E16CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E17CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E17CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E17CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E17CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E18CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E18CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E18CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E18CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E19CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E19CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E19CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E19CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E20CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E20CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E20CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E20CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E21CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E21CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E21CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E21CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E22CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E22CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E22CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E22CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E23CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E23CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E23CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E23CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E24CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E24CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E24CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E24CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E25CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E25CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E25CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E25CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E26CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E26CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E26CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E26CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E27CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E27CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E27CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E27CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E28CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E28CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E28CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E28CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E29CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E29CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E29CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E29CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E30CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E30CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E30CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E30CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E31CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E31CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E31CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E31CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E32CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E32CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E32CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E32CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E33CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E33CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E33CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E33CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E34CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E34CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E34CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E34CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E35CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E35CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E35CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E35CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E36CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E36CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E36CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E36CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E37CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E37CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E37CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E37CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E38CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E38CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E38CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E38CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E39CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E39CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E39CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E39CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E40CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E40CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E40CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E40CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E41CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E41CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E41CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E41CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E42CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E42CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E42CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E42CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E43CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E43CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E43CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E43CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E44CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E44CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E44CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E44CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E45CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E45CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E45CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E45CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E46CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E46CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E46CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E46CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E47CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E47CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E47CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E47CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E48CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E48CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E48CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E48CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E49CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E49CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E49CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E49CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E50CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E50CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E50CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E50CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E51CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E51CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E51CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E51CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E52CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E52CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E52CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E52CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E53CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E53CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E53CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E53CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E54CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E54CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E54CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E54CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E55CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E55CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E55CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E55CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E56CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E56CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E56CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E56CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E57CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E57CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E57CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E57CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E58CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E58CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E58CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E58CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E59CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E59CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E59CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E59CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E60CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E60CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E60CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E60CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E61CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E61CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E61CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E61CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E62CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E62CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E62CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E62CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E63CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E63CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E63CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E63CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E64CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E64CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E64CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E64CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E65CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E65CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E65CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E65CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E66CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E66CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E66CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E66CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E67CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E67CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E67CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E67CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E68CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E68CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E68CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E68CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E69CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E69CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E69CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E69CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E70CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E70CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E70CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E70CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E71CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E71CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E71CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E71CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E72CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E72CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E72CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E72CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E73CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E73CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E73CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E73CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E74CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E74CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E74CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E74CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E75CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E75CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E75CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E75CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E76CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E76CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E76CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E76CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E77CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E77CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E77CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E77CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E78CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E78CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E78CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E78CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E79CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E79CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E79CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E79CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E80CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E80CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E80CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E80CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E81CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E81CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E81CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E81CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E82CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E82CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E82CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E82CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E83CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E83CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E83CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E83CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_E84CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 event CID configuration register
   type EXTI1_E84CIDCFGR_Register is record
      --  EXTI event n CID filtering enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  EXTI event n allowed CID value If CID filtering is disabled in CFEN,
      --  these bits are ignored, else EXTI event n allowed processor CID
      --  number.
      CID           : EXTI1_E84CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_E84CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_C1CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 processor 1 CID configuration register
   type EXTI1_C1CIDCFGR_Register is record
      --  CID filtering enabled for CPUm EXTI1_CmIMRx and EXTI1_CmEMRx
      --  registers
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  CPUm CID domain identification If CFEN = 0, these bits are ignored,
      --  and there is no CPUm CID filtering, else CPUm CID domain
      --  identification number.
      CID           : EXTI1_C1CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_C1CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_C2CIDCFGR_CID_Field is HAL.UInt3;

   --  EXTI1 processor 2 CID configuration register
   type EXTI1_C2CIDCFGR_Register is record
      --  CID filtering enabled for CPUm EXTI1_CmIMRx and EXTI1_CmEMRx
      --  registers
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  CPUm CID domain identification If CFEN = 0, these bits are ignored,
      --  and there is no CPUm CID filtering, else CPUm CID domain
      --  identification number.
      CID           : EXTI1_C2CIDCFGR_CID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : HAL.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_C2CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CID           at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EXTI1_HWCFGR1_NBEVENTS_Field is HAL.UInt8;
   subtype EXTI1_HWCFGR1_NBCPUS_Field is HAL.UInt4;
   subtype EXTI1_HWCFGR1_CPUEVTEN_Field is HAL.UInt4;
   subtype EXTI1_HWCFGR1_NBIOPORT_Field is HAL.UInt8;
   subtype EXTI1_HWCFGR1_CIDWIDTH_Field is HAL.UInt4;

   --  EXTI1 hardware configuration register 1
   type EXTI1_HWCFGR1_Register is record
      --  Read-only. Hardware configuration number of event (n+1)
      NBEVENTS       : EXTI1_HWCFGR1_NBEVENTS_Field;
      --  Read-only. Hardware configuration number of CPUs (n+1)
      NBCPUS         : EXTI1_HWCFGR1_NBCPUS_Field;
      --  Read-only. Hardware configuration of CPU(m) event output enable.
      CPUEVTEN       : EXTI1_HWCFGR1_CPUEVTEN_Field;
      --  Read-only. Hardware configuration of number of I/O ports on EXTI
      --  (n+1)
      NBIOPORT       : EXTI1_HWCFGR1_NBIOPORT_Field;
      --  Read-only. CID parameters bit width
      CIDWIDTH       : EXTI1_HWCFGR1_CIDWIDTH_Field;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_HWCFGR1_Register use record
      NBEVENTS       at 0 range 0 .. 7;
      NBCPUS         at 0 range 8 .. 11;
      CPUEVTEN       at 0 range 12 .. 15;
      NBIOPORT       at 0 range 16 .. 23;
      CIDWIDTH       at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype EXTI1_VERR_MINREV_Field is HAL.UInt4;
   subtype EXTI1_VERR_MAJREV_Field is HAL.UInt4;

   --  EXTI1 version register
   type EXTI1_VERR_Register is record
      --  Read-only. Minor revision number
      MINREV        : EXTI1_VERR_MINREV_Field;
      --  Read-only. Major revision number
      MAJREV        : EXTI1_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTI1_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  EXTI1 address block description
   type EXTI1_Peripheral is record
      --  EXTI1 rising trigger selection register
      EXTI1_RTSR1      : aliased EXTI1_RTSR1_Register;
      --  EXTI1 falling trigger selection register
      EXTI1_FTSR1      : aliased EXTI1_FTSR1_Register;
      --  EXTI1 software interrupt event register
      EXTI1_SWIER1     : aliased EXTI1_SWIER1_Register;
      --  EXTI1 rising edge pending register
      EXTI1_RPR1       : aliased EXTI1_RPR1_Register;
      --  EXTI1 falling edge pending register
      EXTI1_FPR1       : aliased EXTI1_FPR1_Register;
      --  EXTI1 security configuration register
      EXTI1_SECCFGR1   : aliased EXTI1_SECCFGR1_Register;
      --  EXTI1 privilege configuration register
      EXTI1_PRIVCFGR1  : aliased EXTI1_PRIVCFGR1_Register;
      --  EXTI1 rising trigger selection register
      EXTI1_RTSR2      : aliased EXTI1_RTSR2_Register;
      --  EXTI1 falling trigger selection register
      EXTI1_FTSR2      : aliased EXTI1_FTSR2_Register;
      --  EXTI1 software interrupt event register
      EXTI1_SWIER2     : aliased EXTI1_SWIER2_Register;
      --  EXTI1 rising edge pending register
      EXTI1_RPR2       : aliased EXTI1_RPR2_Register;
      --  EXTI1 falling edge pending register
      EXTI1_FPR2       : aliased EXTI1_FPR2_Register;
      --  EXTI1 security enable register
      EXTI1_SECCFGR2   : aliased EXTI1_SECCFGR2_Register;
      --  EXTI1 privilege enable register
      EXTI1_PRIVCFGR2  : aliased EXTI1_PRIVCFGR2_Register;
      --  EXTI1 rising trigger selection register
      EXTI1_RTSR3      : aliased EXTI1_RTSR3_Register;
      --  EXTI1 falling trigger selection register
      EXTI1_FTSR3      : aliased EXTI1_FTSR3_Register;
      --  EXTI1 software interrupt event register
      EXTI1_SWIER3     : aliased EXTI1_SWIER3_Register;
      --  EXTI1 rising edge pending register
      EXTI1_RPR3       : aliased EXTI1_RPR3_Register;
      --  EXTI1 falling edge pending register
      EXTI1_FPR3       : aliased EXTI1_FPR3_Register;
      --  EXTI1 security enable register
      EXTI1_SECCFGR3   : aliased EXTI1_SECCFGR3_Register;
      --  EXTI1 privilege enable register
      EXTI1_PRIVCFGR3  : aliased EXTI1_PRIVCFGR3_Register;
      --  EXTI1 external interrupt selection register 1
      EXTI1_EXTICR1    : aliased EXTI1_EXTICR1_Register;
      --  EXTI1 external interrupt selection register 2
      EXTI1_EXTICR2    : aliased EXTI1_EXTICR2_Register;
      --  EXTI1 external interrupt selection register 3
      EXTI1_EXTICR3    : aliased EXTI1_EXTICR3_Register;
      --  EXTI1 external interrupt selection register 4
      EXTI1_EXTICR4    : aliased EXTI1_EXTICR4_Register;
      --  EXTI1 lock register
      EXTI1_LOCKR      : aliased EXTI1_LOCKR_Register;
      --  EXTI1 CPU2 wake-up with event mask register
      EXTI1_C2EMR1     : aliased EXTI1_C2EMR1_Register;
      --  EXTI1 CPU2 wake-up with event mask register
      EXTI1_C2EMR3     : aliased EXTI1_C2EMR3_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E0CIDCFGR  : aliased EXTI1_E0CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E1CIDCFGR  : aliased EXTI1_E1CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E2CIDCFGR  : aliased EXTI1_E2CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E3CIDCFGR  : aliased EXTI1_E3CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E4CIDCFGR  : aliased EXTI1_E4CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E5CIDCFGR  : aliased EXTI1_E5CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E6CIDCFGR  : aliased EXTI1_E6CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E7CIDCFGR  : aliased EXTI1_E7CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E8CIDCFGR  : aliased EXTI1_E8CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E9CIDCFGR  : aliased EXTI1_E9CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E10CIDCFGR : aliased EXTI1_E10CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E11CIDCFGR : aliased EXTI1_E11CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E12CIDCFGR : aliased EXTI1_E12CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E13CIDCFGR : aliased EXTI1_E13CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E14CIDCFGR : aliased EXTI1_E14CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E15CIDCFGR : aliased EXTI1_E15CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E16CIDCFGR : aliased EXTI1_E16CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E17CIDCFGR : aliased EXTI1_E17CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E18CIDCFGR : aliased EXTI1_E18CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E19CIDCFGR : aliased EXTI1_E19CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E20CIDCFGR : aliased EXTI1_E20CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E21CIDCFGR : aliased EXTI1_E21CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E22CIDCFGR : aliased EXTI1_E22CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E23CIDCFGR : aliased EXTI1_E23CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E24CIDCFGR : aliased EXTI1_E24CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E25CIDCFGR : aliased EXTI1_E25CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E26CIDCFGR : aliased EXTI1_E26CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E27CIDCFGR : aliased EXTI1_E27CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E28CIDCFGR : aliased EXTI1_E28CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E29CIDCFGR : aliased EXTI1_E29CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E30CIDCFGR : aliased EXTI1_E30CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E31CIDCFGR : aliased EXTI1_E31CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E32CIDCFGR : aliased EXTI1_E32CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E33CIDCFGR : aliased EXTI1_E33CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E34CIDCFGR : aliased EXTI1_E34CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E35CIDCFGR : aliased EXTI1_E35CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E36CIDCFGR : aliased EXTI1_E36CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E37CIDCFGR : aliased EXTI1_E37CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E38CIDCFGR : aliased EXTI1_E38CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E39CIDCFGR : aliased EXTI1_E39CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E40CIDCFGR : aliased EXTI1_E40CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E41CIDCFGR : aliased EXTI1_E41CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E42CIDCFGR : aliased EXTI1_E42CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E43CIDCFGR : aliased EXTI1_E43CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E44CIDCFGR : aliased EXTI1_E44CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E45CIDCFGR : aliased EXTI1_E45CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E46CIDCFGR : aliased EXTI1_E46CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E47CIDCFGR : aliased EXTI1_E47CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E48CIDCFGR : aliased EXTI1_E48CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E49CIDCFGR : aliased EXTI1_E49CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E50CIDCFGR : aliased EXTI1_E50CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E51CIDCFGR : aliased EXTI1_E51CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E52CIDCFGR : aliased EXTI1_E52CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E53CIDCFGR : aliased EXTI1_E53CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E54CIDCFGR : aliased EXTI1_E54CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E55CIDCFGR : aliased EXTI1_E55CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E56CIDCFGR : aliased EXTI1_E56CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E57CIDCFGR : aliased EXTI1_E57CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E58CIDCFGR : aliased EXTI1_E58CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E59CIDCFGR : aliased EXTI1_E59CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E60CIDCFGR : aliased EXTI1_E60CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E61CIDCFGR : aliased EXTI1_E61CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E62CIDCFGR : aliased EXTI1_E62CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E63CIDCFGR : aliased EXTI1_E63CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E64CIDCFGR : aliased EXTI1_E64CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E65CIDCFGR : aliased EXTI1_E65CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E66CIDCFGR : aliased EXTI1_E66CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E67CIDCFGR : aliased EXTI1_E67CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E68CIDCFGR : aliased EXTI1_E68CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E69CIDCFGR : aliased EXTI1_E69CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E70CIDCFGR : aliased EXTI1_E70CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E71CIDCFGR : aliased EXTI1_E71CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E72CIDCFGR : aliased EXTI1_E72CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E73CIDCFGR : aliased EXTI1_E73CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E74CIDCFGR : aliased EXTI1_E74CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E75CIDCFGR : aliased EXTI1_E75CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E76CIDCFGR : aliased EXTI1_E76CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E77CIDCFGR : aliased EXTI1_E77CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E78CIDCFGR : aliased EXTI1_E78CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E79CIDCFGR : aliased EXTI1_E79CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E80CIDCFGR : aliased EXTI1_E80CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E81CIDCFGR : aliased EXTI1_E81CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E82CIDCFGR : aliased EXTI1_E82CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E83CIDCFGR : aliased EXTI1_E83CIDCFGR_Register;
      --  EXTI1 event CID configuration register
      EXTI1_E84CIDCFGR : aliased EXTI1_E84CIDCFGR_Register;
      --  EXTI1 processor 1 CID configuration register
      EXTI1_C1CIDCFGR  : aliased EXTI1_C1CIDCFGR_Register;
      --  EXTI1 processor 2 CID configuration register
      EXTI1_C2CIDCFGR  : aliased EXTI1_C2CIDCFGR_Register;
      --  EXTI1 hardware configuration registers 13
      EXTI1_HWCFGR13   : aliased HAL.UInt32;
      --  EXTI1 hardware configuration registers 12
      EXTI1_HWCFGR12   : aliased HAL.UInt32;
      --  EXTI1 hardware configuration registers 11
      EXTI1_HWCFGR11   : aliased HAL.UInt32;
      --  EXTI1 hardware configuration registers 7
      EXTI1_HWCFGR7    : aliased HAL.UInt32;
      --  EXTI1 hardware configuration registers 6
      EXTI1_HWCFGR6    : aliased HAL.UInt32;
      --  EXTI1 hardware configuration registers 5
      EXTI1_HWCFGR5    : aliased HAL.UInt32;
      --  EXTI1 hardware configuration registers 4
      EXTI1_HWCFGR4    : aliased HAL.UInt32;
      --  EXTI1 hardware configuration registers 3
      EXTI1_HWCFGR3    : aliased HAL.UInt32;
      --  EXTI1 hardware configuration registers 2
      EXTI1_HWCFGR2    : aliased HAL.UInt32;
      --  EXTI1 hardware configuration register 1
      EXTI1_HWCFGR1    : aliased EXTI1_HWCFGR1_Register;
      --  EXTI1 version register
      EXTI1_VERR       : aliased EXTI1_VERR_Register;
      --  EXTI1 identification register
      EXTI1_IPIDR      : aliased HAL.UInt32;
      --  EXTI1 size identification register
      EXTI1_SIDR       : aliased HAL.UInt32;
   end record
     with Volatile;

   for EXTI1_Peripheral use record
      EXTI1_RTSR1      at 16#0# range 0 .. 31;
      EXTI1_FTSR1      at 16#4# range 0 .. 31;
      EXTI1_SWIER1     at 16#8# range 0 .. 31;
      EXTI1_RPR1       at 16#C# range 0 .. 31;
      EXTI1_FPR1       at 16#10# range 0 .. 31;
      EXTI1_SECCFGR1   at 16#14# range 0 .. 31;
      EXTI1_PRIVCFGR1  at 16#18# range 0 .. 31;
      EXTI1_RTSR2      at 16#20# range 0 .. 31;
      EXTI1_FTSR2      at 16#24# range 0 .. 31;
      EXTI1_SWIER2     at 16#28# range 0 .. 31;
      EXTI1_RPR2       at 16#2C# range 0 .. 31;
      EXTI1_FPR2       at 16#30# range 0 .. 31;
      EXTI1_SECCFGR2   at 16#34# range 0 .. 31;
      EXTI1_PRIVCFGR2  at 16#38# range 0 .. 31;
      EXTI1_RTSR3      at 16#40# range 0 .. 31;
      EXTI1_FTSR3      at 16#44# range 0 .. 31;
      EXTI1_SWIER3     at 16#48# range 0 .. 31;
      EXTI1_RPR3       at 16#4C# range 0 .. 31;
      EXTI1_FPR3       at 16#50# range 0 .. 31;
      EXTI1_SECCFGR3   at 16#54# range 0 .. 31;
      EXTI1_PRIVCFGR3  at 16#58# range 0 .. 31;
      EXTI1_EXTICR1    at 16#60# range 0 .. 31;
      EXTI1_EXTICR2    at 16#64# range 0 .. 31;
      EXTI1_EXTICR3    at 16#68# range 0 .. 31;
      EXTI1_EXTICR4    at 16#6C# range 0 .. 31;
      EXTI1_LOCKR      at 16#70# range 0 .. 31;
      EXTI1_C2EMR1     at 16#C4# range 0 .. 31;
      EXTI1_C2EMR3     at 16#E4# range 0 .. 31;
      EXTI1_E0CIDCFGR  at 16#180# range 0 .. 31;
      EXTI1_E1CIDCFGR  at 16#184# range 0 .. 31;
      EXTI1_E2CIDCFGR  at 16#188# range 0 .. 31;
      EXTI1_E3CIDCFGR  at 16#18C# range 0 .. 31;
      EXTI1_E4CIDCFGR  at 16#190# range 0 .. 31;
      EXTI1_E5CIDCFGR  at 16#194# range 0 .. 31;
      EXTI1_E6CIDCFGR  at 16#198# range 0 .. 31;
      EXTI1_E7CIDCFGR  at 16#19C# range 0 .. 31;
      EXTI1_E8CIDCFGR  at 16#1A0# range 0 .. 31;
      EXTI1_E9CIDCFGR  at 16#1A4# range 0 .. 31;
      EXTI1_E10CIDCFGR at 16#1A8# range 0 .. 31;
      EXTI1_E11CIDCFGR at 16#1AC# range 0 .. 31;
      EXTI1_E12CIDCFGR at 16#1B0# range 0 .. 31;
      EXTI1_E13CIDCFGR at 16#1B4# range 0 .. 31;
      EXTI1_E14CIDCFGR at 16#1B8# range 0 .. 31;
      EXTI1_E15CIDCFGR at 16#1BC# range 0 .. 31;
      EXTI1_E16CIDCFGR at 16#1C0# range 0 .. 31;
      EXTI1_E17CIDCFGR at 16#1C4# range 0 .. 31;
      EXTI1_E18CIDCFGR at 16#1C8# range 0 .. 31;
      EXTI1_E19CIDCFGR at 16#1CC# range 0 .. 31;
      EXTI1_E20CIDCFGR at 16#1D0# range 0 .. 31;
      EXTI1_E21CIDCFGR at 16#1D4# range 0 .. 31;
      EXTI1_E22CIDCFGR at 16#1D8# range 0 .. 31;
      EXTI1_E23CIDCFGR at 16#1DC# range 0 .. 31;
      EXTI1_E24CIDCFGR at 16#1E0# range 0 .. 31;
      EXTI1_E25CIDCFGR at 16#1E4# range 0 .. 31;
      EXTI1_E26CIDCFGR at 16#1E8# range 0 .. 31;
      EXTI1_E27CIDCFGR at 16#1EC# range 0 .. 31;
      EXTI1_E28CIDCFGR at 16#1F0# range 0 .. 31;
      EXTI1_E29CIDCFGR at 16#1F4# range 0 .. 31;
      EXTI1_E30CIDCFGR at 16#1F8# range 0 .. 31;
      EXTI1_E31CIDCFGR at 16#1FC# range 0 .. 31;
      EXTI1_E32CIDCFGR at 16#200# range 0 .. 31;
      EXTI1_E33CIDCFGR at 16#204# range 0 .. 31;
      EXTI1_E34CIDCFGR at 16#208# range 0 .. 31;
      EXTI1_E35CIDCFGR at 16#20C# range 0 .. 31;
      EXTI1_E36CIDCFGR at 16#210# range 0 .. 31;
      EXTI1_E37CIDCFGR at 16#214# range 0 .. 31;
      EXTI1_E38CIDCFGR at 16#218# range 0 .. 31;
      EXTI1_E39CIDCFGR at 16#21C# range 0 .. 31;
      EXTI1_E40CIDCFGR at 16#220# range 0 .. 31;
      EXTI1_E41CIDCFGR at 16#224# range 0 .. 31;
      EXTI1_E42CIDCFGR at 16#228# range 0 .. 31;
      EXTI1_E43CIDCFGR at 16#22C# range 0 .. 31;
      EXTI1_E44CIDCFGR at 16#230# range 0 .. 31;
      EXTI1_E45CIDCFGR at 16#234# range 0 .. 31;
      EXTI1_E46CIDCFGR at 16#238# range 0 .. 31;
      EXTI1_E47CIDCFGR at 16#23C# range 0 .. 31;
      EXTI1_E48CIDCFGR at 16#240# range 0 .. 31;
      EXTI1_E49CIDCFGR at 16#244# range 0 .. 31;
      EXTI1_E50CIDCFGR at 16#248# range 0 .. 31;
      EXTI1_E51CIDCFGR at 16#24C# range 0 .. 31;
      EXTI1_E52CIDCFGR at 16#250# range 0 .. 31;
      EXTI1_E53CIDCFGR at 16#254# range 0 .. 31;
      EXTI1_E54CIDCFGR at 16#258# range 0 .. 31;
      EXTI1_E55CIDCFGR at 16#25C# range 0 .. 31;
      EXTI1_E56CIDCFGR at 16#260# range 0 .. 31;
      EXTI1_E57CIDCFGR at 16#264# range 0 .. 31;
      EXTI1_E58CIDCFGR at 16#268# range 0 .. 31;
      EXTI1_E59CIDCFGR at 16#26C# range 0 .. 31;
      EXTI1_E60CIDCFGR at 16#270# range 0 .. 31;
      EXTI1_E61CIDCFGR at 16#274# range 0 .. 31;
      EXTI1_E62CIDCFGR at 16#278# range 0 .. 31;
      EXTI1_E63CIDCFGR at 16#27C# range 0 .. 31;
      EXTI1_E64CIDCFGR at 16#280# range 0 .. 31;
      EXTI1_E65CIDCFGR at 16#284# range 0 .. 31;
      EXTI1_E66CIDCFGR at 16#288# range 0 .. 31;
      EXTI1_E67CIDCFGR at 16#28C# range 0 .. 31;
      EXTI1_E68CIDCFGR at 16#290# range 0 .. 31;
      EXTI1_E69CIDCFGR at 16#294# range 0 .. 31;
      EXTI1_E70CIDCFGR at 16#298# range 0 .. 31;
      EXTI1_E71CIDCFGR at 16#29C# range 0 .. 31;
      EXTI1_E72CIDCFGR at 16#2A0# range 0 .. 31;
      EXTI1_E73CIDCFGR at 16#2A4# range 0 .. 31;
      EXTI1_E74CIDCFGR at 16#2A8# range 0 .. 31;
      EXTI1_E75CIDCFGR at 16#2AC# range 0 .. 31;
      EXTI1_E76CIDCFGR at 16#2B0# range 0 .. 31;
      EXTI1_E77CIDCFGR at 16#2B4# range 0 .. 31;
      EXTI1_E78CIDCFGR at 16#2B8# range 0 .. 31;
      EXTI1_E79CIDCFGR at 16#2BC# range 0 .. 31;
      EXTI1_E80CIDCFGR at 16#2C0# range 0 .. 31;
      EXTI1_E81CIDCFGR at 16#2C4# range 0 .. 31;
      EXTI1_E82CIDCFGR at 16#2C8# range 0 .. 31;
      EXTI1_E83CIDCFGR at 16#2CC# range 0 .. 31;
      EXTI1_E84CIDCFGR at 16#2D0# range 0 .. 31;
      EXTI1_C1CIDCFGR  at 16#300# range 0 .. 31;
      EXTI1_C2CIDCFGR  at 16#304# range 0 .. 31;
      EXTI1_HWCFGR13   at 16#3C0# range 0 .. 31;
      EXTI1_HWCFGR12   at 16#3C4# range 0 .. 31;
      EXTI1_HWCFGR11   at 16#3C8# range 0 .. 31;
      EXTI1_HWCFGR7    at 16#3D8# range 0 .. 31;
      EXTI1_HWCFGR6    at 16#3DC# range 0 .. 31;
      EXTI1_HWCFGR5    at 16#3E0# range 0 .. 31;
      EXTI1_HWCFGR4    at 16#3E4# range 0 .. 31;
      EXTI1_HWCFGR3    at 16#3E8# range 0 .. 31;
      EXTI1_HWCFGR2    at 16#3EC# range 0 .. 31;
      EXTI1_HWCFGR1    at 16#3F0# range 0 .. 31;
      EXTI1_VERR       at 16#3F4# range 0 .. 31;
      EXTI1_IPIDR      at 16#3F8# range 0 .. 31;
      EXTI1_SIDR       at 16#3FC# range 0 .. 31;
   end record;

   --  EXTI1 address block description
   EXTI1_Periph : aliased EXTI1_Peripheral
     with Import, Address => EXTI1_Base;

   --  EXTI1 address block description
   EXTI1_S_Periph : aliased EXTI1_Peripheral
     with Import, Address => EXTI1_S_Base;

end STM32_SVD.EXTI1;
