----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:39:07 05/22/2015 
-- Design Name: 
-- Module Name:    controler - Behavioral 
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controler is
    Port ( input_data : in  STD_LOGIC_VECTOR (23 downto 0);
           output_data : out  STD_LOGIC_VECTOR (7 downto 0 );
           adres : out  STD_LOGIC_VECTOR (7 downto 0 );   -- Wartosci od 0 do 79 (8pikseli na slupek jednej wartosci )
           clock : in  STD_LOGIC ;
           start_read : out  STD_LOGIC;
			  write_en : out STD_LOGIC;
           is_read_busy : in  STD_LOGIC);
end controler;

architecture Behavioral of controler is
	type stan is (
		waitForBusy,
		startRead,
		waitForEndRead,
		saveData,
		increment
	);
	signal present_state : stan := waitForBusy ;
	signal next_state : stan := waitForBusy ;

	
	signal counter : STD_LOGIC_VECTOR (7 downto 0) := X"00";
	
begin
next_state_process: process (clock, present_state, is_read_busy)
begin
	
	next_state <= present_state;
	case present_state is
		when waitForBusy =>
			if is_read_busy = '0' then
				next_state <= startRead;
			end if;
		when startRead =>
			if is_read_busy = '1' then
				next_state <= waitForEndRead;
			end if;
		when waitForEndRead =>
			if is_read_busy = '0' then
				next_state <= saveData;
			end if;
		when saveData =>
			next_state <= increment;
		when increment =>
			next_state <= waitForBusy;
	end case;
end process;

action_process: process (clock, present_state, input_data)
begin
	if rising_edge(clock) then
		
		write_en <= '0';
		start_read <= '0';
		counter <= counter;
		case present_state is
			when startRead =>
				start_read <= '1';
			when saveData =>
				
				 -- skoro 0C to 0x00 to cokolwiek tu bêdzie da ró¿nicê wzglêdem zera
				write_en <= '1';
			when increment =>
				if counter = X"4F" then
					counter <= X"00";
				else
					counter <= counter + 1;
				end if;	
			when others =>
				write_en <= '0';
				start_read <= '0';
				counter <= counter;
					
		end case;
	end if;
end process;

data_proc: process (clock, present_state) is
begin
	if rising_edge(clock) and present_state = saveData then
		adres <= counter;
		output_data <= input_data(7 downto 0)-X"14";
	end if;
end process;


clock_proc: process (clock) is
begin
	if rising_edge(clock) then
		present_state <= next_state;
	end if;
end process;

end Behavioral;

