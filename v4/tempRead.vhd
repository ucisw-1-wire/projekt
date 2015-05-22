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
			  readBit_detection : in STD_LOGIC;
			  wire_in : in STD_LOGIC; -- potrzebne do waitForConvert_t_end, nie mam pomyslu jakby zrobic to inaczej, ew spytac SUGIERA	
			  outputData: out STD_LOGIC_VECTOR (7 downto 0);
			  busy : out STD_LOGIC;
			  startRead : out STD_LOGIC;
			  startWrite : out STD_LOGIC;
			  startReset : out STD_LOGIC;
			  test_out : out STD_LOGIC_VECTOR ( 3 downto 0)
			  --led_out: out STD_LOGIC ;
			  );
end tempRead;

architecture Behavioral of tempRead is
	
	type stan is (
	idle,
	
	waitForBusy_reset_1,		
	waitForBusy_reset_2,
	waitForBusy_reset_3,		-- trzeci reset potrzebny jest do przerwania sekwencji Read Scetchpad -> DS18S20.pdf Figure 17 str 17
	reset_1,
	reset_2,
	reset_3,
	waitForReset_1,
	waitForReset_2,
	waitForReset_3,
	
	waitForBusy_skip_rom_1,
	waitForBusy_skip_rom_2,
	skip_rom_1,
	skip_rom_2,
	waitForSkipRom_1,
	waitForSkipRom_2,
	
	waitForBusy_convert_t,
	convert_t,
	waitForConvert_T, -- czeka na zakonczenie wysylania rozkazu Convert T
	waitForBusy_endOfConvert,
	readByteConvertT,
	waitForReadByteConvertT,
	convert_t_endOrNot,
	--waitForConvert_T_end, -- czeka na zakonczenie konwersji	
	
	waitForBusy_read_scetchpad,
	read_scetchpad,
	waitForBusyReadByteScetchpad,
	readByteScetchpad,
	waitForReadByteScetchpad,
	increment,
	waitForReadScetchpad,
	captureByte_endOrNot,
	
	
	
	
	done
	);
	
	
	signal present_state : stan := idle ;
	signal next_state : stan := idle ;
	
	signal tempDataBuffor : STD_LOGIC_VECTOR (23 downto 0) := X"000000";
	signal read_counter : integer  range 0 to 10 := 0; -- inkrementowane w read_scetchpad, zerowane w idle,		
													  -- zgodnie z scratchpad_respond wystarcza 2 bajty, trzeba to zmienic, nie chce mi sie teraz bo trzeba potem znowu schematic symbol robic, zmienic sequenceTestSchema itp..
													  
	
begin
	
	busy <= '0' WHEN PRESENT_STATE = IDLE ELSE '1';
	
	next_state_process: process (clk, present_state, start, inputData, isBusy,readBit_detection, read_counter)
	begin
		
