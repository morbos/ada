with STM32.Device;                 use STM32.Device;
with STM32.GPIO;                   use STM32.GPIO;
with STM32.SYSCFG;                 use STM32.SYSCFG;
with STM32.EXTI;                   use STM32.EXTI;
with STM32.I2C;                    use STM32.I2C;
with STM32.Board;                  use STM32.Board;
with Peripherals;                  use Peripherals;
with Hw;                           use Hw;

package body LPS is

   LPS : LPS22HB_Sensor (LPS22HB_Port'Access);

   procedure Set_Up_LPS is
   begin
      LPS.Configure;
      if LPS.Device_Id /= I_Am_LPS22HB then
         raise Program_Error with "I_Am_LPS22HB";
      end if;
   end Set_Up_LPS;

   procedure Get_Pressure_Temp_Reading (Got : out Pressure_Temp_Data)
   is
   begin
      Get_Data_Raw (LPS, Got.Pressure, Got.Temp);
   end Get_Pressure_Temp_Reading;

end LPS;
