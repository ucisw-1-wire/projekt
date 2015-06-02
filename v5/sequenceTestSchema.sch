<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16(7:0)" />
        <signal name="XLXN_17(7:0)" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_21" />
        <signal name="start" />
        <signal name="test_out(3:0)" />
        <signal name="output_data(23:0)" />
        <signal name="busy" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="OW_DQ" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="start" />
        <port polarity="Output" name="test_out(3:0)" />
        <port polarity="Output" name="output_data(23:0)" />
        <port polarity="Output" name="busy" />
        <port polarity="BiDirectional" name="OW_DQ" />
        <blockdef name="modul">
            <timestamp>2015-6-2T9:13:23</timestamp>
            <rect width="304" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-192" y2="-192" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="readByte">
            <timestamp>2015-6-2T9:15:38</timestamp>
            <rect width="288" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-128" y2="-128" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="writeByte">
            <timestamp>2015-6-2T9:18:52</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="tempRead">
            <timestamp>2015-6-2T9:21:30</timestamp>
            <rect width="352" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="iobuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="128" y1="-128" y2="-128" x1="224" />
            <line x2="128" y1="-64" y2="-64" x1="160" />
            <line x2="160" y1="-128" y2="-64" x1="160" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="96" y1="-140" y2="-192" x1="96" />
            <line x2="96" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-96" y2="-160" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="128" />
            <line x2="128" y1="-160" y2="-128" x1="64" />
            <line x2="128" y1="-96" y2="-32" x1="128" />
            <line x2="128" y1="-64" y2="-96" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="modul" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_6" name="writeOne" />
            <blockpin signalname="XLXN_5" name="writeZero" />
            <blockpin signalname="XLXN_4" name="writeRead" />
            <blockpin signalname="XLXN_3" name="writeReset" />
            <blockpin signalname="XLXN_27" name="wire_in" />
            <blockpin signalname="XLXN_10" name="busy" />
            <blockpin signalname="XLXN_8" name="readBit_detecion" />
            <blockpin signalname="XLXN_26" name="wire_out" />
        </block>
        <block symbolname="readByte" name="XLXI_2">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_10" name="isBusy" />
            <blockpin signalname="XLXN_8" name="readBit_detecion" />
            <blockpin signalname="XLXN_2" name="start" />
            <blockpin signalname="XLXN_4" name="read_bit" />
            <blockpin signalname="XLXN_15" name="busy" />
            <blockpin signalname="XLXN_17(7:0)" name="data(7:0)" />
        </block>
        <block symbolname="writeByte" name="XLXI_3">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_10" name="isBusy" />
            <blockpin signalname="XLXN_1" name="start" />
            <blockpin signalname="XLXN_16(7:0)" name="data(7:0)" />
            <blockpin signalname="XLXN_6" name="writeOne" />
            <blockpin signalname="XLXN_5" name="writeZero" />
            <blockpin signalname="XLXN_14" name="busy" />
        </block>
        <block symbolname="tempRead" name="XLXI_4">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="start" name="start" />
            <blockpin signalname="XLXN_18" name="isBusy" />
            <blockpin signalname="XLXN_8" name="readBit_detection" />
            <blockpin name="wire_in" />
            <blockpin signalname="XLXN_17(7:0)" name="inputData(7:0)" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="XLXN_2" name="startRead" />
            <blockpin signalname="XLXN_1" name="startWrite" />
            <blockpin signalname="XLXN_3" name="startReset" />
            <blockpin signalname="output_data(23:0)" name="tempData(23:0)" />
            <blockpin signalname="XLXN_16(7:0)" name="outputData(7:0)" />
            <blockpin signalname="test_out(3:0)" name="test_out(3:0)" />
        </block>
        <block symbolname="or3" name="XLXI_5">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="iobuf" name="XLXI_7">
            <blockpin signalname="XLXN_28" name="I" />
            <blockpin signalname="OW_DQ" name="IO" />
            <blockpin signalname="XLXN_27" name="O" />
            <blockpin signalname="XLXN_26" name="T" />
        </block>
        <block symbolname="gnd" name="XLXI_8">
            <blockpin signalname="XLXN_28" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2336" y="1408" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1488" y="1056" name="XLXI_3" orien="R0">
        </instance>
        <instance x="576" y="1424" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1280" y1="1136" y2="1136" x1="1056" />
            <wire x2="1488" y1="960" y2="960" x1="1280" />
            <wire x2="1280" y1="960" y2="1136" x1="1280" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1696" y1="1200" y2="1200" x1="1056" />
            <wire x2="1696" y1="1200" y2="1312" x1="1696" />
            <wire x2="2336" y1="1312" y2="1312" x1="1696" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="2240" y1="1424" y2="1424" x1="1888" />
            <wire x2="2240" y1="1248" y2="1424" x1="2240" />
            <wire x2="2336" y1="1248" y2="1248" x1="2240" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="2096" y1="928" y2="928" x1="1872" />
            <wire x2="2096" y1="928" y2="1184" x1="2096" />
            <wire x2="2336" y1="1184" y2="1184" x1="2096" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2112" y1="832" y2="832" x1="1872" />
            <wire x2="2112" y1="832" y2="1120" x1="2112" />
            <wire x2="2336" y1="1120" y2="1120" x1="2112" />
        </branch>
        <instance x="336" y="688" name="XLXI_5" orien="R90" />
        <branch name="XLXN_10">
            <wire x2="1424" y1="512" y2="512" x1="400" />
            <wire x2="2832" y1="512" y2="512" x1="1424" />
            <wire x2="2832" y1="512" y2="1056" x1="2832" />
            <wire x2="1424" y1="512" y2="896" x1="1424" />
            <wire x2="1488" y1="896" y2="896" x1="1424" />
            <wire x2="1424" y1="896" y2="1488" x1="1424" />
            <wire x2="1472" y1="1488" y2="1488" x1="1424" />
            <wire x2="400" y1="512" y2="688" x1="400" />
            <wire x2="2832" y1="1056" y2="1056" x1="2768" />
        </branch>
        <instance x="1472" y="1648" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_8">
            <wire x2="480" y1="1200" y2="1712" x1="480" />
            <wire x2="1360" y1="1712" y2="1712" x1="480" />
            <wire x2="2848" y1="1712" y2="1712" x1="1360" />
            <wire x2="576" y1="1200" y2="1200" x1="480" />
            <wire x2="1472" y1="1552" y2="1552" x1="1360" />
            <wire x2="1360" y1="1552" y2="1712" x1="1360" />
            <wire x2="2848" y1="1216" y2="1216" x1="2768" />
            <wire x2="2848" y1="1216" y2="1712" x1="2848" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1072" y1="1072" y2="1072" x1="1056" />
            <wire x2="1072" y1="1072" y2="1616" x1="1072" />
            <wire x2="1472" y1="1616" y2="1616" x1="1072" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="528" y1="656" y2="688" x1="528" />
            <wire x2="1888" y1="656" y2="656" x1="528" />
            <wire x2="1888" y1="656" y2="1024" x1="1888" />
            <wire x2="1888" y1="1024" y2="1024" x1="1872" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1952" y1="624" y2="624" x1="464" />
            <wire x2="1952" y1="624" y2="1520" x1="1952" />
            <wire x2="464" y1="624" y2="688" x1="464" />
            <wire x2="1952" y1="1520" y2="1520" x1="1888" />
        </branch>
        <branch name="XLXN_16(7:0)">
            <wire x2="1344" y1="1328" y2="1328" x1="1056" />
            <wire x2="1488" y1="1024" y2="1024" x1="1344" />
            <wire x2="1344" y1="1024" y2="1328" x1="1344" />
        </branch>
        <branch name="XLXN_17(7:0)">
            <wire x2="576" y1="1328" y2="1328" x1="528" />
            <wire x2="528" y1="1328" y2="1664" x1="528" />
            <wire x2="1968" y1="1664" y2="1664" x1="528" />
            <wire x2="1968" y1="1616" y2="1616" x1="1888" />
            <wire x2="1968" y1="1616" y2="1664" x1="1968" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="464" y1="944" y2="1136" x1="464" />
            <wire x2="576" y1="1136" y2="1136" x1="464" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="448" y1="1824" y2="1824" x1="352" />
            <wire x2="1232" y1="1824" y2="1824" x1="448" />
            <wire x2="1232" y1="1824" y2="1840" x1="1232" />
            <wire x2="1328" y1="1824" y2="1824" x1="1232" />
            <wire x2="2192" y1="1824" y2="1824" x1="1328" />
            <wire x2="576" y1="1008" y2="1008" x1="448" />
            <wire x2="448" y1="1008" y2="1824" x1="448" />
            <wire x2="1488" y1="832" y2="832" x1="1232" />
            <wire x2="1232" y1="832" y2="1840" x1="1232" />
            <wire x2="1472" y1="1424" y2="1424" x1="1328" />
            <wire x2="1328" y1="1424" y2="1824" x1="1328" />
            <wire x2="2336" y1="1056" y2="1056" x1="2192" />
            <wire x2="2192" y1="1056" y2="1824" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="352" y="1824" name="Clk_50MHz" orien="R180" />
        <branch name="start">
            <wire x2="576" y1="1072" y2="1072" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="1072" name="start" orien="R180" />
        <branch name="test_out(3:0)">
            <wire x2="1152" y1="1392" y2="1392" x1="1056" />
            <wire x2="1152" y1="1392" y2="2176" x1="1152" />
            <wire x2="1184" y1="2176" y2="2176" x1="1152" />
        </branch>
        <branch name="output_data(23:0)">
            <wire x2="1200" y1="1264" y2="1264" x1="1056" />
            <wire x2="1200" y1="1264" y2="2144" x1="1200" />
            <wire x2="1216" y1="2144" y2="2144" x1="1200" />
        </branch>
        <branch name="busy">
            <wire x2="1136" y1="1008" y2="1008" x1="1056" />
            <wire x2="1136" y1="1008" y2="1216" x1="1136" />
            <wire x2="1280" y1="1216" y2="1216" x1="1136" />
            <wire x2="1280" y1="1216" y2="2096" x1="1280" />
            <wire x2="1312" y1="2096" y2="2096" x1="1280" />
        </branch>
        <instance x="2496" y="2048" name="XLXI_7" orien="R0" />
        <branch name="XLXN_26">
            <wire x2="2496" y1="1776" y2="1856" x1="2496" />
            <wire x2="2832" y1="1776" y2="1776" x1="2496" />
            <wire x2="2832" y1="1376" y2="1376" x1="2768" />
            <wire x2="2832" y1="1376" y2="1776" x1="2832" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2336" y1="1376" y2="1376" x1="2320" />
            <wire x2="2320" y1="1376" y2="1984" x1="2320" />
            <wire x2="2496" y1="1984" y2="1984" x1="2320" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2496" y1="1920" y2="1920" x1="2432" />
            <wire x2="2432" y1="1920" y2="2016" x1="2432" />
        </branch>
        <instance x="2368" y="2144" name="XLXI_8" orien="R0" />
        <branch name="OW_DQ">
            <wire x2="2848" y1="1920" y2="1920" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2848" y="1920" name="OW_DQ" orien="R0" />
        <iomarker fontsize="28" x="1312" y="2096" name="busy" orien="R0" />
        <iomarker fontsize="28" x="1216" y="2144" name="output_data(23:0)" orien="R0" />
        <iomarker fontsize="28" x="1184" y="2176" name="test_out(3:0)" orien="R0" />
    </sheet>
</drawing>