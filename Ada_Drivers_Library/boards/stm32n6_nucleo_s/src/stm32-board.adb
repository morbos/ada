with STM32.Setup;

package body STM32.Board is

   ---------------------
   -- Initialize_LEDs --
   ---------------------

   procedure Initialize_LEDs is
      Configuration : GPIO_Port_Configuration;
   begin
      Enable_Clock (LEDs);

      Configuration.Mode        := Mode_Out;
      Configuration.Output_Type := Push_Pull;
      Configuration.Speed       := Speed_2MHz;
      Configuration.Resistors   := Floating;
      Configure_IO (LEDs,
                    Config => Configuration);
   end Initialize_LEDs;

   procedure All_LEDs_Off is
   begin
      Set (LEDs);
   end All_LEDs_Off;

   procedure All_LEDs_On is
   begin
      Clear (LEDs);
   end All_LEDs_On;

   procedure Initialize_Board is
   begin

      Initialize_LEDs;

      All_LEDs_On;
      All_LEDs_Off;

   end Initialize_Board;

end STM32.Board;
