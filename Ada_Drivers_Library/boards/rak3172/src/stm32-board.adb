with STM32.Setup;

package body STM32.Board is

   ---------------------
   -- Initialize_LEDs --
   ---------------------

   procedure Initialize_LEDs is
   begin
      null;
   end Initialize_LEDs;

   procedure Turn_On  (This : in out User_LED)
   is
   begin
      null;
   end Turn_On;

   procedure Turn_Off (This : in out User_LED)
   is
   begin
      null;
   end Turn_Off;

   procedure Toggle   (This : in out User_LED)
   is
   begin
      null;
   end Toggle;

   procedure Toggle_LEDs (These : in out GPIO_Points)
   is
   begin
      null;
   end Toggle_LEDs;

   procedure All_LEDs_Off is
   begin
      null;
   end All_LEDs_Off;

   procedure Initialize_Board is
   begin
      Initialize_LEDs;
   end Initialize_Board;

end STM32.Board;
