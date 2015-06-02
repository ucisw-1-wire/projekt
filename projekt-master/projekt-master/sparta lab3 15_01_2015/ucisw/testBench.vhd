--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:48:07 01/15/2015
-- Design Name:   
-- Module Name:   C:/XilinxPrj/VGA/testBench.vhd
-- Project Name:  VGA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGA
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
 
ENTITY testBench IS
END testBench;
 
ARCHITECTURE behavior OF testBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGA
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         colors_in : IN  std_logic_vector(2 downto 0);
         
			r: OUT std_logic;
			g: OUT std_logic;
			b: OUT std_logic;
         hsync : OUT  std_logic;
         vsync : OUT  std_logic;
         row : OUT  std_logic_vector(8 downto 0);
         column : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal colors_in : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
	signal r: std_logic;
	signal g: std_logic;
	signal b: std_logic;
	signal hsync : std_logic;
   signal vsync : std_logic;
   signal row : std_logic_vector(8 downto 0);
   signal column : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGA PORT MAP (
          clk => clk,
          reset => reset,
          colors_in => colors_in,
          r=>r,
			 g=>g,
			 b=>b,
          hsync => hsync,
          vsync => vsync,
          row => row,
          column => column
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

      -- insert stimulus here 
		wait;
   end process;

END;
