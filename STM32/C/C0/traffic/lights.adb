with Interfaces;             use Interfaces;
with Prng;                   use Prng;
with HW;                     use HW;
with STM32_SVD.RCC;          use STM32_SVD.RCC;
with STM32_SVD.TIM;          use STM32_SVD.TIM;

with System;                 use System;

package body Lights is

   --  Add or update a fade job in the Worklist
   function Add_Fade_Job (Chan        : UInt8;
                          Start_Idx   : UInt8;
                          End_Idx     : UInt8;
                          Duration_Ms : UInt32) return Boolean
   is
      CCR : System.Address;
   begin
      case Chan is
         when RED_CHAN =>
            CCR := TIM1_Periph.TIM1_CCR1'Address;
         when AMBER_CHAN =>
            CCR := TIM1_Periph.TIM1_CCR3'Address;
         when GREEN_CHAN =>
            CCR := TIM1_Periph.TIM1_CCR4'Address;
         when others =>
            loop
               null;
            end loop;
      end case;

      if Duration_Ms = 0 then
         --  Immediate set if duration is 0
         Update_CCR (CCR, Gamma_1024_Table (Integer (End_Idx)));
         return True;
      end if;

      --  1. Check if CCR is already in the Worklist (update existing job)
      for I in 1 .. MAX_FADE_JOBS loop
         if Jobs (I).Active and Jobs (I).CCR_Reg = CCR then
            Jobs (I).Start_Idx   := Start_Idx;
            Jobs (I).End_Idx     := End_Idx;
            Jobs (I).Duration_Ms := Duration_Ms;
            Jobs (I).Elapsed_Ms  := 0;
            return True;
         end if;
      end loop;

      --  2. Otherwise find an empty slot
      for I in 1 .. MAX_FADE_JOBS loop
         if not Jobs (I).Active then
            Jobs (I).CCR_Reg     := CCR;
            Jobs (I).Start_Idx   := Start_Idx;
            Jobs (I).End_Idx     := End_Idx;
            Jobs (I).Duration_Ms := Duration_Ms;
            Jobs (I).Elapsed_Ms  := 0;
            Jobs (I).Active      := True;

            --  Set initial state immediately
            Update_CCR (CCR, Gamma_1024_Table (Integer (Start_Idx)));

            return True;
         end if;
      end loop;

      return False; --  Worklist full
   end Add_Fade_Job;


   procedure Process_Fade_Worklist is
      CCR : System.Address;
   begin
      for I in 1 .. MAX_FADE_JOBS loop
         if Jobs (I).Active then
            Jobs (I).Elapsed_Ms := Jobs (I).Elapsed_Ms + 1;

            if Jobs (I).Elapsed_Ms >= Jobs (I).Duration_Ms then
               --  Target reached: lock to exact end value and release slot
               Update_CCR (Jobs (I).CCR_Reg, Gamma_1024_Table (Integer (Jobs (I).End_Idx)));
               Jobs (I).Active := False;
            else
               declare
                  Span : Integer_32 := Integer_32 (Jobs (I).End_Idx) - Integer_32 (Jobs (I).Start_Idx);
                  Dur  : Integer_32 := Integer_32 (Jobs (I).Duration_Ms);
                  Num  : Integer_32 := Span * Integer_32 (Jobs (I).Elapsed_Ms);
                  --  Add signed half-step rounding: +dur/2 for positive, -dur/2 for negative
                  Rounded_Offset : Integer_32 := (if Num > 0 then (Num + (Dur / 2)) / Dur else (Num - (Dur / 2)) / Dur);
                  Current_Idx : Integer_32 := Integer_32 (Jobs (I).Start_Idx) + Rounded_Offset;
               begin
                  --  Safety clamp bounds to  (0, GAMMA_TABLE_SIZE - 1)
                  --  This could be a modulo range later, obviating this check
                  if Current_Idx < 0 then
                     Current_Idx := 0;
                  end if;
                  if Current_Idx >= GAMMA_TABLE_SIZE then
                     Current_Idx := GAMMA_TABLE_SIZE - 1;
                  end if;
                  Update_CCR (Jobs (I).CCR_Reg, Gamma_1024_Table (Integer (Current_Idx)));
               end;
            end if;
         end if;
      end loop;
   end Process_Fade_Worklist;

   --  Helper to set LED duty cycle with fade
   procedure SetLight (Chan : UInt8; Posture : Stance; Max : UInt8) is
   begin
      if Posture = ON then
         if not Add_Fade_Job (Chan, 0, Max, FADE_ON_MS) then
            null; --  ? what to do
         end if;
      else
         if not Add_Fade_Job (Chan, Max, 0, FADE_OFF_MS) then
            null; --  ? what to do
         end if;
      end if;
   end SetLight;

   --  Generate a random duration between min_minutes and max_minutes
   function GetRandomHoldMs (Min_Minutes : UInt32; Max_Minutes : UInt32) return UInt32
   is
      --  1. Convert minutes to seconds
      Min_Sec      : UInt32 := Min_Minutes * 60;
      Max_Sec      : UInt32 := Max_Minutes * 60;
      --  2. Pick random second value between min and max
      Selected_Sec : UInt32 := Min_Sec + (Fast_Rand mod (Max_Sec - Min_Sec + 1));
   begin
      --  3. Convert seconds to milliseconds
      return Selected_Sec * 1000;
   end GetRandomHoldMs;

   procedure Process is
   begin
      --  Check if the current phase duration has elapsed
      if Ticks - StateStartTime >= CurrentHoldDuration then
         StateStartTime := Ticks; --  Reset timer for the next state
         case CurrentState is
            when STATE_RED =>
               --  Transition to RED + AMBER (Fixed 2 seconds)
               SetLight (AMBER_CHAN, ON, AMBER_MAX);

               CurrentState := STATE_RED_AMBER;
               CurrentHoldDuration := 2000; --  Fixed 2s
            when STATE_RED_AMBER =>
               --  Transition to GREEN (Random 1 to 2 minutes)
               SetLight (RED_CHAN, OFF, RED_MAX);
               SetLight (AMBER_CHAN, OFF, AMBER_MAX);
               SetLight (GREEN_CHAN, ON, GREEN_MAX);

               CurrentState := STATE_GREEN;
               CurrentHoldDuration := GetRandomHoldMs (1, 2);
            when STATE_GREEN =>
               --  Transition to AMBER (Fixed 3 seconds)
               SetLight (GREEN_CHAN, OFF, GREEN_MAX);
               SetLight (AMBER_CHAN, ON, AMBER_MAX);

               CurrentState := STATE_AMBER;
               CurrentHoldDuration := 3000; --  Fixed 3s
            when STATE_AMBER =>
               --  Transition back to RED (Random 1 to 2 minutes)
               SetLight (AMBER_CHAN, OFF, AMBER_MAX);
               SetLight (RED_CHAN, ON, RED_MAX);

               CurrentState := STATE_RED;
               CurrentHoldDuration := GetRandomHoldMs (1, 2);
            when others =>
               null;
         end case;
      end if;
   end Process;

end Lights;
