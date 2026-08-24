with HAL;                    use HAL;
with System;

package HW is
   pragma Suppress (Elaboration_Check);

   InitComplete        : Boolean  := False;

   procedure Init_GPIO;

end HW;
