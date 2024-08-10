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

procedure Lp is


begin
   Initialize_Board;
   Initialize_GPIO;
   --  All LoRa solns with the STM32WL use a few pins to control rx/tx paths
   --  We don't want to hard code that so the fnptr is passed in for the RAK
   --  handler
   Set_RADIO_Switch_Ptr (RAK_RF_Switch'Access);  --  In hw.adb, called by subghzrf
   SubGhzPhy_Init;
   SubGhzRF_Init;
   --  We drop the power here vvv to get below 80mA xmit.
   --  80mA at 3.3v is the HV limit of the energy harvester we want to use
   --  AEM10941 (at Power => 10, we measure 77mA).
   Set_TxParams ((Power => 10,
                  RampTime => Microsecs_40,
                  others => <>));
   loop
--      Set_PaConfig ((
--                     PaDutyCycle => Pa_DC_4,
--                     HpMax       => HpMax_0,
--                     PaSel       => LP_PA,
--                     others => <>));
--      App_Start;
--      My_Delay (5_000);
--      Set_PaConfig ((
--                     PaDutyCycle => Pa_DC_4,
--                     HpMax       => HpMax_7,
--                     PaSel       => HP_PA,
--                     others => <>));
      App_Start;
      My_Delay (5_000);
   end loop;
end Lp;
