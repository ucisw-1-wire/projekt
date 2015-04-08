----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:22:31 04/08/2015 
-- Design Name: 
-- Module Name:    tempRead - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tempRead is
    Port ( clk : in  STD_LOGIC;
           start : in  STD_LOGIC;
			  tempData : out STD_LOGIC_VECTOR (23 downto 0);
           inputData : in  STD_LOGIC_VECTOR (7 downto 0);
			  isBusy : in STD_LOGIC;
			  outputData: out STD_LOGIC_VECTOR (7 downto 0);
			  busy : out STD_LOGIC;
			  startRead : out STD_LOGIC;
			  startWrite : out STD_LOGIC;
			  startReset : out STD_LOGIC;
			  );
end tempRead;

architecture Behavioral of tempRead is
	
	type stan is (
	
	idle ,
	reset_1,
	reset_2,
	skip_rom_1,
	skip_rom_2,
	convert_t,
	read_scetchpad,
	done
	);


	signal present_state : stan := idle ;
	signal next_state : stan := idle ;
	
begin
	
	process (clk, 




end Behavioral;


























