with Interfaces;                   use Interfaces;
with HAL;                          use HAL;
with HAL.Real_Time_Clock;          use HAL.Real_Time_Clock;
with STM32.Device;                 use STM32.Device;
with STM32.GPIO;                   use STM32.GPIO;
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

procedure Door
is
   Mag : LIS3MDL_Sensor (Sensor_Port'Access);

   On : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Enable;
   Off : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Disable;
   ----------------
   -- Set_Up_MAG --
   ----------------

   procedure Set_Up_MAG;
   procedure Set_Up_MAG is
   begin
      Mag.Configure
        ((FS_Range_Sel  => FS_4,
          Op_Mode_Sel   => Continuous,
          BDU_Sel       => True,
          XY_Perf_Sel   => Ultra_Perf,
          Z_Perf_Sel    => Ultra_Perf,
          Data_Rate_Sel => Hz_5));
   end Set_Up_MAG;

   Got     : Sensor_Data;
   Open    : array (Sensor_Data_Range) of Integer := (X_Axis => 0, others => 0);
   Closed  : array (Sensor_Data_Range) of Integer := (X_Axis => 0, others => 0);
   Max     : array (Sensor_Data_Range) of Integer := (X_Axis => 0, others => 0);
   Largest_Axis  : Sensor_Data_Range;
   Axis          : Sensor_Data_Range;
   Largest_Value : Integer;
   Stance        : Door_Stance;
   Open_Value    : Integer;
   Closed_Value  : Integer;
   Epsilon       : Integer := 500;
   N_Seconds     : UInt32 := 30 * 60;
   Quanta        : UInt32 := 30;
begin
   Initialize_Board;
   Initialize_HW;
   My_Delay (1_000); --  1 second
   Set_Up_MAG;
   Enable (STM32.Device.RTC);
   if Check_ReInit then
      Set (Red_Led_Pin);
      My_Delay (5_000);
      Clear (Red_Led_Pin);
      TAMP_Periph.BKP0R := 0;
   end if;
   Set_WUT_Interrupt (STM32.Device.RTC, UInt16 (Quanta));
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
   if TAMP_Periph.BKP0R /= 16#facefeed# then --  Not initialized
      TAMP_Periph.BKP0R := 16#facefeed#;
      LED_On;
      --  1)
      Mag.Read_MAG (Got); --  Toss
      for I in 1 .. 5 loop
         Mag.Read_MAG (Got);
         for J in Sensor_Data_Range loop
            Open (J) := Open (J) + Integer (Got (J));
         end loop;
         My_Delay (1_000); --  1 second
      end loop;

      LED_Off;

      --  2)
      My_Delay (10_000); --  10 seconds
      --  3)
      Mag.Read_MAG (Got); --  Toss
      for I in 1 .. 5 loop
         Mag.Read_MAG (Got);
         for J in Sensor_Data_Range loop
            Closed (J) := Closed (J) + Integer (Got (J));
         end loop;
         My_Delay (1_000); --  1 second
      end loop;

      Mag.Power_Down;

      Stance := Closed_Stance;

      for J in Sensor_Data_Range loop
         Open (J) := Open (J) / 5;
         Closed (J) := Closed (J) / 5;
      end loop;
      --  Find which one has the > discrepancy
      for J in Sensor_Data_Range loop
         Max (J) := abs (Open (J) - Closed (J));
      end loop;
      Largest_Axis := X_Axis;
      Largest_Value := 0;
      for J in Sensor_Data_Range loop
         if Largest_Value < Max (J) then
            Largest_Value := Max (J);
            Largest_Axis := J;
         end if;
      end loop;

      To_UInt32_From_Integer_32 (Result => TAMP_Periph.BKP4R,
                                 Value => Integer_32 (Open (Largest_Axis)));
      To_UInt32_From_Integer_32 (Result => TAMP_Periph.BKP5R,
                                 Value => Integer_32 (Closed (Largest_Axis)));
      TAMP_Periph.BKP2R := Largest_Axis'Enum_Rep;
      TAMP_Periph.BKP3R := Stance'Enum_Rep;
      TAMP_Periph.BKP1R := 0; -- Counter

      App_Start (Stance);

   else
      TAMP_Periph.BKP1R := TAMP_Periph.BKP1R + 1;
      Mag.Read_MAG (Got); --  Toss
      Mag.Read_MAG (Got);
      Mag.Power_Down;
      Axis := Sensor_Data_Range'Enum_Val (TAMP_Periph.BKP2R);
      To_Integer_32_From_UInt32 (Result => Integer_32 (Open_Value), Value => TAMP_Periph.BKP4R);
      To_Integer_32_From_UInt32 (Result => Integer_32 (Closed_Value), Value => TAMP_Periph.BKP5R);
      Stance := Door_Stance'Enum_Val (TAMP_Periph.BKP3R);
      if abs (Open_Value - Integer (Got (Axis))) < Epsilon and Stance = Closed_Stance then
         TAMP_Periph.BKP3R := Open_Stance'Enum_Rep;
         App_Start (Open_Stance);
         TAMP_Periph.BKP1R := 0;
      elsif abs (Closed_Value - Integer (Got (Axis))) < Epsilon and Stance = Open_Stance then
         TAMP_Periph.BKP3R := Closed_Stance'Enum_Rep;
         App_Start (Closed_Stance);
      else
         if (Stance = Open_Stance) and (TAMP_Periph.BKP1R >= (N_Seconds / Quanta)) then
            App_Start (Open_Stance); --  Persistent nag if door left open
            TAMP_Periph.BKP1R := 0;
         end if;
      end if;
   end if;

--  vvvv THIS vvv seems reasonable, reset the RF
--  after all, TxDone has happened, what else is the RF doing?
--  Turns out... you do this vvvv and no pkts will emerge despite
--  TxDone's assertion(!)
--   RCC_Periph.CSR.RFRST := True;
--   loop
--      exit when RCC_Periph.CSR.RFRSTF;
--   end loop;

   loop
      PWR_Periph.SCR.CWRFBUSYF := True;
      exit when not PWR_Periph.SR1.WRFBUSYF;
   end loop;

   --  Now off to sleep
   PWR_Periph.CR3.EWUP.Arr (1) := False;

   PWR_Periph.SCR.CWUF.Val := 16#7#; -- clear all wup sources

   PWR_Periph.CR4.WP.Val := 0; --  All rising edge

--   PWR_Periph.CR3.EWUP.Arr (1) := True;

   PWR_Periph.PUCRA.PU.Val := 16#ffff#;
   PWR_Periph.PUCRB.PU.Val := 16#ffff#;
   PWR_Periph.PUCRC.PU.Val := 16#7f#;
   --   PWR_Periph.CR3.APC      := True;
   PWR_Periph.CR3.APC      := False;

   --  Shutdown seq
   PWR_Periph.CR1.LPMS := 4; --  SHUTDOWN
   DBGMCU_Periph.CR := (DBG_STOP => False, DBG_STANDBY => False, others => <>);
   Cortex_M_SVD.SCB.SCB_Periph.SCR.SLEEPDEEP := True;
   Cortex_M_SVD.SysTick.SysTick_Periph.CSR.ENABLE := Off;
   Asm (Template => "wfi", Volatile => True);
   loop
      null;
   end loop;
end Door;
