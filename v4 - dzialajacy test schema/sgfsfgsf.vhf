--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : sgfsfgsf.vhf
-- /___/   /\     Timestamp : 05/29/2015 10:31:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/XilinxPrj/~~projekt-master/projekt-master/v4/LCD1x64 -intstyle ise -family spartan3e -flat -suppress -vhdl C:/XilinxPrj/~~projekt-master/projekt-master/v4/sgfsfgsf.vhf -w C:/XilinxPrj/~~projekt-master/projekt-master/v4/sgfsfgsf.sch
--Design Name: sgfsfgsf
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

entity sequenceTestSchema_MUSER_sgfsfgsf is
   port ( Clk_50MHz : in    std_logic; 
          start     : in    std_logic; 
          Busy      : out   std_logic; 
          LCD_D     : out   std_logic_vector (3 downto 0); 
          LCD_E     : out   std_logic; 
          LCD_RS    : out   std_logic; 
          LCD_RW    : out   std_logic; 
          SF_CE     : out   std_logic; 
          test_out  : out   std_logic_vector (3 downto 0); 
          OW_DQ     : inout std_logic);
end sequenceTestSchema_MUSER_sgfsfgsf;

architecture BEHAVIORAL of sequenceTestSchema_MUSER_sgfsfgsf is
   attribute IOSTANDARD       : string ;
   attribute SLEW             : string ;
   attribute DRIVE            : string ;
   attribute IBUF_DELAY_VALUE : string ;
   attribute IFD_DELAY_VALUE  : string ;
   attribute BOX_TYPE         : string ;
   signal B                        : std_logic;
   signal C                        : std_logic;
   signal D                        : std_logic;
   signal XLXN_1                   : std_logic;
   signal XLXN_3                   : std_logic;
   signal XLXN_4                   : std_logic;
   signal XLXN_8                   : std_logic;
   signal XLXN_9                   : std_logic_vector (7 downto 0);
   signal XLXN_10                  : std_logic;
   signal XLXN_11                  : std_logic;
   signal XLXN_12                  : std_logic_vector (7 downto 0);
   signal XLXN_15                  : std_logic;
   signal XLXN_16                  : std_logic;
   signal XLXN_18                  : std_logic;
   signal XLXN_26                  : std_logic;
   signal XLXN_27                  : std_logic;
   signal XLXN_28                  : std_logic_vector (63 downto 0);
   signal LCD_D_DUMMY              : std_logic_vector (3 downto 0);
   signal XLXI_26_Blank_openSignal : std_logic_vector (15 downto 0);
   signal XLXI_26_Reset_openSignal : std_logic;
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
   
   component readByte
      port ( clk              : in    std_logic; 
             isBusy           : in    std_logic; 
             readBit_detecion : in    std_logic; 
             start            : in    std_logic; 
             read_bit         : out   std_logic; 
             busy             : out   std_logic; 
             data             : out   std_logic_vector (7 downto 0));
   end component;
   
   component writeByte
      port ( clk       : in    std_logic; 
             isBusy    : in    std_logic; 
             start     : in    std_logic; 
             data      : in    std_logic_vector (7 downto 0); 
             writeOne  : out   std_logic; 
             writeZero : out   std_logic; 
             busy      : out   std_logic);
   end component;
   
   component IOBUF
      port ( I  : in    std_logic; 
             IO : inout std_logic; 
             O  : out   std_logic; 
             T  : in    std_logic);
   end component;
   attribute IOSTANDARD of IOBUF : component is "DEFAULT";
   attribute SLEW of IOBUF : component is "SLOW";
   attribute DRIVE of IOBUF : component is "12";
   attribute IBUF_DELAY_VALUE of IOBUF : component is "0";
   attribute IFD_DELAY_VALUE of IOBUF : component is "AUTO";
   attribute BOX_TYPE of IOBUF : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component tempRead
      port ( clk               : in    std_logic; 
             start             : in    std_logic; 
             isBusy            : in    std_logic; 
             readBit_detection : in    std_logic; 
             wire_in           : in    std_logic; 
             inputData         : in    std_logic_vector (7 downto 0); 
             busy              : out   std_logic; 
             startRead         : out   std_logic; 
             startWrite        : out   std_logic; 
             startReset        : out   std_logic; 
             tempData          : out   std_logic_vector (23 downto 0); 
             outputData        : out   std_logic_vector (7 downto 0); 
             test_out          : out   std_logic_vector (3 downto 0));
   end component;
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
begin
   XLXN_28(63 downto 24) <= x"00FFFFFFFF";
   LCD_D(3 downto 0) <= LCD_D_DUMMY(3 downto 0);
   XLXI_1 : modul
      port map (clk=>Clk_50MHz,
                wire_in=>XLXN_27,
                writeOne=>XLXN_1,
                writeRead=>XLXN_4,
                writeReset=>XLXN_8,
                writeZero=>XLXN_3,
                busy=>D,
                readBit_detecion=>XLXN_15,
                wire_out=>XLXN_16);
   
   XLXI_2 : readByte
      port map (clk=>Clk_50MHz,
                isBusy=>D,
                readBit_detecion=>XLXN_15,
                start=>XLXN_11,
                busy=>B,
                data(7 downto 0)=>XLXN_12(7 downto 0),
                read_bit=>XLXN_4);
   
   XLXI_3 : writeByte
      port map (clk=>Clk_50MHz,
                data(7 downto 0)=>XLXN_9(7 downto 0),
                isBusy=>D,
                start=>XLXN_10,
                busy=>C,
                writeOne=>XLXN_1,
                writeZero=>XLXN_3);
   
   XLXI_5 : IOBUF
      port map (I=>XLXN_18,
                T=>XLXN_16,
                O=>XLXN_27,
                IO=>OW_DQ);
   
   XLXI_6 : GND
      port map (G=>XLXN_18);
   
   XLXI_7 : OR3
      port map (I0=>D,
                I1=>B,
                I2=>C,
                O=>XLXN_26);
   
   XLXI_24 : tempRead
      port map (clk=>Clk_50MHz,
                inputData(7 downto 0)=>XLXN_12(7 downto 0),
                isBusy=>XLXN_26,
                readBit_detection=>XLXN_15,
                start=>start,
                wire_in=>XLXN_27,
                busy=>Busy,
                outputData(7 downto 0)=>XLXN_9(7 downto 0),
                startRead=>XLXN_11,
                startReset=>XLXN_8,
                startWrite=>XLXN_10,
                tempData(23 downto 0)=>XLXN_28(23 downto 0),
                test_out(3 downto 0)=>test_out(3 downto 0));
   
   XLXI_26 : LCD1x64
      port map (Blank(15 downto 0)=>XLXI_26_Blank_openSignal(15 downto 0),
                Clk_50MHz=>Clk_50MHz,
                Line(63 downto 0)=>XLXN_28(63 downto 0),
                Reset=>XLXI_26_Reset_openSignal,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D_DUMMY(3 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity sgfsfgsf is
   port ( but       : in    std_logic; 
          Clk_50MHz : in    std_logic; 
          A         : out   std_logic; 
          LCD_D     : out   std_logic_vector (3 downto 0); 
          LCD_E     : out   std_logic; 
          LCD_RS    : out   std_logic; 
          LCD_RW    : out   std_logic; 
          SF_CF     : out   std_logic; 
          OW_DQ     : inout std_logic);
end sgfsfgsf;

architecture BEHAVIORAL of sgfsfgsf is
   signal XLXN_1                  : std_logic_vector (63 downto 0);
   signal LCD_D_DUMMY             : std_logic_vector (3 downto 0);
   signal XLXI_3_Blank_openSignal : std_logic_vector (15 downto 0);
   signal XLXI_3_Reset_openSignal : std_logic;
   component sequenceTestSchema_MUSER_sgfsfgsf
      port ( start       : in    std_logic; 
             Clk_50MHz   : in    std_logic; 
             Output_Data : out   std_logic_vector (23 downto 0); 
             Busy        : out   std_logic; 
             OW_DQ       : inout std_logic);
   end component;
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
begin
   LCD_D(3 downto 0) <= LCD_D_DUMMY(3 downto 0);
   XLXI_2 : sequenceTestSchema_MUSER_sgfsfgsf
      port map (Clk_50MHz=>Clk_50MHz,
                start=>but,
                Busy=>A,
                Output_Data(23 downto 0)=>XLXN_1(23 downto 0),
                OW_DQ=>OW_DQ);
   
   XLXI_3 : LCD1x64
      port map (Blank(15 downto 0)=>XLXI_3_Blank_openSignal(15 downto 0),
                Clk_50MHz=>Clk_50MHz,
                Line(63 downto 0)=>XLXN_1(63 downto 0),
                Reset=>XLXI_3_Reset_openSignal,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CF,
                LCD_D(3 downto 0)=>LCD_D_DUMMY(3 downto 0));
   
end BEHAVIORAL;


