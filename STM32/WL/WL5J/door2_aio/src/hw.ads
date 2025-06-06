with STM32.EXTI;       use STM32.EXTI;
with STM32.SubGhzRF;   use STM32.SubGhzRF;
with STM32_SVD.EXTI;   use STM32_SVD.EXTI;

package Hw is

   procedure Enable_EXTI17;
   procedure Enable_EXTI20;
   procedure Initialize_HW;
   procedure RAK_RF_Switch (Mode : RADIO_Mode);
   procedure LED_On;
   procedure LED_Off;
   function Check_ReInit return Boolean;

end Hw;
