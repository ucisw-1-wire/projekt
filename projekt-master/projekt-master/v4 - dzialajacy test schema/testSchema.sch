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
        <signal name="clk" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="start_write" />
        <signal name="start_read" />
        <signal name="XLXN_11(7:0)" />
        <signal name="wire_out" />
        <signal name="XLXN_13" />
        <signal name="wire_in" />
        <signal name="busy_write" />
        <signal name="busy_read" />
        <signal name="XLXN_17(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="start_write" />
        <port polarity="Input" name="start_read" />
        <port polarity="Output" name="wire_out" />
        <port polarity="Input" name="wire_in" />
        <port polarity="Output" name="busy_write" />
        <port polarity="Output" name="busy_read" />
        <port polarity="Output" name="XLXN_17(7:0)" />
        <blockdef name="writeByte">
            <timestamp>2015-3-29T22:44:46</timestamp>
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
        <blockdef name="readByte">
            <timestamp>2015-3-29T22:44:56</timestamp>
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
        <blockdef name="modul">
            <timestamp>2015-3-29T22:45:21</timestamp>
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="writeByte" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_7" name="isBusy" />
            <blockpin signalname="start_write" name="start" />
            <blockpin signalname="XLXN_11(7:0)" name="data(7:0)" />
            <blockpin signalname="XLXN_2" name="writeOne" />
            <blockpin signalname="XLXN_1" name="writeZero" />
            <blockpin signalname="busy_write" name="busy" />
        </block>
        <block symbolname="readByte" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_7" name="isBusy" />
            <blockpin signalname="XLXN_8" name="readBit_detecion" />
            <blockpin signalname="start_read" name="start" />
            <blockpin signalname="XLXN_3" name="read_bit" />
            <blockpin signalname="busy_read" name="busy" />
            <blockpin signalname="XLXN_17(7:0)" name="data(7:0)" />
        </block>
        <block symbolname="modul" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_2" name="writeOne" />
            <blockpin signalname="XLXN_1" name="writeZero" />
            <blockpin signalname="XLXN_3" name="writeRead" />
            <blockpin name="writeReset" />
            <blockpin signalname="wire_in" name="wire_in" />
            <blockpin signalname="XLXN_7" name="busy" />
            <blockpin signalname="XLXN_8" name="readBit_detecion" />
            <blockpin signalname="wire_out" name="wire_out" />
        </block>
        <block symbolname="constant" name="XLXI_4">
            <attr value="CA" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_11(7:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="848" y="864" name="XLXI_1" orien="R0">
        </instance>
        <instance x="832" y="1280" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1472" y="1152" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1344" y1="736" y2="736" x1="1232" />
            <wire x2="1344" y1="736" y2="928" x1="1344" />
            <wire x2="1472" y1="928" y2="928" x1="1344" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1360" y1="640" y2="640" x1="1232" />
            <wire x2="1360" y1="640" y2="864" x1="1360" />
            <wire x2="1472" y1="864" y2="864" x1="1360" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1360" y1="1056" y2="1056" x1="1248" />
            <wire x2="1360" y1="992" y2="1056" x1="1360" />
            <wire x2="1472" y1="992" y2="992" x1="1360" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="528" y1="528" y2="704" x1="528" />
            <wire x2="528" y1="704" y2="1120" x1="528" />
            <wire x2="832" y1="1120" y2="1120" x1="528" />
            <wire x2="848" y1="704" y2="704" x1="528" />
            <wire x2="1920" y1="528" y2="528" x1="528" />
            <wire x2="1920" y1="528" y2="800" x1="1920" />
            <wire x2="1920" y1="800" y2="800" x1="1904" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="752" y1="1184" y2="1360" x1="752" />
            <wire x2="2000" y1="1360" y2="1360" x1="752" />
            <wire x2="832" y1="1184" y2="1184" x1="752" />
            <wire x2="2000" y1="960" y2="960" x1="1904" />
            <wire x2="2000" y1="960" y2="1360" x1="2000" />
        </branch>
        <branch name="start_write">
            <wire x2="288" y1="1264" y2="1264" x1="160" />
            <wire x2="848" y1="768" y2="768" x1="288" />
            <wire x2="288" y1="768" y2="1264" x1="288" />
        </branch>
        <branch name="start_read">
            <wire x2="368" y1="1328" y2="1328" x1="160" />
            <wire x2="832" y1="1248" y2="1248" x1="368" />
            <wire x2="368" y1="1248" y2="1328" x1="368" />
        </branch>
        <instance x="160" y="624" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_11(7:0)">
            <wire x2="640" y1="656" y2="656" x1="304" />
            <wire x2="640" y1="656" y2="832" x1="640" />
            <wire x2="848" y1="832" y2="832" x1="640" />
        </branch>
        <branch name="wire_out">
            <wire x2="2192" y1="1120" y2="1120" x1="1904" />
        </branch>
        <branch name="clk">
            <wire x2="704" y1="1440" y2="1440" x1="160" />
            <wire x2="1424" y1="1440" y2="1440" x1="704" />
            <wire x2="848" y1="640" y2="640" x1="704" />
            <wire x2="704" y1="640" y2="1056" x1="704" />
            <wire x2="832" y1="1056" y2="1056" x1="704" />
            <wire x2="704" y1="1056" y2="1440" x1="704" />
            <wire x2="1472" y1="800" y2="800" x1="1424" />
            <wire x2="1424" y1="800" y2="1440" x1="1424" />
        </branch>
        <branch name="wire_in">
            <wire x2="1472" y1="1536" y2="1536" x1="160" />
            <wire x2="1472" y1="1120" y2="1120" x1="1456" />
            <wire x2="1456" y1="1120" y2="1520" x1="1456" />
            <wire x2="1472" y1="1520" y2="1520" x1="1456" />
            <wire x2="1472" y1="1520" y2="1536" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="2192" y="1120" name="wire_out" orien="R0" />
        <iomarker fontsize="28" x="160" y="1536" name="wire_in" orien="R180" />
        <iomarker fontsize="28" x="160" y="1440" name="clk" orien="R180" />
        <iomarker fontsize="28" x="160" y="1328" name="start_read" orien="R180" />
        <iomarker fontsize="28" x="160" y="1264" name="start_write" orien="R180" />
        <branch name="busy_write">
            <wire x2="1312" y1="832" y2="832" x1="1232" />
            <wire x2="1312" y1="832" y2="1200" x1="1312" />
            <wire x2="2192" y1="1200" y2="1200" x1="1312" />
        </branch>
        <branch name="busy_read">
            <wire x2="1280" y1="1152" y2="1152" x1="1248" />
            <wire x2="1280" y1="1152" y2="1232" x1="1280" />
            <wire x2="2176" y1="1232" y2="1232" x1="1280" />
        </branch>
        <branch name="XLXN_17(7:0)">
            <wire x2="1296" y1="1248" y2="1248" x1="1248" />
            <wire x2="1296" y1="1248" y2="1280" x1="1296" />
            <wire x2="2160" y1="1280" y2="1280" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="2192" y="1200" name="busy_write" orien="R0" />
        <iomarker fontsize="28" x="2176" y="1232" name="busy_read" orien="R0" />
        <iomarker fontsize="28" x="2160" y="1280" name="XLXN_17(7:0)" orien="R0" />
    </sheet>
</drawing>