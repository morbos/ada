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
      Mag.Configure;
   end Set_Up_MAG;

   Got     : Sensor_Data;
begin
   Initialize_Board;
   Initialize_HW;
   Set_Up_MAG;
   --  All LoRa solns with the STM32WL use a few pins to control rx/tx paths
   --  We don't want to hard code that so the fnptr is passed in for the RAK
   --  handler
   Set_RADIO_Switch_Ptr (RAK_RF_Switch'Access);  --  In hw.adb, called by subghzrf
   SubGhzPhy_Init;
   SubGhzRF_Init;
   Enable (STM32.Device.RTC);
   Set_WUT_Interrupt (STM32.Device.RTC, 15);
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

   App_Start;

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
   PWR_Periph.CR3.APC      := True;

   --  Shutdown seq
   PWR_Periph.CR1.LPMS := 4; --  SHUTDOWN
   DBGMCU_Periph.CR := (DBG_STOP => False, DBG_STANDBY => False, others => <>);
   Cortex_M_SVD.SCB.SCB_Periph.SCR.SLEEPDEEP := True;
   Cortex_M_SVD.SysTick.SysTick_Periph.CSR.ENABLE := Off;
--   TAMP_Periph.BKP1R := 1;
   Asm (Template => "wfi", Volatile => True);
   loop
      null;
   end loop;
end Door;
