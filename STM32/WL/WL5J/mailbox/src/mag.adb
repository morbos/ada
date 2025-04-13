with HAL;                          use HAL;
with STM32.Device;                 use STM32.Device;
with STM32.GPIO;                   use STM32.GPIO;
with STM32.SYSCFG;                 use STM32.SYSCFG;
with STM32.EXTI;                   use STM32.EXTI;
with STM32.I2C;                    use STM32.I2C;
with STM32.Board;                  use STM32.Board;
with Peripherals;                  use Peripherals;
with Hw;                           use Hw;

package body Mag is

   Mag : LIS3MDL_Sensor (Sensor_Port'Access);

   procedure Set_Up_MAG (First : Boolean) is
   begin
      if Mag.Device_Id /= I_Am_LIS3MDL then
         raise Program_Error with "I_Am_LIS3MDL";
      end if;
      if First then
         Mag.Set_Range (FS_16);
         Mag.Set_OpMode (Continuous);
         Mag.Set_BDU (True);
         Mag.Set_XY_Perf (Low_Power);
         Mag.Set_Z_Perf (Low_Power);
         Mag.Set_DataRate (Hz_0_625);
      end if;
   end Set_Up_MAG;

   procedure Set_Offsets (Got : Sensor_Data)
   is
   begin
      Mag.Set_Offsets (Got);
   end Set_Offsets;

   procedure Setup_Mag_Interrupt
   is
      Int_Cfg   : INT_CONFIG_Reg;
   begin
      Mag.Set_Thresh (3200);
      --  N.B. The setting of multiple axes will *not* yield proper threshold int response!
      --  This was verified w/Adafruits impl and a Poloulu sensor on an ESP8266.
--      Int_Cfg := (IEN => True, XIEN => True, YIEN => True, ZIEN => True, IEA => True, others => False);
--      Int_Cfg := (IEN => True, YIEN => True, IEA => True, others => False);
      Int_Cfg := (IEN => True, XIEN => True, IEA => True, others => False);
      Mag.Set_Int_Enable (Int_Cfg);
   end Setup_Mag_Interrupt;

   procedure Disable_Mag_Interrupt
   is
      Clear_Cfg : INT_CONFIG_Reg := (others => False);
   begin
      Mag.Set_Int_Enable (Clear_Cfg);
   end Disable_Mag_Interrupt;

   procedure Get_Mag_Reading (Got : out Sensor_Data)
   is
   begin
      Mag.Read_MAG (Got);
   end Get_Mag_Reading;

   procedure Get_Mag_Int_Src (Got : out INT_SRC_Reg)
   is
   begin
      Got := Mag.Get_Int_Src;
   end Get_Mag_Int_Src;

end Mag;
