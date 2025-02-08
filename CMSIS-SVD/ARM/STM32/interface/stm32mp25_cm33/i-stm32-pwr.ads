--
--  Copyright (C) 2025, AdaCore
--

--  This spec has been automatically generated from STM32MP25_CM33.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.PWR is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  PWR control register 1
   type PWR_CR1_Register is record
      --  Vless thansub>DDIO3 less than/sub>independent voltage monitor enable
      VDDIO3VMEN     : Boolean := False;
      --  Vless thansub>DDIO4 less than/sub>independent voltage monitor enable
      VDDIO4VMEN     : Boolean := False;
      --  Vless thansub>DD33USB less than/sub>independent USB 33 voltage
      --  monitor enable
      USB33VMEN      : Boolean := False;
      --  Vless thansub>DD33UCPD less than/sub>independent UCPD voltage monitor
      --  enable
      UCPDVMEN       : Boolean := False;
      --  Vless thansub>DDA18ADC less than/sub>independent ADC voltage monitor
      --  enable
      AVMEN          : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Vless thansub>DDIO3 less than/sub>independent supply valid
      VDDIO3SV       : Boolean := False;
      --  Vless thansub>DDIO4 less than/sub>independent supply valid
      VDDIO4SV       : Boolean := False;
      --  unspecified
      Reserved_10_10 : Interfaces.Bit_Types.Bit := 16#0#;
      --  Vless thansub>DD33UCPD less than/sub>independent supply valid
      UCPDSV         : Boolean := False;
      --  Vless thansub>DDA18ADC less than/sub>independent supply valid
      ASV            : Boolean := False;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Vless thansub>DDIO3 less than/sub>ready
      VDDIO3RDY      : Boolean := False;
      --  Read-only. Vless thansub>DDIO4 less than/sub>ready
      VDDIO4RDY      : Boolean := False;
      --  Read-only. Vless thansub>DD33USB less than/sub>ready
      USB33RDY       : Boolean := False;
      --  Read-only. Vless thansub>DD33UCPD less than/sub>ready
      UCPDRDY        : Boolean := False;
      --  Read-only. Vless thansub>DDA18ADC less than/sub>ready
      ARDY           : Boolean := False;
      --  unspecified
      Reserved_21_23 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  VDD I/O voltage range selection
      VDDIOVRSEL     : Boolean := False;
      --  VDDIO3 I/O voltage range selection
      VDDIO3VRSEL    : Boolean := False;
      --  VDDIO4 I/O voltage range selection
      VDDIO4VRSEL    : Boolean := False;
      --  unspecified
      Reserved_27_30 : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Read-only. Global peripheral voltage monitor output
      GPVMO          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR1_Register use record
      VDDIO3VMEN     at 0 range 0 .. 0;
      VDDIO4VMEN     at 0 range 1 .. 1;
      USB33VMEN      at 0 range 2 .. 2;
      UCPDVMEN       at 0 range 3 .. 3;
      AVMEN          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      VDDIO3SV       at 0 range 8 .. 8;
      VDDIO4SV       at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      UCPDSV         at 0 range 11 .. 11;
      ASV            at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      VDDIO3RDY      at 0 range 16 .. 16;
      VDDIO4RDY      at 0 range 17 .. 17;
      USB33RDY       at 0 range 18 .. 18;
      UCPDRDY        at 0 range 19 .. 19;
      ARDY           at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      VDDIOVRSEL     at 0 range 24 .. 24;
      VDDIO3VRSEL    at 0 range 25 .. 25;
      VDDIO4VRSEL    at 0 range 26 .. 26;
      Reserved_27_30 at 0 range 27 .. 30;
      GPVMO          at 0 range 31 .. 31;
   end record;

   --  PWR control register 2
   type PWR_CR2_Register is record
      --  Vless thansub>08CAPless than/sub> and temperature monitoring enable
      MONEN          : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Read-only. Monitored Vless thansub>08CAPless than/sub> level above
      --  low threshold
      V08CAPL        : Boolean := False;
      --  Read-only. Monitored Vless thansub>08CAPless than/sub> level above
      --  high threshold
      V08CAPH        : Boolean := False;
      --  Read-only. Monitored temperature level above low threshold
      TEMPL          : Boolean := False;
      --  Read-only. Monitored temperature level above high threshold
      TEMPH          : Boolean := False;
      --  unspecified
      Reserved_12_31 : Interfaces.Bit_Types.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR2_Register use record
      MONEN          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      V08CAPL        at 0 range 8 .. 8;
      V08CAPH        at 0 range 9 .. 9;
      TEMPL          at 0 range 10 .. 10;
      TEMPH          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  PWR control register 3
   type PWR_CR3_Register is record
      --  PVD enable
      PVDEN         : Boolean := False;
      --  unspecified
      Reserved_1_7  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Read-only. Programmable voltage detector (PVD) output
      PVDO          : Boolean := False;
      --  unspecified
      Reserved_9_31 : Interfaces.Bit_Types.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR3_Register use record
      PVDEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      PVDO          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  PWR control register 5
   type PWR_CR5_Register is record
      --  Vless thansub>DDCOREless than/sub> monitoring enable
      VCOREMONEN     : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Read-only. Monitored Vless thansub>DDCOREless than/sub> level above
      --  low threshold
      VCOREL         : Boolean := False;
      --  Read-only. Monitored Vless thansub>DDCOREless than/sub> level above
      --  high threshold
      VCOREH         : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR5_Register use record
      VCOREMONEN     at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      VCOREL         at 0 range 8 .. 8;
      VCOREH         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  PWR control register 6
   type PWR_CR6_Register is record
      --  Vless thansub>DDCPUless than/sub> monitoring enable
      VCPUMONEN      : Boolean := False;
      --  unspecified
      Reserved_1_3   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Vless thansub>DDCPUless than/sub> voltage detector low level
      --  selection
      VCPULLS        : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Monitored Vless thansub>DDCPUless than/sub> level above
      --  low threshold
      VCPUL          : Boolean := False;
      --  Read-only. Monitored Vless thansub>DDCPUless than/sub> level above
      --  high threshold
      VCPUH          : Boolean := False;
      --  unspecified
      Reserved_10_31 : Interfaces.Bit_Types.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR6_Register use record
      VCPUMONEN      at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      VCPULLS        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      VCPUL          at 0 range 8 .. 8;
      VCPUH          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  PWR control register 7
   type PWR_CR7_Register is record
      --  Vless thansub>DDIO2 less than/sub>independent voltage monitor enable
      VDDIO2VMEN     : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Vless thansub>DDIO2 less than/sub>Independent supply valid.
      VDDIO2SV       : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Read-only. Vless thansub>DDIO2 less than/sub>ready
      VDDIO2RDY      : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Vless thansub>DDIO2less than/sub> I/O voltage range selection
      VDDIO2VRSEL    : Boolean := False;
      --  Vless thansub>DDIO2less than/sub> I/O voltage range Standby mode
      VDDIO2VRSTBY   : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR7_Register use record
      VDDIO2VMEN     at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      VDDIO2SV       at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      VDDIO2RDY      at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      VDDIO2VRSEL    at 0 range 24 .. 24;
      VDDIO2VRSTBY   at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  PWR control register 8
   type PWR_CR8_Register is record
      --  Vless thansub>DDOI1 less than/sub>independent I/O voltage monitor
      --  enable
      VDDIO1VMEN     : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Vless thansub>DDIO1 less than/sub>independent I/O supply valid
      VDDIO1SV       : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Read-only. Vless thansub>DDIO1 less than/sub>ready
      VDDIO1RDY      : Boolean := False;
      --  unspecified
      Reserved_17_23 : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Vless thansub>DDIO1less than/sub> I/O voltage range selection
      VDDIO1VRSEL    : Boolean := False;
      --  Vless thansub>DDIO1less than/sub> I/O voltage range Standby mode
      VDDIO1VRSTBY   : Boolean := False;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR8_Register use record
      VDDIO1VMEN     at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      VDDIO1SV       at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      VDDIO1RDY      at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      VDDIO1VRSEL    at 0 range 24 .. 24;
      VDDIO1VRSTBY   at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  PWR control register 9
   type PWR_CR9_Register is record
      --  Backup RAM backup supply enable
      BKPRBSEN      : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LPSRAM 1 backup supply enable
      LPR1BSEN      : Boolean := False;
      --  unspecified
      Reserved_5_31 : Interfaces.Bit_Types.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR9_Register use record
      BKPRBSEN      at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      LPR1BSEN      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype PWR_CR10_RETRBSEN_Field is Interfaces.Bit_Types.UInt2;

   --  PWR control register 10
   type PWR_CR10_Register is record
      --  Retention RAM backup supply enable
      RETRBSEN      : PWR_CR10_RETRBSEN_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.Bit_Types.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR10_Register use record
      RETRBSEN      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  PWR control register 11
   type PWR_CR11_Register is record
      --  DDR retention disable
      DDRRETDIS     : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR11_Register use record
      DDRRETDIS     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PWR control register 12
   type PWR_CR12_Register is record
      --  Vless thansub>DDGPUless than/sub> independent GPU voltage monitor
      --  enable
      GPUVMEN        : Boolean := False;
      --  Vless thansub>DDGPU less than/sub>low-voltage threshold enable
      GPULVTEN       : Boolean := False;
      --  unspecified
      Reserved_2_7   : Interfaces.Bit_Types.UInt6 := 16#0#;
      --  Vless thansub>DDGPU less than/sub>independent supply valid
      GPUSV          : Boolean := False;
      --  unspecified
      Reserved_9_15  : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Read-only. Vless thansub>DDGPUless than/sub> ready
      VDDGPURDY      : Boolean := False;
      --  unspecified
      Reserved_17_31 : Interfaces.Bit_Types.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR12_Register use record
      GPUVMEN        at 0 range 0 .. 0;
      GPULVTEN       at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      GPUSV          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      VDDGPURDY      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  PWR backup domain control register 1
   type PWR_BDCR1_Register is record
      --  Disable backup and D3 domains (including LPSRAM1/2/3) write
      --  protection
      DBD3P         : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_BDCR1_Register use record
      DBD3P         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PWR backup domain control register 2
   type PWR_BDCR2_Register is record
      --  Disable backup domain write protection
      DBP           : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_BDCR2_Register use record
      DBP           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PWR_CPU1CR_SBF_D array
   type PWR_CPU1CR_SBF_D_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWR_CPU1CR_SBF_D
   type PWR_CPU1CR_SBF_D_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SBF_D as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  SBF_D as an array
            Arr : PWR_CPU1CR_SBF_D_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWR_CPU1CR_SBF_D_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWR CPU1 control register
   type PWR_CPU1CR_Register is record
      --  D2 domain/system power-down Deepsleep selection
      PDDS_D2        : Boolean := False;
      --  D1 domain power-down Deepsleep selection
      PDDS_D1        : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Vless thansub>BATless than/sub> mode exit flag
      VBF            : Boolean := False;
      --  Read-only. System Stop flag
      STOPF          : Boolean := False;
      --  Read-only. System Standby flag
      SBF            : Boolean := False;
      --  Read-only. D1 DStandby flag
      SBF_D          : PWR_CPU1CR_SBF_D_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Clear CPU1 STOPF, SBF_D1/D3, SBF, VBF and CPU2 SBF flags
      --  (Always read as 0)
      CSSF           : Boolean := False;
      --  unspecified
      Reserved_10_14 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Read-only. CPU1 system idle indication
      STANDBYWFIL2   : Boolean := False;
      --  low-power Deepsleep Stop mode selection for the D1 domain (DStop2)
      LPDS_D1        : Boolean := False;
      --  Low-voltage Deepsleep LPLV-Stop mode selection for the D1 domain
      --  (DStop3)
      LVDS_D1        : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CPU1CR_Register use record
      PDDS_D2        at 0 range 0 .. 0;
      PDDS_D1        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      VBF            at 0 range 4 .. 4;
      STOPF          at 0 range 5 .. 5;
      SBF            at 0 range 6 .. 6;
      SBF_D          at 0 range 7 .. 8;
      CSSF           at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      STANDBYWFIL2   at 0 range 15 .. 15;
      LPDS_D1        at 0 range 16 .. 16;
      LVDS_D1        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  PWR_CPU2CR_SBF_D array
   type PWR_CPU2CR_SBF_D_Field_Array is array (2 .. 3) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWR_CPU2CR_SBF_D
   type PWR_CPU2CR_SBF_D_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SBF_D as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  SBF_D as an array
            Arr : PWR_CPU2CR_SBF_D_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWR_CPU2CR_SBF_D_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWR CPU2 control register
   type PWR_CPU2CR_Register is record
      --  D2 domain/system power-down Deepsleep selection
      PDDS_D2        : Boolean := False;
      --  unspecified
      Reserved_1_3   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Vless thansub>BATless than/sub> exit flag
      VBF            : Boolean := False;
      --  Read-only. System Stop flag
      STOPF          : Boolean := False;
      --  Read-only. System Standby flag
      SBF            : Boolean := False;
      --  Read-only. D2 Standby flag
      SBF_D          : PWR_CPU2CR_SBF_D_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Write-only. Clear CPU2 STOPF, SBF_D2/D3, SBF, VBF and CPU1 SBF flags
      --  (Always read as 0)
      CSSF           : Boolean := False;
      --  unspecified
      Reserved_10_14 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Read-only. CPU2 system idle indication
      DEEPSLEEP      : Boolean := False;
      --  low-power Deepsleep Stop mode selection for the D2 domain/syste.
      LPDS_D2        : Boolean := False;
      --  Low-voltage Deepsleep LPLV-Stop mode selection for the D2
      --  domain/system
      LVDS_D2        : Boolean := False;
      --  unspecified
      Reserved_18_31 : Interfaces.Bit_Types.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CPU2CR_Register use record
      PDDS_D2        at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      VBF            at 0 range 4 .. 4;
      STOPF          at 0 range 5 .. 5;
      SBF            at 0 range 6 .. 6;
      SBF_D          at 0 range 7 .. 8;
      CSSF           at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      DEEPSLEEP      at 0 range 15 .. 15;
      LPDS_D2        at 0 range 16 .. 16;
      LVDS_D2        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  PWR CPU3 control register
   type PWR_CPU3CR_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.Bit_Types.UInt4 := 16#0#;
      --  Read-only. Vless thansub>BATless than/sub> exit flag
      VBF            : Boolean := False;
      --  unspecified
      Reserved_5_7   : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. D3 SStandby flag
      SBF_D3         : Boolean := False;
      --  Write-only. Clear CPU3 SBF_D3 and VBF flags (Always read as 0)
      CSSF           : Boolean := False;
      --  unspecified
      Reserved_10_14 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  Read-only. CPU3 system idle indication
      DEEPSLEEP      : Boolean := False;
      --  unspecified
      Reserved_16_31 : Interfaces.Bit_Types.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CPU3CR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      VBF            at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      SBF_D3         at 0 range 8 .. 8;
      CSSF           at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      DEEPSLEEP      at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PWR_D1CR_POPL_D1_Field is Interfaces.Bit_Types.UInt5;

   --  PWR D1 control register
   type PWR_D1CR_Register is record
      --  PWR_CPU_ON pin configuration
      LPCFG_D1       : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  pwr_cpu_on pulse low configuration
      POPL_D1        : PWR_D1CR_POPL_D1_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.Bit_Types.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_D1CR_Register use record
      LPCFG_D1       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      POPL_D1        at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype PWR_D2CR_POPL_D2_Field is Interfaces.Bit_Types.UInt5;
   subtype PWR_D2CR_LPLVDLY_D2_Field is Interfaces.Bit_Types.UInt3;
   subtype PWR_D2CR_PODH_D2_Field is Interfaces.Bit_Types.UInt4;

   --  PWR D2 control register
   type PWR_D2CR_Register is record
      --  PWR_ON pin configuration
      LPCFG_D2       : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  pwr_on pulse low configuration
      POPL_D2        : PWR_D2CR_POPL_D2_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  LPLV delay value
      LPLVDLY_D2     : PWR_D2CR_LPLVDLY_D2_Field := 16#7#;
      --  unspecified
      Reserved_19_23 : Interfaces.Bit_Types.UInt5 := 16#0#;
      --  pwr_on delay high configuration
      PODH_D2        : PWR_D2CR_PODH_D2_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.Bit_Types.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_D2CR_Register use record
      LPCFG_D2       at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      POPL_D2        at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      LPLVDLY_D2     at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      PODH_D2        at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  PWR D3 control register
   type PWR_D3CR_Register is record
      --  D3 domain power-down Deepsleep selection
      PDDS_D3       : Boolean := False;
      --  unspecified
      Reserved_1_30 : Interfaces.Bit_Types.UInt30 := 16#0#;
      --  Read-only. D3 domain supply ready
      D3RDY         : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_D3CR_Register use record
      PDDS_D3       at 0 range 0 .. 0;
      Reserved_1_30 at 0 range 1 .. 30;
      D3RDY         at 0 range 31 .. 31;
   end record;

   subtype PWR_WKUPCR_WKUPPUPD_Field is Interfaces.Bit_Types.UInt2;

   --  PWR_WKUPCR_WKUPENCPU array
   type PWR_WKUPCR_WKUPENCPU_Field_Array is array (1 .. 2) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for PWR_WKUPCR_WKUPENCPU
   type PWR_WKUPCR_WKUPENCPU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPENCPU as a value
            Val : Interfaces.Bit_Types.UInt2;
         when True =>
            --  WKUPENCPU as an array
            Arr : PWR_WKUPCR_WKUPENCPU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PWR_WKUPCR_WKUPENCPU_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PWR wake-up control register 1
   type PWR_WKUPCR_Register is record
      --  Write-only. Clear wake-up flag for WKUPx pin
      WKUPC          : Boolean := False;
      --  unspecified
      Reserved_1_7   : Interfaces.Bit_Types.UInt7 := 16#0#;
      --  Wake-up polarity bit for WKUPx pin
      WKUPP          : Boolean := False;
      --  unspecified
      Reserved_9_11  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Wake-up pull configuration for WKUPx pin
      WKUPPUPD       : PWR_WKUPCR_WKUPPUPD_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Enable WKUPx pin and interrupt for CPU1
      WKUPENCPU      : PWR_WKUPCR_WKUPENCPU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_30 : Interfaces.Bit_Types.UInt13 := 16#0#;
      --  Read-only. Wake-up flag for WKUPx pin before enable
      WKUPF          : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WKUPCR_Register use record
      WKUPC          at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WKUPP          at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      WKUPPUPD       at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      WKUPENCPU      at 0 range 16 .. 17;
      Reserved_18_30 at 0 range 18 .. 30;
      WKUPF          at 0 range 31 .. 31;
   end record;

   --  PWR D3 wake-up enable register
   type PWR_D3WKUPENR_Register is record
      --  Enable D3 domain wake-up on tamper event in Vless thansub>BATless
      --  than/sub> mode
      TAMP_WKUPEN_D3 : Boolean := False;
      --  unspecified
      Reserved_1_31  : Interfaces.Bit_Types.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_D3WKUPENR_Register use record
      TAMP_WKUPEN_D3 at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  PWR_RSECCFGR_RSEC array
   type PWR_RSECCFGR_RSEC_Field_Array is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for PWR_RSECCFGR_RSEC
   type PWR_RSECCFGR_RSEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RSEC as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  RSEC as an array
            Arr : PWR_RSECCFGR_RSEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for PWR_RSECCFGR_RSEC_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  PWR resource secure configuration register
   type PWR_RSECCFGR_Register is record
      --  Secure attribute reference for the local resource number 0
      RSEC          : PWR_RSECCFGR_RSEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_RSECCFGR_Register use record
      RSEC          at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  PWR_RPRIVCFGR_RPRIV array
   type PWR_RPRIVCFGR_RPRIV_Field_Array is array (0 .. 6) of Boolean
     with Component_Size => 1, Size => 7;

   --  Type definition for PWR_RPRIVCFGR_RPRIV
   type PWR_RPRIVCFGR_RPRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RPRIV as a value
            Val : Interfaces.Bit_Types.UInt7;
         when True =>
            --  RPRIV as an array
            Arr : PWR_RPRIVCFGR_RPRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for PWR_RPRIVCFGR_RPRIV_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  PWR resource privileged configuration register
   type PWR_RPRIVCFGR_Register is record
      --  Privileged attribute reference for the local resource number 0
      RPRIV         : PWR_RPRIVCFGR_RPRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_RPRIVCFGR_Register use record
      RPRIV         at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWR_R0CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR resource 0 CID configuration register
   type PWR_R0CIDCFGR_Register is record
      --  Compartment ID filter enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Static compartment identifier
      SCID          : PWR_R0CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_R0CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SCID          at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWR_R1CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR resource 1 CID configuration register
   type PWR_R1CIDCFGR_Register is record
      --  Compartment ID filter enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Static compartment identifier
      SCID          : PWR_R1CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_R1CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SCID          at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWR_R2CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR resource 2 CID configuration register
   type PWR_R2CIDCFGR_Register is record
      --  Compartment ID filter enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Static compartment identifier
      SCID          : PWR_R2CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_R2CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SCID          at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWR_R3CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR resource 3 CID configuration register
   type PWR_R3CIDCFGR_Register is record
      --  Compartment ID filter enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Static compartment identifier
      SCID          : PWR_R3CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_R3CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SCID          at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWR_R4CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR resource 4 CID configuration register
   type PWR_R4CIDCFGR_Register is record
      --  Compartment ID filter enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Static compartment identifier
      SCID          : PWR_R4CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_R4CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SCID          at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWR_R5CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR resource 5 CID configuration register
   type PWR_R5CIDCFGR_Register is record
      --  Compartment ID filter enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Static compartment identifier
      SCID          : PWR_R5CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_R5CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SCID          at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWR_R6CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR resource 6 CID configuration register
   type PWR_R6CIDCFGR_Register is record
      --  Compartment ID filter enable
      CFEN          : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Static compartment identifier
      SCID          : PWR_R6CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_R6CIDCFGR_Register use record
      CFEN          at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SCID          at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  PWR_WIOSECCFGR_WIOSEC array
   type PWR_WIOSECCFGR_WIOSEC_Field_Array is array (1 .. 6) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for PWR_WIOSECCFGR_WIOSEC
   type PWR_WIOSECCFGR_WIOSEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WIOSEC as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  WIOSEC as an array
            Arr : PWR_WIOSECCFGR_WIOSEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for PWR_WIOSECCFGR_WIOSEC_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  PWR WIO secure configuration register
   type PWR_WIOSECCFGR_Register is record
      --  Secure attribute reference for the wake-up I/O 1
      WIOSEC        : PWR_WIOSECCFGR_WIOSEC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIOSECCFGR_Register use record
      WIOSEC        at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  PWR_WIOPRIVCFGR_WIOPRIV array
   type PWR_WIOPRIVCFGR_WIOPRIV_Field_Array is array (1 .. 6) of Boolean
     with Component_Size => 1, Size => 6;

   --  Type definition for PWR_WIOPRIVCFGR_WIOPRIV
   type PWR_WIOPRIVCFGR_WIOPRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WIOPRIV as a value
            Val : Interfaces.Bit_Types.UInt6;
         when True =>
            --  WIOPRIV as an array
            Arr : PWR_WIOPRIVCFGR_WIOPRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for PWR_WIOPRIVCFGR_WIOPRIV_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  PWR WIO privileged configuration register
   type PWR_WIOPRIVCFGR_Register is record
      --  Privileged attribute reference for the wake-up I/O 1
      WIOPRIV       : PWR_WIOPRIVCFGR_WIOPRIV_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIOPRIVCFGR_Register use record
      WIOPRIV       at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype PWR_WIO1CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR_WIO1CIDCFGR_SEMWLC array
   type PWR_WIO1CIDCFGR_SEMWLC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_WIO1CIDCFGR_SEMWLC
   type PWR_WIO1CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  SEMWLC as an array
            Arr : PWR_WIO1CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_WIO1CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR WIO 1 CID configuration register
   type PWR_WIO1CIDCFGR_Register is record
      --  CID filtering enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Static CID
      SCID           : PWR_WIO1CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Semaphore CID 0 enable
      SEMWLC         : PWR_WIO1CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIO1CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWR_WIO1SEMCR_SEMCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR WIO 1 semaphore control register
   type PWR_WIO1SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID
      SEMCID        : PWR_WIO1SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIO1SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWR_WIO2CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR_WIO2CIDCFGR_SEMWLC array
   type PWR_WIO2CIDCFGR_SEMWLC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_WIO2CIDCFGR_SEMWLC
   type PWR_WIO2CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  SEMWLC as an array
            Arr : PWR_WIO2CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_WIO2CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR WIO 2 CID configuration register
   type PWR_WIO2CIDCFGR_Register is record
      --  CID filtering enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Static CID
      SCID           : PWR_WIO2CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Semaphore CID 0 enable
      SEMWLC         : PWR_WIO2CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIO2CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWR_WIO2SEMCR_SEMCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR WIO 2 semaphore control register
   type PWR_WIO2SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID
      SEMCID        : PWR_WIO2SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIO2SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWR_WIO3CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR_WIO3CIDCFGR_SEMWLC array
   type PWR_WIO3CIDCFGR_SEMWLC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_WIO3CIDCFGR_SEMWLC
   type PWR_WIO3CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  SEMWLC as an array
            Arr : PWR_WIO3CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_WIO3CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR WIO 3 CID configuration register
   type PWR_WIO3CIDCFGR_Register is record
      --  CID filtering enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Static CID
      SCID           : PWR_WIO3CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Semaphore CID 0 enable
      SEMWLC         : PWR_WIO3CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIO3CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWR_WIO3SEMCR_SEMCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR WIO 3 semaphore control register
   type PWR_WIO3SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID
      SEMCID        : PWR_WIO3SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIO3SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWR_WIO4CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR_WIO4CIDCFGR_SEMWLC array
   type PWR_WIO4CIDCFGR_SEMWLC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_WIO4CIDCFGR_SEMWLC
   type PWR_WIO4CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  SEMWLC as an array
            Arr : PWR_WIO4CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_WIO4CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR WIO 4 CID configuration register
   type PWR_WIO4CIDCFGR_Register is record
      --  CID filtering enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Static CID
      SCID           : PWR_WIO4CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Semaphore CID 0 enable
      SEMWLC         : PWR_WIO4CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIO4CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWR_WIO4SEMCR_SEMCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR WIO 4 semaphore control register
   type PWR_WIO4SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID
      SEMCID        : PWR_WIO4SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIO4SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWR_WIO5CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR_WIO5CIDCFGR_SEMWLC array
   type PWR_WIO5CIDCFGR_SEMWLC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_WIO5CIDCFGR_SEMWLC
   type PWR_WIO5CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  SEMWLC as an array
            Arr : PWR_WIO5CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_WIO5CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR WIO 5 CID configuration register
   type PWR_WIO5CIDCFGR_Register is record
      --  CID filtering enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Static CID
      SCID           : PWR_WIO5CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Semaphore CID 0 enable
      SEMWLC         : PWR_WIO5CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIO5CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWR_WIO5SEMCR_SEMCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR WIO 5 semaphore control register
   type PWR_WIO5SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID
      SEMCID        : PWR_WIO5SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIO5SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWR_WIO6CIDCFGR_SCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR_WIO6CIDCFGR_SEMWLC array
   type PWR_WIO6CIDCFGR_SEMWLC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_WIO6CIDCFGR_SEMWLC
   type PWR_WIO6CIDCFGR_SEMWLC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEMWLC as a value
            Val : Interfaces.Bit_Types.Byte;
         when True =>
            --  SEMWLC as an array
            Arr : PWR_WIO6CIDCFGR_SEMWLC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_WIO6CIDCFGR_SEMWLC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR WIO 6 CID configuration register
   type PWR_WIO6CIDCFGR_Register is record
      --  CID filtering enable
      CFEN           : Boolean := False;
      --  Semaphore enable
      SEM_EN         : Boolean := False;
      --  unspecified
      Reserved_2_3   : Interfaces.Bit_Types.UInt2 := 16#0#;
      --  Static CID
      SCID           : PWR_WIO6CIDCFGR_SCID_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.Bit_Types.UInt9 := 16#0#;
      --  Semaphore CID 0 enable
      SEMWLC         : PWR_WIO6CIDCFGR_SEMWLC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.Bit_Types.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIO6CIDCFGR_Register use record
      CFEN           at 0 range 0 .. 0;
      SEM_EN         at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      SCID           at 0 range 4 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      SEMWLC         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PWR_WIO6SEMCR_SEMCID_Field is Interfaces.Bit_Types.UInt3;

   --  PWR WIO 6 semaphore control register
   type PWR_WIO6SEMCR_Register is record
      --  Semaphore mutex
      SEM_MUTEX     : Boolean := False;
      --  unspecified
      Reserved_1_3  : Interfaces.Bit_Types.UInt3 := 16#0#;
      --  Read-only. Semaphore current CID
      SEMCID        : PWR_WIO6SEMCR_SEMCID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.Bit_Types.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WIO6SEMCR_Register use record
      SEM_MUTEX     at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      SEMCID        at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype PWR_CPU1D1SR_CSTATE_Field is Interfaces.Bit_Types.UInt2;
   subtype PWR_CPU1D1SR_DSTATE_Field is Interfaces.Bit_Types.UInt3;

   --  PWR CPU1 status register
   type PWR_CPU1D1SR_Register is record
      --  Read-only. CPU1 HOLD_BOOT status flag.
      HOLD_BOOT      : Boolean;
      --  unspecified
      Reserved_1_1   : Interfaces.Bit_Types.Bit;
      --  Read-only. CPU1 cluster state status
      CSTATE         : PWR_CPU1D1SR_CSTATE_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4;
      --  Read-only. D1 domain state status
      DSTATE         : PWR_CPU1D1SR_DSTATE_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CPU1D1SR_Register use record
      HOLD_BOOT      at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      CSTATE         at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DSTATE         at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype PWR_CPU2D2SR_CSTATE_Field is Interfaces.Bit_Types.UInt2;
   subtype PWR_CPU2D2SR_DSTATE_Field is Interfaces.Bit_Types.UInt3;

   --  PWR CPU2 status register
   type PWR_CPU2D2SR_Register is record
      --  Read-only. CPU2 HOLD_BOOT status flag
      HOLD_BOOT      : Boolean;
      --  Read-only. CPU2 wait-for-boot enable status flag
      WFBEN          : Boolean;
      --  Read-only. CPU2 cluster state status flag
      CSTATE         : PWR_CPU2D2SR_CSTATE_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4;
      --  Read-only. System/D2 state status
      DSTATE         : PWR_CPU2D2SR_DSTATE_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CPU2D2SR_Register use record
      HOLD_BOOT      at 0 range 0 .. 0;
      WFBEN          at 0 range 1 .. 1;
      CSTATE         at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DSTATE         at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype PWR_CPU3D3SR_CSTATE_Field is Interfaces.Bit_Types.UInt2;
   subtype PWR_CPU3D3SR_DSTATE_Field is Interfaces.Bit_Types.UInt3;

   --  PWR CPU3 status register
   type PWR_CPU3D3SR_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.Bit_Types.UInt2;
      --  Read-only. CPU3 cluster state status flag
      CSTATE         : PWR_CPU3D3SR_CSTATE_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.Bit_Types.UInt4;
      --  Read-only. D3 state status.
      DSTATE         : PWR_CPU3D3SR_DSTATE_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.Bit_Types.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CPU3D3SR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      CSTATE         at 0 range 2 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DSTATE         at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype PWR_VERR_MINREV_Field is Interfaces.Bit_Types.UInt4;
   subtype PWR_VERR_MAJREV_Field is Interfaces.Bit_Types.UInt4;

   --  PWR VER register
   type PWR_VERR_Register is record
      --  Read-only. Minor revision number
      MINREV        : PWR_VERR_MINREV_Field;
      --  Read-only. Major revision number
      MAJREV        : PWR_VERR_MAJREV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_VERR_Register use record
      MINREV        at 0 range 0 .. 3;
      MAJREV        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PWR register block
   type PWR_Peripheral is record
      --  PWR control register 1
      PWR_CR1         : aliased PWR_CR1_Register;
      --  PWR control register 2
      PWR_CR2         : aliased PWR_CR2_Register;
      --  PWR control register 3
      PWR_CR3         : aliased PWR_CR3_Register;
      --  PWR control register 5
      PWR_CR5         : aliased PWR_CR5_Register;
      --  PWR control register 6
      PWR_CR6         : aliased PWR_CR6_Register;
      --  PWR control register 7
      PWR_CR7         : aliased PWR_CR7_Register;
      --  PWR control register 8
      PWR_CR8         : aliased PWR_CR8_Register;
      --  PWR control register 9
      PWR_CR9         : aliased PWR_CR9_Register;
      --  PWR control register 10
      PWR_CR10        : aliased PWR_CR10_Register;
      --  PWR control register 11
      PWR_CR11        : aliased PWR_CR11_Register;
      --  PWR control register 12
      PWR_CR12        : aliased PWR_CR12_Register;
      --  PWR backup domain control register 1
      PWR_BDCR1       : aliased PWR_BDCR1_Register;
      --  PWR backup domain control register 2
      PWR_BDCR2       : aliased PWR_BDCR2_Register;
      --  PWR CPU1 control register
      PWR_CPU1CR      : aliased PWR_CPU1CR_Register;
      --  PWR CPU2 control register
      PWR_CPU2CR      : aliased PWR_CPU2CR_Register;
      --  PWR CPU3 control register
      PWR_CPU3CR      : aliased PWR_CPU3CR_Register;
      --  PWR D1 control register
      PWR_D1CR        : aliased PWR_D1CR_Register;
      --  PWR D2 control register
      PWR_D2CR        : aliased PWR_D2CR_Register;
      --  PWR D3 control register
      PWR_D3CR        : aliased PWR_D3CR_Register;
      --  PWR wake-up control register 1
      PWR_WKUPCR1     : aliased PWR_WKUPCR_Register;
      --  PWR wake-up control register 2
      PWR_WKUPCR2     : aliased PWR_WKUPCR_Register;
      --  PWR wake-up control register 3
      PWR_WKUPCR3     : aliased PWR_WKUPCR_Register;
      --  PWR wake-up control register 4
      PWR_WKUPCR4     : aliased PWR_WKUPCR_Register;
      --  PWR wake-up control register 5
      PWR_WKUPCR5     : aliased PWR_WKUPCR_Register;
      --  PWR wake-up control register 6
      PWR_WKUPCR6     : aliased PWR_WKUPCR_Register;
      --  PWR D3 wake-up enable register
      PWR_D3WKUPENR   : aliased PWR_D3WKUPENR_Register;
      --  PWR resource secure configuration register
      PWR_RSECCFGR    : aliased PWR_RSECCFGR_Register;
      --  PWR resource privileged configuration register
      PWR_RPRIVCFGR   : aliased PWR_RPRIVCFGR_Register;
      --  PWR resource 0 CID configuration register
      PWR_R0CIDCFGR   : aliased PWR_R0CIDCFGR_Register;
      --  PWR resource 1 CID configuration register
      PWR_R1CIDCFGR   : aliased PWR_R1CIDCFGR_Register;
      --  PWR resource 2 CID configuration register
      PWR_R2CIDCFGR   : aliased PWR_R2CIDCFGR_Register;
      --  PWR resource 3 CID configuration register
      PWR_R3CIDCFGR   : aliased PWR_R3CIDCFGR_Register;
      --  PWR resource 4 CID configuration register
      PWR_R4CIDCFGR   : aliased PWR_R4CIDCFGR_Register;
      --  PWR resource 5 CID configuration register
      PWR_R5CIDCFGR   : aliased PWR_R5CIDCFGR_Register;
      --  PWR resource 6 CID configuration register
      PWR_R6CIDCFGR   : aliased PWR_R6CIDCFGR_Register;
      --  PWR WIO secure configuration register
      PWR_WIOSECCFGR  : aliased PWR_WIOSECCFGR_Register;
      --  PWR WIO privileged configuration register
      PWR_WIOPRIVCFGR : aliased PWR_WIOPRIVCFGR_Register;
      --  PWR WIO 1 CID configuration register
      PWR_WIO1CIDCFGR : aliased PWR_WIO1CIDCFGR_Register;
      --  PWR WIO 1 semaphore control register
      PWR_WIO1SEMCR   : aliased PWR_WIO1SEMCR_Register;
      --  PWR WIO 2 CID configuration register
      PWR_WIO2CIDCFGR : aliased PWR_WIO2CIDCFGR_Register;
      --  PWR WIO 2 semaphore control register
      PWR_WIO2SEMCR   : aliased PWR_WIO2SEMCR_Register;
      --  PWR WIO 3 CID configuration register
      PWR_WIO3CIDCFGR : aliased PWR_WIO3CIDCFGR_Register;
      --  PWR WIO 3 semaphore control register
      PWR_WIO3SEMCR   : aliased PWR_WIO3SEMCR_Register;
      --  PWR WIO 4 CID configuration register
      PWR_WIO4CIDCFGR : aliased PWR_WIO4CIDCFGR_Register;
      --  PWR WIO 4 semaphore control register
      PWR_WIO4SEMCR   : aliased PWR_WIO4SEMCR_Register;
      --  PWR WIO 5 CID configuration register
      PWR_WIO5CIDCFGR : aliased PWR_WIO5CIDCFGR_Register;
      --  PWR WIO 5 semaphore control register
      PWR_WIO5SEMCR   : aliased PWR_WIO5SEMCR_Register;
      --  PWR WIO 6 CID configuration register
      PWR_WIO6CIDCFGR : aliased PWR_WIO6CIDCFGR_Register;
      --  PWR WIO 6 semaphore control register
      PWR_WIO6SEMCR   : aliased PWR_WIO6SEMCR_Register;
      --  PWR CPU1 status register
      PWR_CPU1D1SR    : aliased PWR_CPU1D1SR_Register;
      --  PWR CPU2 status register
      PWR_CPU2D2SR    : aliased PWR_CPU2D2SR_Register;
      --  PWR CPU3 status register
      PWR_CPU3D3SR    : aliased PWR_CPU3D3SR_Register;
      --  PWR VER register
      PWR_VERR        : aliased PWR_VERR_Register;
      --  PWR identifier register
      PWR_IPIDR       : aliased Interfaces.Bit_Types.UInt32;
      --  PWR size identification register
      PWR_SIDR        : aliased Interfaces.Bit_Types.UInt32;
   end record
     with Volatile;

   for PWR_Peripheral use record
      PWR_CR1         at 16#0# range 0 .. 31;
      PWR_CR2         at 16#4# range 0 .. 31;
      PWR_CR3         at 16#8# range 0 .. 31;
      PWR_CR5         at 16#10# range 0 .. 31;
      PWR_CR6         at 16#14# range 0 .. 31;
      PWR_CR7         at 16#18# range 0 .. 31;
      PWR_CR8         at 16#1C# range 0 .. 31;
      PWR_CR9         at 16#20# range 0 .. 31;
      PWR_CR10        at 16#24# range 0 .. 31;
      PWR_CR11        at 16#28# range 0 .. 31;
      PWR_CR12        at 16#2C# range 0 .. 31;
      PWR_BDCR1       at 16#38# range 0 .. 31;
      PWR_BDCR2       at 16#3C# range 0 .. 31;
      PWR_CPU1CR      at 16#40# range 0 .. 31;
      PWR_CPU2CR      at 16#44# range 0 .. 31;
      PWR_CPU3CR      at 16#48# range 0 .. 31;
      PWR_D1CR        at 16#4C# range 0 .. 31;
      PWR_D2CR        at 16#50# range 0 .. 31;
      PWR_D3CR        at 16#54# range 0 .. 31;
      PWR_WKUPCR1     at 16#60# range 0 .. 31;
      PWR_WKUPCR2     at 16#64# range 0 .. 31;
      PWR_WKUPCR3     at 16#68# range 0 .. 31;
      PWR_WKUPCR4     at 16#6C# range 0 .. 31;
      PWR_WKUPCR5     at 16#70# range 0 .. 31;
      PWR_WKUPCR6     at 16#74# range 0 .. 31;
      PWR_D3WKUPENR   at 16#98# range 0 .. 31;
      PWR_RSECCFGR    at 16#100# range 0 .. 31;
      PWR_RPRIVCFGR   at 16#104# range 0 .. 31;
      PWR_R0CIDCFGR   at 16#108# range 0 .. 31;
      PWR_R1CIDCFGR   at 16#10C# range 0 .. 31;
      PWR_R2CIDCFGR   at 16#110# range 0 .. 31;
      PWR_R3CIDCFGR   at 16#114# range 0 .. 31;
      PWR_R4CIDCFGR   at 16#118# range 0 .. 31;
      PWR_R5CIDCFGR   at 16#11C# range 0 .. 31;
      PWR_R6CIDCFGR   at 16#120# range 0 .. 31;
      PWR_WIOSECCFGR  at 16#180# range 0 .. 31;
      PWR_WIOPRIVCFGR at 16#184# range 0 .. 31;
      PWR_WIO1CIDCFGR at 16#188# range 0 .. 31;
      PWR_WIO1SEMCR   at 16#18C# range 0 .. 31;
      PWR_WIO2CIDCFGR at 16#190# range 0 .. 31;
      PWR_WIO2SEMCR   at 16#194# range 0 .. 31;
      PWR_WIO3CIDCFGR at 16#198# range 0 .. 31;
      PWR_WIO3SEMCR   at 16#19C# range 0 .. 31;
      PWR_WIO4CIDCFGR at 16#1A0# range 0 .. 31;
      PWR_WIO4SEMCR   at 16#1A4# range 0 .. 31;
      PWR_WIO5CIDCFGR at 16#1A8# range 0 .. 31;
      PWR_WIO5SEMCR   at 16#1AC# range 0 .. 31;
      PWR_WIO6CIDCFGR at 16#1B0# range 0 .. 31;
      PWR_WIO6SEMCR   at 16#1B4# range 0 .. 31;
      PWR_CPU1D1SR    at 16#200# range 0 .. 31;
      PWR_CPU2D2SR    at 16#204# range 0 .. 31;
      PWR_CPU3D3SR    at 16#208# range 0 .. 31;
      PWR_VERR        at 16#3F4# range 0 .. 31;
      PWR_IPIDR       at 16#3F8# range 0 .. 31;
      PWR_SIDR        at 16#3FC# range 0 .. 31;
   end record;

   --  PWR register block
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_Base;

   --  PWR register block
   PWR_S_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_S_Base;

end Interfaces.STM32.PWR;
