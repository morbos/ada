with HAL;           use HAL;
with LIS3MDL_I2C;   use LIS3MDL_I2C;
with Peripherals;   use Peripherals;
with Interfaces;    use Interfaces;
with STM32.Device;  use STM32.Device;
with STM32.Board;   use STM32.Board;
with STM32.GPIO;    use STM32.GPIO;
with STM32.I2C;     use STM32.I2C;
use STM32; -- for GPIO_Alternate_Function
with Hw;            use Hw;
with Rtc_Wkup_Int;  use Rtc_Wkup_Int;

with STM32.SYSCFG;            use STM32.SYSCFG;
with STM32.EXTI;              use STM32.EXTI;
with STM32.RCC;               use STM32.RCC;
with STM32.RTC;               use STM32.RTC;
with STM32.Power_Control;     --  use STM32.Power_Control;
with STM32_SVD.PWR;           use STM32_SVD.PWR;
with STM32_SVD.RTC;           use STM32_SVD.RTC;
with STM32_SVD.RCC;           use STM32_SVD.RCC;
with STM32_SVD.TAMP;          use STM32_SVD.TAMP;
with STM32_SVD.DBGMCU;        use STM32_SVD.DBGMCU;
private with Cortex_M_SVD.SCB;
private with Cortex_M_SVD.SysTick;
with System;

with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;
with Ada.Real_Time; use Ada.Real_Time;
with System.Machine_Code; use System.Machine_Code;
with Ada.Text_IO;          use Ada.Text_IO;
private with Cortex_M_SVD.Debug;
with Semihosting;

with Last_Chance_Handler;  pragma Unreferenced (Last_Chance_Handler);

