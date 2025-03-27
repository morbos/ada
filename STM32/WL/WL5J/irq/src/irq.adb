pragma Ada_2022;
with HAL;                          use HAL;
with HAL.Real_Time_Clock;          use HAL.Real_Time_Clock;
with STM32.Device;                 use STM32.Device;
with STM32.GPIO;                   use STM32.GPIO;
with STM32.SYSCFG;                 use STM32.SYSCFG;
with STM32.EXTI;                   use STM32.EXTI;
with STM32.I2C;                    use STM32.I2C;
with STM32.Board;                  use STM32.Board;
with STM32.RTC;                    use STM32.RTC;
with STM32.RCC;                    use STM32.RCC;
with STM32.SubGhzPhy;              use STM32.SubGhzPhy;
with STM32.SubGhzRF;               use STM32.SubGhzRF;
with Radio_Int;                    use Radio_Int;
with App;                          use App;
with Utils;                        use Utils;
with Peripherals;                  use Peripherals;
with Hw;                           use Hw;
with LIS3MDL_I2C;                  use LIS3MDL_I2C;
with Exti;                         use Exti;
with Mag;                          use Mag;

with STM32.Power_Control;     --  use STM32.Power_Control;
with Rtc_Wkup_Int;                 use Rtc_Wkup_Int;
with STM32_SVD.RTC;                use STM32_SVD.RTC;
with STM32_SVD.PWR;                use STM32_SVD.PWR;
with STM32_SVD.RTC;                use STM32_SVD.RTC;
with STM32_SVD.TAMP;               use STM32_SVD.TAMP;
with STM32_SVD.RCC;                use STM32_SVD.RCC;
with STM32_SVD.DBGMCU;             use STM32_SVD.DBGMCU;
private with Cortex_M_SVD.SCB;
private with Cortex_M_SVD.SysTick;

with System.Machine_Code;          use System.Machine_Code;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

with Ada.Text_IO;                  use Ada.Text_IO;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;                use Ada.Real_Time;
with Exti;  pragma Unreferenced (Exti);

procedure Irq
is

   ----------------
   -- Set_Up_MAG --
   ----------------

   Got     : Sensor_Data;
   Open    : array (Sensor_Data_Range) of Integer := (X_Axis => 0, others => 0);
   Closed  : array (Sensor_Data_Range) of Integer := (X_Axis => 0, others => 0);
   procedure Init_Interrupts;
   procedure Init_Interrupts
   is
      Index : Integer;
   begin
      SYSCFG_Clock_Enable;
      Connect_External_Interrupt (LIS3MDL_Int_Pin);
      Clear_External_Interrupt (EXTI_Line_3);
      Index := GPIO_Pin'Pos (LIS3MDL_Int_Pin.Pin);
      Enable_External_Interrupt (External_Line_Number'Val (Index),
                                 Interrupt_Rising_Edge);
   end Init_Interrupts;
   Int_Src : INT_SRC_Reg;
begin
   Initialize_Board;
   Initialize_HW;
   Init_Interrupts;
   Set_Up_MAG;
   --  0) Check if we have calibrated if so goto 6), otherwise mark BKP as initialized
   --  1) Cal door open
   --     throw 1st reading away
   --     in 5sec, read 5 times and take the avg
   --  2) 10second deadzone (move doorbolt)
   --  3) Cal door closed
   --     throw 1st reading away
   --     in 5sec, read 5 times and take the avg
   --  4) find which reading has the greatest diff
   --  5) Mark the BKP rams with a) a magic b) which axis c) open/closed values d) curr stance
   --  6) Every :30 seconds, power up the mag take a reading, if curr stance != BKP send a pkt
   --  7) if door stance is open, every :30min send a pkt

   --  Enable Int
   Get_Mag_Reading (Got); --  Toss
   Setup_Mag_Interrupt;
   --  1)
   Get_Mag_Reading (Got); --  Toss
   for I in 1 .. 5 loop
      Get_Mag_Reading (Got);
      for J in Sensor_Data_Range loop
         Open (J) := Open (J) + Integer (Got (J));
      end loop;
      My_Delay (1_000); --  1 second
   end loop;

   --  2)
   My_Delay (10_000); --  10 seconds
   --  3)
   Get_Mag_Reading (Got); --  Toss
   for I in 1 .. 5 loop
      Get_Mag_Reading (Got);
      for J in Sensor_Data_Range loop
         Closed (J) := Closed (J) + Integer (Got (J));
      end loop;
      My_Delay (1_000); --  1 second
   end loop;

   for J in Sensor_Data_Range loop
      Open (J) := Open (J) / 5;
      Closed (J) := Closed (J) / 5;
   end loop;
   loop
      Get_Mag_Int_Src (Int_Src);
      My_Delay (1_000); --  1 second
   end loop;
end Irq;
