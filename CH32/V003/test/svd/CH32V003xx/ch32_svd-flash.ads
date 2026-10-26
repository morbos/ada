--  This spec has been automatically generated from CH32V003xx.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with HAL;
with System;

package CH32_SVD.FLASH is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Flash key register
   type ACTLR_Register is record
      --  Number of FLASH wait states
      LATENCY       : Boolean := False;
      --  unspecified
      Reserved_1_31 : HAL.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ACTLR_Register use record
      LATENCY       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Status register
   type STATR_Register is record
      --  Read-only. Busy
      BSY            : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Write protection error
      WRPRTERR       : Boolean := False;
      --  End of operation
      EOP            : Boolean := False;
      --  unspecified
      Reserved_6_13  : HAL.UInt8 := 16#0#;
      --  BOOT mode
      BOOT_MODE      : Boolean := False;
      --  BOOT lock
      BOOT_LOCK      : Boolean := True;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATR_Register use record
      BSY            at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      WRPRTERR       at 0 range 4 .. 4;
      EOP            at 0 range 5 .. 5;
      Reserved_6_13  at 0 range 6 .. 13;
      BOOT_MODE      at 0 range 14 .. 14;
      BOOT_LOCK      at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Control register
   type CTLR_Register is record
      --  Programming
      PG             : Boolean := False;
      --  Page Erase
      PER            : Boolean := False;
      --  Mass Erase
      MER            : Boolean := False;
      --  unspecified
      Reserved_3_3   : HAL.Bit := 16#0#;
      --  Option byte programming
      OBPG           : Boolean := False;
      --  Option byte erase
      OBER           : Boolean := False;
      --  Start
      STRT           : Boolean := False;
      --  Lock
      LOCK           : Boolean := True;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Option bytes write enable
      OBWRE          : Boolean := False;
      --  Error interrupt enable
      ERRIE          : Boolean := False;
      --  unspecified
      Reserved_11_11 : HAL.Bit := 16#0#;
      --  End of operation interrupt enable
      EOPIE          : Boolean := False;
      --  unspecified
      Reserved_13_14 : HAL.UInt2 := 16#0#;
      --  Fast programmable lock
      FLOCK          : Boolean := True;
      --  Fast programming
      PAGE_PG        : Boolean := False;
      --  Fast erase
      PAGE_ER        : Boolean := False;
      --  Buffer load
      BUFLOAD        : Boolean := False;
      --  Buffer reset
      BUFRST         : Boolean := False;
      --  unspecified
      Reserved_20_31 : HAL.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTLR_Register use record
      PG             at 0 range 0 .. 0;
      PER            at 0 range 1 .. 1;
      MER            at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      OBPG           at 0 range 4 .. 4;
      OBER           at 0 range 5 .. 5;
      STRT           at 0 range 6 .. 6;
      LOCK           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      OBWRE          at 0 range 9 .. 9;
      ERRIE          at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      EOPIE          at 0 range 12 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      FLOCK          at 0 range 15 .. 15;
      PAGE_PG        at 0 range 16 .. 16;
      PAGE_ER        at 0 range 17 .. 17;
      BUFLOAD        at 0 range 18 .. 18;
      BUFRST         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype OBR_CFG_RST_MODE_Field is HAL.UInt2;
   --  OBR_DATA array element
   subtype OBR_DATA_Element is HAL.UInt8;

   --  OBR_DATA array
   type OBR_DATA_Field_Array is array (0 .. 1) of OBR_DATA_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for OBR_DATA
   type OBR_DATA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : HAL.UInt16;
         when True =>
            --  DATA as an array
            Arr : OBR_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for OBR_DATA_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Option byte register
   type OBR_Register is record
      --  Read-only. Option byte error
      OBERR          : Boolean;
      --  Read-only. Read protection
      RDPRT          : Boolean;
      --  Read-only. IWDG_SW
      IWDG_SW        : Boolean;
      --  Read-only. STOP_RST
      STOP_RST       : Boolean;
      --  Read-only. STANDY_RST
      STANDY_RST     : Boolean;
      --  Read-only. CFG_RST_MODE
      CFG_RST_MODE   : OBR_CFG_RST_MODE_Field;
      --  unspecified
      Reserved_7_9   : HAL.UInt3;
      --  Read-only. DATA0
      DATA           : OBR_DATA_Field;
      --  unspecified
      Reserved_26_31 : HAL.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OBR_Register use record
      OBERR          at 0 range 0 .. 0;
      RDPRT          at 0 range 1 .. 1;
      IWDG_SW        at 0 range 2 .. 2;
      STOP_RST       at 0 range 3 .. 3;
      STANDY_RST     at 0 range 4 .. 4;
      CFG_RST_MODE   at 0 range 5 .. 6;
      Reserved_7_9   at 0 range 7 .. 9;
      DATA           at 0 range 10 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FLASH
   type FLASH_Peripheral is record
      --  Flash key register
      ACTLR         : aliased ACTLR_Register;
      --  Flash key register
      KEYR          : aliased HAL.UInt32;
      --  Flash option key register
      OBKEYR        : aliased HAL.UInt32;
      --  Status register
      STATR         : aliased STATR_Register;
      --  Control register
      CTLR          : aliased CTLR_Register;
      --  Flash address register
      ADDR          : aliased HAL.UInt32;
      --  Option byte register
      OBR           : aliased OBR_Register;
      --  Write protection register
      WPR           : aliased HAL.UInt32;
      --  Mode select register
      MODEKEYR      : aliased HAL.UInt32;
      --  Boot mode key register
      BOOT_MODEKEYP : aliased HAL.UInt32;
   end record
     with Volatile;

   for FLASH_Peripheral use record
      ACTLR         at 16#0# range 0 .. 31;
      KEYR          at 16#4# range 0 .. 31;
      OBKEYR        at 16#8# range 0 .. 31;
      STATR         at 16#C# range 0 .. 31;
      CTLR          at 16#10# range 0 .. 31;
      ADDR          at 16#14# range 0 .. 31;
      OBR           at 16#1C# range 0 .. 31;
      WPR           at 16#20# range 0 .. 31;
      MODEKEYR      at 16#24# range 0 .. 31;
      BOOT_MODEKEYP at 16#28# range 0 .. 31;
   end record;

   --  FLASH
   FLASH_Periph : aliased FLASH_Peripheral
     with Import, Address => FLASH_Base;

end CH32_SVD.FLASH;
