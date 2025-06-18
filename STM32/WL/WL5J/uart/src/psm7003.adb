with Interfaces;                   use Interfaces;
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
with STM32.USARTs;                 use STM32.USARTs;
with Radio_Int;                    use Radio_Int;
with Utils;                        use Utils;
with Peripherals;                  use Peripherals;
with Uart;                         use Uart;

with STM32.Power_Control;     --  use STM32.Power_Control;
with Rtc_Wkup_Int;                 use Rtc_Wkup_Int;
with STM32_SVD.RTC;                use STM32_SVD.RTC;
with STM32_SVD.PWR;                use STM32_SVD.PWR;
with STM32_SVD.RTC;                use STM32_SVD.RTC;
with STM32_SVD.TAMP;               use STM32_SVD.TAMP;
with STM32_SVD.RCC;                use STM32_SVD.RCC;
with STM32_SVD.USART;              use STM32_SVD.USART;
with STM32_SVD.DBGMCU;             use STM32_SVD.DBGMCU;
private with Cortex_M_SVD.SCB;
private with Cortex_M_SVD.SysTick;

with System.Machine_Code;          use System.Machine_Code;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

with Ada.Text_IO;                  use Ada.Text_IO;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;                use Ada.Real_Time;

--  with Exti;  pragma Unreferenced (Exti);

procedure PSM7003
is
   --  Per the datasheet for the PSM7003
   Magic_Num : constant UInt8_Array (1 .. 2) := (16#42#, 16#4d#);

   type PM_Select is
     (PM1_0,
      PM2_5,
      PM10_0);

   type PM_Array is array (PM_Select range PM1_0 .. PM10_0) of UInt16;

   type Uart_Frame is record
      Magic      : UInt16;   --  0
      Len        : UInt16;   --  1
      Pm_Ug      : PM_Array; --  2 .. 4
      Pm1_Conc   : PM_Array; --  5 .. 7
      N_0_3      : UInt16;   --  8
      N_0_5      : UInt16;   --  9
      N_1_0      : UInt16;   --  10
      N_2_5      : UInt16;   --  11
      N_5_0      : UInt16;   --  12
      N_10_0     : UInt16;   --  13
      Reserved   : UInt16;   --  14
      Csum       : UInt16;   --  15
   end record
     with Pack;

   --  We overlay a 32byte UART buffer on top of the Uart_Frame, in
   --  this way, we can structure the UART buffer.
   A         : UInt8_Array (1 .. 32);
   Frm       : Uart_Frame;
   for Frm'Alignment use 1;
   for Frm'Address use A'Address;
   Error     : UInt32 := 0;

   procedure Swap (X : in out UInt16);

   procedure Swap (X : in out UInt16)
   is
      Result : UInt16 := X;
   begin
      Result := Shift_Left (X, 8) or (Shift_Right (X, 8));
      X := Result;
   end Swap;

   function Check_Valid return Boolean;

   --  Validate the checksum. We already checked the magic# prior.
   function Check_Valid return Boolean
   is
      Sum : UInt16 := 0;
   begin
      --  First 30 summed, last 2 are the sum
      for I in 1 .. 30 loop
         Sum := Sum + UInt16 (A (I));
      end loop;
      Swap (Frm.Csum);
      if Frm.Csum = Sum then
         return True;
      else
         return False;
      end if;
   end Check_Valid;

begin
   Initialize_Board;
   Initialize_Uart;
   loop
      declare
         Idx   : Integer := 1;
         Buff  : UInt8_Array (1 .. 2);
         C     : UInt9;
         for C'Alignment use 1;
         for C'Address use Buff'Address;
      begin
         loop
            if Rx_Ready (USART_1) then
               Receive (USART_1, C);
               if Idx = 1 and Buff (1) /= Magic_Num (1) then
                  Idx := 1;
               elsif Idx = 2 and Buff (1) /= Magic_Num (2) then
                  Idx := 1;
               else
                  A (Idx) := Buff (1);
                  Idx := Idx + 1;
                  exit when Idx = 33;
               end if;
            end if;
         end loop;
         if Check_Valid then
            for J in PM_Select loop
               Swap (Frm.Pm_Ug (J));
            end loop;
            --  Get P&T
            null;
         else
            Error := Error + 1;
         end if;
      end;
   end loop;
end PSM7003;
