library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity color_giver is
    Port ( column : in  STD_LOGIC_VECTOR (9 downto 0);
           row : in  STD_LOGIC_VECTOR (8 downto 0);
           rgb : out  STD_LOGIC_VECTOR (2 downto 0));
end color_giver;

architecture Behavioral of color_giver is

begin
process(column)
begin
	if column /=640 and row /= 480 then
		if row < 160 then
			rgb <="001";
		elsif row < 320 then
			rgb <="010";
		else
			rgb <="100";
		end if;
	else	
		rgb<="000";
	end if;
end process;

end Behavioral;

