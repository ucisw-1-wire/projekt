----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:52:48 03/20/2015 
-- Design Name: 
-- Module Name:    sendByte - Behavioral 
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

entity writeByte is
    Port ( clk : in  STD_LOGIC;
           data : in  STD_LOGIC_VECTOR (7 downto 0);
           isBusy : in  STD_LOGIC;
           start : in  STD_LOGIC;
			  writeOne : out  STD_LOGIC;
			  writeZero : out  STD_LOGIC;
			  
			  busy : out STD_LOGIC
			  );
			  
end sendByte;

architecture Behavioral of writeByte is

	type stan is (
		idle,
		waitForBusy,
		writeBit
		);
	---------   STANY   -------------
	signal present_state : stan := idle;
	signal next_state : stan := idle;
	
	signal write_counter : integer := 0;


begin
	
	busy <= '0' WHEN PRESENT_STATE = IDLE ELSE '1';
	
	next_state_process : process (present_state, start, clk) is
	begin
		
		next_state <= present_state;
		case present_state is
			
			when idle =>
				if start = '1' then
					next_state <= waitForBusy;
				end if;
			-----------------------
			when waitForBusy =>
				if isBusy = '0' then
					next_state <= writeBit;
				end if;
			-----------------------
			when writeBit =>
				if write_counter = 8 then
					next_state <= idle;
				else
					next_state <= waitForBusy;
					------------ PYTANIE -------
					--- czy w tym stanie powinien jawnie czekac 70 us 
					--- czy tylko wystawic jedynke na linie sterujaca modulu '0' '1' 
					--- i przejsc do waitForBusy, bo busy ustawi sie od razu, wiec w sumie ten stan moze trwac 1 cykl 
					--------------------------
				end if;
		end case;
	end process;
	
	output_process: process(present_state) is
	begin
	
		writeOne <= '0';
		writeZero <= '0';
	
		case present_state is
			when writeBit =>
				if data(write_counter) = '0' then
					writeZero <= '1';
					
				elsif data(write_counter) = '1' then
					writeOne <= '1';
				end if;
				write_couter <= write_counter + 1;
				
		end case;
	
	end process;
	
	clock: process (clk) is
	begin
		if rising_edge(clk) then
			present_state <= next_state;
			if next_state = idle then 
				write_counter := 0;
			end if;
		end if;
	end process;
		
			
	

end Behavioral;





























