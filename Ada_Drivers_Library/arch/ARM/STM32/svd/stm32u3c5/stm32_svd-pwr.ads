--  This spec has been automatically generated from STM32U3C5.svd

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

   --  PWR_CR1_RRSB array
   type PWR_CR1_RRSB_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PWR_CR1_RRSB
   type PWR_CR1_RRSB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RRSB as a value
            Val : HAL.UInt3;
         when True =>
            --  RRSB as an array
            Arr : PWR_CR1_RRSB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PWR_CR1_RRSB_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   type PWR_CR1_Register is record
      --  Low-power mode selection
      LPMS           : PWR_CR1_LPMS_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  SRAM2 page 1 retention in Standby mode
      RRSB           : PWR_CR1_RRSB_Field :=
                        (As_Array => False, Val => 16#0#);
      --  BOR0 ultra-low power mode
      ULPMEN         : Boolean := False;
      --  SRAM1 power down
      SRAM1PD        : Boolean := False;
      --  SRAM2 power down
      SRAM2PD        : Boolean := False;
      --  SRAM3 power down
      SRAM3PD        : Boolean := False;
      --  SRAM4 power down
      SRAM4PD        : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR1_Register use record
      LPMS           at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RRSB           at 0 range 4 .. 6;
      ULPMEN         at 0 range 7 .. 7;
      SRAM1PD        at 0 range 8 .. 8;
      SRAM2PD        at 0 range 9 .. 9;
      SRAM3PD        at 0 range 10 .. 10;
      SRAM4PD        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  PWR_CR2_SRAM1PDS array
   type PWR_CR2_SRAM1PDS_Field_Array is array (1 .. 7) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for PWR_CR2_SRAM1PDS
   type PWR_CR2_SRAM1PDS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRAM1PDS as a value
            Val : HAL.UInt7;
         when True =>
            --  SRAM1PDS as an array
            Arr : PWR_CR2_SRAM1PDS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for PWR_CR2_SRAM1PDS_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  PWR_CR2_SRAM3PDS array
   type PWR_CR2_SRAM3PDS_Field_Array is array (1 .. 5) of Boolean
     with Component_Size => 1, Size => 5;

   --  Type definition for PWR_CR2_SRAM3PDS
   type PWR_CR2_SRAM3PDS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRAM3PDS as a value
            Val : HAL.UInt5;
         when True =>
            --  SRAM3PDS as an array
            Arr : PWR_CR2_SRAM3PDS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for PWR_CR2_SRAM3PDS_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  PWR_CR2_SRAM2PDS array
   type PWR_CR2_SRAM2PDS_Field_Array is array (1 .. 3) of Boolean
     with Component_Size => 1, Size => 3;

   --  Type definition for PWR_CR2_SRAM2PDS
   type PWR_CR2_SRAM2PDS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SRAM2PDS as a value
            Val : HAL.UInt3;
         when True =>
            --  SRAM2PDS as an array
            Arr : PWR_CR2_SRAM2PDS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PWR_CR2_SRAM2PDS_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  PWR control register 2
   type PWR_CR2_Register is record
      --  SRAM1 page i power-down in Stop1, Stop2, and Stop3 modes (i=7to1)
      SRAM1PDS       : PWR_CR2_SRAM1PDS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_7   : HAL.Bit := 16#0#;
      --  SRAM3 page i power-down in Stop1, Stop2, and Stop3 modes
      SRAM3PDS       : PWR_CR2_SRAM3PDS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  SRAM2 page 1 (32 Kbytes) power-down in Stop1, Stop2, and Stop3 modes
      SRAM2PDS       : PWR_CR2_SRAM2PDS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  SRAM4 power-down in Stop1, Stop2, and Stop3 modes
      SRAM4PDS       : Boolean := False;
      --  unspecified
      Reserved_21_24 : HAL.UInt4 := 16#0#;
      --  ICACHE SRAM power-down in Stop1, Stop2, and Stop3 modes
      ICRAMPDS       : Boolean := False;
      --  FDCAN and USB SRAM power-down in Stop1, Stop2, and Stop3 modes
      PRAMPDS        : Boolean := False;
      --  PKA SRAM power-down in Stop1, Stop2, and Stop3 modes
      PKARAMPDS      : Boolean := False;
      --  SRAM fast wake-up from Stop 0 and Stop 1 modes
      SRAMFWU        : Boolean := False;
      --  Flash memory fast wake-up from Stop 0 and Stop 1 modes
      FLASHFWU       : Boolean := False;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR2_Register use record
      SRAM1PDS       at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SRAM3PDS       at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      SRAM2PDS       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      SRAM4PDS       at 0 range 20 .. 20;
      Reserved_21_24 at 0 range 21 .. 24;
      ICRAMPDS       at 0 range 25 .. 25;
      PRAMPDS        at 0 range 26 .. 26;
      PKARAMPDS      at 0 range 27 .. 27;
      SRAMFWU        at 0 range 28 .. 28;
      FLASHFWU       at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  PWR control register 3
   type PWR_CR3_Register is record
      --  unspecified
      Reserved_0_0  : HAL.Bit := 16#0#;
      --  Regulator selection
      REGSEL        : Boolean := False;
      --  Fast soft start
      FSTEN         : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR3_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      REGSEL        at 0 range 1 .. 1;
      FSTEN         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  PWR voltage scaling register
   type PWR_VOSR_Register is record
      --  Voltage scaling range 1 selection
      R1EN           : Boolean := False;
      --  Voltage scaling range 2 selection
      R2EN           : Boolean := True;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  EPOD booster enable
      BOOSTEN        : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Read-only. Ready bit for Vless thansub>COREless than/sub> voltage
      --  range 1 selection
      R1RDY          : Boolean := False;
      --  Read-only. Ready bit for Vless thansub>COREless than/sub> voltage
      --  range 2 selection
      R2RDY          : Boolean := True;
      --  unspecified
      Reserved_18_23 : HAL.UInt6 := 16#0#;
      --  Read-only. EPOD booster ready
      BOOSTRDY       : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_VOSR_Register use record
      R1EN           at 0 range 0 .. 0;
      R2EN           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      BOOSTEN        at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      R1RDY          at 0 range 16 .. 16;
      R2RDY          at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      BOOSTRDY       at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype PWR_SVMCR_PVDLS_Field is HAL.UInt3;

   --  PWR supply voltage monitoring control register
   type PWR_SVMCR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Programmable voltage detector enable
      PVDE           : Boolean := False;
      --  Programmable voltage detector (PVD) level selection
      PVDLS          : PWR_SVMCR_PVDLS_Field := 16#0#;
      --  unspecified
      Reserved_8_23  : HAL.UInt16 := 16#0#;
      --  Vless thansub>DDUSBless than/sub>independent USB voltage monitor
      --  enable
      UVMEN          : Boolean := False;
      --  Vless thansub>DDIO2less than/sub> independent I/O voltage monitor
      --  enable
      IO2VMEN        : Boolean := False;
      --  Vless thansub>DDAless than/sub> independent analog supply voltage
      --  monitor 1 enable (1.
      AVM1EN         : Boolean := False;
      --  Vless thansub>DDAless than/sub> independent analog supply voltage
      --  monitor 2 enable (1.
      AVM2EN         : Boolean := False;
      --  Vless thansub>DDUSBless than/sub> independent USB supply valid
      USV            : Boolean := False;
      --  Vless thansub>DDIO2less than/sub> independent I/O supply valid
      IO2SV          : Boolean := False;
      --  Vless thansub>DDAless than/sub> independent analog supply valid
      ASV            : Boolean := False;
      --  unspecified
      Reserved_31_31 : HAL.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SVMCR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      PVDE           at 0 range 4 .. 4;
      PVDLS          at 0 range 5 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      UVMEN          at 0 range 24 .. 24;
      IO2VMEN        at 0 range 25 .. 25;
      AVM1EN         at 0 range 26 .. 26;
      AVM2EN         at 0 range 27 .. 27;
      USV            at 0 range 28 .. 28;
      IO2SV          at 0 range 29 .. 29;
      ASV            at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  PWR_WUCR1_WUPEN array
   type PWR_WUCR1_WUPEN_Field_Array is array (1 .. 10) of Boolean
     with Component_Size => 1, Size => 10;

   --  Type definition for PWR_WUCR1_WUPEN
   type PWR_WUCR1_WUPEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUPEN as a value
            Val : HAL.UInt10;
         when True =>
            --  WUPEN as an array
            Arr : PWR_WUCR1_WUPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for PWR_WUCR1_WUPEN_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  PWR wake-up control register 1
   type PWR_WUCR1_Register is record
      --  Wake-up line WKUPi enable
      WUPEN          : PWR_WUCR1_WUPEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WUCR1_Register use record
      WUPEN          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  PWR_WUCR2_WUPP array
   type PWR_WUCR2_WUPP_Field_Array is array (1 .. 8) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_WUCR2_WUPP
   type PWR_WUCR2_WUPP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUPP as a value
            Val : HAL.UInt8;
         when True =>
            --  WUPP as an array
            Arr : PWR_WUCR2_WUPP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_WUCR2_WUPP_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR wake-up control register 2
   type PWR_WUCR2_Register is record
      --  Wake-up line WKUP8 polarity
      WUPP          : PWR_WUCR2_WUPP_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WUCR2_Register use record
      WUPP          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PWR_WUCR3_WUSEL array element
   subtype PWR_WUCR3_WUSEL_Element is HAL.UInt2;

   --  PWR_WUCR3_WUSEL array
   type PWR_WUCR3_WUSEL_Field_Array is array (1 .. 8)
     of PWR_WUCR3_WUSEL_Element
     with Component_Size => 2, Size => 16;

   --  Type definition for PWR_WUCR3_WUSEL
   type PWR_WUCR3_WUSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUSEL as a value
            Val : HAL.UInt16;
         when True =>
            --  WUSEL as an array
            Arr : PWR_WUCR3_WUSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_WUCR3_WUSEL_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR wake-up control register 3
   type PWR_WUCR3_Register is record
      --  Wake-up line WKUPi selection
      WUSEL          : PWR_WUCR3_WUSEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WUCR3_Register use record
      WUSEL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR backup domain control register
   type PWR_BDCR_Register is record
      --  Vless thansub>BATless than/sub> charging enable
      VBE           : Boolean := False;
      --  Vless thansub>BATless than/sub> charging resistor selection
      VBRS          : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_BDCR_Register use record
      VBE           at 0 range 0 .. 0;
      VBRS          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PWR disable backup domain register
   type PWR_DBPR_Register is record
      --  Disable backup domain write protection
      DBP           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_DBPR_Register use record
      DBP           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PWR security configuration register
   type PWR_SECCFGR_Register is record
      --  WUPi secure protection
      WUP1SEC        : Boolean := False;
      --  WUPi secure protection
      WUP2SEC        : Boolean := False;
      --  WUPi secure protection
      WUP3SEC        : Boolean := False;
      --  WUPi secure protection
      WUP4SEC        : Boolean := False;
      --  WUPi secure protection
      WUP5SEC        : Boolean := False;
      --  WUPi secure protection
      WUP6SEC        : Boolean := False;
      --  WUPi secure protection
      WUP7SEC        : Boolean := False;
      --  WUPi secure protection
      WUP8SEC        : Boolean := False;
      --  WUPi secure protection
      WUP9SEC        : Boolean := False;
      --  WUPi secure protection
      WUP10SEC       : Boolean := False;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Low-power mode secure protection
      LPMSEC         : Boolean := False;
      --  Voltage detection and monitoring secure protection
      VDMSEC         : Boolean := False;
      --  Backup domain secure protection
      VBSEC          : Boolean := False;
      --  Pull-up/pull-down secure protection
      APCSEC         : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SECCFGR_Register use record
      WUP1SEC        at 0 range 0 .. 0;
      WUP2SEC        at 0 range 1 .. 1;
      WUP3SEC        at 0 range 2 .. 2;
      WUP4SEC        at 0 range 3 .. 3;
      WUP5SEC        at 0 range 4 .. 4;
      WUP6SEC        at 0 range 5 .. 5;
      WUP7SEC        at 0 range 6 .. 6;
      WUP8SEC        at 0 range 7 .. 7;
      WUP9SEC        at 0 range 8 .. 8;
      WUP10SEC       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      LPMSEC         at 0 range 12 .. 12;
      VDMSEC         at 0 range 13 .. 13;
      VBSEC          at 0 range 14 .. 14;
      APCSEC         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR privilege control register
   type PWR_PRIVCFGR_Register is record
      --  PWR secure function privilege configuration
      SPRIV         : Boolean := False;
      --  PWR nonsecure function privilege configuration
      NSPRIV        : Boolean := False;
      --  unspecified
      Reserved_2_31 : HAL.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PRIVCFGR_Register use record
      SPRIV         at 0 range 0 .. 0;
      NSPRIV        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PWR status register
   type PWR_SR_Register is record
      --  Write-only. Clear Stop and Standby flags
      CSSF          : Boolean := False;
      --  Read-only. Stop flag
      STOPF         : Boolean := False;
      --  Read-only. Standby flag
      SBF           : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SR_Register use record
      CSSF          at 0 range 0 .. 0;
      STOPF         at 0 range 1 .. 1;
      SBF           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  PWR supply voltage monitoring status register
   type PWR_SVMSR_Register is record
      --  unspecified
      Reserved_0_0   : HAL.Bit;
      --  Read-only. Regulator selection
      REGS           : Boolean;
      --  unspecified
      Reserved_2_3   : HAL.UInt2;
      --  Read-only. Programmable voltage detector output
      PVDO           : Boolean;
      --  unspecified
      Reserved_5_23  : HAL.UInt19;
      --  Read-only. Vless thansub>DDUSBless than/sub> ready
      VDDUSBRDY      : Boolean;
      --  Read-only. Vless thansub>DDIO2 less than/sub>ready
      VDDIO2RDY      : Boolean;
      --  Read-only. Vless thansub>DDAless than/sub> ready versus 1.
      VDDA1RDY       : Boolean;
      --  Read-only. Vless thansub>DDAless than/sub> ready versus 1.
      VDDA2RDY       : Boolean;
      --  unspecified
      Reserved_28_31 : HAL.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SVMSR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      REGS           at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      PVDO           at 0 range 4 .. 4;
      Reserved_5_23  at 0 range 5 .. 23;
      VDDUSBRDY      at 0 range 24 .. 24;
      VDDIO2RDY      at 0 range 25 .. 25;
      VDDA1RDY       at 0 range 26 .. 26;
      VDDA2RDY       at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  PWR_WUSR_WUF array
   type PWR_WUSR_WUF_Field_Array is array (1 .. 10) of Boolean
     with Component_Size => 1, Size => 10;

   --  Type definition for PWR_WUSR_WUF
   type PWR_WUSR_WUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WUF as a value
            Val : HAL.UInt10;
         when True =>
            --  WUF as an array
            Arr : PWR_WUSR_WUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for PWR_WUSR_WUF_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  PWR wake-up status register
   type PWR_WUSR_Register is record
      --  Read-only. Wake-up flag i
      WUF            : PWR_WUSR_WUF_Field;
      --  unspecified
      Reserved_10_31 : HAL.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WUSR_Register use record
      WUF            at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  PWR_WUSCR_CWUF array
   type PWR_WUSCR_CWUF_Field_Array is array (1 .. 10) of Boolean
     with Component_Size => 1, Size => 10;

   --  Type definition for PWR_WUSCR_CWUF
   type PWR_WUSCR_CWUF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CWUF as a value
            Val : HAL.UInt10;
         when True =>
            --  CWUF as an array
            Arr : PWR_WUSCR_CWUF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for PWR_WUSCR_CWUF_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  PWR wake-up status clear register
   type PWR_WUSCR_Register is record
      --  Write-only. Wake-up flag i clear
      CWUF           : PWR_WUSCR_CWUF_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WUSCR_Register use record
      CWUF           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  PWR apply pull configuration register
   type PWR_APCR_Register is record
      --  Apply pull-up and pull-down configuration
      APC           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_APCR_Register use record
      APC           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PWR_PUCRA_PU array
   type PWR_PUCRA_PU_Field_Array is array (0 .. 13) of Boolean
     with Component_Size => 1, Size => 14;

   --  Type definition for PWR_PUCRA_PU
   type PWR_PUCRA_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : HAL.UInt14;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRA_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 14;

   for PWR_PUCRA_PU_Field use record
      Val at 0 range 0 .. 13;
      Arr at 0 range 0 .. 13;
   end record;

   --  PWR port A pull-up control register
   type PWR_PUCRA_Register is record
      --  Port A pull-up bit y
      PU             : PWR_PUCRA_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_14_14 : HAL.Bit := 16#0#;
      --  Port A pull-up bit 15
      PU15           : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRA_Register use record
      PU             at 0 range 0 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      PU15           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRA_PD array
   type PWR_PDCRA_PD_Field_Array is array (0 .. 12) of Boolean
     with Component_Size => 1, Size => 13;

   --  Type definition for PWR_PDCRA_PD
   type PWR_PDCRA_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt13;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRA_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 13;

   for PWR_PDCRA_PD_Field use record
      Val at 0 range 0 .. 12;
      Arr at 0 range 0 .. 12;
   end record;

   --  PWR port A pull-down control register
   type PWR_PDCRA_Register is record
      --  Port A pull-down bit y
      PD             : PWR_PDCRA_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Port A pull-down bit 14
      PD14           : Boolean := False;
      --  unspecified
      Reserved_15_31 : HAL.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRA_Register use record
      PD             at 0 range 0 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      PD14           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  PWR_PDCRB_PD array
   type PWR_PDCRB_PD_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_PDCRB_PD
   type PWR_PDCRB_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt4;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRB_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_PDCRB_PD_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR_PDCRB_PD array
   type PWR_PDCRB_PD_Field_Array_1 is array (5 .. 15) of Boolean
     with Component_Size => 1, Size => 11;

   --  Type definition for PWR_PDCRB_PD
   type PWR_PDCRB_PD_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt11;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRB_PD_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 11;

   for PWR_PDCRB_PD_Field_1 use record
      Val at 0 range 0 .. 10;
      Arr at 0 range 0 .. 10;
   end record;

   --  PWR port B pull-down control register
   type PWR_PDCRB_Register is record
      --  Port B pull-down bit y
      PD             : PWR_PDCRB_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      --  Port B pull-down bit y
      PD_1           : PWR_PDCRB_PD_Field_1 :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRB_Register use record
      PD             at 0 range 0 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      PD_1           at 0 range 5 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRG_PU array
   type PWR_PUCRG_PU_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PUCRG_PU
   type PWR_PUCRG_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : HAL.UInt16;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRG_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PUCRG_PU_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port G pull-up control register
   type PWR_PUCRG_Register is record
      --  Port G pull-up bit y
      PU             : PWR_PUCRG_PU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRG_Register use record
      PU             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PDCRG_PD array
   type PWR_PDCRG_PD_Field_Array is array (0 .. 15) of Boolean
     with Component_Size => 1, Size => 16;

   --  Type definition for PWR_PDCRG_PD
   type PWR_PDCRG_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt16;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRG_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for PWR_PDCRG_PD_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  PWR port G pull-down control register
   type PWR_PDCRG_Register is record
      --  Port G pull-down bit y
      PD             : PWR_PDCRG_PD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRG_Register use record
      PD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  PWR_PUCRH_PU array
   type PWR_PUCRH_PU_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWR_PUCRH_PU
   type PWR_PUCRH_PU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PU as a value
            Val : HAL.UInt2;
         when True =>
            --  PU as an array
            Arr : PWR_PUCRH_PU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWR_PUCRH_PU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWR port H pull-up control register
   type PWR_PUCRH_Register is record
      --  Port H pull-up bit y
      PU            : PWR_PUCRH_PU_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Port H pull-up bit 3
      PU3           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PUCRH_Register use record
      PU            at 0 range 0 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      PU3           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWR_PDCRH_PD array
   type PWR_PDCRH_PD_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWR_PDCRH_PD
   type PWR_PDCRH_PD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PD as a value
            Val : HAL.UInt2;
         when True =>
            --  PD as an array
            Arr : PWR_PDCRH_PD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWR_PDCRH_PD_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWR port H pull-down control register
   type PWR_PDCRH_Register is record
      --  Port H pull-down bit y
      PD            : PWR_PDCRH_PD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_2  : HAL.Bit := 16#0#;
      --  Port H pull-down bit 3
      PD3           : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PDCRH_Register use record
      PD            at 0 range 0 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      PD3           at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWR I3C pull-up control register 1
   type PWR_I3CPUCR1_Register is record
      --  Port A pin 1 I3C pull-up
      PA1_I3CPU      : Boolean := False;
      --  Port A pin y I3C pull-up
      PA6_I3CPU      : Boolean := False;
      --  Port A pin y I3C pull-up
      PA7_I3CPU      : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Port B pin 2 I3C pull-up
      PB2_I3CPU      : Boolean := False;
      --  Port B pin 6 I3C pull-up
      PB6_I3CPU      : Boolean := False;
      --  Port B pin y I3C pull-up
      PB8_I3CPU      : Boolean := False;
      --  Port B pin y I3C pull-up
      PB9_I3CPU      : Boolean := False;
      --  Port B pin y I3C pull-up
      PB10_I3CPU     : Boolean := False;
      --  Port B pin x I3C pull-up
      PB12_I3CPU     : Boolean := False;
      --  Port B pin x I3C pull-up
      PB13_I3CPU     : Boolean := False;
      --  Port B pin x I3C pull-up
      PB14_I3CPU     : Boolean := False;
      --  Port B pin 7 I3C pull-up
      PB7_I3CPU      : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_I3CPUCR1_Register use record
      PA1_I3CPU      at 0 range 0 .. 0;
      PA6_I3CPU      at 0 range 1 .. 1;
      PA7_I3CPU      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PB2_I3CPU      at 0 range 4 .. 4;
      PB6_I3CPU      at 0 range 5 .. 5;
      PB8_I3CPU      at 0 range 6 .. 6;
      PB9_I3CPU      at 0 range 7 .. 7;
      PB10_I3CPU     at 0 range 8 .. 8;
      PB12_I3CPU     at 0 range 9 .. 9;
      PB13_I3CPU     at 0 range 10 .. 10;
      PB14_I3CPU     at 0 range 11 .. 11;
      PB7_I3CPU      at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  PWR I3C pull-up control register 2
   type PWR_I3CPUCR2_Register is record
      --  Port C pin 1 I3C pull-up
      PC0_I3CPU      : Boolean := False;
      --  Port C pin 1 I3C pull-up
      PC1_I3CPU      : Boolean := False;
      --  unspecified
      Reserved_2_2   : HAL.Bit := 16#0#;
      --  Port D pin y I3C pull-up
      PD12_I3CPU     : Boolean := False;
      --  Port D pin y I3C pull-up
      PD13_I3CPU     : Boolean := False;
      --  unspecified
      Reserved_5_5   : HAL.Bit := 16#0#;
      --  Port G pin y I3C pull-up
      PG7_I3CPU      : Boolean := False;
      --  Port G pin y I3C pull-up
      PG8_I3CPU      : Boolean := False;
      --  Port G pin x I3C pull-up
      PG13_I3CPU     : Boolean := False;
      --  Port G pin x I3C pull-up
      PG14_I3CPU     : Boolean := False;
      --  unspecified
      Reserved_10_10 : HAL.Bit := 16#0#;
      --  Port H pin 3 I3C pull-up
      PH3_I3CPU      : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_I3CPUCR2_Register use record
      PC0_I3CPU      at 0 range 0 .. 0;
      PC1_I3CPU      at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      PD12_I3CPU     at 0 range 3 .. 3;
      PD13_I3CPU     at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      PG7_I3CPU      at 0 range 6 .. 6;
      PG8_I3CPU      at 0 range 7 .. 7;
      PG13_I3CPU     at 0 range 8 .. 8;
      PG14_I3CPU     at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PH3_I3CPU      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PWR register block
   type PWR_Peripheral is record
      PWR_CR1      : aliased PWR_CR1_Register;
      --  PWR control register 2
      PWR_CR2      : aliased PWR_CR2_Register;
      --  PWR control register 3
      PWR_CR3      : aliased PWR_CR3_Register;
      --  PWR voltage scaling register
      PWR_VOSR     : aliased PWR_VOSR_Register;
      --  PWR supply voltage monitoring control register
      PWR_SVMCR    : aliased PWR_SVMCR_Register;
      --  PWR wake-up control register 1
      PWR_WUCR1    : aliased PWR_WUCR1_Register;
      --  PWR wake-up control register 2
      PWR_WUCR2    : aliased PWR_WUCR2_Register;
      --  PWR wake-up control register 3
      PWR_WUCR3    : aliased PWR_WUCR3_Register;
      --  PWR backup domain control register
      PWR_BDCR     : aliased PWR_BDCR_Register;
      --  PWR disable backup domain register
      PWR_DBPR     : aliased PWR_DBPR_Register;
      --  PWR security configuration register
      PWR_SECCFGR  : aliased PWR_SECCFGR_Register;
      --  PWR privilege control register
      PWR_PRIVCFGR : aliased PWR_PRIVCFGR_Register;
      --  PWR status register
      PWR_SR       : aliased PWR_SR_Register;
      --  PWR supply voltage monitoring status register
      PWR_SVMSR    : aliased PWR_SVMSR_Register;
      --  PWR wake-up status register
      PWR_WUSR     : aliased PWR_WUSR_Register;
      --  PWR wake-up status clear register
      PWR_WUSCR    : aliased PWR_WUSCR_Register;
      --  PWR apply pull configuration register
      PWR_APCR     : aliased PWR_APCR_Register;
      --  PWR port A pull-up control register
      PWR_PUCRA    : aliased PWR_PUCRA_Register;
      --  PWR port A pull-down control register
      PWR_PDCRA    : aliased PWR_PDCRA_Register;
      --  PWR port B pull-down control register
      PWR_PDCRB    : aliased PWR_PDCRB_Register;
      --  PWR port G pull-up control register
      PWR_PUCRG    : aliased PWR_PUCRG_Register;
      --  PWR port G pull-down control register
      PWR_PDCRG    : aliased PWR_PDCRG_Register;
      --  PWR port H pull-up control register
      PWR_PUCRH    : aliased PWR_PUCRH_Register;
      --  PWR port H pull-down control register
      PWR_PDCRH    : aliased PWR_PDCRH_Register;
      --  PWR I3C pull-up control register 1
      PWR_I3CPUCR1 : aliased PWR_I3CPUCR1_Register;
      --  PWR I3C pull-up control register 2
      PWR_I3CPUCR2 : aliased PWR_I3CPUCR2_Register;
   end record
     with Volatile;

   for PWR_Peripheral use record
      PWR_CR1      at 16#0# range 0 .. 31;
      PWR_CR2      at 16#4# range 0 .. 31;
      PWR_CR3      at 16#8# range 0 .. 31;
      PWR_VOSR     at 16#C# range 0 .. 31;
      PWR_SVMCR    at 16#10# range 0 .. 31;
      PWR_WUCR1    at 16#14# range 0 .. 31;
      PWR_WUCR2    at 16#18# range 0 .. 31;
      PWR_WUCR3    at 16#1C# range 0 .. 31;
      PWR_BDCR     at 16#24# range 0 .. 31;
      PWR_DBPR     at 16#28# range 0 .. 31;
      PWR_SECCFGR  at 16#30# range 0 .. 31;
      PWR_PRIVCFGR at 16#34# range 0 .. 31;
      PWR_SR       at 16#38# range 0 .. 31;
      PWR_SVMSR    at 16#3C# range 0 .. 31;
      PWR_WUSR     at 16#44# range 0 .. 31;
      PWR_WUSCR    at 16#48# range 0 .. 31;
      PWR_APCR     at 16#4C# range 0 .. 31;
      PWR_PUCRA    at 16#50# range 0 .. 31;
      PWR_PDCRA    at 16#54# range 0 .. 31;
      PWR_PDCRB    at 16#5C# range 0 .. 31;
      PWR_PUCRG    at 16#80# range 0 .. 31;
      PWR_PDCRG    at 16#84# range 0 .. 31;
      PWR_PUCRH    at 16#88# range 0 .. 31;
      PWR_PDCRH    at 16#8C# range 0 .. 31;
      PWR_I3CPUCR1 at 16#B0# range 0 .. 31;
      PWR_I3CPUCR2 at 16#B4# range 0 .. 31;
   end record;

   --  PWR register block
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_Base;

   --  PWR register block
   SEC_PWR_Periph : aliased PWR_Peripheral
     with Import, Address => SEC_PWR_Base;

end STM32_SVD.PWR;
