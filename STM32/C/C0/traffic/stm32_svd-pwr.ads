--  This spec has been automatically generated from STM32C011.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package STM32_SVD.PWR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype PWR_CR1_LPMS_Field is HAL.UInt3;

   --  PWR control register 1
   type PWR_CR1_Register is record
      --  Low-power mode selection These bits select the low-power mode entered
      --  when CPU enters deepsleep mode. 1XX: Shutdown mode
      LPMS          : PWR_CR1_LPMS_Field := 16#0#;
      --  Flash memory powered down during Stop mode This bit determines
      --  whether the Flash memory is put in power-down mode or remains in idle
      --  mode when the device enters Stop mode.
      FPD_STOP      : Boolean := True;
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  Flash memory powered down during Sleep mode This bit determines
      --  whether the Flash memory is put in power-down mode or remains in idle
      --  mode when the device enters Sleep mode.
      FPD_SLP       : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#8#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR1_Register use record
      LPMS          at 0 range 0 .. 2;
      FPD_STOP      at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      FPD_SLP       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  PWR_CR3_EWUP array
   type PWR_CR3_EWUP_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_CR3_EWUP
   type PWR_CR3_EWUP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EWUP as a value
            Val : HAL.UInt4;
         when True =>
            --  EWUP as an array
            Arr : PWR_CR3_EWUP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_CR3_EWUP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR control register 3
   type PWR_CR3_Register is record
      --  Enable WKUP1 wakeup pin When this bit is set, the WKUP1 external
      --  wakeup pin is enabled and triggers a wakeup event when a rising or a
      --  falling edge occurs. The active edge is configured via the WP1 bit of
      --  the PWR_CR4 register.
      EWUP           : PWR_CR3_EWUP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Enable WKUP6 wakeup pin When this bit is set, the WKUP6 external
      --  wakeup pin is enabled and triggers a wakeup event when a rising or a
      --  falling edge occurs. The active edge is configured through WP6 bit in
      --  the PWR_CR4 register.
      EWUP6          : Boolean := False;
      --  unspecified
      Reserved_6_9   : HAL.UInt4 := 16#0#;
      --  Apply pull-up and pull-down configuration This bit determines whether
      --  the I/O pull-up and pull-down configurations defined in the PWR_PUCRx
      --  and PWR_PDCRx registers are applied.
      APC            : Boolean := False;
      --  unspecified
      Reserved_11_14 : HAL.UInt4 := 16#0#;
      --  Enable internal wakeup line When set, a rising edge on the internal
      --  wakeup line triggers a wakeup event.
      EIWUL          : Boolean := True;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR3_Register use record
      EWUP           at 0 range 0 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      EWUP6          at 0 range 5 .. 5;
      Reserved_6_9   at 0 range 6 .. 9;
      APC            at 0 range 10 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      EIWUL          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_CR4_WP array
   type PWR_CR4_WP_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_CR4_WP
   type PWR_CR4_WP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WP as a value
            Val : HAL.UInt4;
         when True =>
            --  WP as an array
            Arr : PWR_CR4_WP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_CR4_WP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR control register 4
   type PWR_CR4_Register is record
      --  WKUP1 wakeup pin polarity WKUP1 external wakeup signal polarity
      --  (level or edge) to generate wakeup condition:
      WP            : PWR_CR4_WP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  WKUP6 wakeup pin polarity WKUP6 external wakeup signal polarity
      --  (level or edge) to generate wakeup condition:
      WP6           : Boolean := False;
      --  unspecified
      Reserved_6_31 : HAL.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR4_Register use record
      WP            at 0 range 0 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      WP6           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  PWR_SR1_WUF array
   type PWR_SR1_WUF_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_SR1_WUF
   type PWR_SR1_WUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUF as a value
            Val : HAL.UInt4;
         when True =>
            --  WUF as an array
            Arr : PWR_SR1_WUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_SR1_WUF_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR status register 1
   type PWR_SR1_Register is record
      --  Read-only. Wakeup flag 1 This bit is set when a wakeup condition is
      --  detected on WKUP1 wakeup pin. It is cleared by setting the CWUF1 bit
      --  of the PWR_SCR register.
      WUF            : PWR_SR1_WUF_Field;
      --  unspecified
      Reserved_4_4   : HAL.Bit;
      --  Read-only. Wakeup flag 6 This bit is set when a wakeup condition is
      --  detected on WKUP6 wakeup pin. It is cleared by setting the CWUF6 bit
      --  of the PWR_SCR register.
      WUF6           : Boolean;
      --  unspecified
      Reserved_6_7   : HAL.UInt2;
      --  Read-only. Standby/Shutdown flag This bit is set by hardware when the
      --  device enters Standby or Shutdown mode and is cleared by setting the
      --  CSBF bit in the PWR_SCR register, or by a power-on reset. It is not
      --  cleared by the system reset.
      SBF            : Boolean;
      --  unspecified
      Reserved_9_14  : HAL.UInt6;
      --  Read-only. Wakeup flag internal This bit is set when a wakeup
      --  condition is detected on the internal wakeup line. It is cleared when
      --  all internal wakeup sources are cleared.
      WUFI           : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SR1_Register use record
      WUF            at 0 range 0 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      WUF6           at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SBF            at 0 range 8 .. 8;
      Reserved_9_14  at 0 range 9 .. 14;
      WUFI           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR status register 2
   type PWR_SR2_Register is record
      --  unspecified
      Reserved_0_6  : HAL.UInt7;
      --  Read-only. Flash ready flag This bit is set by hardware to indicate
      --  when the Flash memory is ready to be accessed after wakeup from
      --  power-down. To place the Flash memory in power-down, set either
      --  FPD_SLP or FPD_STP bit. Note: If the system boots from SRAM, the user
      --  application must wait till FLASH_RDY bit is set, prior to jumping to
      --  Flash memory.
      FLASH_RDY     : Boolean;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SR2_Register use record
      Reserved_0_6  at 0 range 0 .. 6;
      FLASH_RDY     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PWR_SCR_CWUF array
   type PWR_SCR_CWUF_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_SCR_CWUF
   type PWR_SCR_CWUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CWUF as a value
            Val : HAL.UInt4;
         when True =>
            --  CWUF as an array
            Arr : PWR_SCR_CWUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_SCR_CWUF_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR status clear register
   type PWR_SCR_Register is record
      --  Write-only. Clear wakeup flag 1 Setting this bit clears the WUF1 flag
      --  in the PWR_SR1 register.
      CWUF          : PWR_SCR_CWUF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_4  : HAL.Bit := 16#0#;
      --  Write-only. Clear wakeup flag 6 Setting this bit clears the WUF6 flag
      --  in the PWR_SR1 register.
      CWUF6         : Boolean := False;
      --  unspecified
      Reserved_6_7  : HAL.UInt2 := 16#0#;
      --  Write-only. Clear standby flag Setting this bit clears the SBF flag
      --  in the PWR_SR1 register.
      CSBF          : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SCR_Register use record
      CWUF          at 0 range 0 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      CWUF6         at 0 range 5 .. 5;
      Reserved_6_7  at 0 range 6 .. 7;
      CSBF          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  PWR_PUCRA_PU array
   type PWR_PUCRA_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PUCRA_PU
   type PWR_PUCRA_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : HAL.UInt16;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRA_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PUCRA_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR Port A pull-up control register
   type PWR_PUCRA_Register is record
      --  Port A pull-up bit i (i = 15 to 0) Setting PUi bit while the
      --  corresponding PDi bit is zero and the APC bit of the PWR_CR3 register
      --  is set activates a pull-up device on the PA[i] I/O.
      PU             : PWR_PUCRA_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRA_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRA_PD array
   type PWR_PDCRA_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PDCRA_PD
   type PWR_PDCRA_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt16;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRA_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PDCRA_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR Port A pull-down control register
   type PWR_PDCRA_Register is record
      --  Port A pull-down bit i (i = 15 to 0) Setting PDi bit while the APC
      --  bit of the PWR_CR3 register is set activates a pull-down device on
      --  the PA[i] I/O.
      PD             : PWR_PDCRA_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRA_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRB_PU array
   type PWR_PUCRB_PU_Field_Array is array (6 .. 7) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWR_PUCRB_PU
   type PWR_PUCRB_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : HAL.UInt2;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRB_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWR_PUCRB_PU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWR Port B pull-up control register
   type PWR_PUCRB_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Port B pull-up bit i (i = 15 to 0) Setting PUi bit while the
      --  corresponding PDi bit is zero and the APC bit of the PWR_CR3 register
      --  is set activates a pull-up device on the PB[i] I/O. On STM32C011xx,
      --  only PU7 and PU6 are available
      PU            : PWR_PUCRB_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRB_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      PU            at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PWR_PDCRB_PD array
   type PWR_PDCRB_PD_Field_Array is array (6 .. 7) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWR_PDCRB_PD
   type PWR_PDCRB_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt2;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRB_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWR_PDCRB_PD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWR Port B pull-down control register
   type PWR_PDCRB_Register is record
      --  unspecified
      Reserved_0_5  : HAL.UInt6 := 16#0#;
      --  Port B pull-down bit i (i = 15 to 0) Setting PDi bit while the APC
      --  bit of the PWR_CR3 register is set activates a pull-down device on
      --  the PB[i] I/O. On STM32C011xx, only PD7 and PD6 are available
      PD            : PWR_PDCRB_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRB_Register use record
      Reserved_0_5  at 0 range 0 .. 5;
      PD            at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PWR_PUCRC_PU array
   type PWR_PUCRC_PU_Field_Array is array (14 .. 15) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWR_PUCRC_PU
   type PWR_PUCRC_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : HAL.UInt2;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRC_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWR_PUCRC_PU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWR Port C pull-up control register
   type PWR_PUCRC_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  Port C pull-up bit i (i = 15 to 13, 7 to 6) Setting PUi bit while the
      --  corresponding PDi bit is zero and the APC bit of the PWR_CR3 register
      --  is set activates a pull-up device on the PC[i] I/O. On STM32C011xx,
      --  only PU15 and PU14 are available
      PU             : PWR_PUCRC_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRC_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      PU             at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRC_PD array
   type PWR_PDCRC_PD_Field_Array is array (14 .. 15) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWR_PDCRC_PD
   type PWR_PDCRC_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt2;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRC_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWR_PDCRC_PD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWR Port C pull-down control register
   type PWR_PDCRC_Register is record
      --  unspecified
      Reserved_0_13  : HAL.UInt14 := 16#0#;
      --  Port C pull-down bit i (i = 15, 14, 13, 7, 6) Setting PDi bit while
      --  the APC bit of the PWR_CR3 register is set activates a pull-down
      --  device on the PC[i] I/O. On STM32C011xx, only PD15 and PD14 are
      --  available.
      PD             : PWR_PDCRC_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRC_Register use record
      Reserved_0_13  at 0 range 0 .. 13;
      PD             at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRD_PU array
   type PWR_PUCRD_PU_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_PUCRD_PU
   type PWR_PUCRD_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : HAL.UInt4;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRD_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_PUCRD_PU_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR Port D pull-up control register
   type PWR_PUCRD_Register is record
      --  Port D pull-up bit i (i = 3 to 0) Setting PUi bit while the
      --  corresponding PDi bit is zero and the APC bit of the PWR_CR3 register
      --  is set activates a pull-up device on the PD[i] I/O.
      PU            : PWR_PUCRD_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRD_Register use record
      PU            at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWR_PDCRD_PD array
   type PWR_PDCRD_PD_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_PDCRD_PD
   type PWR_PDCRD_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt4;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRD_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_PDCRD_PD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR Port D pull-down control register
   type PWR_PDCRD_Register is record
      --  Port D pull-down bit i (i = 3 to 0) Setting PDi bit while the APC bit
      --  of the PWR_CR3 register is set activates a pull-down device on the
      --  PD[i] I/O.
      PD            : PWR_PDCRD_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRD_Register use record
      PD            at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWR Port F pull-up control register
   type PWR_PUCRF_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Port F pull-up bit i (i = 2 to 0) Setting PUi bit while the
      --  corresponding PDi bit is zero and the APC bit of the PWR_CR3 register
      --  is set activates a pull-up device on the PF[i] I/O. On STM32C011xx,
      --  only PU2 is available.
      PU2           : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRF_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PU2           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  PWR Port F pull-down control register
   type PWR_PDCRF_Register is record
      --  unspecified
      Reserved_0_1  : HAL.UInt2 := 16#0#;
      --  Port F pull-down bit i (i = 2 to 0) Setting PDi bit while the APC bit
      --  of the PWR_CR3 register is set activates a pull-down device on the
      --  PF[i] I/O. On STM32C011xx, only PD2 is available.
      PD2           : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRF_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      PD2           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PWR address block description
   type PWR_Peripheral is record
      --  PWR control register 1
      PWR_CR1   : aliased PWR_CR1_Register;
      --  PWR control register 3
      PWR_CR3   : aliased PWR_CR3_Register;
      --  PWR control register 4
      PWR_CR4   : aliased PWR_CR4_Register;
      --  PWR status register 1
      PWR_SR1   : aliased PWR_SR1_Register;
      --  PWR status register 2
      PWR_SR2   : aliased PWR_SR2_Register;
      --  PWR status clear register
      PWR_SCR   : aliased PWR_SCR_Register;
      --  PWR Port A pull-up control register
      PWR_PUCRA : aliased PWR_PUCRA_Register;
      --  PWR Port A pull-down control register
      PWR_PDCRA : aliased PWR_PDCRA_Register;
      --  PWR Port B pull-up control register
      PWR_PUCRB : aliased PWR_PUCRB_Register;
      --  PWR Port B pull-down control register
      PWR_PDCRB : aliased PWR_PDCRB_Register;
      --  PWR Port C pull-up control register
      PWR_PUCRC : aliased PWR_PUCRC_Register;
      --  PWR Port C pull-down control register
      PWR_PDCRC : aliased PWR_PDCRC_Register;
      --  PWR Port D pull-up control register
      PWR_PUCRD : aliased PWR_PUCRD_Register;
      --  PWR Port D pull-down control register
      PWR_PDCRD : aliased PWR_PDCRD_Register;
      --  PWR Port F pull-up control register
      PWR_PUCRF : aliased PWR_PUCRF_Register;
      --  PWR Port F pull-down control register
      PWR_PDCRF : aliased PWR_PDCRF_Register;
   end record
     with Volatile;

   for PWR_Peripheral use record
      PWR_CR1   at 16#0# range 0 .. 31;
      PWR_CR3   at 16#8# range 0 .. 31;
      PWR_CR4   at 16#C# range 0 .. 31;
      PWR_SR1   at 16#10# range 0 .. 31;
      PWR_SR2   at 16#14# range 0 .. 31;
      PWR_SCR   at 16#18# range 0 .. 31;
      PWR_PUCRA at 16#20# range 0 .. 31;
      PWR_PDCRA at 16#24# range 0 .. 31;
      PWR_PUCRB at 16#28# range 0 .. 31;
      PWR_PDCRB at 16#2C# range 0 .. 31;
      PWR_PUCRC at 16#30# range 0 .. 31;
      PWR_PDCRC at 16#34# range 0 .. 31;
      PWR_PUCRD at 16#38# range 0 .. 31;
      PWR_PDCRD at 16#3C# range 0 .. 31;
      PWR_PUCRF at 16#48# range 0 .. 31;
      PWR_PDCRF at 16#4C# range 0 .. 31;
   end record;

   --  PWR address block description
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_Base;

end STM32_SVD.PWR;
