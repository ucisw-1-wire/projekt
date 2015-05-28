----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:16:16 05/22/2015 
-- Design Name: 
-- Module Name:    Memory - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_arith.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memory is
    Port ( clock : in  STD_LOGIC;
           input_data : in  STD_LOGIC_VECTOR (7 downto 0);
           output_data : out  STD_LOGIC_VECTOR (7 downto 0);
           write_en : in  STD_LOGIC;
           adres : in  STD_LOGIC_VECTOR (7 downto 0));
end Memory;

architecture Behavioral of Memory is

----------  PAMIEC  ----------------
 type mem is array (79 downto 0) of STD_LOGIC_VECTOR (7 downto 0 ) ;  
 signal RAM: mem ;

-----------  STANY  ----------------

begin

-- Ensure that the <ram_name> is correctly defined. Please refer to the RAM Type
-- Declaration template for more info.

process (clock)
begin
   if (clock'event and clock = '1') then
      if (write_en = '1') then
         RAM(conv_integer(adres)) <= input_data;
      end if;
      output_data <= RAM(conv_integer(adres));
   end if;
end process;

						

end Behavioral;

