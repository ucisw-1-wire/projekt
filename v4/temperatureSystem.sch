<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
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
        <block symbolname="sequenceTestSchema" name="XLXI_2">
            <blockpin name="start" />
            <blockpin name="Clk_50MHz" />
            <blockpin name="Output_Data(23:0)" />
            <blockpin name="Busy" />
            <blockpin name="OW_DQ" />
        </block>
        <block symbolname="Memory" name="XLXI_3">
            <blockpin name="clock" />
            <blockpin name="write_en" />
            <blockpin name="input_data(7:0)" />
            <blockpin name="adres(7:0)" />
            <blockpin name="output_data(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="3056" y="1232" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1760" y="1168" name="XLXI_2" orien="R0">
        </instance>
    </sheet>
</drawing>