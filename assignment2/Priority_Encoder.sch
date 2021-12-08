<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X7" />
        <signal name="X6" />
        <signal name="X5" />
        <signal name="X4" />
        <signal name="X3" />
        <signal name="X2" />
        <signal name="X1" />
        <signal name="X0" />
        <signal name="XLXN_9" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="N2" />
        <signal name="Z" />
        <signal name="XLXN_16" />
        <signal name="XLXN_18" />
        <signal name="N0" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="N1" />
        <port polarity="Input" name="X7" />
        <port polarity="Input" name="X6" />
        <port polarity="Input" name="X5" />
        <port polarity="Input" name="X4" />
        <port polarity="Input" name="X3" />
        <port polarity="Input" name="X2" />
        <port polarity="Input" name="X1" />
        <port polarity="Input" name="X0" />
        <port polarity="Output" name="N2" />
        <port polarity="Output" name="Z" />
        <port polarity="Output" name="N0" />
        <port polarity="Output" name="N1" />
        <blockdef name="HighestIndex">
            <timestamp>2021-10-13T12:32:58</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
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
        <block symbolname="HighestIndex" name="XLXI_1">
            <blockpin signalname="XLXN_27" name="N0" />
            <blockpin signalname="XLXN_33" name="N1" />
            <blockpin signalname="X4" name="X0" />
            <blockpin signalname="X5" name="X1" />
            <blockpin signalname="X6" name="X2" />
            <blockpin signalname="X7" name="X3" />
            <blockpin signalname="XLXN_12" name="Z" />
        </block>
        <block symbolname="HighestIndex" name="XLXI_2">
            <blockpin signalname="XLXN_16" name="N0" />
            <blockpin signalname="XLXN_28" name="N1" />
            <blockpin signalname="X0" name="X0" />
            <blockpin signalname="X1" name="X1" />
            <blockpin signalname="X2" name="X2" />
            <blockpin signalname="X3" name="X3" />
            <blockpin signalname="XLXN_11" name="Z" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="XLXN_12" name="I" />
            <blockpin signalname="N2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="Z" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_8">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="N0" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_28" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="XLXN_32" name="I0" />
            <blockpin signalname="XLXN_33" name="I1" />
            <blockpin signalname="N1" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="240" y="768" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="208" y="176" name="X7" orien="R180" />
        <iomarker fontsize="28" x="208" y="240" name="X6" orien="R180" />
        <iomarker fontsize="28" x="208" y="304" name="X5" orien="R180" />
        <iomarker fontsize="28" x="208" y="368" name="X4" orien="R180" />
        <branch name="X3">
            <wire x2="240" y1="544" y2="544" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="544" name="X3" orien="R180" />
        <branch name="X2">
            <wire x2="240" y1="608" y2="608" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="608" name="X2" orien="R180" />
        <branch name="X1">
            <wire x2="240" y1="672" y2="672" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="672" name="X1" orien="R180" />
        <branch name="X0">
            <wire x2="240" y1="736" y2="736" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="736" name="X0" orien="R180" />
        <branch name="XLXN_11">
            <wire x2="1360" y1="672" y2="672" x1="624" />
        </branch>
        <instance x="1264" y="336" name="XLXI_3" orien="R0" />
        <branch name="N2">
            <wire x2="1520" y1="304" y2="304" x1="1488" />
        </branch>
        <instance x="1360" y="736" name="XLXI_4" orien="R0" />
        <iomarker fontsize="28" x="1520" y="304" name="N2" orien="R0" />
        <branch name="Z">
            <wire x2="1648" y1="640" y2="640" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="640" name="Z" orien="R0" />
        <instance x="768" y="896" name="XLXI_7" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="1056" y1="800" y2="800" x1="1024" />
        </branch>
        <instance x="1056" y="864" name="XLXI_8" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="640" y1="608" y2="608" x1="624" />
            <wire x2="640" y1="608" y2="832" x1="640" />
            <wire x2="768" y1="832" y2="832" x1="640" />
        </branch>
        <branch name="N0">
            <wire x2="1344" y1="768" y2="768" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="768" name="N0" orien="R0" />
        <branch name="X4">
            <wire x2="240" y1="368" y2="368" x1="208" />
        </branch>
        <branch name="X5">
            <wire x2="240" y1="304" y2="304" x1="208" />
        </branch>
        <branch name="X6">
            <wire x2="240" y1="240" y2="240" x1="208" />
        </branch>
        <branch name="X7">
            <wire x2="240" y1="176" y2="176" x1="208" />
        </branch>
        <instance x="240" y="400" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_27">
            <wire x2="816" y1="240" y2="240" x1="624" />
            <wire x2="816" y1="240" y2="736" x1="816" />
            <wire x2="1056" y1="736" y2="736" x1="816" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="720" y1="304" y2="304" x1="624" />
            <wire x2="720" y1="304" y2="768" x1="720" />
            <wire x2="768" y1="768" y2="768" x1="720" />
            <wire x2="960" y1="304" y2="304" x1="720" />
            <wire x2="1216" y1="304" y2="304" x1="960" />
            <wire x2="1264" y1="304" y2="304" x1="1216" />
            <wire x2="1216" y1="304" y2="608" x1="1216" />
            <wire x2="1360" y1="608" y2="608" x1="1216" />
            <wire x2="960" y1="256" y2="304" x1="960" />
            <wire x2="992" y1="256" y2="256" x1="960" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="640" y1="544" y2="544" x1="624" />
            <wire x2="896" y1="544" y2="544" x1="640" />
            <wire x2="896" y1="192" y2="224" x1="896" />
            <wire x2="896" y1="224" y2="544" x1="896" />
            <wire x2="992" y1="192" y2="192" x1="896" />
        </branch>
        <instance x="992" y="320" name="XLXI_11" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="1280" y1="224" y2="224" x1="1248" />
        </branch>
        <instance x="1280" y="288" name="XLXI_12" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="944" y1="176" y2="176" x1="624" />
            <wire x2="944" y1="160" y2="176" x1="944" />
            <wire x2="1280" y1="160" y2="160" x1="944" />
        </branch>
        <branch name="N1">
            <wire x2="1568" y1="192" y2="192" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="1568" y="192" name="N1" orien="R0" />
    </sheet>
</drawing>