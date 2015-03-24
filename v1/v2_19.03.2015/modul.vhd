----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:51:37 03/16/2015 
-- Design Name: 
-- Module Name:    modul - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity modul is
    Port ( clk : in  STD_LOGIC;
		writeOne: in STD_LOGIC;
		writeZero: in STD_LOGIC;
		writeRead: in STD_LOGIC;
		writeReset: in STD_LOGIC;
		busy: out STD_LOGIC;
		readBit: out STD_LOGIC;
		wire: inout STD_LOGIC
		);
		
    --    outputOnes : out  STD_LOGIC;
	--outputZeros : out STD_LOGIC;
		inoutReset : inout STD_LOGIC;
		inoutRead : inout STD_LOGIC);
		
end modul;



architecture Behavioral of modul is
---------------
signal microsCounterTo70 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";

signal microsCounterTo960 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";

signal clockCounter: STD_LOGIC_VECTOR ( 5 downto 0):= "000000";

signal writeOneBusyFlag : STD_LOGIC := '0';
---------------
begin

	clockToMicros : process (clk)
	begin
			if rising_edge (clk) then
				if clockCounter = 49 then
					clockCounter <= "000000";
					if microsCounterTo70 = 69 then
						microsCounterTo70 <= "0000000";
					else
						microsCounterTo70 <= microsCounterTo70 + 1;
					end if;
					
					if microsCounterTo960 = 959 then
						microsCounterTo960 <= "0000000000";
					else
						microsCounterTo960 <= microsCounterTo960 + 1;
					end if;
					
					
				else
					clockCounter <= clockCounter + 1;
				end if;
				
			end if;
	end process;
	
--------------------------------------------
				
	writeOne : process (microsCounterTo70)
	begin
		if microsCounterTo70 < 6 then
			outputOnes <= '0';
		else
			outputOnes <= '1';
		end if;
	end process;
--------------------------------------------
				
	writeZero : process (microsCounterTo70)
	begin
		if microsCounterTo70 < 60 then
			outputZeros <= '0';
		else
			outputZeros <= '1';
		end if;
	end process;
-------------------------------------------
				
	writeRead : process (microsCounterTo70)
	variable readSample : STD_LOGIC;
	begin
		if microsCounterTo70 < 6 then
			inoutRead <= '0';
		elsif microsCounterTo70 = 6 then
			inoutRead <= '1';
		elsif microsCounterTo70 = 30 then
			readSample := inoutRead;
		
		end if;
	end process;

-------------------------------------------
				
	writeReset : process (microsCounterTo960)
	variable readSample : STD_LOGIC;
	begin
		if microsCounterTo960 < 480 then
			inoutReset <= '0';
		elsif microsCounterTo960 = 480 then
			inoutReset <= '1';
		elsif microsCounterTo960 = 550 then
			readSample := inoutReset;
		
		end if;
	end process;

end Behavioral;

