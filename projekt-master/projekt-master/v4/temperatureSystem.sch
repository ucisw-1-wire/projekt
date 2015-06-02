<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4(7:0)" />
        <signal name="XLXN_5(9:0)" />
        <signal name="XLXN_6(8:0)" />
        <signal name="XLXN_7(2:0)" />
        <signal name="XLXN_8(7:0)" />
        <signal name="XLXN_13(23:0)" />
        <signal name="XLXN_14(7:0)" />
        <signal name="XLXN_15(7:0)" />
        <signal name="Clk_50MHz" />
        <signal name="VGA_VS" />
        <signal name="VGA_HS" />
        <signal name="VGA_B" />
        <signal name="VGA_G" />
        <signal name="VGA_R" />
        <signal name="OW_DQ" />
        <signal name="XLXN_19" />
        <signal name="start" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22(23:0)" />
        <signal name="test_out(3:0)" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="C" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="A" />
        <signal name="B" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="BiDirectional" name="OW_DQ" />
        <port polarity="Input" name="start" />
        <port polarity="Output" name="test_out(3:0)" />
        <port polarity="Output" name="C" />
        <port polarity="Output" name="A" />
        <port polarity="Output" name="B" />
        <blockdef name="sequenceTestSchema">
            <timestamp>2015-5-29T8:35:43</timestamp>
            <rect width="320" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="Memory">
            <timestamp>2015-5-29T6:54:32</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="336" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="controler">
            <timestamp>2015-5-28T20:6:42</timestamp>
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
        <blockdef name="displayControler">
            <timestamp>2015-5-28T20:39:39</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="VGA">
            <timestamp>2015-5-29T6:47:24</timestamp>
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="controler" name="XLXI_6">
            <blockpin signalname="Clk_50MHz" name="clock" />
            <blockpin signalname="A" name="is_read_busy" />
            <blockpin signalname="XLXN_13(23:0)" name="input_data(23:0)" />
            <blockpin signalname="XLXN_19" name="start_read" />
            <blockpin signalname="B" name="write_en" />
            <blockpin signalname="XLXN_4(7:0)" name="output_data(7:0)" />
            <blockpin signalname="XLXN_14(7:0)" name="adres(7:0)" />
        </block>
        <block symbolname="displayControler" name="XLXI_8">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_8(7:0)" name="input_data(7:0)" />
            <blockpin signalname="XLXN_6(8:0)" name="disp_row(8:0)" />
            <blockpin signalname="XLXN_5(9:0)" name="disp_col(9:0)" />
            <blockpin signalname="XLXN_7(2:0)" name="rgb(2:0)" />
            <blockpin signalname="XLXN_15(7:0)" name="mem_adres(7:0)" />
        </block>
        <block symbolname="VGA" name="XLXI_9">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_7(2:0)" name="colors_in(2:0)" />
            <blockpin signalname="VGA_R" name="r" />
            <blockpin signalname="VGA_G" name="g" />
            <blockpin signalname="VGA_B" name="b" />
            <blockpin signalname="VGA_HS" name="hsync" />
            <blockpin signalname="VGA_VS" name="vsync" />
            <blockpin signalname="XLXN_6(8:0)" name="row(8:0)" />
            <blockpin signalname="XLXN_5(9:0)" name="column(9:0)" />
        </block>
        <block symbolname="Memory" name="XLXI_10">
            <blockpin signalname="Clk_50MHz" name="clock" />
            <blockpin signalname="B" name="write_en" />
            <blockpin signalname="XLXN_4(7:0)" name="input_data(7:0)" />
            <blockpin signalname="XLXN_15(7:0)" name="adres_rd(7:0)" />
            <blockpin signalname="XLXN_14(7:0)" name="adres_wr(7:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="output_data(7:0)" />
        </block>
        <block symbolname="or2" name="XLXI_11">
            <blockpin signalname="XLXN_19" name="I0" />
            <blockpin signalname="start" name="I1" />
            <blockpin signalname="C" name="O" />
        </block>
        <block symbolname="sequenceTestSchema" name="XLXI_14">
            <blockpin signalname="C" name="start" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="A" name="Busy" />
            <blockpin signalname="test_out(3:0)" name="test_out(3:0)" />
            <blockpin signalname="XLXN_13(23:0)" name="output_data(23:0)" />
            <blockpin signalname="OW_DQ" name="OW_DQ" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1520" y="1216" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_4(7:0)">
            <wire x2="2064" y1="1456" y2="1456" x1="1776" />
            <wire x2="1776" y1="1456" y2="1696" x1="1776" />
            <wire x2="1872" y1="1696" y2="1696" x1="1776" />
            <wire x2="2064" y1="1120" y2="1120" x1="2000" />
            <wire x2="2064" y1="1120" y2="1456" x1="2064" />
        </branch>
        <branch name="XLXN_5(9:0)">
            <wire x2="2640" y1="1216" y2="1216" x1="2592" />
            <wire x2="2592" y1="1216" y2="1472" x1="2592" />
            <wire x2="4016" y1="1472" y2="1472" x1="2592" />
            <wire x2="4016" y1="1376" y2="1376" x1="4000" />
            <wire x2="4016" y1="1376" y2="1472" x1="4016" />
        </branch>
        <branch name="XLXN_6(8:0)">
            <wire x2="2640" y1="1152" y2="1152" x1="2576" />
            <wire x2="2576" y1="1152" y2="1504" x1="2576" />
            <wire x2="4048" y1="1504" y2="1504" x1="2576" />
            <wire x2="4048" y1="1312" y2="1312" x1="4000" />
            <wire x2="4048" y1="1312" y2="1504" x1="4048" />
        </branch>
        <branch name="XLXN_7(2:0)">
            <wire x2="3600" y1="1024" y2="1024" x1="3104" />
            <wire x2="3600" y1="1024" y2="1376" x1="3600" />
            <wire x2="3616" y1="1376" y2="1376" x1="3600" />
        </branch>
        <branch name="XLXN_8(7:0)">
            <wire x2="2352" y1="1568" y2="1568" x1="2336" />
            <wire x2="2640" y1="1088" y2="1088" x1="2352" />
            <wire x2="2352" y1="1088" y2="1568" x1="2352" />
        </branch>
        <instance x="2640" y="1248" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_14(7:0)">
            <wire x2="1712" y1="1360" y2="1888" x1="1712" />
            <wire x2="1872" y1="1888" y2="1888" x1="1712" />
            <wire x2="2032" y1="1360" y2="1360" x1="1712" />
            <wire x2="2032" y1="1184" y2="1184" x1="2000" />
            <wire x2="2032" y1="1184" y2="1360" x1="2032" />
        </branch>
        <branch name="XLXN_15(7:0)">
            <wire x2="1776" y1="1824" y2="2080" x1="1776" />
            <wire x2="3184" y1="2080" y2="2080" x1="1776" />
            <wire x2="1872" y1="1824" y2="1824" x1="1776" />
            <wire x2="3184" y1="1216" y2="1216" x1="3104" />
            <wire x2="3184" y1="1216" y2="2080" x1="3184" />
        </branch>
        <iomarker fontsize="28" x="512" y="544" name="Clk_50MHz" orien="R180" />
        <instance x="3616" y="1408" name="XLXI_9" orien="R0">
        </instance>
        <branch name="VGA_VS">
            <wire x2="4224" y1="1248" y2="1248" x1="4000" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="4224" y1="1184" y2="1184" x1="4000" />
        </branch>
        <branch name="VGA_B">
            <wire x2="4224" y1="1120" y2="1120" x1="4000" />
        </branch>
        <branch name="VGA_G">
            <wire x2="4224" y1="1056" y2="1056" x1="4000" />
        </branch>
        <branch name="VGA_R">
            <wire x2="4224" y1="992" y2="992" x1="4000" />
        </branch>
        <iomarker fontsize="28" x="480" y="1360" name="OW_DQ" orien="R0" />
        <iomarker fontsize="28" x="4224" y="992" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="4224" y="1056" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="4224" y="1120" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="4224" y="1184" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="4224" y="1248" name="VGA_VS" orien="R0" />
        <instance x="1872" y="1792" name="XLXI_10" orien="R0">
        </instance>
        <instance x="832" y="848" name="XLXI_11" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="752" y1="672" y2="784" x1="752" />
            <wire x2="832" y1="784" y2="784" x1="752" />
            <wire x2="2016" y1="672" y2="672" x1="752" />
            <wire x2="2016" y1="672" y2="992" x1="2016" />
            <wire x2="2016" y1="992" y2="992" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="624" y="432" name="start" orien="R270" />
        <branch name="Clk_50MHz">
            <wire x2="560" y1="544" y2="544" x1="512" />
            <wire x2="1408" y1="544" y2="544" x1="560" />
            <wire x2="1408" y1="544" y2="992" x1="1408" />
            <wire x2="1520" y1="992" y2="992" x1="1408" />
            <wire x2="1408" y1="992" y2="1568" x1="1408" />
            <wire x2="1872" y1="1568" y2="1568" x1="1408" />
            <wire x2="2560" y1="544" y2="544" x1="1408" />
            <wire x2="2560" y1="544" y2="1024" x1="2560" />
            <wire x2="2640" y1="1024" y2="1024" x1="2560" />
            <wire x2="3616" y1="544" y2="544" x1="2560" />
            <wire x2="3616" y1="544" y2="992" x1="3616" />
            <wire x2="560" y1="544" y2="1168" x1="560" />
            <wire x2="720" y1="1168" y2="1168" x1="560" />
        </branch>
        <branch name="OW_DQ">
            <wire x2="448" y1="1312" y2="1360" x1="448" />
            <wire x2="480" y1="1360" y2="1360" x1="448" />
            <wire x2="1248" y1="1312" y2="1312" x1="448" />
            <wire x2="1200" y1="1168" y2="1168" x1="1168" />
            <wire x2="1200" y1="1152" y2="1168" x1="1200" />
            <wire x2="1248" y1="1152" y2="1152" x1="1200" />
            <wire x2="1248" y1="1152" y2="1312" x1="1248" />
        </branch>
        <branch name="XLXN_13(23:0)">
            <wire x2="1328" y1="1104" y2="1104" x1="1168" />
            <wire x2="1328" y1="1104" y2="1184" x1="1328" />
            <wire x2="1520" y1="1184" y2="1184" x1="1328" />
        </branch>
        <instance x="720" y="1200" name="XLXI_14" orien="R0">
        </instance>
        <branch name="test_out(3:0)">
            <wire x2="704" y1="1440" y2="1872" x1="704" />
            <wire x2="800" y1="1872" y2="1872" x1="704" />
            <wire x2="1280" y1="1440" y2="1440" x1="704" />
            <wire x2="1280" y1="1040" y2="1040" x1="1168" />
            <wire x2="1280" y1="1040" y2="1440" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="800" y="1872" name="test_out(3:0)" orien="R0" />
        <branch name="C">
            <wire x2="720" y1="976" y2="976" x1="656" />
            <wire x2="656" y1="976" y2="1280" x1="656" />
            <wire x2="1232" y1="1280" y2="1280" x1="656" />
            <wire x2="1232" y1="752" y2="752" x1="1088" />
            <wire x2="1232" y1="752" y2="1280" x1="1232" />
            <wire x2="1264" y1="752" y2="752" x1="1232" />
        </branch>
        <branch name="A">
            <wire x2="1344" y1="976" y2="976" x1="1168" />
            <wire x2="1344" y1="976" y2="1088" x1="1344" />
            <wire x2="1520" y1="1088" y2="1088" x1="1344" />
            <wire x2="1344" y1="1088" y2="1728" x1="1344" />
            <wire x2="1344" y1="1728" y2="1728" x1="1232" />
            <wire x2="1232" y1="1728" y2="1760" x1="1232" />
            <wire x2="1312" y1="1760" y2="1760" x1="1232" />
        </branch>
        <branch name="B">
            <wire x2="1792" y1="1904" y2="1904" x1="1232" />
            <wire x2="1232" y1="1904" y2="1952" x1="1232" />
            <wire x2="1312" y1="1952" y2="1952" x1="1232" />
            <wire x2="1792" y1="1472" y2="1632" x1="1792" />
            <wire x2="1872" y1="1632" y2="1632" x1="1792" />
            <wire x2="1792" y1="1632" y2="1904" x1="1792" />
            <wire x2="2144" y1="1472" y2="1472" x1="1792" />
            <wire x2="2144" y1="1056" y2="1056" x1="2000" />
            <wire x2="2144" y1="1056" y2="1472" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="1312" y="1760" name="A" orien="R0" />
        <iomarker fontsize="28" x="1312" y="1952" name="B" orien="R0" />
        <branch name="start">
            <wire x2="624" y1="432" y2="496" x1="624" />
            <wire x2="624" y1="496" y2="720" x1="624" />
            <wire x2="832" y1="720" y2="720" x1="624" />
        </branch>
        <iomarker fontsize="28" x="1264" y="752" name="C" orien="R0" />
    </sheet>
</drawing>