--		if rising_edge(clk) then
			next_state <= present_state;
			case present_state is
				when idle =>
				--led_out <= '1';
					if start = '1' then
						next_state <= waitForBusy_reset_1;
						--led_out <= '0' ;
					end if;
				
				--- reset#1
				when waitForBusy_reset_1 =>
					if isBusy = '0' then
						next_state <= reset_1;
					end if;
				when reset_1 =>
					if isBusy = '1' then
						next_state <= waitForReset_1;
					end if;
				when waitForReset_1 =>
					if isBusy = '0' then
						if readBit_detection = '1' then 		--- DS18S20.pdf Figure 12, str 13  (w modul jest negacja)
							next_state <= waitForBusy_skip_rom_1;
						else
							next_state <= idle; -- ? ! ! ! SPYTAC SUGIERA ! ! !
						end if;
					end if;
				
				--- skip_rom#1
				when waitForBusy_skip_rom_1 =>
					if isBusy = '0' then
						next_state <= skip_rom_1;
					end if;
				when skip_rom_1 =>
					if isBusy = '1' then
						next_state <= waitForSkipRom_1;
					end if;
				when waitForSkipRom_1 =>
					if isBusy = '0' then
						next_state <= waitForBusy_convert_t;
					end if;
				
				--- convert_t
				when waitForBusy_convert_t =>
					if isBusy = '0' then
						next_state <= convert_t;
					end if;
				when convert_t =>
					next_state <= waitForConvert_T;
				when waitForConvert_T =>
					if isBusy = '0' then
						next_state <= waitForBusy_endOfConvert;
					end if;
				when waitForBusy_endOfConvert =>
					if isBusy = '0' then -- koniec konwersji - patrz dokumentacjia 12 str, ! ! ! SPYTAC SUGIERA ! ! !
						next_state <= readByteConvertT;
					end if;
				when readByteConvertT =>
					if isBusy = '1' then
						next_state <= waitForReadByteConvertT;
					end if;
				when waitForReadByteConvertT =>
					if isBusy = '0' then
						next_state <= convert_t_endOrNot;
					end if;
				when convert_t_endOrNot =>
					if inputData = X"FF" then
						next_state <= waitForBusy_reset_2;
					else
						next_state <= waitForBusy_endOfConvert;
					end if;
					
				--- reset#2
				when waitForBusy_reset_2 =>
					if isBusy = '0' then
						next_state <= reset_2;
					end if;
				when reset_2 =>
					if isBusy = '1' then
						next_state <= waitForReset_2;
					end if;
				when waitForReset_2 =>
					if isBusy = '0' then
						if readBit_detection = '1' then  
							next_state <= waitForBusy_skip_rom_2;
						else
							next_state <= idle; -- ? 
						end if;
					end if;
				
				--- skip_rom#2
				when waitForBusy_skip_rom_2 =>
					if isBusy = '0' then
						next_state <= skip_rom_2;
					end if;
				when skip_rom_2 =>
					if isBusy = '1' then
						next_state <= waitForSkipRom_2;
					end if;
				when waitForSkipRom_2 =>
					if isBusy = '0' then
						next_state <= waitForBusy_read_scetchpad;
					end if;
					
				--- read_scetchpad  send  command
				when waitForBusy_read_scetchpad =>
					if isBusy = '0' then
						next_state <= read_scetchpad;
					end if;
				when read_scetchpad =>
					if isBusy ='1' then
						next_state <= waitForBusyReadByteScetchpad;
					end if;
					-- receive bytes
				when waitForBusyReadByteScetchpad =>
					if isBusy = '0' then
						next_state <= readByteScetchpad;
					end if;
				when readByteScetchpad =>
					if isBusy = '1' then
						next_state <= waitForReadByteScetchpad;
					end if;
				when waitForReadByteScetchpad =>
					if isBusy = '0' then
						next_state <= increment;
					end if;
				when increment =>
					next_state <= waitForReadScetchpad;
				when waitForReadScetchpad =>
					if isBusy = '0' then
						next_state <= captureByte_endOrNot;
					end if;
				when captureByte_endOrNot =>
					if read_counter = 3 then
						next_state <= waitForBusy_reset_3;
					else
						next_state <= waitForBusyReadByteScetchpad;
					end if;
					-- ending of transfer
				when waitForBusy_reset_3 =>
					if isBusy = '0' then
						next_state <= reset_3;
					end if;
				when reset_3 =>
					if isBusy = '1' then
						next_state <= waitForReset_3;
					end if;
				when waitForReset_3 =>
					if isBusy = '0' then
						next_state <= done;
					end if;
					
				--- done
				when done =>
					next_state <= idle;
				
				
				
				when others =>
					next_state <= idle;
					
			end case;
--		end if;
	end process;
		
	action_process: process (clk, present_state)
	begin
		if rising_edge(clk) then
			startRead <= '0';
			startWrite <= '0';
			startReset <= '0';
			case present_state is
				when reset_1 =>
					startReset <= '1';
					test_out <= x"1" ;
				when reset_2 =>
					test_out <= x"4" ;
					startReset <= '1';
				when reset_3 =>
					startReset <= '1';	
				when skip_rom_1 =>
					test_out <= x"2" ;
					outputData <= X"CC";
					startWrite <= '1';
				when skip_rom_2 =>
					test_out <= x"5" ;
					outputData <= X"CC";
					startWrite <= '1';
				when convert_t =>
					test_out <= x"3" ;
					outputData <= X"44";
					startWrite <= '1';
				when readByteConvertT =>
					startRead <= '1';
				when readByteScetchpad =>
					startRead <= '1';
				when read_scetchpad =>
					test_out <= x"6" ;
					outputData <= X"BE";
					startWrite <= '1';
				when increment =>
					read_counter <= read_counter +1;
				when captureByte_endOrNot =>
					test_out <= x"A" ;
					startRead <= '0';
					tempDataBuffor ( (read_counter * 8 - 1) downto ( (read_counter -1) * 8 )) <= inputData;
				when idle =>
					test_out <= x"0" ;
					read_counter <= 0;
				when others =>
					startRead <= '0';
					startWrite <= '0';
					startReset <= '0';
			end case;		
			
		end if;


	end process;
		
	process (clk) is
	begin
		if rising_edge(clk) and present_state = done then
			tempData <= tempDataBuffor;
		end if;

	end process;
		
		
	clock: process (clk) is
		begin
			if rising_edge(clk) then
				present_state <= next_state;
			end if;
	end process;



	end Behavioral;


























