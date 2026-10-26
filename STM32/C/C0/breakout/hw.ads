with HAL;                    use HAL;
with System;

package HW is
   pragma Suppress (Elaboration_Check);

   procedure Init_GPIO;

   procedure Set_SPI_CS;
   procedure Clr_SPI_CS;

   procedure Init_SPI;

end HW;
