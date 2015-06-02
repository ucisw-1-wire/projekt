--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:09:11 03/20/2015
-- Design Name:   
-- Module Name:   C:/XilinxPrj/PROJEKT/v3/modulTB.vhd
-- Project Name:  v3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: modul
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY modulTB IS
END modulTB;
 
ARCHITECTURE behavior OF modulTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modul
    PORT(
         clk : IN  std_logic;
         writeOne : IN  std_logic;
         writeZero : IN  std_logic;
         writeRead : IN  std_logic;
         writeReset : IN  std_logic;
         busy : OUT  std_logic;
         readBit_detecion : OUT  std_logic;
         wire_in : IN  std_logic;
         wire_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal writeOne : std_logic := '0';
   signal writeZero : std_logic := '0';
   signal writeRead : std_logic := '0';
   signal writeReset : std_logic := '0';
   signal wire_in : std_logic := '0';

 	--Outputs
   signal busy : std_logic;
   signal readBit_detecion : std_logic;
   signal wire_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modul PORT MAP (
          clk => clk,
          writeOne => writeOne,
          writeZero => writeZero,
          writeRead => writeRead,
          writeReset => writeReset,
          busy => busy,
          readBit_detecion => readBit_detecion,
          wire_in => wire_in,
          wire_out => wire_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		
		
		
		
		writeOne <= '1';
		wait for 2 us;
		writeOne <= '0';
		wait for 198 us;
		
		
		writeZero <= '1';
		wait for 2 us;
		writeZero <= '0';
		wait for 198 us;
		
		
		
		writeRead <= '1';
		wait for 2 us;
		writeRead <= '0';
		wait for 198 us;
		
		
		writeReset <= '1';
		wait for 2 us;
		writeReset <= '0';
		wait for 1998 us;

      -- insert stimulus here 

      wait;
   end process;

END;
