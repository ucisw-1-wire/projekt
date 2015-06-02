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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sendByte is
    Port ( clk : in  STD_LOGIC;
           data : in  STD_LOGIC_VECTOR (0 downto 0);
           isBusy : in  STD_LOGIC;
           outBit : out  STD_LOGIC;
           start : in  STD_LOGIC);
end sendByte;

architecture Behavioral of sendByte is

begin


end Behavioral;

