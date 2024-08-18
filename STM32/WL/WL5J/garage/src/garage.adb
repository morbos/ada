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
with Hw;                           use Hw;
with Peripherals;                  use Peripherals;
with VL53L0X;                      use VL53L0X;
with Api;                          use Api;

with STM32.Power_Control;     --  use STM32.Power_Control;
with Rtc_Wkup_Int;                 use Rtc_Wkup_Int;
with STM32_SVD.RTC;                use STM32_SVD.RTC;
with STM32_SVD.PWR;                use STM32_SVD.PWR;
with STM32_SVD.EXTI;               use STM32_SVD.EXTI;
with STM32_SVD.RTC;                use STM32_SVD.RTC;
with STM32_SVD.TAMP;               use STM32_SVD.TAMP;
with STM32_SVD.RCC;                use STM32_SVD.RCC;
with STM32_SVD.DBGMCU;             use STM32_SVD.DBGMCU;
private with Cortex_M_SVD.SCB;
private with Cortex_M_SVD.SysTick;
with Cortex_M_SVD.NVIC;

with System.Machine_Code;          use System.Machine_Code;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

with Ada.Text_IO;                  use Ada.Text_IO;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;                use Ada.Real_Time;

procedure Garage is

   Rs        : VL53L0X_Ranging_Sensor (VL53L0_I2C_Port);
   Vlf       : VL53L0X_GPIO_Functionality := New_Sample_Ready;
   Status    : Boolean;
   Rng       : UInt16;
   Message   : DoorStateT;
   State     : DoorStateT;
   IsOpen    : Boolean := False;
   IsClosed  : Boolean := False;
   OpenTime  : Time;
begin
   Initialize_Board;
   Initialize_HW;
   --  All LoRa solns with the STM32WL use a few pins to control rx/tx paths
   --  We don't want to hard code that so the fnptr is passed in for the RAK
   --  handler
   Set_RADIO_Switch_Ptr (RAK_RF_Switch'Access);  --  In hw.adb, called by subghzrf
   SubGhzPhy_Init;
   SubGhzRF_Init;
   --  We drop the power here vvv to get below 80mA xmit.
   --  80mA at 3.3v is the HV limit of the energy harvester we want to use
   --  AEM10941 (at Power => 10, we measure 77mA).
--   Set_TxParams ((Power => 10,
--                  RampTime => Microsecs_40,
--                  others => <>));

   Initialize (Rs);

   --  Reset; Optional. PoR has this. (SHDN toggle)

   Data_Init (Rs, Status);

   Static_Init (Rs, Vlf, Status);

   if Status then
      Perform_Ref_Calibration (Rs, Status);
   end if;

   if Status then
      --  Long range detection:
      Set_Signal_Rate_Limit (Rs, 0.1);
      Set_Measurement_Timing_Budget (Rs, 100_000, Status);
      Set_VCSEL_Pulse_Period_Pre_Range (Rs, 18, Status);
      Set_VCSEL_Pulse_Period_Final_Range (Rs, 14, Status);
   end if;

   OpenTime := Clock;
   loop
      Rng := Read_Range_Single_Millimeters (Rs);
      Message := Undefined;
      State := DoorState (Rng);
      case State is
         when Cal =>
            Perform_Ref_Calibration (Rs, Status);
         when Open =>
            --  Two cases send a message
            --  1) X => Open where X /= Open
            --  2) 30mins have gone by
            --            if OpenTime + Milliseconds (30_000) >= Clock then
            if Clock >= (OpenTime + Milliseconds (30 * 60_000)) then
               Message := Open;
               OpenTime := Clock;
            elsif not IsOpen then --  This is first time
               Message := Open;
               OpenTime := Clock;
            end if;
            IsOpen := True;
            IsClosed := False;
         when Closed =>
            if IsOpen or not IsClosed then
               Message := Closed;
               IsOpen := False;
               IsClosed := True;
            end if;
         when others =>
            null;
      end case;
      if Message /= Undefined then
         SendMessage (Message);
         Message := Undefined;
      end if;
      My_Delay (1_000);
   end loop;

end Garage;
