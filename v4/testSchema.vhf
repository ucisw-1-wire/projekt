--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : testSchema.vhf
-- /___/   /\     Timestamp : 03/30/2015 01:03:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "D:/!OneDriveCloud/OneDrive/Studia/Sem VI/UCISW 2/svn/trunk/v4/testSchema.vhf" -w "D:/!OneDriveCloud/OneDrive/Studia/Sem VI/UCISW 2/svn/trunk/v4/testSchema.sch"
--Design Name: testSchema
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity testSchema is
   port ( clk         : in    std_logic; 
          start_read  : in    std_logic; 
          start_write : in    std_logic; 
          wire_in     : in    std_logic; 
          busy_read   : out   std_logic; 
          busy_write  : out   std_logic; 
          wire_out    : out   std_logic; 
          XLXN_17     : out   std_logic_vector (7 downto 0));
end testSchema;

architecture BEHAVIORAL of testSchema is
   signal XLXN_1                       : std_logic;
   signal XLXN_2                       : std_logic;
   signal XLXN_3                       : std_logic;
   signal XLXN_7                       : std_logic;
   signal XLXN_8                       : std_logic;
   signal XLXN_11                      : std_logic_vector (7 downto 0);
   signal XLXI_3_writeReset_openSignal : std_logic;
   component writeByte
      port ( clk       : in    std_logic; 
             isBusy    : in    std_logic; 
             start     : in    std_logic; 
             data      : in    std_logic_vector (7 downto 0); 
             writeOne  : out   std_logic; 
             writeZero : out   std_logic; 
             busy      : out   std_logic);
   end component;
   
   component readByte
      port ( clk              : in    std_logic; 
             isBusy           : in    std_logic; 
             readBit_detecion : in    std_logic; 
             start            : in    std_logic; 
             read_bit         : out   std_logic; 
             busy             : out   std_logic; 
             data             : out   std_logic_vector (7 downto 0));
   end component;
   
   component modul
      port ( clk              : in    std_logic; 
             writeOne         : in    std_logic; 
             writeZero        : in    std_logic; 
             writeRead        : in    std_logic; 
             writeReset       : in    std_logic; 
             wire_in          : in    std_logic; 
             busy             : out   std_logic; 
             readBit_detecion : out   std_logic; 
             wire_out         : out   std_logic);
   end component;
   
begin
   XLXN_11(7 downto 0) <= x"CA";
   XLXI_1 : writeByte
      port map (clk=>clk,
                data(7 downto 0)=>XLXN_11(7 downto 0),
                isBusy=>XLXN_7,
                start=>start_write,
                busy=>busy_write,
                writeOne=>XLXN_2,
                writeZero=>XLXN_1);
   
   XLXI_2 : readByte
      port map (clk=>clk,
                isBusy=>XLXN_7,
                readBit_detecion=>XLXN_8,
                start=>start_read,
                busy=>busy_read,
                data(7 downto 0)=>XLXN_17(7 downto 0),
                read_bit=>XLXN_3);
   
   XLXI_3 : modul
      port map (clk=>clk,
                wire_in=>wire_in,
                writeOne=>XLXN_2,
                writeRead=>XLXN_3,
                writeReset=>XLXI_3_writeReset_openSignal,
                writeZero=>XLXN_1,
                busy=>XLXN_7,
                readBit_detecion=>XLXN_8,
                wire_out=>wire_out);
   
end BEHAVIORAL;


