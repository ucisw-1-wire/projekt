----------------------------------------------------------------------------------
-- Company: PWr
-- Engineer: Radoslaw Skiba
-- 
-- Create Date:    14:20:35 03/29/2015 
-- Design Name:    Modul czytajacy z magistrali One-Wire
-- Module Name:    readByte - Behavioral 
-- Project Name:   Termometr OneWire
-- Target Devices:  Spartan
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

entity readByte is

Port(
		--OUTPUTS
		data : out STD_LOGIC_VECTOR ( 7 downto 0 ) ; --data recived 
		--Ready : out STD_LOGIC ; -- 1 clk sig for done reciving byte
		read_bit : out STD_LOGIC ; -- sends command to read one bit 
		busy : out STD_LOGIC ; --bussy reading 
		--INPUTS 
		clk : in STD_LOGIC ;
		isBusy : in STD_LOGIC ;
		readBit_detecion : in STD_LOGIC ; -- readed bit
		start : in STD_LOGIC  --start reciving whole byte 
);

end readByte;


architecture Behavioral of readByte is

	--------- MASZYNA STANOW ------------llllllll

	type stan is (
	
	idle ,
	readBit,
	waitForBusy,
	done
	);
	-------------- STANY ----------------
	
	
	-------REJESTRY i BUFFORY -----------
	signal present_state : stan := idle ;
	signal next_state : stan := idle ;
	
	signal read_counter : integer range 0 to 10 := 0 ;
	signal read_buffor : STD_LOGIC_VECTOR (7 downto 0 ) := "11111111" ; -- ustawilem tak, zeby w TB widziec jak wpisuja sie kolejne zera, bo nie chcialo mi sie jakos bardziej sterowac wire_in...
	
	
begin

	busy <= '0' WHEN present_state = idle ELSE '1';

	next_state_process : process(present_state, start, clk ) is
	begin 
		--gdy nic sie nie dzieje niech zostanie w aktualnym stanie 
		next_state<=present_state;
	
		case present_state is 
		--------------------------------
				when idle =>
					if start = '1' then
						next_state <= readBit ;
					end if;
		--------------------------------
				when waitForBusy =>
					if isBusy = '0' then
						if read_counter = 8 then
							next_state <= done ;
						else        -- Takie male zabezpieczenie zeby przepisac wartosc gdy
							next_state <= readBit  ; -- faktycznie skoczy sie czytanie bitu to przepismy 
						end if;
					end if ;							 -- i wyslemy nowe polecenie odczyania
		--------------------------------
				when readBit =>
						if isBusy= '0' then
						next_state <= waitForBusy ;
						end if ;
		--------------------------------
				when done =>
					next_state <= idle ;
		--------------------------------			
			end case ;
	end process;

input_process: process(present_state) is
begin
	--ready <= '0' ;
   read_bit <= '0' ;

	case present_state is 
	
		when readBit =>
			read_bit <='1' ;
			
		when waitForBusy =>
			read_buffor(read_counter) <= readBit_detecion ;
			read_counter <= read_counter + 1 ;
				
		when done =>
			--Ready <= '1' ;
			data <= read_buffor ;
			read_counter <= 0 ;
		when others =>
			read_bit <='0';
	end case ;

end process ;

clock: process (clk) is
	begin
		if rising_edge(clk) then
			present_state <= next_state;
			--if next_state = idle then 
			--	read_counter <= 0;
			--end if;
		-- zerowanie licznika nastepuje po skonczeniu czytania 
		-- moze o jeden stan jest za duzo ale tak jakos jest przejrzyscie
		-- w tych modulach opieramy sie glownie o flage bussy wiec nic wiecej 
		-- liczyc chyba nie trzeba 
		end if;
end process;


end Behavioral;

