<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(63:0)" />
        <signal name="XLXN_1(23:0)" />
        <signal name="Clk_50MHz" />
        <signal name="but" />
        <signal name="A" />
        <signal name="OW_DQ" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="SF_CF" />
        <signal name="LCD_D(3:0)" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="but" />
        <port polarity="Output" name="A" />
        <port polarity="BiDirectional" name="OW_DQ" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="SF_CF" />
        <port polarity="Output" name="LCD_D(3:0)" />
        <blockdef name="sequenceTestSchema">
            <timestamp>2015-5-28T20:51:49</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2015-5-28T20:51:49</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="sequenceTestSchema" name="XLXI_2">
            <blockpin signalname="but" name="start" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_1(23:0)" name="Output_Data(23:0)" />
            <blockpin signalname="A" name="Busy" />
            <blockpin signalname="OW_DQ" name="OW_DQ" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_3">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_1(63:0)" name="Line(63:0)" />
            <blockpin name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CF" name="SF_CE" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1952" y="1328" name="XLXI_2" orien="R0">
        </instance>
        <instance x="3088" y="1504" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_1(63:0)">
            <wire x2="2848" y1="992" y2="1120" x1="2848" />
            <wire x2="2848" y1="1120" y2="1216" x1="2848" />
            <wire x2="3088" y1="1216" y2="1216" x1="2848" />
        </branch>
        <branch name="XLXN_1(23:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2664" y="1120" type="branch" />
            <wire x2="2560" y1="1168" y2="1168" x1="2400" />
            <wire x2="2560" y1="1120" y2="1168" x1="2560" />
            <wire x2="2576" y1="1120" y2="1120" x1="2560" />
            <wire x2="2664" y1="1120" y2="1120" x1="2576" />
            <wire x2="2752" y1="1120" y2="1120" x1="2664" />
        </branch>
        <bustap x2="2752" y1="1120" y2="1120" x1="2848" />
        <branch name="Clk_50MHz">
            <wire x2="1904" y1="1280" y2="1280" x1="1760" />
            <wire x2="1904" y1="1280" y2="1296" x1="1904" />
            <wire x2="1952" y1="1296" y2="1296" x1="1904" />
            <wire x2="1904" y1="1296" y2="1472" x1="1904" />
            <wire x2="3088" y1="1472" y2="1472" x1="1904" />
        </branch>
        <branch name="but">
            <wire x2="1952" y1="1168" y2="1168" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1920" y="1168" name="but" orien="R180" />
        <branch name="A">
            <wire x2="2432" y1="1232" y2="1232" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2432" y="1232" name="A" orien="R0" />
        <branch name="OW_DQ">
            <wire x2="2432" y1="1296" y2="1296" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2432" y="1296" name="OW_DQ" orien="R0" />
        <iomarker fontsize="28" x="1760" y="1280" name="Clk_50MHz" orien="R180" />
        <branch name="LCD_E">
            <wire x2="3552" y1="1216" y2="1216" x1="3504" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="3568" y1="1280" y2="1280" x1="3504" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="3568" y1="1344" y2="1344" x1="3504" />
        </branch>
        <branch name="SF_CF">
            <wire x2="3568" y1="1472" y2="1472" x1="3504" />
        </branch>
        <iomarker fontsize="28" x="3552" y="1216" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="3568" y="1280" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="3568" y="1344" name="LCD_RW" orien="R0" />
        <iomarker fontsize="28" x="3568" y="1472" name="SF_CF" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="3520" y1="1408" y2="1408" x1="3504" />
            <wire x2="3568" y1="1408" y2="1408" x1="3520" />
        </branch>
        <iomarker fontsize="28" x="3568" y="1408" name="LCD_D(3:0)" orien="R0" />
    </sheet>
</drawing>