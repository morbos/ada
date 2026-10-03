with Hci;         use Hci;
with HW;          use HW;
with Setup;       use Setup;
with Run;         use Run;
with Mbox;        use Mbox;
with STM32.IPCC;  use STM32.IPCC;
--

--  Top level comm. Farms out the inits to -hw and -setup
--

package body Comm is

   procedure Initialize_Comm
   is
   begin
      Hci_Init;
      Initialize_Comm_Hardware;
      Initialize_Comm_Setup;
      SetConnectable;
      IPCC_Cpu1_EnableReceiveChannel ((HW_IPCC_BLE_CMD_CHANNEL, HW_IPCC_MM_RELEASE_BUFFER_CHANNEL));
   end Initialize_Comm;

end Comm;
