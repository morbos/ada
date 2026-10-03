with Interfaces; use Interfaces;
with HAL;        use HAL;
with HAL.I2C;    use HAL.I2C;

generic

   type IO_Port (<>) is abstract tagged limited private;

   type Any_IO_Port is access all IO_Port'Class;

   with procedure Read
     (This     : Any_IO_Port;
      Register : UInt8;
      Value    : out UInt8) is <>;
   --  Get the Value at the address specified in Register via This port.

   with procedure Write
     (This     : Any_IO_Port;
      Register : UInt8;
      Value    : UInt8) is <>;
   --  Write the Value to the address specified in Register via This port.

   with procedure Read_Buffer
     (This     : Any_IO_Port;
      Register : UInt8;
      Value    : out UInt8_Array) is <>;
   --  Get the multiple Values at the address specified in Register via This
   --  port.

package Mini_Joy_Drv is

   type Mini_Joy_Port (Port : not null Any_IO_Port) is tagged limited private;

   JOYSTICK_I2C_ADDR    : constant := 16#5A#;
   JOYSTICK_BASE        : constant := 16#10#;
   JOYSTICK_LEFT_X_REG  : constant := 16#10#;
   JOYSTICK_LEFT_Y_REG  : constant := 16#11#;
   JOYSTICK_RIGHT_X_REG : constant := 16#12#;
   JOYSTICK_RIGHT_Y_REG : constant := 16#13#;

   BUTTON_BASE          : constant := 16#20#;
   BUTTON_OK_REG        : constant := 16#20#;
   BUTTON_C_REG         : constant := 16#21#;
   BUTTON_A_REG         : constant := 16#22#;
   BUTTON_B_REG         : constant := 16#23#;
   BUTTON_D_REG         : constant := 16#24#;

   type Events is
     (
      PRESS_DOWN,
      PRESS_UP,
      PRESS_REPEAT,
      SINGLE_CLICK,
      DOUBLE_CLICK,
      LONG_PRESS_START,
      LONG_PRESS_HOLD,
      Number_Of_Event,
      NONE_PRESS
     );

   for Events use
     (
      PRESS_DOWN       => 0,
      PRESS_UP         => 1,
      PRESS_REPEAT     => 2,
      SINGLE_CLICK     => 3,
      DOUBLE_CLICK     => 4,
      LONG_PRESS_START => 5,
      LONG_PRESS_HOLD  => 6,
      Number_Of_Event  => 7,
      NONE_PRESS       => 8
     );

   type Axis is
     (Left_X,
      Left_Y,
      Right_X,
      Right_Y);

   for Axis use
     (Left_X  => 1,
      Left_Y  => 2,
      Right_X => 3,
      Right_Y => 4);

   type Joy_Rec is record
      Stick   : I2C_Data (1 .. 4);
      Buttons : I2C_Data (1 .. 5);
   end record;

   function Joy_Read (This : in out Mini_Joy_Port) return Joy_Rec;

private

   type Mini_Joy_Port (Port : not null Any_IO_Port) is
   tagged limited record
      null;
   end record;

end Mini_Joy_Drv;
