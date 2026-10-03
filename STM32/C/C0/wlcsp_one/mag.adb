with HAL;                      use HAL;
with I2C_Driver;               use I2C_Driver;
with System.Machine_Code;      use System.Machine_Code;

package body Mag is
   procedure Mag_Init is
      Tmp : UInt8 with Volatile;
      Stat : Status;
   begin
      Stat := Read_Register (16#1E#, 16#F#, Tmp);
      if Stat = Ok then
         if Tmp = 16#3D# then
            Asm ("nop", Volatile => True);
         else
            Asm ("nop", Volatile => True);
         end if;
      else
         Asm ("nop", Volatile => True);
      end if;
   end Mag_Init;
end Mag;
