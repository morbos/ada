--  An User controlled RGB LED is provided on the Board, located on the right hand edge.
--  The LEDs in this device are controlled by LPC55S69 ports P1_4 (Blue), P1_6 (Red), P1_7
--  (Green) with the LEDs being illuminated when the respective LED is pulled low. Note that
--  these port lines are also connected to expansion connector J18.
with HAL;               use HAL;
with NXP_SVD;           use NXP_SVD;
with NXP_SVD.GPIO;      use NXP_SVD.GPIO;
with NXP_SVD.INPUTMUX;  use NXP_SVD.INPUTMUX;
with NXP.Device;        use NXP.Device;
with NXP.Board;         use NXP.Board;
with NXP.GPIO;          use NXP.GPIO;
with NXP.InputMux;      use NXP.InputMux;
with NXP.Pint;          use NXP.Pint;
with Button;            use Button;

with Ada.Real_Time;     use Ada.Real_Time;
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;

procedure Test_S
is
   Config : GPIO_Port_Configuration;
   INPUTMUX : aliased INPUTMUX_Peripheral
        with Import, Address => S_NS_Periph (INPUTMUX_Base);
   Pint_Config : Pint_Configuration;
begin
   Initialize_Board;
   Enable_Clock (User_Button & Wake_Button);
   Config.Mode        := Mode_In;
   Config.Resistors   := Floating;
   Config.Invert      := True;
   Configure_IO (User_Button & Wake_Button, Config);

   Enable_InputMux;
   Enable_Pint;
   Pint_Config.Slot := PinInt_2;
   Pint_Config.Mode := Pint_Edge;
   Pint_Config.Edge := Pint_Falling;

   Enable_GPIO_Interrupt (User_Button, Pint_Config);

   Pint_Config.Slot := PinInt_3;
   Pint_Config.Mode := Pint_Edge;
   Pint_Config.Edge := Pint_Falling;

   Enable_GPIO_Interrupt (Wake_Button, Pint_Config);
   loop
--      for LED of LEDs loop
--         Suspend_Until_True (User_Go);
--         Turn_On (LED);
--         delay until Clock + Milliseconds (1000);
--         Turn_Off (LED);
--      end loop;
      for LED of LEDs loop
         Suspend_Until_True (Wake_Go);
         Turn_On (LED);
         delay until Clock + Milliseconds (1000);
         Turn_Off (LED);
      end loop;
   end loop;
end Test_S;
