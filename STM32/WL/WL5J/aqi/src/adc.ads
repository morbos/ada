with HAL;             use HAL;
with STM32.ADC;       use STM32.ADC;
with STM32_SVD.ADC;   use STM32_SVD.ADC;

package Adc is

   procedure Initialize_ADC;

   function Get_ADC return UInt32;

end Adc;
