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
		readBit_detecion: out STD_LOGIC;
		wire: inout STD_LOGIC
		);
		
    --    outputOnes : out  STD_LOGIC;
	--outputZeros : out STD_LOGIC;
	--	inoutReset : inout STD_LOGIC;
	--	inoutRead : inout STD_LOGIC);
		
end modul;



architecture Behavioral of modul is
---------------
signal microsCounterTo70 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";

signal microsCounterTo960 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";

signal clockCounter: STD_LOGIC_VECTOR ( 5 downto 0):= "000000";

signal writing70us : STD_LOGIC := '0';
signal writing960us : STD_LOGIC := '0';
signal writingOne : STD_LOGIC := '0';
signal writingZero : STD_LOGIC := '0';
signal writingReset : STD_LOGIC := '0';
signal writingRead : STD_LOGIC := '0';

---------------
begin

	clockToMicrosTo70 : process (clk)
	begin
			if rising_edge (clk) and writing70us = '1' then
				if clockCounter = 49 then
					clockCounter <= "000000";
					if microsCounterTo70 = 69 then
						microsCounterTo70 <= "0000000";
						writing70us<='0';
						writingOne<='0';
						writingZero<='0';
						writingRead<='0';
						busy<='0';
					else
						microsCounterTo70 <= microsCounterTo70 + 1;
						busy<='1';
					end if;
				else
					clockCounter <= clockCounter + 1;
				end if;
			end if;
	end process;
	---------------------
	clockToMicrosTo960 : process (clk)
	begin
			if rising_edge (clk) and writing960us = '1' then
				if clockCounter = 49 then
					clockCounter <= "000000";
					
					if microsCounterTo960 = 959 then
						microsCounterTo960 <= "0000000000";
						writing960us<='0';  -- kiedy doliczy do konca to ma skonczyc
						writingReset<='0';
						busy<='0';
					else
						microsCounterTo960 <= microsCounterTo960 + 1;
						busy<='1';
					end if;
				else
					clockCounter <= clockCounter + 1;
				end if;
				
			end if;
	end process;
	
--------------------------------------------
				
	writeOneProcess : process (microsCounterTo70, writeOne)
	begin
		
		if writingOne = '1' then
			if microsCounterTo70 < 6 then
				wire <= '0';
			else
				wire <= '1';
			end if;
	
		elsif microsCounterTo70 = 0 and writeOne = '1' then
			writingOne<='1';
			writing70us<='1';
		end if;
		
	end process;
--------------------------------------------
				
	writeZeroProcess : process (microsCounterTo70, writeZero)
	begin
		if writingZero = '1' then
			if microsCounterTo70 < 60 then
				wire<= '0';
			else
				wire<= '1';
			end if;
		elsif microsCounterTo70 = 0 and writeZero = '1' then
			writingZero<='1';
			writing70us<='1';
		end if;

	end process;
-------------------------------------------
				
	writeReadProcess : process (microsCounterTo70, writeRead)
	--variable readSample : STD_LOGIC;
	begin
		if writingRead = '1' then
			if microsCounterTo70 < 6 then
				wire<= '0';
			elsif microsCounterTo70 = 6 then
				wire<= '1';
			elsif microsCounterTo70 = 30 then
				readBit_detecion<=wire;	
			end if;
			
		elsif microsCounterTo70 = 0 and writeRead = '1' then
			writingRead<='1';
			writing70us<='1';
		end if;
		
	end process;

-------------------------------------------
				
	writeResetProcess : process (microsCounterTo960, writeReset)
	--variable readSample : STD_LOGIC;
	begin
		if writingReset = '1' then
			if microsCounterTo960 < 480 then
				wire<= '0';
			elsif microsCounterTo960 = 480 then
				wire<= '1';
			elsif microsCounterTo960 = 550 then
				readBit_detecion<=wire;
			end if;
		
		elsif microsCounterTo960 = 0 and writeReset = '1' then
			writingReset<='1';
			writing960us<='1';
		end if;
		
	end process;

end Behavioral;

