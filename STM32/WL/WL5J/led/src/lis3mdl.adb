with HAL.I2C;                use HAL.I2C;

package body LIS3MDL is

   -------------
   -- Device_Id --
   -------------

   function Device_Id (This : in out LIS3MDL_Sensor) return UInt8
   is
      Ret    : UInt8;
   begin
      Read (This.Port, LIS3MDL_WHO_AM_I, Ret);
      return Ret;
   end Device_Id;

   procedure Set_Range (This : in out LIS3MDL_Sensor; Choice : FS_Range)
   is
      X   : UInt8;
      Reg : CFG_REG2_Reg;
      for X'Address use Reg'Address;
   begin
      Read (This.Port, LIS3MDL_CTRL_REG2, X);
      Reg.FS := Choice;
      Write (This.Port, LIS3MDL_CTRL_REG2, X);
   end Set_Range;

   function Get_Range (This : in out LIS3MDL_Sensor) return FS_Range
   is
      X   : UInt8;
      Reg : CFG_REG2_Reg;
      for X'Address use Reg'Address;
   begin
      Read (This.Port, LIS3MDL_CTRL_REG2, X);
      return Reg.FS;
   end Get_Range;

   procedure Set_OpMode (This : in out LIS3MDL_Sensor; Choice : OpMode_Range)
   is
      X   : UInt8;
      Reg : CFG_REG3_Reg;
      for X'Address use Reg'Address;
   begin
      Read (This.Port, LIS3MDL_CTRL_REG3, X);
      Reg.OpMode := Choice;
      Write (This.Port, LIS3MDL_CTRL_REG3, X);
   end Set_OpMode;

   procedure Set_BDU (This : in out LIS3MDL_Sensor; Stance : Boolean)
   is
      X   : UInt8;
      Reg : CFG_REG5_Reg;
      for X'Address use Reg'Address;
   begin
      Read (This.Port, LIS3MDL_CTRL_REG5, X);
      Reg.BDU := Stance;
      Write (This.Port, LIS3MDL_CTRL_REG5, X);
   end Set_BDU;

   procedure Set_XY_Perf (This : in out LIS3MDL_Sensor; Choice : Perf_Range)
   is
      X   : UInt8;
      Reg : CFG_REG1_Reg;
      for X'Address use Reg'Address;
   begin
      Read (This.Port, LIS3MDL_CTRL_REG1, X);
      Reg.OM := Choice;
      Write (This.Port, LIS3MDL_CTRL_REG1, X);
   end Set_XY_Perf;

   procedure Set_DataRate (This : in out LIS3MDL_Sensor; Choice : Rate_Range)
   is
      X   : UInt8;
      Reg : CFG_REG1_Reg;
      for X'Address use Reg'Address;
   begin
      Read (This.Port, LIS3MDL_CTRL_REG1, X);
      Reg.DOUT := Choice;
      Write (This.Port, LIS3MDL_CTRL_REG1, X);
   end Set_DataRate;

   procedure Set_Z_Perf (This : in out LIS3MDL_Sensor; Choice : Perf_Range)
   is
      X   : UInt8;
      Reg : CFG_REG4_Reg;
      for X'Address use Reg'Address;
   begin
      Read (This.Port, LIS3MDL_CTRL_REG4, X);
      Reg.OpModeZ := Choice;
      Write (This.Port, LIS3MDL_CTRL_REG5, X);
   end Set_Z_Perf;

   function Get_Status (This : in out LIS3MDL_Sensor) return Status_Reg
   is
      X   : UInt8;
      Reg : Status_Reg;
      for X'Address use Reg'Address;
   begin
      Read (This.Port, LIS3MDL_STATUS_REG, X);
      return Reg;
   end Get_Status;

   procedure Read_MAG (This : in out LIS3MDL_Sensor; Data : out Sensor_Data)
   is
      X : I2C_Data (1 .. 6);
      Y : Sensor_Data;
      for X'Address use Y'Address;
   begin
      loop
         exit when Get_Status (This).XYZDataAvailable;
      end loop;
      Read_Buffer (This.Port, LIS3MDL_OUT_X_L, X);
      Data := Y;
   end Read_MAG;

   procedure Soft_Reset (This : in out LIS3MDL_Sensor)
   is
      X   : UInt8;
      Reg : CFG_REG2_Reg;
      for X'Address use Reg'Address;
   begin
      Read (This.Port, LIS3MDL_CTRL_REG2, X);
      Reg.SOFT_RST := True;
      Write (This.Port, LIS3MDL_CTRL_REG2, X);
   end Soft_Reset;

   procedure Set_Int_Src (This : in out LIS3MDL_Sensor; Src : INT_SRC_Reg)
   is
      X   : UInt8;
      Reg : INT_SRC_Reg := Src;
      for X'Address use Reg'Address;
   begin
      Write (This.Port, LIS3MDL_INT_SR, X);
   end Set_Int_Src;

   procedure Set_Thresh (This : in out LIS3MDL_Sensor; Thresh : Integer_16)
   is
      X : UInt8_Array (0 .. 1);
      Y : Integer_16 := Thresh;
      for X'Address use Y'Address;
   begin
      Write (This.Port, LIS3MDL_INT_THS_L, X (0));
      Write (This.Port, LIS3MDL_INT_THS_H, X (1));
   end Set_Thresh;

   procedure Set_Int_Enable (This : in out LIS3MDL_Sensor; IntSrc : INT_CONFIG_Reg)
   is
      X   : UInt8;
      Reg : INT_CONFIG_Reg := IntSrc;
      for X'Address use Reg'Address;
   begin
      Write (This.Port, LIS3MDL_INT_CFG, X);
   end Set_Int_Enable;

   procedure Xyzzy;
   procedure Xyzzy
   is
   begin
      null;
   end Xyzzy;

   function Int_Set (This : in out LIS3MDL_Sensor) return Boolean
   is
      X   : UInt8;
      Reg : INT_SRC_Reg;
      for X'Address use Reg'Address;
   begin
      Read (This.Port, LIS3MDL_INT_SR, X);
      if Reg.INT then
         Xyzzy;
      end if;
      return Reg.INT;
   end Int_Set;

   procedure Configure (This : in out LIS3MDL_Sensor)
   is
   begin
      This.Soft_Reset;
      if This.Device_Id /= I_Am_LIS3MDL then
         raise Program_Error with "I_Am_LIS3MDL";
      end if;
      This.Set_Range (FS_4);
      This.Set_OpMode (Continuous);
      This.Set_BDU (True);
      This.Set_XY_Perf (Ultra_Perf);
      This.Set_Z_Perf (Ultra_Perf);
      This.Set_DataRate (Hz_5);
   end Configure;

end LIS3MDL;
