----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:30:09 01/15/2015 
-- Design Name: 
-- Module Name:    VGA - Behavioral 
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGA is
	port(clk, reset : in std_logic;
		colors_in : in std_logic_vector ( 2 downto 0);
		r,g,b : out std_logic; 
		hsync, vsync : out std_logic;
		row : out std_logic_vector(8 downto 0);
		column : out std_logic_vector(9 downto 0));
end VGA;

architecture Behavioral of VGA is

signal nasz_clock : std_logic := '0';
signal vcounter : std_logic_vector ( 9 downto 0) := "0000000000";
signal hcounter : std_logic_vector ( 9 downto 0) := "0000000000";
begin

	dzielnik_czestotliwosci: process(clk)
	begin
		if rising_edge(clk) then 
			nasz_clock <= not nasz_clock;
		end if;
	end process;

-----------------------------------------------------------------
	liczniki : process (nasz_clock)
	begin
		if rising_edge(nasz_clock) then 
			if hcounter = 799 then
				hcounter <= "0000000000";
			   if vcounter = 520 then
				   vcounter <= "0000000000";
				else
					vcounter <= vcounter + 1; 
				end if;
			else
			  hcounter <= hcounter + 1; 
			end if;
			
			if hcounter >= 48 and hcounter <= 687 then
			   column <= hcounter - 48;
			else
				column <= "1010000000";
			end if;
			
			if vcounter >= 29 and vcounter <= 509 then
				row <=vcounter(8 downto 0) - 29;
			else
				row <= "111100000";
			end if;
			
		end if;
	end process;
	
	sterowanie_synchronizacja : process (hcounter, vcounter)
	begin
		if hcounter >= 704 then
		
			hsync <= '0'; 
		else
			hsync <= '1';
		end if; 
		
		if vcounter >= 519 then
			vsync <= '0'; 
		else
			vsync <= '1';
		end if; 
	end process;
	
	kolory : process ( hcounter, vcounter, colors_in)
	begin
		if hcounter >= 48 and hcounter <= 687 and vcounter >= 29 and vcounter <= 509 then
			r <= colors_in( 0 );
			g <= colors_in( 1 );
			b <= colors_in( 2 );
		else
			r <= '0';
			g <= '0';
			b <= '0';
		end if;
	end process;
	
end Behavioral;

