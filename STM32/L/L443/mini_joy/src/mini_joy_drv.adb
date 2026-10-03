with HAL.I2C;                use HAL.I2C;

package body Mini_Joy_Drv is

   function Joy_Read (This : in out Mini_Joy_Port) return Joy_Rec
   is
      Z : Joy_Rec;
   begin
      Read_Buffer (This.Port, JOYSTICK_BASE, Z.Stick);
      Read_Buffer (This.Port, BUTTON_BASE, Z.Buttons);
      return Z;
   end Joy_Read;

end Mini_Joy_Drv;
