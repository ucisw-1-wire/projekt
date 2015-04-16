-- Vhdl test bench created from schematic D:\!OneDriveCloud\OneDrive\Studia\Sem_VI\UCISW_2\svn\trunk\v4\sequenceTestSchema.sch - Thu Apr 16 22:22:07 2015
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
ENTITY sequenceTestSchema_sequenceTestSchema_sch_tb IS
END sequenceTestSchema_sequenceTestSchema_sch_tb;
ARCHITECTURE behavioral OF sequenceTestSchema_sequenceTestSchema_sch_tb IS 

   COMPONENT sequenceTestSchema
   PORT( clk	:	IN	STD_LOGIC; 
          tempData	:	OUT	STD_LOGIC_VECTOR (23 DOWNTO 0); 
          busy	:	OUT	STD_LOGIC; 
          start	:	IN	STD_LOGIC; 
          wire_inout	:	INOUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL tempData	:	STD_LOGIC_VECTOR (23 DOWNTO 0);
   SIGNAL busy	:	STD_LOGIC;
   SIGNAL start	:	STD_LOGIC;
   SIGNAL wire_inout	:	STD_LOGIC;
	constant clk_period : time := 20 ns;
BEGIN

   UUT: sequenceTestSchema PORT MAP(
		clk => clk, 
		tempData => tempData, 
		busy => busy, 
		start => start, 
		wire_inout => wire_inout
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
		start <= '1';
		wait for 10 us;
		start <= '0';
		wait for 500 us;
		wire_inout <= '0';
		wait for 100 us;
		wire_inout <='1';
		
		wait for 1800 us;
		wire_inout <='0';
		wait for 10 us;
		wire_inout <='1';
		
		wait for 525 us;
		wire_inout <='0';
		wait for 50 us;
		wire_inout <='1';
		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
