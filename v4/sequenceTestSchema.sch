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
        <signal name="XLXN_8" />
        <signal name="XLXN_9(7:0)" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12(7:0)" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="clk" />
        <signal name="tempData(23:0)" />
        <signal name="busy" />
        <signal name="start" />
        <signal name="wire_inout" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="tempData(23:0)" />
        <port polarity="Output" name="busy" />
        <port polarity="Input" name="start" />
        <port polarity="BiDirectional" name="wire_inout" />
        <blockdef name="modul">
            <timestamp>2015-4-7T23:53:36</timestamp>
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
            <timestamp>2015-4-7T23:53:36</timestamp>
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
            <timestamp>2015-4-7T23:53:36</timestamp>
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
            <timestamp>2015-4-10T16:11:2</timestamp>
            <rect width="352" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
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
        <block symbolname="modul" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_1" name="writeOne" />
            <blockpin signalname="XLXN_3" name="writeZero" />
            <blockpin signalname="XLXN_4" name="writeRead" />
            <blockpin signalname="XLXN_8" name="writeReset" />
            <blockpin signalname="XLXN_17" name="wire_in" />
            <blockpin signalname="XLXN_22" name="busy" />
            <blockpin signalname="XLXN_15" name="readBit_detecion" />
            <blockpin signalname="XLXN_16" name="wire_out" />
        </block>
        <block symbolname="readByte" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_22" name="isBusy" />
            <blockpin signalname="XLXN_15" name="readBit_detecion" />
            <blockpin signalname="XLXN_11" name="start" />
            <blockpin signalname="XLXN_4" name="read_bit" />
            <blockpin signalname="XLXN_25" name="busy" />
            <blockpin signalname="XLXN_12(7:0)" name="data(7:0)" />
        </block>
        <block symbolname="writeByte" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_22" name="isBusy" />
            <blockpin signalname="XLXN_10" name="start" />
            <blockpin signalname="XLXN_9(7:0)" name="data(7:0)" />
            <blockpin signalname="XLXN_1" name="writeOne" />
            <blockpin signalname="XLXN_3" name="writeZero" />
            <blockpin signalname="XLXN_23" name="busy" />
        </block>
        <block symbolname="tempRead" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="start" name="start" />
            <blockpin signalname="XLXN_26" name="isBusy" />
            <blockpin signalname="XLXN_15" name="readBit_detection" />
            <blockpin signalname="XLXN_12(7:0)" name="inputData(7:0)" />
            <blockpin signalname="busy" name="busy" />
            <blockpin signalname="XLXN_11" name="startRead" />
            <blockpin signalname="XLXN_10" name="startWrite" />
            <blockpin signalname="XLXN_8" name="startReset" />
            <blockpin signalname="tempData(23:0)" name="tempData(23:0)" />
            <blockpin signalname="XLXN_9(7:0)" name="outputData(7:0)" />
        </block>
        <block symbolname="iobuf" name="XLXI_5">
            <blockpin signalname="XLXN_18" name="I" />
            <blockpin signalname="wire_inout" name="IO" />
            <blockpin signalname="XLXN_17" name="O" />
            <blockpin signalname="XLXN_16" name="T" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_18" name="G" />
        </block>
        <block symbolname="or3" name="XLXI_7">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_23" name="I2" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2256" y="1424" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="2240" y1="672" y2="672" x1="1568" />
            <wire x2="2240" y1="672" y2="1136" x1="2240" />
            <wire x2="2256" y1="1136" y2="1136" x1="2240" />
        </branch>
        <instance x="1184" y="896" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="1904" y1="768" y2="768" x1="1568" />
            <wire x2="1904" y1="768" y2="1200" x1="1904" />
            <wire x2="2256" y1="1200" y2="1200" x1="1904" />
        </branch>
        <instance x="1152" y="1264" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="1888" y1="1040" y2="1040" x1="1568" />
            <wire x2="1888" y1="1040" y2="1264" x1="1888" />
            <wire x2="2256" y1="1264" y2="1264" x1="1888" />
        </branch>
        <instance x="352" y="1664" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_8">
            <wire x2="1536" y1="1504" y2="1504" x1="832" />
            <wire x2="1536" y1="1328" y2="1504" x1="1536" />
            <wire x2="2256" y1="1328" y2="1328" x1="1536" />
        </branch>
        <branch name="XLXN_9(7:0)">
            <wire x2="1008" y1="1632" y2="1632" x1="832" />
            <wire x2="1008" y1="864" y2="1632" x1="1008" />
            <wire x2="1184" y1="864" y2="864" x1="1008" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="992" y1="1440" y2="1440" x1="832" />
            <wire x2="992" y1="800" y2="1440" x1="992" />
            <wire x2="1184" y1="800" y2="800" x1="992" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="976" y1="1376" y2="1376" x1="832" />
            <wire x2="976" y1="1232" y2="1376" x1="976" />
            <wire x2="1152" y1="1232" y2="1232" x1="976" />
        </branch>
        <branch name="XLXN_12(7:0)">
            <wire x2="352" y1="1632" y2="1632" x1="272" />
            <wire x2="272" y1="1632" y2="1744" x1="272" />
            <wire x2="1648" y1="1744" y2="1744" x1="272" />
            <wire x2="1648" y1="1232" y2="1232" x1="1568" />
            <wire x2="1648" y1="1232" y2="1744" x1="1648" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="352" y1="1552" y2="1552" x1="208" />
            <wire x2="208" y1="1552" y2="1984" x1="208" />
            <wire x2="1072" y1="1984" y2="1984" x1="208" />
            <wire x2="2880" y1="1984" y2="1984" x1="1072" />
            <wire x2="1152" y1="1168" y2="1168" x1="1072" />
            <wire x2="1072" y1="1168" y2="1984" x1="1072" />
            <wire x2="2880" y1="1232" y2="1232" x1="2688" />
            <wire x2="2880" y1="1232" y2="1984" x1="2880" />
        </branch>
        <instance x="2432" y="1728" name="XLXI_5" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="2432" y1="1488" y2="1536" x1="2432" />
            <wire x2="2768" y1="1488" y2="1488" x1="2432" />
            <wire x2="2768" y1="1392" y2="1392" x1="2688" />
            <wire x2="2768" y1="1392" y2="1488" x1="2768" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2256" y1="1392" y2="1392" x1="2240" />
            <wire x2="2240" y1="1392" y2="1664" x1="2240" />
            <wire x2="2432" y1="1664" y2="1664" x1="2240" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2432" y1="1600" y2="1600" x1="2368" />
            <wire x2="2368" y1="1600" y2="1728" x1="2368" />
        </branch>
        <instance x="2304" y="1856" name="XLXI_6" orien="R0" />
        <instance x="240" y="1040" name="XLXI_7" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="80" y1="432" y2="976" x1="80" />
            <wire x2="240" y1="976" y2="976" x1="80" />
            <wire x2="1120" y1="432" y2="432" x1="80" />
            <wire x2="2768" y1="432" y2="432" x1="1120" />
            <wire x2="2768" y1="432" y2="1072" x1="2768" />
            <wire x2="1120" y1="432" y2="736" x1="1120" />
            <wire x2="1184" y1="736" y2="736" x1="1120" />
            <wire x2="1120" y1="736" y2="1104" x1="1120" />
            <wire x2="1152" y1="1104" y2="1104" x1="1120" />
            <wire x2="2768" y1="1072" y2="1072" x1="2688" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="240" y1="560" y2="848" x1="240" />
            <wire x2="1584" y1="560" y2="560" x1="240" />
            <wire x2="1584" y1="560" y2="864" x1="1584" />
            <wire x2="1584" y1="864" y2="864" x1="1568" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1632" y1="528" y2="528" x1="160" />
            <wire x2="1632" y1="528" y2="1136" x1="1632" />
            <wire x2="160" y1="528" y2="912" x1="160" />
            <wire x2="240" y1="912" y2="912" x1="160" />
            <wire x2="1632" y1="1136" y2="1136" x1="1568" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="288" y1="1200" y2="1472" x1="288" />
            <wire x2="352" y1="1472" y2="1472" x1="288" />
            <wire x2="576" y1="1200" y2="1200" x1="288" />
            <wire x2="576" y1="912" y2="912" x1="496" />
            <wire x2="576" y1="912" y2="1200" x1="576" />
        </branch>
        <branch name="clk">
            <wire x2="352" y1="1312" y2="1312" x1="304" />
            <wire x2="304" y1="1312" y2="2064" x1="304" />
            <wire x2="448" y1="2064" y2="2064" x1="304" />
            <wire x2="1040" y1="2064" y2="2064" x1="448" />
            <wire x2="2144" y1="2064" y2="2064" x1="1040" />
            <wire x2="448" y1="2064" y2="2288" x1="448" />
            <wire x2="448" y1="2288" y2="2288" x1="304" />
            <wire x2="1184" y1="672" y2="672" x1="1040" />
            <wire x2="1040" y1="672" y2="1040" x1="1040" />
            <wire x2="1152" y1="1040" y2="1040" x1="1040" />
            <wire x2="1040" y1="1040" y2="2064" x1="1040" />
            <wire x2="2256" y1="1072" y2="1072" x1="2144" />
            <wire x2="2144" y1="1072" y2="2064" x1="2144" />
        </branch>
        <branch name="tempData(23:0)">
            <wire x2="880" y1="1568" y2="1568" x1="832" />
            <wire x2="880" y1="1568" y2="2192" x1="880" />
            <wire x2="960" y1="2192" y2="2192" x1="880" />
        </branch>
        <branch name="busy">
            <wire x2="896" y1="1312" y2="1312" x1="832" />
            <wire x2="896" y1="1312" y2="2128" x1="896" />
            <wire x2="1040" y1="2128" y2="2128" x1="896" />
        </branch>
        <branch name="start">
            <wire x2="352" y1="1392" y2="1392" x1="176" />
            <wire x2="176" y1="1392" y2="2160" x1="176" />
            <wire x2="368" y1="2160" y2="2160" x1="176" />
            <wire x2="368" y1="2160" y2="2224" x1="368" />
            <wire x2="368" y1="2224" y2="2224" x1="304" />
        </branch>
        <branch name="wire_inout">
            <wire x2="2736" y1="1600" y2="1600" x1="2656" />
            <wire x2="2736" y1="1600" y2="2096" x1="2736" />
            <wire x2="2784" y1="2096" y2="2096" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2784" y="2096" name="wire_inout" orien="R0" />
        <iomarker fontsize="28" x="1040" y="2128" name="busy" orien="R0" />
        <iomarker fontsize="28" x="960" y="2192" name="tempData(23:0)" orien="R0" />
        <iomarker fontsize="28" x="304" y="2288" name="clk" orien="R180" />
        <iomarker fontsize="28" x="304" y="2224" name="start" orien="R180" />
    </sheet>
</drawing>