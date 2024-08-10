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
with STM32.SYSCFG;                 use STM32.SYSCFG;
with STM32.EXTI;                   use STM32.EXTI;
with Radio_Int;                    use Radio_Int;
with App;                          use App;
with Utils;                        use Utils;
with Hw;                           use Hw;
with Uart;                         use Uart;
with Peripherals;                  use Peripherals;
with Exti;                         use Exti;

with STM32.Power_Control;     --  use STM32.Power_Control;
with Rtc_Wkup_Int;                 use Rtc_Wkup_Int;
with STM32_SVD.RTC;                use STM32_SVD.RTC;
with STM32_SVD.PWR;                use STM32_SVD.PWR;
with STM32_SVD.RTC;                use STM32_SVD.RTC;
with STM32_SVD.TAMP;               use STM32_SVD.TAMP;
with STM32_SVD.RCC;                use STM32_SVD.RCC;
with STM32_SVD.DBGMCU;             use STM32_SVD.DBGMCU;
with STM32_SVD.IWDG;               use STM32_SVD.IWDG;

private with Cortex_M_SVD.SCB;
private with Cortex_M_SVD.SysTick;
with Cortex_M_SVD.NVIC;

with System.Machine_Code;          use System.Machine_Code;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

with Ada.Text_IO;                  use Ada.Text_IO;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;                use Ada.Real_Time;
with Exti;  pragma Unreferenced (Exti);

procedure Rtc_Lse_Pin is
   On : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Enable;
   Off : constant Cortex_M_SVD.SysTick.CSR_ENABLE_Field := Cortex_M_SVD.SysTick.Disable;
   procedure Init_Interrupts;
   procedure Init_Interrupts
   is
      Index : Integer;
   begin
      SYSCFG_Clock_Enable;
      Connect_External_Interrupt (Wakeup_Pin);
      Index := GPIO_Pin'Pos (Wakeup_Pin.Pin);
      Enable_External_Interrupt (External_Line_Number'Val (Index),
                                 Interrupt_Rising_Edge);
   end Init_Interrupts;
   procedure Initialize_IWDG;
   procedure Initialize_IWDG is
   begin
      --  IWDG setup
--      IWDG_Periph.KR.KEY := 16#5555#;  --  reg writes allowed
      IWDG_Periph.KR.KEY := 16#CCCC#;  --  Off we go...
   end Initialize_IWDG;
   type TR_Overlay
     (As_Tr : Boolean := False)
   is record
      case As_Tr is
         when False =>
            Val : HAL.UInt32;
         when True =>
            TR : TR_Register;
      end case;
   end record
     with Unchecked_Union;

   function Time_In_Seconds (T : TR_Register) return UInt32;
   function Time_In_Seconds (T : TR_Register) return UInt32
   is
   begin
      return
        (((UInt32 (T.HT) * 10) + UInt32 (T.HU)) * 3600) +
        (((UInt32 (T.MNT) * 10) + UInt32 (T.MNU)) * 60) +
        ((UInt32 (T.ST) * 10) + UInt32 (T.SU));
   end Time_In_Seconds;
   function Time_In_Seconds (T : UInt32) return UInt32;
   function Time_In_Seconds (T : UInt32) return UInt32
   is
      TR : TR_Overlay;
   begin
      TR.Val := T;
      return
        (((UInt32 (TR.TR.HT) * 10) + UInt32 (TR.TR.HU)) * 3600) +
        (((UInt32 (TR.TR.MNT) * 10) + UInt32 (TR.TR.MNU)) * 60) +
        ((UInt32 (TR.TR.ST) * 10) + UInt32 (TR.TR.SU));
   end Time_In_Seconds;
   function Time_Between_Now_And_Then (T : TR_Register) return Integer;
   function Time_Between_Now_And_Then (T : TR_Register) return Integer
   is
      T1 : UInt32 := Time_In_Seconds (T);
      T2 : UInt32 := Time_In_Seconds (RTC_Periph.TR);
   begin
      return Integer (T2) - Integer (T1);
   end Time_Between_Now_And_Then;
   function Time_Between_Now_And_Then (T : UInt32) return Integer;
   function Time_Between_Now_And_Then (T : UInt32) return Integer
   is
      T1 : UInt32 := Time_In_Seconds (T);
      T2 : UInt32 := Time_In_Seconds (RTC_Periph.TR);
   begin
      return Integer (T2) - Integer (T1);
   end Time_Between_Now_And_Then;
   TR_Shadow : UInt32 with Volatile, Address => RTC_Periph.TR'Address;
begin
   Initialize_Board;
--   Initialize_Uart;
--   Send_Char('A');
   Initialize_IWDG;
   Enable (STM32.Device.RTC);
   Enable_GPIO;
   Init_Interrupts;
   STM32.Power_Control.Disable_Backup_Domain_Protection;
   if TAMP_Periph.BKP1R = 1 then
      TAMP_Periph.BKP1R := 0;
      if Time_Between_Now_And_Then (TAMP_Periph.BKP0R) > 10 then --  Don't xmit until 10secs have elapsed
         SubGhzPhy_Init;
         SubGhzRF_Init;
         App_Start;
         PWR_Periph.SCR.CWRFBUSYF := True; --  Do this.. or it won't wakeup from SHUTDOWN....
         TAMP_Periph.BKP0R := TR_Shadow;
      end if;
   else
      TAMP_Periph.BKP0R := TR_Shadow;
   end if;

--   Set_WUT_Interrupt (STM32.Device.RTC, 20);

   --  Now off to sleep
   PWR_Periph.CR3.EWUP.Arr (1) := False;

   PWR_Periph.SCR.CWUF.Val := 16#7#; -- clear all wup sources

   PWR_Periph.CR4.WP.Val := 0; --  All rising edge

   PWR_Periph.CR3.EWUP.Arr (1) := True;

   PWR_Periph.PUCRA.PU.Val := 16#fffe#;
   PWR_Periph.PUCRB.PU.Val := 16#ffff#;
   PWR_Periph.PUCRC.PU.Val := 16#7f#;
   --  pull down
   PWR_Periph.PDCRA.PD.Val := 16#0001#;
   PWR_Periph.CR3.APC      := True;
--   PWR_Periph.CR3.APC      := False;

   --  Shutdown seq
   PWR_Periph.CR1.LPMS := 4; --  SHUTDOWN
   DBGMCU_Periph.CR := (DBG_STOP => False, DBG_STANDBY => False, others => <>);
   Cortex_M_SVD.SCB.SCB_Periph.SCR.SLEEPDEEP := True;
   Cortex_M_SVD.SysTick.SysTick_Periph.CSR.ENABLE := Off;
   TAMP_Periph.BKP1R := 1;
   Asm (Template => "wfi", Volatile => True);
   loop
      null;
   end loop;
end Rtc_Lse_Pin;
