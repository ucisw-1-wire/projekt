----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:20:35 03/29/2015 
-- Design Name: 
-- Module Name:    readByte - Behavioral 
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

entity readByte is

Port(
		--OUTPUTS
		R_data : out STD_LOGIC_VECTOR ( 7 downto 0 ) ; --data recived 
		Ready : out STD_LOGIC ; -- 1 clk sig for done reciving byte
		Read_bit : out STD_LOGIC_VECTOR ; -- sends command to read one bit 
		o_bussy : out STD_LOGIC ; --bussy reading 
		--INPUTS 
		clk : in STD_LOGIC ;
		bussy : in STD_LOGIC ;
		readBit_detecion : in STD_LOGIC ; -- readed bit
		Rx_start : in STD_LOGIC  --start reciving whole byte 
);

end readByte;

architecture Behavioral of readByte is

begin


end Behavioral;

