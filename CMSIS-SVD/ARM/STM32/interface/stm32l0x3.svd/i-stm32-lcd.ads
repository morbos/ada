--
--  Copyright (C) 2019, AdaCore
--

--  This spec has been automatically generated from STM32L0x3.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.Bit_Types;
with System;

package Interfaces.STM32.LCD is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR_DUTY_Field is Interfaces.Bit_Types.UInt3;
   subtype CR_BIAS_Field is Interfaces.Bit_Types.UInt2;

   --  control register
   type CR_Register is record
      --  LCD controller enable
      LCDEN         : Boolean := False;
      --  Voltage source selection
      VSEL          : Boolean := False;
      --  Duty selection
      DUTY          : CR_DUTY_Field := 16#0#;
      --  Bias selector
      BIAS          : CR_BIAS_Field := 16#0#;
      --  Mux segment enable
      MUX_SEG       : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.Bit_Types.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      LCDEN         at 0 range 0 .. 0;
      VSEL          at 0 range 1 .. 1;
      DUTY          at 0 range 2 .. 4;
      BIAS          at 0 range 5 .. 6;
      MUX_SEG       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FCR_PON_Field is Interfaces.Bit_Types.UInt3;
   subtype FCR_DEAD_Field is Interfaces.Bit_Types.UInt3;
   subtype FCR_CC_Field is Interfaces.Bit_Types.UInt3;
   subtype FCR_BLINKF_Field is Interfaces.Bit_Types.UInt3;
   subtype FCR_BLINK_Field is Interfaces.Bit_Types.UInt2;
   subtype FCR_DIV_Field is Interfaces.Bit_Types.UInt4;
   subtype FCR_PS_Field is Interfaces.Bit_Types.UInt4;

   --  frame control register
   type FCR_Register is record
      --  High drive enable
      HD             : Boolean := False;
      --  Start of frame interrupt enable
      SOFIE          : Boolean := False;
      --  unspecified
      Reserved_2_2   : Interfaces.Bit_Types.Bit := 16#0#;
      --  Update display done interrupt enable
      UDDIE          : Boolean := False;
      --  Pulse ON duration
      PON            : FCR_PON_Field := 16#0#;
      --  Dead time duration
      DEAD           : FCR_DEAD_Field := 16#0#;
      --  Contrast control
      CC             : FCR_CC_Field := 16#0#;
      --  Blink frequency selection
      BLINKF         : FCR_BLINKF_Field := 16#0#;
      --  Blink mode selection
      BLINK          : FCR_BLINK_Field := 16#0#;
      --  DIV clock divider
      DIV            : FCR_DIV_Field := 16#0#;
      --  PS 16-bit prescaler
      PS             : FCR_PS_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.Bit_Types.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FCR_Register use record
      HD             at 0 range 0 .. 0;
      SOFIE          at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      UDDIE          at 0 range 3 .. 3;
      PON            at 0 range 4 .. 6;
      DEAD           at 0 range 7 .. 9;
      CC             at 0 range 10 .. 12;
      BLINKF         at 0 range 13 .. 15;
      BLINK          at 0 range 16 .. 17;
      DIV            at 0 range 18 .. 21;
      PS             at 0 range 22 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  status register
   type SR_Register is record
      --  Read-only. ENS
      ENS           : Boolean := False;
      --  Read-only. Start of frame flag
      SOF           : Boolean := False;
      --  Write-only. Update display request
      UDR           : Boolean := False;
      --  Read-only. Update Display Done
      UDD           : Boolean := False;
      --  Read-only. Ready flag
      RDY           : Boolean := False;
      --  Read-only. LCD Frame Control Register Synchronization flag
      FCRSF         : Boolean := True;
      --  unspecified
      Reserved_6_31 : Interfaces.Bit_Types.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      ENS           at 0 range 0 .. 0;
      SOF           at 0 range 1 .. 1;
      UDR           at 0 range 2 .. 2;
      UDD           at 0 range 3 .. 3;
      RDY           at 0 range 4 .. 4;
      FCRSF         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  clear register
   type CLR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Start of frame flag clear
      SOFC          : Boolean := False;
      --  unspecified
      Reserved_2_2  : Interfaces.Bit_Types.Bit := 16#0#;
      --  Write-only. Update display done clear
      UDDC          : Boolean := False;
      --  unspecified
      Reserved_4_31 : Interfaces.Bit_Types.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      SOFC          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      UDDC          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RAM_COM_S array
   type RAM_COM_S_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  display memory
   type RAM_COM_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  S as a value
            Val : Interfaces.Bit_Types.Word;
         when True =>
            --  S as an array
            Arr : RAM_COM_S_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for RAM_COM_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Liquid crystal display controller
   type LCD_Peripheral is record
      --  control register
      CR       : aliased CR_Register;
      --  frame control register
      FCR      : aliased FCR_Register;
      --  status register
      SR       : aliased SR_Register;
      --  clear register
      CLR      : aliased CLR_Register;
      --  display memory
      RAM_COM0 : aliased RAM_COM_Register;
      --  display memory
      RAM_COM1 : aliased RAM_COM_Register;
      --  display memory
      RAM_COM2 : aliased RAM_COM_Register;
      --  display memory
      RAM_COM3 : aliased RAM_COM_Register;
      --  display memory
      RAM_COM4 : aliased RAM_COM_Register;
      --  display memory
      RAM_COM5 : aliased RAM_COM_Register;
      --  display memory
      RAM_COM6 : aliased RAM_COM_Register;
      --  display memory
      RAM_COM7 : aliased RAM_COM_Register;
   end record
     with Volatile;

   for LCD_Peripheral use record
      CR       at 16#0# range 0 .. 31;
      FCR      at 16#4# range 0 .. 31;
      SR       at 16#8# range 0 .. 31;
      CLR      at 16#C# range 0 .. 31;
      RAM_COM0 at 16#14# range 0 .. 31;
      RAM_COM1 at 16#1C# range 0 .. 31;
      RAM_COM2 at 16#24# range 0 .. 31;
      RAM_COM3 at 16#2C# range 0 .. 31;
      RAM_COM4 at 16#34# range 0 .. 31;
      RAM_COM5 at 16#3C# range 0 .. 31;
      RAM_COM6 at 16#44# range 0 .. 31;
      RAM_COM7 at 16#4C# range 0 .. 31;
   end record;

   --  Liquid crystal display controller
   LCD_Periph : aliased LCD_Peripheral
     with Import, Address => System'To_Address (16#40002400#);

end Interfaces.STM32.LCD;
