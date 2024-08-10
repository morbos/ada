with HAL;                use HAL;
with STM32.Board;        use STM32.Board;
with STM32.Device;       use STM32.Device;
with STM32.GPIO;         use STM32.GPIO;
with STM32.DAC;          use STM32.DAC;
with Ada.Text_IO;        use Ada.Text_IO;
--  with Ada.Numerics;       use Ada.Numerics;
--  with System.Libm_Single; use System.Libm_Single;

use STM32; -- for GPIO_Alternate_Function

with Ada.Real_Time;      use Ada.Real_Time;

procedure Dac_Sw is

   Output_Channel1 : constant DAC_Channel := Channel_1;  -- arbitrary
   Output_Channel2 : constant DAC_Channel := Channel_2;  -- arbitrary

   procedure Configure_DAC_GPIO (Output_Channel : DAC_Channel);
   --  Once the channel is enabled, the corresponding GPIO pin is automatically
   --  connected to the analog converter output. However, in order to avoid
   --  parasitic consumption, the PA4 pin (Channel_1) or PA5 pin (Channel_2)
   --  should first be configured to analog mode. See the note in the RM, page
   --  431.

   ------------------------
   -- Configure_DAC_GPIO --
   ------------------------

   procedure Configure_DAC_GPIO (Output_Channel : DAC_Channel) is
      Output : constant GPIO_Point := (if Output_Channel = Channel_1
                                       then DAC_Channel_1_IO
                                       else DAC_Channel_2_IO);
      Config : GPIO_Port_Configuration;
   begin
      Enable_Clock (Output);
      Config.Mode := Mode_Analog;
      Config.Resistors := Floating;
      Configure_IO (Output, Config);
   end Configure_DAC_GPIO;

--   Step : constant Natural := 1024; -- This flickers quite noticably
   Step : constant Natural := 32; --  this doesnt flicker but the dots are visible

   type ValIdx is mod Step;

   type Value_Type is digits 6 range
     -1.0 .. 1.0;
   type Value_Array is array (ValIdx) of Float;

   X : Value_Array := (
                       0.0, 0.049067674327418015, 0.0980171403295606, 0.14673047445536175,
                       0.19509032201612825, 0.24298017990326387, 0.29028467725446233, 0.33688985339222005,
                       0.3826834323650898, 0.4275550934302821, 0.47139673682599764, 0.5141027441932217,
                       0.5555702330196022, 0.5956993044924334, 0.6343932841636455, 0.6715589548470183,
                       0.7071067811865475, 0.7409511253549591, 0.773010453362737, 0.8032075314806448,
                       0.8314696123025452, 0.8577286100002721, 0.8819212643483549, 0.9039892931234433,
                       0.9238795325112867, 0.9415440651830208, 0.9569403357322089, 0.970031253194544,
                       0.9807852804032304, 0.989176509964781, 0.9951847266721968, 0.9987954562051724);
begin
   Initialize_Board;

--   Configure_DAC_GPIO (Output_Channel1);
--   Configure_DAC_GPIO (Output_Channel2);

   Enable_Clock (DAC_1);

   Reset (DAC_1);

   Select_Trigger (DAC_1, Output_Channel1, Software_Trigger);
   Select_Trigger (DAC_1, Output_Channel2, Software_Trigger);

   Enable_Trigger (DAC_1, Output_Channel1);
   Enable_Trigger (DAC_1, Output_Channel2);

   Enable (DAC_1, Output_Channel1);
   Enable (DAC_1, Output_Channel2);

   declare
      type Dirs is (Forwards, Backwards);
      Value   : UInt32 := 0;
--      Tmp     : Float;
      Tmp_X   : Float;
      Tmp_Y   : Float;
      Dir_X   : Dirs;
      Dir_Y   : Dirs;
      Sign_X  : Float;
      Sign_Y  : Float;
      Idx_X   : ValIdx;
      Idx_Y   : ValIdx;
      Count_X : UInt32;
      Count_Y : UInt32;

      Resolution : constant DAC_Resolution := DAC_Resolution_12_Bits;
      --  Arbitrary, change as desired.  Counts will automatically adjust.

      Max_Counts : constant UInt32 := (if Resolution = DAC_Resolution_12_Bits
                                       then Max_12bit_Resolution
                                       else Max_8bit_Resolution);
--      Pi_O_2 : Float := Pi / 2.0;
   begin
      --  Amount of radians per Range elem
--      for I in X'Range loop
--         Tmp := Float (I) / Float (Step);
--         X (I) := Sin (Pi_O_2 * Tmp);
--      end loop;
      loop
         for Quadrant in 1 .. 4 loop
            case Quadrant is
               when 1 =>
                  Dir_X := Backwards;
                  Dir_Y := Forwards;
                  Sign_X := 1.0;
                  Sign_Y := 1.0;
               when 2 =>
                  Dir_X := Forwards;
                  Dir_Y := Backwards;
                  Sign_X := -1.0;
                  Sign_Y := 1.0;
               when 3 =>
                  Dir_X := Backwards;
                  Dir_Y := Forwards;
                  Sign_X := -1.0;
                  Sign_Y := -1.0;
               when 4 =>
                  Dir_X := Forwards;
                  Dir_Y := Backwards;
                  Sign_X := 1.0;
                  Sign_Y := -1.0;
            end case;

            for I in X'Range loop
               Idx_X := (if Dir_X = Forwards then I else X'Last - I);
               Idx_Y := (if Dir_Y = Forwards then I else X'Last - I);
               Tmp_X := X (Idx_X) * Sign_X;
               Tmp_Y := X (Idx_Y) * Sign_Y;
               --  Tmps are now -1..1 we need 0..maxcount
               --  Tmp += 1, Tmp /= 2 makes it 0 .. 2 -> 0..1
               Tmp_X := Tmp_X + 1.0;
               Tmp_Y := Tmp_Y + 1.0;
               Tmp_X := Tmp_X / 2.0;
               Tmp_Y := Tmp_Y / 2.0;
               Tmp_Y := Tmp_Y + 0.01; -- Stay off of 0
--               Count_X := UInt32 (Tmp_X * Float (Max_Counts));
--               Count_Y := UInt32 (Tmp_Y * Float (Max_Counts));
               Count_X := UInt32 (Tmp_X * Float (4000.0));
               Count_Y := UInt32 (Tmp_Y * Float (4000.0));
               Set_Output
                 (DAC_1,
                  Output_Channel1,
                  Count_X,
                  Resolution,
                  Right_Aligned);
               Set_Output
                 (DAC_1,
                  Output_Channel2,
                  Count_Y,
                  Resolution,
                  Right_Aligned);
--                Trigger_Conversion_By_Software (DAC_1, Output_Channel1);
--                Trigger_Conversion_By_Software (DAC_1, Output_Channel2);
               Trigger_Conversion_By_Software (DAC_1); --  Hits both channels
            end loop;
         end loop;
      end loop;
   end;
end Dac_Sw;
