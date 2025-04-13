with Interfaces;                   use Interfaces;
with HAL;                          use HAL;
with HAL.Real_Time_Clock;          use HAL.Real_Time_Clock;
with STM32.Device;                 use STM32.Device;
with STM32.GPIO;                   use STM32.GPIO;
with STM32.I2C;                    use STM32.I2C;
with STM32.Board;                  use STM32.Board;
with STM32.RTC;                    use STM32.RTC;
with STM32.RCC;                    use STM32.RCC;
with STM32.GPIO;                   use STM32.GPIO;
with STM32.EXTI;                   use STM32.EXTI;
with STM32.SYSCFG;                 use STM32.SYSCFG;
with Utils;                        use Utils;
with Peripherals;                  use Peripherals;
with Hw;                           use Hw;
with LIS3MDL_I2C;                  use LIS3MDL_I2C;
with Mag;                          use Mag;
with Uart;                         use Uart;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;                use Ada.Real_Time;
with Exti;  pragma Unreferenced (Exti);

procedure Lis3mdl_L443
is
   Got   : Sensor_Data;

   procedure Init_Interrupts;
   procedure Init_Interrupts
   is
      Index : Integer;
   begin
      SYSCFG_Clock_Enable;
      Connect_External_Interrupt (LIS3MDL_Int_Pin);
      Clear_External_Interrupt (EXTI_Line_0);
      Index := GPIO_Pin'Pos (LIS3MDL_Int_Pin.Pin);
      Enable_External_Interrupt (External_Line_Number'Val (Index),
                                 Interrupt_Rising_Edge);
   end Init_Interrupts;
begin
   My_Delay (1_000);
   Initialize_Board;
   Initialize_HW;
   Turn_Off (Green_LED);
   Init_Interrupts;
   Set_Up_MAG;
   Setup_Mag_Interrupt;
   Initialize_Uart;
--   Enable_MCO;
   loop
      Get_Mag_Reading (Got); --  Toss
      Send_Message (Got (X_Axis)'Image & ASCII.CR & ASCII.LF);
      My_Delay (1_000);
   end loop;

end Lis3mdl_L443;
