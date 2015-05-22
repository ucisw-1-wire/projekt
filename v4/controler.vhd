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
           adres : out  STD_LOGIC (7 downto 0 );   -- Wartosci od 0 do 79 (8pikseli na slupek jednej wartosci )
           clock : in  STD_LOGIC ;
           start_read : out  STD_LOGIC;
           is_read_busy : in  STD_LOGIC);
end controler;

architecture Behavioral of controler is

begin


end Behavioral;

