with HAL;                          use HAL;
with HAL.Real_Time_Clock;          use HAL.Real_Time_Clock;
with STM32.Device;                 use STM32.Device;
with STM32.Board;                  use STM32.Board;
with STM32.RTC;                    use STM32.RTC;

with STM32_SVD.RTC;                use STM32_SVD.RTC;
with STM32_SVD.PWR;                use STM32_SVD.PWR;
with STM32_SVD.TAMP;               use STM32_SVD.TAMP;

use STM32; -- for GPIO_Alternate_Function

procedure Rtc_Lse_Diff
is
   Init : TR_Register;

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
   Diff : Integer;
begin
   Initialize_Board;
   Enable (STM32.Device.RTC);
   Init := RTC_Periph.TR;
   TAMP_Periph.BKP0R := TR_Shadow;
   loop
      Diff := Time_Between_Now_And_Then (TAMP_Periph.BKP0R);
      if Diff > 10 then
         TAMP_Periph.BKP0R := TR_Shadow;
      end if;
   end loop;
end Rtc_Lse_Diff;
