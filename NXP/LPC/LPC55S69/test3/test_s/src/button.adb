with NXP.Board;   use NXP.Board;
with NXP.Device;  use NXP.Device;
with NXP.Pint;    use NXP.Pint;
with HAL;         use HAL;

package body Button is

   -------------
   -- Handler --
   -------------

   protected body Handler is

      -----------------
      -- IRQ_Handler --
      -----------------

      procedure Button_Handler is
      begin
         if Pint_Interrupt_Pending (PinInt_2) then
            Pint_Clear_Interrupt (PinInt_2);
--            Set_True (User_Go);
            Set_True (Wake_Go);
         elsif Pint_Interrupt_Pending (PinInt_3) then
            Pint_Clear_Interrupt (PinInt_3);
            Set_True (Wake_Go);
         else
            --  Stray
            loop
               null;
            end loop;
         end if;
      end Button_Handler;

   end Handler;

end Button;
