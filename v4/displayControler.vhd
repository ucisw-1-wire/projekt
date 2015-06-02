----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:09:01 05/28/2015 
-- Design Name: 
-- Module Name:    displayControler - Behavioral 
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

entity displayControler is
    Port ( input_data : in  STD_LOGIC_VECTOR (7 downto 0);
           disp_row : in  STD_LOGIC_VECTOR (8 downto 0);
           disp_col : in  STD_LOGIC_VECTOR (9 downto 0);
           rgb : out  STD_LOGIC_VECTOR (2 downto 0);
           mem_adres : out  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC);
end displayControler;

architecture Behavioral of displayControler is

signal temporary : STD_LOGIC_VECTOR (7 downto 0) := X"00";


begin

temporary <= 480 - (input_data(7 downto 3) & "000");

process(disp_col, disp_row, input_data, clk )
begin
	if rising_edge(clk) then
		if disp_col /=640 and disp_row /= 480 then
			mem_adres <= X"00";
			mem_adres (6 downto 0) <= disp_col(9 downto 3); -- x wyswietlacza podzielony przez 8
			if  disp_row > temporary 	then -- jak zrobic to mnozenie?
				rgb <= "111";
			else
				rgb <= "100";
			end if;
		else	
			rgb<="000";
		end if;
	end if;
end process;

end Behavioral;

