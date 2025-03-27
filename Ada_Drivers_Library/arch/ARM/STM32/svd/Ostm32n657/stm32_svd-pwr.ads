--  This spec has been automatically generated from STM32N657.svd

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

   subtype PWR_CR1_POPL_Field is HAL.UInt5;

   --  PWR control register 1
   type PWR_CR1_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Read-Write-once. SMPS step-down converter enable
      SDEN           : Boolean := True;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Enables the pull down on output voltage during power-down mode
      MODE_PDN       : Boolean := False;
      --  SMPS low-power mode enable (SVOS high only)
      LPDS08V        : Boolean := True;
      --  unspecified
      Reserved_6_15  : HAL.UInt10 := 16#0#;
      --  pwr_on pulse low configuration.
      POPL           : PWR_CR1_POPL_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : HAL.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR1_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      SDEN           at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      MODE_PDN       at 0 range 4 .. 4;
      LPDS08V        at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      POPL           at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  PWR control register 2
   type PWR_CR2_Register is record
      --  Programmable voltage detector enable
      PVDEN         : Boolean := False;
      --  unspecified
      Reserved_1_7  : HAL.UInt7 := 16#0#;
      --  Read-only. Programmable voltage detect output
      PVDO          : Boolean := False;
      --  unspecified
      Reserved_9_31 : HAL.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR2_Register use record
      PVDEN         at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      PVDO          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  PWR control register 3
   type PWR_CR3_Register is record
      --  Vless thansub>DDCOREless than/sub> monitoring enable
      VCOREMONEN     : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Vless thansub>DDCOREless than/sub> voltage detector low-level
      --  selection
      VCORELLS       : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Read-only. Monitored Vless thansub>DDCOREless than/sub> level above
      --  low threshold
      VCOREL         : Boolean := False;
      --  Read-only. Monitored Vless thansub>DDCOREless than/sub> level above
      --  high threshold
      VCOREH         : Boolean := False;
      --  unspecified
      Reserved_10_31 : HAL.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR3_Register use record
      VCOREMONEN     at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      VCORELLS       at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      VCOREL         at 0 range 8 .. 8;
      VCOREH         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  PWR control register 4
   type PWR_CR4_Register is record
      --  I-TCM and D-TCM RAMs backup supply enable (used to maintain TCM RAMs
      --  content in Standby mode)
      TCMRBSEN      : Boolean := False;
      --  unspecified
      Reserved_1_3  : HAL.UInt3 := 16#0#;
      --  I-TCM FLEXMEM backup supply enable (used to maintain I-TCM FLEX MEM
      --  content in Standby mode)
      TCMFLXRBSEN   : Boolean := False;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CR4_Register use record
      TCMRBSEN      at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      TCMFLXRBSEN   at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  PWR voltage scaling control register
   type PWR_VOSCR_Register is record
      --  Voltage scaling selection according to performance
      VOS            : Boolean := False;
      --  Read-only. VOS ready bit for Vless thansub>COREless than/sub> voltage
      --  scaling output selection
      VOSRDY         : Boolean := True;
      --  unspecified
      Reserved_2_15  : HAL.UInt14 := 16#0#;
      --  Read-only. VOS currently applied for Vless thansub>COREless than/sub>
      --  voltage scaling selection
      ACTVOS         : Boolean := False;
      --  Read-only. Voltage level ready bit for currently used ACTVOS
      ACTVOSRDY      : Boolean := True;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_VOSCR_Register use record
      VOS            at 0 range 0 .. 0;
      VOSRDY         at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      ACTVOS         at 0 range 16 .. 16;
      ACTVOSRDY      at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  PWR backup domain control register 1
   type PWR_BDCR1_Register is record
      --  Vless thansub>BATless than/sub> and temperature monitoring enable
      MONEN          : Boolean := False;
      --  unspecified
      Reserved_1_15  : HAL.UInt15 := 16#0#;
      --  Read-only. Vless thansub>BATless than/sub> level monitoring versus
      --  low threshold
      VBATL          : Boolean := False;
      --  Read-only. Vless thansub>BATless than/sub> level monitoring versus
      --  high threshold
      VBATH          : Boolean := False;
      --  Read-only. Temperature level monitoring versus low threshold
      TEMPL          : Boolean := False;
      --  Read-only. Temperature level monitoring versus high threshold
      TEMPH          : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_BDCR1_Register use record
      MONEN          at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      VBATL          at 0 range 16 .. 16;
      VBATH          at 0 range 17 .. 17;
      TEMPL          at 0 range 18 .. 18;
      TEMPH          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWR backup domain control register 2
   type PWR_BDCR2_Register is record
      --  Backup RAM backup supply enable (used to maintain BKPRAM content in
      --  Standby and Vless thansub>BATless than/sub> modes).
      BKPRBSEN      : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_BDCR2_Register use record
      BKPRBSEN      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PWR disable backup protection control register
   type PWR_DBPCR_Register is record
      --  Disable backup domain write protection
      DBP           : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_DBPCR_Register use record
      DBP           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PWR CPU control register
   type PWR_CPUCR_Register is record
      --  Power-down deepsleep selection
      PDDS           : Boolean := False;
      --  Clear Standby and Stop flags (always read as 0)
      CSSF           : Boolean := False;
      --  unspecified
      Reserved_2_7   : HAL.UInt6 := 16#0#;
      --  Read-only. Stop flag
      STOPF          : Boolean := False;
      --  Read-only. Standby flag
      SBF            : Boolean := False;
      --  unspecified
      Reserved_10_15 : HAL.UInt6 := 16#0#;
      --  System Stop mode voltage scaling selection
      SVOS           : Boolean := True;
      --  unspecified
      Reserved_17_31 : HAL.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_CPUCR_Register use record
      PDDS           at 0 range 0 .. 0;
      CSSF           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      STOPF          at 0 range 8 .. 8;
      SBF            at 0 range 9 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      SVOS           at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  PWR supply voltage monitoring control register 1
   type PWR_SVMCR1_Register is record
      --  Vless thansub>DDIO4 less than/sub>independent I/O voltage monitor
      --  enable
      VDDIO4VMEN     : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Vless thansub>DDIO4 less than/sub>independent I/O supply valid.
      VDDIO4SV       : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Read-only. Vless thansub>DDIO4 less than/sub>ready
      VDDIO4RDY      : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Vless thansub>DDIO4less than/sub> I/O voltage range selection
      VDDIO4VRSEL    : Boolean := False;
      --  Vless thansub>DDIO4less than/sub> I/O voltage range Standby mode
      VDDIO4VRSTBY   : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SVMCR1_Register use record
      VDDIO4VMEN     at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      VDDIO4SV       at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      VDDIO4RDY      at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      VDDIO4VRSEL    at 0 range 24 .. 24;
      VDDIO4VRSTBY   at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  PWR supply voltage monitoring control register 2
   type PWR_SVMCR2_Register is record
      --  Vless thansub>DDIO5 less than/sub>independent voltage monitor enable
      VDDIO5VMEN     : Boolean := False;
      --  unspecified
      Reserved_1_7   : HAL.UInt7 := 16#0#;
      --  Vless thansub>DDIO5 less than/sub>independent supply valid
      VDDIO5SV       : Boolean := False;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Read-only. Vless thansub>DDIO5 less than/sub>ready
      VDDIO5RDY      : Boolean := False;
      --  unspecified
      Reserved_17_23 : HAL.UInt7 := 16#0#;
      --  Vless thansub>DDIO5less than/sub> I/O voltage range selection
      VDDIO5VRSEL    : Boolean := False;
      --  Vless thansub>DDIO5less than/sub> I/O voltage range Standby mode
      VDDIO5VRSTBY   : Boolean := False;
      --  unspecified
      Reserved_26_31 : HAL.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SVMCR2_Register use record
      VDDIO5VMEN     at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      VDDIO5SV       at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      VDDIO5RDY      at 0 range 16 .. 16;
      Reserved_17_23 at 0 range 17 .. 23;
      VDDIO5VRSEL    at 0 range 24 .. 24;
      VDDIO5VRSTBY   at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  PWR supply voltage monitoring control register 3
   type PWR_SVMCR3_Register is record
      --  Vless thansub>DDIO2 less than/sub>independent voltage monitor enable
      VDDIO2VMEN     : Boolean := False;
      --  Vless thansub>DDIO3 less than/sub>independent voltage monitor enable
      VDDIO3VMEN     : Boolean := False;
      --  Vless thansub>DD33USB less than/sub>independent USB 33 voltage
      --  monitor enable.
      USB33VMEN      : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Vless thansub>DDA18ADC less than/sub>independent ADC voltage monitor
      --  enable
      AVMEN          : Boolean := False;
      --  unspecified
      Reserved_5_7   : HAL.UInt3 := 16#0#;
      --  Vless thansub>DDIO2 less than/sub>independent supply valid.
      VDDIO2SV       : Boolean := False;
      --  Vless thansub>DDIO3 less than/sub>independent supply valid
      VDDIO3SV       : Boolean := False;
      --  Vless thansub>DD33USB less than/sub>independent supply valid
      USB33SV        : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  Vless thansub>DDA18ADC less than/sub>independent supply valid
      ASV            : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  Read-only. Vless thansub>DDIO2 less than/sub>ready
      VDDIO2RDY      : Boolean := False;
      --  Read-only. Vless thansub>DDIO3 less than/sub>ready
      VDDIO3RDY      : Boolean := False;
      --  Read-only. Vless thansub>DD33USB less than/sub>ready
      USB33RDY       : Boolean := False;
      --  unspecified
      Reserved_19_19 : HAL.Bit := 16#0#;
      --  Read-only. Vless thansub>DDA18ADC less than/sub>ready
      ARDY           : Boolean := False;
      --  unspecified
      Reserved_21_23 : HAL.UInt3 := 16#0#;
      --  Vless thansub>DDless than/sub> I/O voltage range selection
      VDDIOVRSEL     : Boolean := False;
      --  Vless thansub>DDIO2less than/sub> I/O voltage range selection
      VDDIO2VRSEL    : Boolean := False;
      --  Vless thansub>DDIO3less than/sub> I/O voltage range selection
      VDDIO3VRSEL    : Boolean := False;
      --  unspecified
      Reserved_27_31 : HAL.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SVMCR3_Register use record
      VDDIO2VMEN     at 0 range 0 .. 0;
      VDDIO3VMEN     at 0 range 1 .. 1;
      USB33VMEN      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      AVMEN          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      VDDIO2SV       at 0 range 8 .. 8;
      VDDIO3SV       at 0 range 9 .. 9;
      USB33SV        at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      ASV            at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      VDDIO2RDY      at 0 range 16 .. 16;
      VDDIO3RDY      at 0 range 17 .. 17;
      USB33RDY       at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ARDY           at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      VDDIOVRSEL     at 0 range 24 .. 24;
      VDDIO2VRSEL    at 0 range 25 .. 25;
      VDDIO3VRSEL    at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  PWR_WKUPCR_WKUPC array
   type PWR_WKUPCR_WKUPC_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_WKUPCR_WKUPC
   type PWR_WKUPCR_WKUPC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPC as a value
            Val : HAL.UInt4;
         when True =>
            --  WKUPC as an array
            Arr : PWR_WKUPCR_WKUPC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_WKUPCR_WKUPC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR wake-up clear register
   type PWR_WKUPCR_Register is record
      --  Write-only. Clear wake-up flag for WKUP1 pin
      WKUPC         : PWR_WKUPCR_WKUPC_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WKUPCR_Register use record
      WKUPC         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWR_WKUPSR_WKUPF array
   type PWR_WKUPSR_WKUPF_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_WKUPSR_WKUPF
   type PWR_WKUPSR_WKUPF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPF as a value
            Val : HAL.UInt4;
         when True =>
            --  WKUPF as an array
            Arr : PWR_WKUPSR_WKUPF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_WKUPSR_WKUPF_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR wake-up status register
   type PWR_WKUPSR_Register is record
      --  Read-only. Wake-up flag for WKUP1 pin before enable
      WKUPF         : PWR_WKUPSR_WKUPF_Field;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WKUPSR_Register use record
      WKUPF         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PWR_WKUPEPR_WKUPEN array
   type PWR_WKUPEPR_WKUPEN_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_WKUPEPR_WKUPEN
   type PWR_WKUPEPR_WKUPEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPEN as a value
            Val : HAL.UInt4;
         when True =>
            --  WKUPEN as an array
            Arr : PWR_WKUPEPR_WKUPEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_WKUPEPR_WKUPEN_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR_WKUPEPR_WKUPP array
   type PWR_WKUPEPR_WKUPP_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_WKUPEPR_WKUPP
   type PWR_WKUPEPR_WKUPP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPP as a value
            Val : HAL.UInt4;
         when True =>
            --  WKUPP as an array
            Arr : PWR_WKUPEPR_WKUPP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_WKUPEPR_WKUPP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR_WKUPEPR_WKUPPUPD array element
   subtype PWR_WKUPEPR_WKUPPUPD_Element is HAL.UInt2;

   --  PWR_WKUPEPR_WKUPPUPD array
   type PWR_WKUPEPR_WKUPPUPD_Field_Array is array (1 .. 4)
     of PWR_WKUPEPR_WKUPPUPD_Element
     with Component_Size => 2, Size => 8;

   --  Type definition for PWR_WKUPEPR_WKUPPUPD
   type PWR_WKUPEPR_WKUPPUPD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPPUPD as a value
            Val : HAL.UInt8;
         when True =>
            --  WKUPPUPD as an array
            Arr : PWR_WKUPEPR_WKUPPUPD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_WKUPEPR_WKUPPUPD_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR wake-up enable and polarity register
   type PWR_WKUPEPR_Register is record
      --  Enable WKUP1 pin
      WKUPEN         : PWR_WKUPEPR_WKUPEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_7   : HAL.UInt4 := 16#0#;
      --  Wake-up polarity bit for WKUP1 pin
      WKUPP          : PWR_WKUPEPR_WKUPP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_15 : HAL.UInt4 := 16#0#;
      --  Wake-up pull configuration for WKUP1 pin
      WKUPPUPD       : PWR_WKUPEPR_WKUPPUPD_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_WKUPEPR_Register use record
      WKUPEN         at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      WKUPP          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      WKUPPUPD       at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PWR_SECCFGR_SEC array
   type PWR_SECCFGR_SEC_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_SECCFGR_SEC
   type PWR_SECCFGR_SEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEC as a value
            Val : HAL.UInt8;
         when True =>
            --  SEC as an array
            Arr : PWR_SECCFGR_SEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_SECCFGR_SEC_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR_SECCFGR_WKUPSEC array
   type PWR_SECCFGR_WKUPSEC_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_SECCFGR_WKUPSEC
   type PWR_SECCFGR_WKUPSEC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPSEC as a value
            Val : HAL.UInt4;
         when True =>
            --  WKUPSEC as an array
            Arr : PWR_SECCFGR_WKUPSEC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_SECCFGR_WKUPSEC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR security configuration register
   type PWR_SECCFGR_Register is record
      --  System supply configuration secure protection
      SEC            : PWR_SECCFGR_SEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  WKUP1 pin secure protection
      WKUPSEC        : PWR_SECCFGR_WKUPSEC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_SECCFGR_Register use record
      SEC            at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WKUPSEC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  PWR_PRIVCFGR_PRIV array
   type PWR_PRIVCFGR_PRIV_Field_Array is array (0 .. 7) of Boolean
     with Component_Size => 1, Size => 8;

   --  Type definition for PWR_PRIVCFGR_PRIV
   type PWR_PRIVCFGR_PRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PRIV as a value
            Val : HAL.UInt8;
         when True =>
            --  PRIV as an array
            Arr : PWR_PRIVCFGR_PRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PWR_PRIVCFGR_PRIV_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  PWR_PRIVCFGR_WKUPPRIV array
   type PWR_PRIVCFGR_WKUPPRIV_Field_Array is array (1 .. 4) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for PWR_PRIVCFGR_WKUPPRIV
   type PWR_PRIVCFGR_WKUPPRIV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WKUPPRIV as a value
            Val : HAL.UInt4;
         when True =>
            --  WKUPPRIV as an array
            Arr : PWR_PRIVCFGR_WKUPPRIV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PWR_PRIVCFGR_WKUPPRIV_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PWR privilege configuration register
   type PWR_PRIVCFGR_Register is record
      --  System supply configuration privileged protection
      PRIV           : PWR_PRIVCFGR_PRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_15  : HAL.UInt8 := 16#0#;
      --  WKUP1 pin privileged protection
      WKUPPRIV       : PWR_PRIVCFGR_WKUPPRIV_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWR_PRIVCFGR_Register use record
      PRIV           at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      WKUPPRIV       at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type PWR_Peripheral is record
      --  PWR control register 1
      PWR_CR1      : aliased PWR_CR1_Register;
      --  PWR control register 2
      PWR_CR2      : aliased PWR_CR2_Register;
      --  PWR control register 3
      PWR_CR3      : aliased PWR_CR3_Register;
      --  PWR control register 4
      PWR_CR4      : aliased PWR_CR4_Register;
      --  PWR voltage scaling control register
      PWR_VOSCR    : aliased PWR_VOSCR_Register;
      --  PWR backup domain control register 1
      PWR_BDCR1    : aliased PWR_BDCR1_Register;
      --  PWR backup domain control register 2
      PWR_BDCR2    : aliased PWR_BDCR2_Register;
      --  PWR disable backup protection control register
      PWR_DBPCR    : aliased PWR_DBPCR_Register;
      --  PWR CPU control register
      PWR_CPUCR    : aliased PWR_CPUCR_Register;
      --  PWR supply voltage monitoring control register 1
      PWR_SVMCR1   : aliased PWR_SVMCR1_Register;
      --  PWR supply voltage monitoring control register 2
      PWR_SVMCR2   : aliased PWR_SVMCR2_Register;
      --  PWR supply voltage monitoring control register 3
      PWR_SVMCR3   : aliased PWR_SVMCR3_Register;
      --  PWR wake-up clear register
      PWR_WKUPCR   : aliased PWR_WKUPCR_Register;
      --  PWR wake-up status register
      PWR_WKUPSR   : aliased PWR_WKUPSR_Register;
      --  PWR wake-up enable and polarity register
      PWR_WKUPEPR  : aliased PWR_WKUPEPR_Register;
      --  PWR security configuration register
      PWR_SECCFGR  : aliased PWR_SECCFGR_Register;
      --  PWR privilege configuration register
      PWR_PRIVCFGR : aliased PWR_PRIVCFGR_Register;
   end record
     with Volatile;

   for PWR_Peripheral use record
      PWR_CR1      at 16#0# range 0 .. 31;
      PWR_CR2      at 16#4# range 0 .. 31;
      PWR_CR3      at 16#8# range 0 .. 31;
      PWR_CR4      at 16#C# range 0 .. 31;
      PWR_VOSCR    at 16#20# range 0 .. 31;
      PWR_BDCR1    at 16#24# range 0 .. 31;
      PWR_BDCR2    at 16#28# range 0 .. 31;
      PWR_DBPCR    at 16#2C# range 0 .. 31;
      PWR_CPUCR    at 16#30# range 0 .. 31;
      PWR_SVMCR1   at 16#34# range 0 .. 31;
      PWR_SVMCR2   at 16#38# range 0 .. 31;
      PWR_SVMCR3   at 16#3C# range 0 .. 31;
      PWR_WKUPCR   at 16#50# range 0 .. 31;
      PWR_WKUPSR   at 16#54# range 0 .. 31;
      PWR_WKUPEPR  at 16#58# range 0 .. 31;
      PWR_SECCFGR  at 16#70# range 0 .. 31;
      PWR_PRIVCFGR at 16#74# range 0 .. 31;
   end record;

   --  Power control
   PWR_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_Base;

   --  Power control
   PWR_S_Periph : aliased PWR_Peripheral
     with Import, Address => PWR_S_Base;

end STM32_SVD.PWR;
