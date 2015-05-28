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
        <signal name="XLXN_4(7:0)" />
        <signal name="XLXN_5(9:0)" />
        <signal name="XLXN_6(8:0)" />
        <signal name="XLXN_7(2:0)" />
        <signal name="XLXN_8(7:0)" />
        <signal name="XLXN_9(2:0)" />
        <signal name="XLXN_10(7:0)" />
        <signal name="XLXN_11(8:0)" />
        <signal name="XLXN_12(9:0)" />
        <signal name="XLXN_13(23:0)" />
        <blockdef name="sequenceTestSchema">
            <timestamp>2015-5-22T11:59:1</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="Memory">
            <timestamp>2015-5-22T12:43:3</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
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
        <block symbolname="sequenceTestSchema" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="start" />
            <blockpin name="Clk_50MHz" />
            <blockpin signalname="XLXN_13(23:0)" name="Output_Data(23:0)" />
            <blockpin signalname="XLXN_1" name="Busy" />
            <blockpin name="OW_DQ" />
        </block>
        <block symbolname="Memory" name="XLXI_3">
            <blockpin name="clock" />
            <blockpin signalname="XLXN_3" name="write_en" />
            <blockpin signalname="XLXN_4(7:0)" name="input_data(7:0)" />
            <blockpin name="adres(7:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="output_data(7:0)" />
        </block>
        <block symbolname="VGA" name="XLXI_5">
            <blockpin name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_7(2:0)" name="colors_in(2:0)" />
            <blockpin name="r" />
            <blockpin name="g" />
            <blockpin name="b" />
            <blockpin name="hsync" />
            <blockpin name="vsync" />
            <blockpin signalname="XLXN_6(8:0)" name="row(8:0)" />
            <blockpin signalname="XLXN_5(9:0)" name="column(9:0)" />
        </block>
        <block symbolname="controler" name="XLXI_6">
            <blockpin name="clock" />
            <blockpin signalname="XLXN_1" name="is_read_busy" />
            <blockpin signalname="XLXN_13(23:0)" name="input_data(23:0)" />
            <blockpin signalname="XLXN_2" name="start_read" />
            <blockpin signalname="XLXN_3" name="write_en" />
            <blockpin signalname="XLXN_4(7:0)" name="output_data(7:0)" />
            <blockpin name="adres(7:0)" />
        </block>
        <block symbolname="displayControler" name="XLXI_8">
            <blockpin name="clk" />
            <blockpin signalname="XLXN_8(7:0)" name="input_data(7:0)" />
            <blockpin signalname="XLXN_6(8:0)" name="disp_row(8:0)" />
            <blockpin signalname="XLXN_5(9:0)" name="disp_col(9:0)" />
            <blockpin signalname="XLXN_7(2:0)" name="rgb(2:0)" />
            <blockpin name="mem_adres(0:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1872" y="1792" name="XLXI_3" orien="R0">
        </instance>
        <instance x="720" y="1168" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1520" y="1216" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1344" y1="1072" y2="1072" x1="1168" />
            <wire x2="1344" y1="1072" y2="1088" x1="1344" />
            <wire x2="1520" y1="1088" y2="1088" x1="1344" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2080" y1="800" y2="800" x1="640" />
            <wire x2="2080" y1="800" y2="992" x1="2080" />
            <wire x2="640" y1="800" y2="1008" x1="640" />
            <wire x2="720" y1="1008" y2="1008" x1="640" />
            <wire x2="2080" y1="992" y2="992" x1="2000" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1808" y1="1472" y2="1632" x1="1808" />
            <wire x2="1872" y1="1632" y2="1632" x1="1808" />
            <wire x2="2080" y1="1472" y2="1472" x1="1808" />
            <wire x2="2080" y1="1056" y2="1056" x1="2000" />
            <wire x2="2080" y1="1056" y2="1472" x1="2080" />
        </branch>
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
        <instance x="3616" y="1408" name="XLXI_5" orien="R0">
        </instance>
        <instance x="2640" y="1248" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_13(23:0)">
            <wire x2="1328" y1="1008" y2="1008" x1="1168" />
            <wire x2="1328" y1="1008" y2="1184" x1="1328" />
            <wire x2="1520" y1="1184" y2="1184" x1="1328" />
        </branch>
    </sheet>
</drawing>