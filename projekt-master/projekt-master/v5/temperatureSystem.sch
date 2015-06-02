<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(23:0)" />
        <signal name="clkout" />
        <signal name="XLXN_3(7:0)" />
        <signal name="XLXN_4(7:0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6(7:0)" />
        <signal name="XLXN_7(2:0)" />
        <signal name="XLXN_8(7:0)" />
        <signal name="XLXN_10(8:0)" />
        <signal name="XLXN_12(9:0)" />
        <signal name="XLXN_15" />
        <signal name="OW_DQ" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="output_led(3:0)" />
        <signal name="XLXN_34" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <port polarity="Output" name="clkout" />
        <port polarity="BiDirectional" name="OW_DQ" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="output_led(3:0)" />
        <port polarity="Input" name="Clk_50MHz" />
        <blockdef name="sequenceTestSchema">
            <timestamp>2015-6-2T9:35:4</timestamp>
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
        <blockdef name="controler">
            <timestamp>2015-6-2T10:12:55</timestamp>
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
        <blockdef name="Memory">
            <timestamp>2015-6-2T10:13:2</timestamp>
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
        <blockdef name="displayControler">
            <timestamp>2015-6-2T10:22:19</timestamp>
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
            <timestamp>2015-6-2T10:25:15</timestamp>
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
        <block symbolname="sequenceTestSchema" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_37" name="start" />
            <blockpin signalname="output_led(3:0)" name="test_out(3:0)" />
            <blockpin signalname="XLXN_1(23:0)" name="output_data(23:0)" />
            <blockpin signalname="clkout" name="busy" />
            <blockpin signalname="OW_DQ" name="OW_DQ" />
        </block>
        <block symbolname="controler" name="XLXI_2">
            <blockpin signalname="Clk_50MHz" name="clock" />
            <blockpin signalname="clkout" name="is_read_busy" />
            <blockpin signalname="XLXN_1(23:0)" name="input_data(23:0)" />
            <blockpin signalname="XLXN_37" name="start_read" />
            <blockpin signalname="XLXN_5" name="write_en" />
            <blockpin signalname="XLXN_3(7:0)" name="output_data(7:0)" />
            <blockpin signalname="XLXN_4(7:0)" name="adres(7:0)" />
        </block>
        <block symbolname="Memory" name="XLXI_3">
            <blockpin signalname="Clk_50MHz" name="clock" />
            <blockpin signalname="XLXN_5" name="write_en" />
            <blockpin signalname="XLXN_3(7:0)" name="input_data(7:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="adres_rd(7:0)" />
            <blockpin signalname="XLXN_4(7:0)" name="adres_wr(7:0)" />
            <blockpin signalname="XLXN_6(7:0)" name="output_data(7:0)" />
        </block>
        <block symbolname="displayControler" name="XLXI_4">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_6(7:0)" name="input_data(7:0)" />
            <blockpin signalname="XLXN_10(8:0)" name="disp_row(8:0)" />
            <blockpin signalname="XLXN_12(9:0)" name="disp_col(9:0)" />
            <blockpin signalname="XLXN_7(2:0)" name="rgb(2:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="mem_adres(7:0)" />
        </block>
        <block symbolname="VGA" name="XLXI_5">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin name="reset" />
            <blockpin signalname="XLXN_7(2:0)" name="colors_in(2:0)" />
            <blockpin signalname="VGA_R" name="r" />
            <blockpin signalname="VGA_G" name="g" />
            <blockpin signalname="VGA_B" name="b" />
            <blockpin signalname="VGA_HS" name="hsync" />
            <blockpin signalname="VGA_VS" name="vsync" />
            <blockpin signalname="XLXN_10(8:0)" name="row(8:0)" />
            <blockpin signalname="XLXN_12(9:0)" name="column(9:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="400" y="1200" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1680" y="1248" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_1(23:0)">
            <wire x2="928" y1="1040" y2="1040" x1="848" />
            <wire x2="928" y1="1040" y2="1168" x1="928" />
            <wire x2="1008" y1="1168" y2="1168" x1="928" />
        </branch>
        <branch name="XLXN_3(7:0)">
            <wire x2="1664" y1="1104" y2="1104" x1="1488" />
            <wire x2="1680" y1="1088" y2="1088" x1="1664" />
            <wire x2="1664" y1="1088" y2="1104" x1="1664" />
        </branch>
        <branch name="XLXN_4(7:0)">
            <wire x2="1664" y1="1168" y2="1168" x1="1488" />
            <wire x2="1664" y1="1168" y2="1216" x1="1664" />
            <wire x2="1680" y1="1216" y2="1216" x1="1664" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1664" y1="1040" y2="1040" x1="1488" />
            <wire x2="1680" y1="1024" y2="1024" x1="1664" />
            <wire x2="1664" y1="1024" y2="1040" x1="1664" />
        </branch>
        <branch name="XLXN_7(2:0)">
            <wire x2="2784" y1="976" y2="976" x1="2768" />
            <wire x2="2784" y1="976" y2="1264" x1="2784" />
            <wire x2="2880" y1="1264" y2="1264" x1="2784" />
        </branch>
        <branch name="XLXN_8(7:0)">
            <wire x2="1680" y1="1152" y2="1152" x1="1632" />
            <wire x2="1632" y1="1152" y2="1424" x1="1632" />
            <wire x2="2832" y1="1424" y2="1424" x1="1632" />
            <wire x2="2832" y1="1168" y2="1168" x1="2768" />
            <wire x2="2832" y1="1168" y2="1424" x1="2832" />
        </branch>
        <branch name="OW_DQ">
            <wire x2="864" y1="1168" y2="1168" x1="848" />
            <wire x2="864" y1="1168" y2="1520" x1="864" />
            <wire x2="880" y1="1520" y2="1520" x1="864" />
        </branch>
        <branch name="XLXN_12(9:0)">
            <wire x2="2304" y1="1168" y2="1168" x1="2288" />
            <wire x2="2288" y1="1168" y2="1344" x1="2288" />
            <wire x2="3344" y1="1344" y2="1344" x1="2288" />
            <wire x2="3344" y1="1264" y2="1264" x1="3264" />
            <wire x2="3344" y1="1264" y2="1344" x1="3344" />
        </branch>
        <branch name="XLXN_10(8:0)">
            <wire x2="2304" y1="1104" y2="1104" x1="2272" />
            <wire x2="2272" y1="1104" y2="1392" x1="2272" />
            <wire x2="3360" y1="1392" y2="1392" x1="2272" />
            <wire x2="3360" y1="1200" y2="1200" x1="3264" />
            <wire x2="3360" y1="1200" y2="1392" x1="3360" />
        </branch>
        <branch name="XLXN_6(7:0)">
            <wire x2="2224" y1="960" y2="960" x1="2144" />
            <wire x2="2224" y1="960" y2="1040" x1="2224" />
            <wire x2="2304" y1="1040" y2="1040" x1="2224" />
        </branch>
        <instance x="2304" y="1200" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2880" y="1296" name="XLXI_5" orien="R0">
        </instance>
        <branch name="VGA_R">
            <wire x2="3296" y1="880" y2="880" x1="3264" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3296" y1="944" y2="944" x1="3264" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3296" y1="1008" y2="1008" x1="3264" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="3296" y1="1072" y2="1072" x1="3264" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="3296" y1="1136" y2="1136" x1="3264" />
        </branch>
        <iomarker fontsize="28" x="3296" y="1136" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="3296" y="1072" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3296" y="1008" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="3296" y="944" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3296" y="880" name="VGA_R" orien="R0" />
        <branch name="output_led(3:0)">
            <wire x2="864" y1="880" y2="880" x1="288" />
            <wire x2="864" y1="880" y2="976" x1="864" />
            <wire x2="288" y1="880" y2="1600" x1="288" />
            <wire x2="896" y1="1600" y2="1600" x1="288" />
            <wire x2="864" y1="976" y2="976" x1="848" />
        </branch>
        <iomarker fontsize="28" x="256" y="592" name="Clk_50MHz" orien="R180" />
        <branch name="Clk_50MHz">
            <wire x2="384" y1="592" y2="592" x1="256" />
            <wire x2="384" y1="592" y2="976" x1="384" />
            <wire x2="400" y1="976" y2="976" x1="384" />
            <wire x2="912" y1="592" y2="592" x1="384" />
            <wire x2="1632" y1="592" y2="592" x1="912" />
            <wire x2="2240" y1="592" y2="592" x1="1632" />
            <wire x2="2240" y1="592" y2="976" x1="2240" />
            <wire x2="2304" y1="976" y2="976" x1="2240" />
            <wire x2="2560" y1="592" y2="592" x1="2240" />
            <wire x2="2560" y1="592" y2="880" x1="2560" />
            <wire x2="2880" y1="880" y2="880" x1="2560" />
            <wire x2="1632" y1="592" y2="960" x1="1632" />
            <wire x2="1680" y1="960" y2="960" x1="1632" />
            <wire x2="912" y1="592" y2="976" x1="912" />
            <wire x2="1008" y1="976" y2="976" x1="912" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="912" y1="384" y2="384" x1="368" />
            <wire x2="1168" y1="384" y2="384" x1="912" />
            <wire x2="1168" y1="384" y2="416" x1="1168" />
            <wire x2="1552" y1="416" y2="416" x1="1168" />
            <wire x2="1552" y1="416" y2="976" x1="1552" />
            <wire x2="368" y1="384" y2="1168" x1="368" />
            <wire x2="400" y1="1168" y2="1168" x1="368" />
            <wire x2="1552" y1="976" y2="976" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="880" y="1520" name="OW_DQ" orien="R0" />
        <iomarker fontsize="28" x="896" y="1600" name="output_led(3:0)" orien="R0" />
        <iomarker fontsize="28" x="992" y="1296" name="clkout" orien="R0" />
        <branch name="clkout">
            <wire x2="912" y1="1104" y2="1104" x1="848" />
            <wire x2="944" y1="1104" y2="1104" x1="912" />
            <wire x2="944" y1="1104" y2="1296" x1="944" />
            <wire x2="992" y1="1296" y2="1296" x1="944" />
            <wire x2="912" y1="1072" y2="1104" x1="912" />
            <wire x2="1008" y1="1072" y2="1072" x1="912" />
        </branch>
        <instance x="1008" y="1200" name="XLXI_2" orien="R0">
        </instance>
    </sheet>
</drawing>