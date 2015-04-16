----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:10:24 03/20/2015 
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
		wire_in: in STD_LOGIC;
		wire_out: out STD_LOGIC
		);
		
   -- outputOnes : out  STD_LOGIC;
	-- outputZeros : out STD_LOGIC;
	--	inoutReset : inout STD_LOGIC;
	--	inoutRead : inout STD_LOGIC);
		
end modul;

architecture Behavioral of modul is

	------- MASZYNA STANÓW -------------
	type stan is (
	 idle ,
	 write_1A,write_1B ,
	 write_0A,write_0B ,
	read_A,read_B,read_C,read_D ,
	reset_A,reset_B,reset_C,reset_D
	);
	--------   STANY     -------------
	signal present_state : stan :=idle ;
	signal next_state :stan := idle ;
	
	--------   ZEGAR     -------------
	signal clock_counter : STD_LOGIC_VECTOR(15 downto 0 ) := "0000000000000000";
	--signal readBit_detecion_buff : STD_LOGIC := '0';
	
	
	
begin
	
	next_state_process: process(present_state, writeOne, writeZero, writeRead, writeReset, clock_counter) is
	begin
	
		next_state <= present_state;
		case present_state is  -- next state zalezny 
									  -- od present state is wejsc
			when idle =>
				
				if writeOne= '1' then
					next_state <= write_1A ;
				
				
				elsif writeZero= '1' then
					next_state <= write_0A ;
				
				
				elsif writeRead= '1' then
					next_state <= read_A ;
				
				
				elsif writeReset= '1' then
					next_state <= reset_A ;
				
				else
					next_state <= idle;
				end if ;
             -------------------------------------------
			
			when write_1A =>
				if clock_counter = 6*50 then
					next_state <= write_1B;
					
				end if;
				
			when write_1B =>
				if clock_counter = 70*50 then
					next_state <= idle;
				end if;
             ----------------------------------------
			when write_0A =>
				if clock_counter = 60*50 then
					next_state <= write_0B;
				end if;
				
			when write_0B =>
				if clock_counter = 70*50 then
					next_state <= idle;
				end if;
             ---------------------------------------
			when read_A =>
				if clock_counter = 6*50 then
					next_state <= read_B;
				end if;
				
			when read_B =>
				if clock_counter = 15*50 then
					next_state <= read_C;
				end if;
			when read_C =>
				next_state<=read_D;
			
			when read_D =>
				if clock_counter = 70*50 then
					next_state <= idle;
				end if;
            ---------------------------------------
			when reset_A =>
				if clock_counter = 480*50 then
					next_state <= reset_B;
				end if;
			when reset_B =>
				if clock_counter = 550*50 then
					next_state <= reset_C;
				end if;
			
			when reset_C =>
				next_state <= reset_D;
				
			when reset_D =>
				if clock_counter = 960*50 then
					next_state <= idle;
				end if;
				
			when others=>
				next_state <= idle;
		end case;
				
	end process ;
------------------------------------------------------


busy <= '0' WHEN PRESENT_STATE = IDLE ELSE '1';

-------------------------------------------------------
output_process : process(present_state, wire_in) is


begin

	wire_out<='1';
	

	case present_state is
		when idle =>
			wire_out<='1';
			
			
		when write_1A =>
			
			wire_out<='0';
		when write_1B =>
			
			wire_out<='1';
			
		when write_0A =>
			
			wire_out<='0';
		when write_0B =>
			
			wire_out<='1';
			
		when read_A =>
			
			wire_out<='0';
		when read_B =>
			
			wire_out<='1';
		when read_C =>
			
		when read_D =>
			
			wire_out<='1';	
		
		when reset_A =>
			
			wire_out<='0';
		when reset_B =>
			
			wire_out<='1';
		when reset_C =>
			
		when reset_D =>
			
			wire_out<='1';	
		
	end case;
end process;


process ( clk) is
begin
		if rising_edge( Clk ) and ( present_state = read_C or present_state = reset_C)  then
			readBit_detecion <=  not wire_in;
		end if;
end process;


clock : process ( clk) is
begin

	if rising_edge(clk)  then
		
		present_state <= next_state;
		if next_state = idle then
			clock_counter <= "0000000000000000";
		else
			clock_counter <= clock_counter + 1 ;
		end if;
	end if ;		
end process  ;

end Behavioral;






























