<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2(23:0)" />
        <signal name="XLXN_3" />
        <signal name="OW_DQ" />
        <signal name="XLXN_5" />
        <signal name="CLK" />
        <signal name="XLXN_7" />
        <signal name="clkout">
        </signal>
        <signal name="XLXN_10" />
        <signal name="XLXN_11(7:0)" />
        <signal name="XLXN_12(7:0)" />
        <signal name="XLXN_13(7:0)" />
        <signal name="output_led(7:0)" />
        <signal name="XLXN_15" />
        <port polarity="BiDirectional" name="OW_DQ" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="output_led(7:0)" />
        <blockdef name="controler">
            <timestamp>2015-6-2T14:21:46</timestamp>
            <rect width="352" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
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
        <blockdef name="Memory">
            <timestamp>2015-6-2T14:21:44</timestamp>
            <rect width="336" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
        </blockdef>
        <block symbolname="sequenceTestSchema" name="XLXI_3">
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin signalname="XLXN_7" name="start" />
            <blockpin name="test_out(3:0)" />
            <blockpin signalname="XLXN_2(23:0)" name="output_data(23:0)" />
            <blockpin signalname="XLXN_1" name="busy" />
            <blockpin signalname="OW_DQ" name="OW_DQ" />
        </block>
        <block symbolname="controler" name="XLXI_4">
            <blockpin signalname="CLK" name="clock" />
            <blockpin signalname="XLXN_1" name="is_read_busy" />
            <blockpin signalname="XLXN_2(23:0)" name="input_data(23:0)" />
            <blockpin signalname="XLXN_7" name="start_read" />
            <blockpin signalname="clkout" name="write_en" />
            <blockpin signalname="XLXN_11(7:0)" name="output_data(7:0)" />
            <blockpin signalname="XLXN_13(7:0)" name="adres(7:0)" />
        </block>
        <block symbolname="Memory" name="XLXI_5">
            <blockpin signalname="CLK" name="clock" />
            <blockpin signalname="clkout" name="write_en" />
            <blockpin signalname="XLXN_11(7:0)" name="input_data(7:0)" />
            <blockpin signalname="XLXN_13(7:0)" name="adres_rd(7:0)" />
            <blockpin signalname="XLXN_13(7:0)" name="adres_wr(7:0)" />
            <blockpin signalname="output_led(7:0)" name="output_data(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1376" y="1328" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2096" y="1312" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1952" y1="1232" y2="1232" x1="1824" />
            <wire x2="1952" y1="1184" y2="1232" x1="1952" />
            <wire x2="2096" y1="1184" y2="1184" x1="1952" />
        </branch>
        <branch name="XLXN_2(23:0)">
            <wire x2="1936" y1="1168" y2="1168" x1="1824" />
            <wire x2="1936" y1="1168" y2="1280" x1="1936" />
            <wire x2="2096" y1="1280" y2="1280" x1="1936" />
        </branch>
        <branch name="OW_DQ">
            <wire x2="1840" y1="1392" y2="1392" x1="1792" />
            <wire x2="1792" y1="1392" y2="1456" x1="1792" />
            <wire x2="1856" y1="1456" y2="1456" x1="1792" />
            <wire x2="1840" y1="1296" y2="1296" x1="1824" />
            <wire x2="1840" y1="1296" y2="1392" x1="1840" />
        </branch>
        <branch name="CLK">
            <wire x2="1360" y1="848" y2="848" x1="1264" />
            <wire x2="1360" y1="848" y2="1104" x1="1360" />
            <wire x2="1376" y1="1104" y2="1104" x1="1360" />
            <wire x2="1840" y1="848" y2="848" x1="1360" />
            <wire x2="1840" y1="848" y2="1088" x1="1840" />
            <wire x2="2096" y1="1088" y2="1088" x1="1840" />
            <wire x2="2640" y1="848" y2="848" x1="1840" />
            <wire x2="2640" y1="848" y2="1072" x1="2640" />
            <wire x2="2832" y1="1072" y2="1072" x1="2640" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1376" y1="1296" y2="1296" x1="1296" />
            <wire x2="1296" y1="1296" y2="1344" x1="1296" />
            <wire x2="2656" y1="1344" y2="1344" x1="1296" />
            <wire x2="2656" y1="1088" y2="1088" x1="2576" />
            <wire x2="2656" y1="1088" y2="1344" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="1264" y="848" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="1856" y="1456" name="OW_DQ" orien="R0" />
        <instance x="2832" y="1360" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_11(7:0)">
            <wire x2="2704" y1="1216" y2="1216" x1="2576" />
            <wire x2="2704" y1="1200" y2="1216" x1="2704" />
            <wire x2="2832" y1="1200" y2="1200" x1="2704" />
        </branch>
        <branch name="XLXN_13(7:0)">
            <wire x2="2704" y1="1280" y2="1280" x1="2576" />
            <wire x2="2704" y1="1280" y2="1328" x1="2704" />
            <wire x2="2832" y1="1328" y2="1328" x1="2704" />
            <wire x2="2704" y1="1264" y2="1280" x1="2704" />
            <wire x2="2832" y1="1264" y2="1264" x1="2704" />
        </branch>
        <branch name="output_led(7:0)">
            <wire x2="3152" y1="864" y2="864" x1="3056" />
            <wire x2="3056" y1="864" y2="896" x1="3056" />
            <wire x2="3360" y1="896" y2="896" x1="3056" />
            <wire x2="3360" y1="896" y2="1072" x1="3360" />
            <wire x2="3360" y1="1072" y2="1072" x1="3296" />
        </branch>
        <iomarker fontsize="28" x="3152" y="864" name="output_led(7:0)" orien="R0" />
        <branch name="clkout">
            <wire x2="2736" y1="1152" y2="1152" x1="2576" />
            <wire x2="2832" y1="1136" y2="1136" x1="2736" />
            <wire x2="2736" y1="1136" y2="1152" x1="2736" />
        </branch>
    </sheet>
</drawing>