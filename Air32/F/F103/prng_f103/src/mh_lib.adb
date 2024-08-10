with System;
package body MH_Lib is

   procedure MH_Init
   is
      Magic_Reg1 : UInt32 with Volatile, Address => System'To_Address (16#400210F0#);
      Magic_Reg2 : UInt32 with Volatile, Address => System'To_Address (16#40016C00#);
      Magic_Reg3 : UInt32 with Volatile, Address => System'To_Address (16#40016CCC#);
   begin
      Magic_Reg1 := 1;
      Magic_Reg2 := 16#CDED3526#;
      Magic_Reg3 := 7;
   end MH_Init;

   function MH_PRand return UInt32
   is
      PRand : UInt32 with Volatile, Address =>
        System'To_Address (16#50060810#);
   begin
      return PRand;
   end MH_PRand;

end MH_Lib;
