<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="output_led(3:0)" />
        <signal name="clkout" />
        <signal name="OW_DQ" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="output_led(3:0)" />
        <port polarity="Output" name="clkout" />
        <port polarity="BiDirectional" name="OW_DQ" />
        <blockdef name="sequenceTestSchema">
            <timestamp>2015-6-2T14:21:53</timestamp>
            <rect width="320" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="sequenceTestSchema" name="XLXI_1">
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin signalname="XLXN_2" name="start" />
            <blockpin signalname="output_led(3:0)" name="test_out(3:0)" />
            <blockpin name="output_data(23:0)" />
            <blockpin signalname="clkout" name="busy" />
            <blockpin signalname="OW_DQ" name="OW_DQ" />
        </block>
        <block symbolname="vcc" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1440" y="752" name="XLXI_1" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="1344" y1="528" y2="528" x1="1312" />
            <wire x2="1376" y1="512" y2="512" x1="1344" />
            <wire x2="1376" y1="512" y2="528" x1="1376" />
            <wire x2="1440" y1="528" y2="528" x1="1376" />
            <wire x2="1344" y1="512" y2="528" x1="1344" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1248" y1="736" y2="752" x1="1248" />
            <wire x2="1344" y1="752" y2="752" x1="1248" />
            <wire x2="1440" y1="720" y2="720" x1="1344" />
            <wire x2="1344" y1="720" y2="752" x1="1344" />
        </branch>
        <instance x="1184" y="736" name="XLXI_2" orien="R0" />
        <branch name="output_led(3:0)">
            <wire x2="1936" y1="528" y2="528" x1="1888" />
        </branch>
        <branch name="clkout">
            <wire x2="1936" y1="656" y2="656" x1="1888" />
        </branch>
        <branch name="OW_DQ">
            <wire x2="1936" y1="720" y2="720" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1936" y="528" name="output_led(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1936" y="656" name="clkout" orien="R0" />
        <iomarker fontsize="28" x="1936" y="720" name="OW_DQ" orien="R0" />
        <iomarker fontsize="28" x="1312" y="528" name="CLK" orien="R180" />
    </sheet>
</drawing>