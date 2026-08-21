with HAL;      use HAL;
with SysTick;  use SysTick;

with System;

package Lights is
   --  Counter Prescaler value
   PrescalerValue      : UInt32   := 0;
   StateStartTime      : UInt32   := 0;
   CurrentHoldDuration : UInt32   := 0;
   InitComplete        : Boolean  := False;

   type LightState is
     (STATE_RED, STATE_RED_AMBER, STATE_GREEN, STATE_AMBER);

   CurrentState : LightState := STATE_RED_AMBER;

   type Stance is
     (ON, OFF);

   MAX_FADE_JOBS    : constant   := 4;
   GAMMA_TABLE_SIZE : constant   := 32;

   FADE_OFF_MS      : constant   := 512;
   FADE_ON_MS       : constant   := 256;

   RED_CHAN         : constant   := 1;
   AMBER_CHAN       : constant   := 2;
   GREEN_CHAN       : constant   := 4;
   RED_MAX          : constant   := 31;
   AMBER_MAX        : constant   := 31;
   GREEN_MAX        : constant   := 10;

   Gamma_1024_Table : constant UInt16_Array :=
     (
      0,    1,    2,    4,    7,   11,   16,   23,
      31,   41,   53,   67,   84,  103,  125,  150,
      178,  209,  244,  282,  325,  371,  422,  477,
      536,  600,  668,  741,  819,  902,  990, 1024
     );

--   type Volatile_UInt32_Ptr is access all UInt32
--     with Real_Address; -- Ensures full pointer operations
--   pragma Volatile (Volatile_UInt32_Ptr);

   type FadeJob is record
      CCR_Reg     : System.Address;       --  Hardware CCR register (e.g., &TIM1->CCR1)
      Start_Idx   : UInt8;                --  Start index in gamma table (0..31)
      End_Idx     : UInt8;                --  End index in gamma table (0..31)
      Duration_Ms : UInt32;               --  Total duration for the fade
      Elapsed_Ms  : UInt32;               --  Elapsed time counter
      Active      : Boolean;              --  Slot in use flag
   end record;

   type Worklist_Type is array (1 .. MAX_FADE_JOBS) of FadeJob;
   Jobs : Worklist_Type;

   function Add_Fade_Job (Chan        : UInt8;
                          Start_Idx   : UInt8;
                          End_Idx     : UInt8;
                          Duration_Ms : UInt32) return Boolean;
   procedure Process_Fade_Worklist;

   --  Helper to set LED duty cycle with fade
   procedure SetLight (Chan : UInt8; Posture : Stance; Max : UInt8);
   --  Generate a random duration between min_minutes and max_minutes
   function GetRandomHoldMs (Min_Minutes : UInt32; Max_Minutes : UInt32) return UInt32;

   procedure Process;

end Lights;
