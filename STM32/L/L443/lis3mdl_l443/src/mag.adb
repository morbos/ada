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

   procedure Set_Up_MAG is
   begin
      Mag.Configure
        ((FS_Range_Sel  => FS_16,
          Op_Mode_Sel   => Continuous,
          BDU_Sel       => True,
          XY_Perf_Sel   => Low_Power,
          Z_Perf_Sel    => Low_Power,
          Data_Rate_Sel => Hz_0_625));

   end Set_Up_MAG;

   procedure Setup_Mag_Interrupt
   is
      Int_Cfg : INT_CONFIG_Reg;
   begin
      Mag.Set_Thresh (800);
      Int_Cfg := (IEN => True, XIEN => True, IEA => True, others => False);
      Mag.Set_Int_Enable (Int_Cfg);
   end Setup_Mag_Interrupt;

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
