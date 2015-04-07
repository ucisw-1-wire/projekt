-- Vhdl test bench created from schematic D:\!OneDriveCloud\OneDrive\Studia\Sem VI\UCISW 2\svn\trunk\v4\testSchema.sch - Mon Mar 30 00:53:01 2015
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY testSchema_testSchema_sch_tb IS
END testSchema_testSchema_sch_tb;
ARCHITECTURE behavioral OF testSchema_testSchema_sch_tb IS 

   COMPONENT testSchema
   PORT( clk	:	IN	STD_LOGIC; 
          start_write	:	IN	STD_LOGIC; 
          start_read	:	IN	STD_LOGIC; 
          wire_out	:	OUT	STD_LOGIC; 
          wire_in	:	IN	STD_LOGIC; 
          busy_write	:	OUT	STD_LOGIC; 
          busy_read	:	OUT	STD_LOGIC; 
          XLXN_17	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC:= '0';
   SIGNAL start_write	:	STD_LOGIC:= '0';
   SIGNAL start_read	:	STD_LOGIC:= '0';
   SIGNAL wire_out	:	STD_LOGIC:= '0';
   SIGNAL wire_in	:	STD_LOGIC:= '0';
   SIGNAL busy_write	:	STD_LOGIC:= '0';
   SIGNAL busy_read	:	STD_LOGIC:= '0';
   SIGNAL XLXN_17	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

constant clk_period : time := 20 ns;

BEGIN

   UUT: testSchema PORT MAP(
		clk => clk, 
		start_write => start_write, 
		start_read => start_read, 
		wire_out => wire_out, 
		wire_in => wire_in, 
		busy_write => busy_write, 
		busy_read => busy_read, 
		XLXN_17 => XLXN_17
   );

-- *** Test Bench - User Defined Section ***
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	

	
	
	
	
	tb : PROCESS
   BEGIN
		wait for 100 us;
		start_write <='1';
		wait for 2 us;
		start_write <='0';	
	
		wait for 1000 us;
		start_read <='1';
		wait for 2 us;
		start_read <='0';
	
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