procedure Lis3mdl_U073 is

   Mag : LIS3MDL_Sensor (Sensor_Port'Access);

   procedure Set_Up_MAG;

   procedure Initialize_MAG_IO_Hardware
     (Port   : access I2C_Port;
      SCL    : GPIO_Point;
      SDA    : GPIO_Point);

   --------------------------------
   -- Initialize_MAG_IO_Hardware --
   --------------------------------

   procedure Initialize_MAG_IO_Hardware
     (Port   : access I2C_Port;
      SCL    : GPIO_Point;
      SDA    : GPIO_Point)
   is
      GPIO_Conf            : GPIO_Port_Configuration;
      LIS3MDL_Clock_Speed : constant := 400_000;
      I2C_Points : constant GPIO_Points := SCL & SDA;
   begin
      Enable_Clock (I2C_Points);
      Enable_Clock (Port.all);

      STM32.Device.Reset (Port.all);

      GPIO_Conf.Speed       := Speed_50MHz;
      GPIO_Conf.Mode        := Mode_Out;
      GPIO_Conf.Output_Type := Push_Pull;
      GPIO_Conf.Resistors   := Floating;

      GPIO_Conf.Speed       := Speed_50MHz;
      GPIO_Conf.Mode        := Mode_AF;
      GPIO_Conf.Output_Type := Open_Drain;
      GPIO_Conf.Resistors   := Pull_Up;
      Configure_IO (SCL, GPIO_Conf);
      Configure_IO (SDA, GPIO_Conf);

      Configure_Alternate_Function (I2C_Points, LIS3MDL_I2C_Port_AF);

      STM32.I2C.Configure
        (Port.all,
         (Clock_Speed              => LIS3MDL_Clock_Speed,
          Addressing_Mode          => Addressing_Mode_7bit,
          General_Call_Enabled     => False,
          Clock_Stretching_Enabled => True,
          Own_Address              => 16#00#,
          others                   => <>));

--      Set_State (Port.all, Enabled => True);
   end Initialize_MAG_IO_Hardware;

   ----------------
   -- Set_Up_MAG --
   ----------------

   procedure Set_Up_MAG is
   begin
      Initialize_MAG_IO_Hardware
        (Port   => LIS3MDL_I2C_Port,
         SCL    => LIS3MDL_I2C_Clock_Pin,
         SDA    => LIS3MDL_I2C_Data_Pin);

      Mag.Configure;

   end Set_Up_MAG;

   procedure Init_GPIO;

   ---------------
   -- Init_GPIO --
   ---------------

   procedure Init_GPIO is
      Config : GPIO_Port_Configuration;

   begin

      Enable_Clock (Sensor_VDD_Pin);
      Config.Output_Type := Push_Pull;
      Config.Resistors   := Floating;
      Config.Speed       := Speed_2MHz;
      Config.Mode        := Mode_Out;
      Configure_IO (Sensor_VDD_Pin, Config);

      Enable_Clock (Sensor_GND_Pin);
      Config.Output_Type := Push_Pull;
      Config.Resistors   := Floating;
      Config.Speed       := Speed_2MHz;
      Config.Mode        := Mode_Out;
      Configure_IO (Sensor_GND_Pin, Config);

   end Init_GPIO;

   procedure My_Delay;

   procedure My_Delay is
   begin
      delay until Clock + Milliseconds (100);
   end My_Delay;

   Status  : Status_Reg;
   Got     : Sensor_Data;
   AvgX    : Integer := 0;
   AvgY    : Integer := 0;
   AvgZ    : Integer := 0;

   On : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Enable;
   Off : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Disable;

   GapX  : Integer_16;
   TampX : Integer_16;

begin
   Init_GPIO;
   Clear (Sensor_GND_Pin);
   Set (Sensor_VDD_Pin);
   My_Delay;
   Set_Up_MAG;
   STM32.Power_Control.Enable;
   STM32.Power_Control.Disable_Backup_Domain_Protection;

--   if TAMP_Periph.TAMP_BKP0R = 0 then
--      Enable (STM32.Device.RTC, Use_LSE);
--      RTC_Use_Lse;
--      Set_AlarmA (STM32.Device.RTC, (MSK4 => True, MSK3 => True, MSK2 => True, ST => 3, others => <>));
--      TAMP_Periph.TAMP_BKP0R := 1;
--   end if;

   --  Toss first reading
   loop
      Status := Mag.Get_Status;
      exit when Status.XYZDataAvailable;
   end loop;
   Mag.Read_MAG (Got);

   loop
      Status := Mag.Get_Status;
      exit when Status.XYZDataAvailable;
   end loop;
   Mag.Read_MAG (Got);
   Clear (Sensor_VDD_Pin);

   TampX := Integer_16 (TAMP_Periph.TAMP_BKP1R and 16#ffff#);
   GapX := Got (X_Axis) - TampX;
   --  Check if X is +/- N, set tamp to be +/- 500 from tamp reg
   if (abs GapX) > 500 then --  We are out of range
      TAMP_Periph.TAMP_BKP1R := UInt32 (Got (X_Axis));
      --  Send a message
   end if;

   PWR_Periph.PWR_CR3.EWUP.Arr (1) := False;

   PWR_Periph.PWR_SCR.CWUF.Val := 16#1F#; -- clear all wup sources

   PWR_Periph.PWR_CR4.WP.Val := 0; --  All rising edge

   PWR_Periph.PWR_CR3.EWUP.Arr (1) := True;

   PWR_Periph.PWR_CR3.ENULP := False;

   PWR_Periph.PWR_PUCRA.PU.Val := 16#f9ff#;
   PWR_Periph.PWR_PUCRB.PU.Val := 16#fffc#;
   PWR_Periph.PWR_PUCRC.PU.Val := 16#ffff#;
   ---
--   PWR_Periph.PWR_PDCRA.PD.Val := 16#0600#;
   PWR_Periph.PWR_PDCRB.PD.Val := 16#0003#;
   PWR_Periph.PWR_CR3.APC      := True;

   --  Shutdown seq
   PWR_Periph.PWR_CR1.LPMS := 4; --  SHUTDOWN
   DBGMCU_Periph.DBGMCU_CR := (DBG_STOP => False, DBG_STANDBY => False, others => <>);
   Cortex_M_SVD.SCB.SCB_Periph.SCR.SLEEPDEEP := True;
   Cortex_M_SVD.SysTick.SysTick_Periph.CSR.ENABLE := Off;
   Asm (Template => "wfi", Volatile => True);
   loop
      null;
   end loop;

end Lis3mdl_U073;
