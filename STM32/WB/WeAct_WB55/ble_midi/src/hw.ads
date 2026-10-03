with HAL;             use HAL;
with STM32.Device;    use STM32.Device;
with STM32.Board;     use STM32.Board;
with STM32.GPIO;      use STM32.GPIO;

package HW is

   HW_RCC_SEMID            : constant UInt5 := 3;
   HW_STOP_MODE_SEMID      : constant UInt5 := 4;

   procedure Misc_HW_Init;

   procedure SYSCFG_Init;

   procedure SYSCFG2_Init;

   procedure CPU2_Init;

   function GetSysClkSource return UInt2;

   function IsActive_C1Stop return Boolean;

   procedure Switch_On_HSI;

   procedure Switch_On_HSE;

   procedure EnterStopMode;

   procedure ExitStopMode;

   procedure SysTick_Stance (On : Boolean);

   procedure Stop2;

   procedure Sleep;

   procedure Enable_Interrupts;

   procedure Disable_Interrupts;

   procedure Enable_MCO;

   procedure Initialize_HW;

end HW;
