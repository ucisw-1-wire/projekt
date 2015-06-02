<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(2:0)" />
        <signal name="XLXN_2(9:0)" />
        <signal name="VGA_VS" />
        <signal name="VGA_HS" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_38(8:0)" />
        <signal name="XLXN_41(8:0)" />
        <signal name="XLXN_42(8:0)" />
        <signal name="VGA_G" />
        <signal name="VGA_R" />
        <signal name="VGA_B" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_B" />
        <blockdef name="color_giver">
            <timestamp>2015-1-21T9:49:33</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="VGA">
            <timestamp>2015-1-21T9:49:25</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="color_giver" name="XLXI_2">
            <blockpin signalname="XLXN_2(9:0)" name="column(9:0)" />
            <blockpin signalname="XLXN_41(8:0)" name="row(8:0)" />
            <blockpin signalname="XLXN_1(2:0)" name="rgb(2:0)" />
        </block>
        <block symbolname="VGA" name="XLXI_10">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_1(2:0)" name="colors_in(2:0)" />
            <blockpin signalname="VGA_R" name="r" />
            <blockpin signalname="VGA_G" name="g" />
            <blockpin signalname="VGA_B" name="b" />
            <blockpin signalname="VGA_HS" name="hsync" />
            <blockpin signalname="VGA_VS" name="vsync" />
            <blockpin signalname="XLXN_41(8:0)" name="row(8:0)" />
            <blockpin signalname="XLXN_2(9:0)" name="column(9:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="2512" y="2352" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(2:0)">
            <wire x2="3104" y1="2256" y2="2256" x1="2896" />
            <wire x2="3104" y1="2256" y2="2400" x1="3104" />
            <wire x2="3312" y1="2400" y2="2400" x1="3104" />
        </branch>
        <branch name="XLXN_2(9:0)">
            <wire x2="2464" y1="2256" y2="2496" x1="2464" />
            <wire x2="3840" y1="2496" y2="2496" x1="2464" />
            <wire x2="2512" y1="2256" y2="2256" x1="2464" />
            <wire x2="3840" y1="2400" y2="2400" x1="3696" />
            <wire x2="3840" y1="2400" y2="2496" x1="3840" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="3296" y1="2016" y2="2016" x1="2512" />
            <wire x2="3312" y1="2016" y2="2016" x1="3296" />
        </branch>
        <instance x="3312" y="2432" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_41(8:0)">
            <wire x2="2416" y1="2320" y2="2560" x1="2416" />
            <wire x2="3888" y1="2560" y2="2560" x1="2416" />
            <wire x2="2512" y1="2320" y2="2320" x1="2416" />
            <wire x2="3888" y1="2336" y2="2336" x1="3696" />
            <wire x2="3888" y1="2336" y2="2560" x1="3888" />
        </branch>
        <iomarker fontsize="28" x="3984" y="2272" name="VGA_VS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="3984" y1="2272" y2="2272" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="3984" y="2208" name="VGA_HS" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="3984" y1="2208" y2="2208" x1="3696" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3984" y1="2144" y2="2144" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="3984" y="2144" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="3984" y="2016" name="VGA_R" orien="R0" />
        <branch name="VGA_R">
            <wire x2="3984" y1="2016" y2="2016" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="3984" y="2080" name="VGA_G" orien="R0" />
        <branch name="VGA_G">
            <wire x2="3984" y1="2080" y2="2080" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="2512" y="2016" name="Clk_50MHz" orien="R180" />
    </sheet>
</drawing>