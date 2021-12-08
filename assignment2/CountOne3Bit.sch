<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X0" />
        <signal name="XLXN_2" />
        <signal name="X1" />
        <signal name="XLXN_4" />
        <signal name="X2" />
        <signal name="XLXN_6" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="N1" />
        <signal name="XLXN_17" />
        <signal name="N0" />
        <port polarity="Input" name="X0" />
        <port polarity="Input" name="X1" />
        <port polarity="Input" name="X2" />
        <port polarity="Output" name="N1" />
        <port polarity="Output" name="N0" />
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
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="N1" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_7">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="N0" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="X0">
            <wire x2="1216" y1="1200" y2="1200" x1="1200" />
            <wire x2="1248" y1="1200" y2="1200" x1="1216" />
            <wire x2="1856" y1="1200" y2="1200" x1="1248" />
            <wire x2="1248" y1="1200" y2="1584" x1="1248" />
            <wire x2="1792" y1="1584" y2="1584" x1="1248" />
        </branch>
        <branch name="X1">
            <wire x2="1216" y1="1376" y2="1376" x1="1200" />
            <wire x2="1360" y1="1376" y2="1376" x1="1216" />
            <wire x2="1440" y1="1376" y2="1376" x1="1360" />
            <wire x2="1840" y1="1376" y2="1376" x1="1440" />
            <wire x2="1360" y1="1376" y2="1488" x1="1360" />
            <wire x2="1440" y1="1488" y2="1488" x1="1360" />
            <wire x2="1520" y1="1232" y2="1232" x1="1440" />
            <wire x2="1440" y1="1232" y2="1376" x1="1440" />
        </branch>
        <instance x="1840" y="1504" name="XLXI_1" orien="R0" />
        <branch name="X2">
            <wire x2="1328" y1="1440" y2="1440" x1="1200" />
            <wire x2="1488" y1="1440" y2="1440" x1="1328" />
            <wire x2="1824" y1="1440" y2="1440" x1="1488" />
            <wire x2="1840" y1="1440" y2="1440" x1="1824" />
            <wire x2="1328" y1="1440" y2="1552" x1="1328" />
            <wire x2="1440" y1="1552" y2="1552" x1="1328" />
            <wire x2="1520" y1="1296" y2="1296" x1="1488" />
            <wire x2="1488" y1="1296" y2="1440" x1="1488" />
        </branch>
        <instance x="1856" y="1328" name="XLXI_2" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1840" y1="1264" y2="1264" x1="1776" />
            <wire x2="1856" y1="1264" y2="1264" x1="1840" />
        </branch>
        <instance x="1520" y="1360" name="XLXI_3" orien="R0" />
        <instance x="2160" y="1408" name="XLXI_4" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="2144" y1="1232" y2="1232" x1="2112" />
            <wire x2="2144" y1="1232" y2="1280" x1="2144" />
            <wire x2="2160" y1="1280" y2="1280" x1="2144" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2144" y1="1408" y2="1408" x1="2096" />
            <wire x2="2144" y1="1344" y2="1408" x1="2144" />
            <wire x2="2160" y1="1344" y2="1344" x1="2144" />
        </branch>
        <branch name="N1">
            <wire x2="2448" y1="1312" y2="1312" x1="2416" />
        </branch>
        <instance x="1440" y="1616" name="XLXI_5" orien="R0" />
        <instance x="1792" y="1648" name="XLXI_7" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="1792" y1="1520" y2="1520" x1="1696" />
        </branch>
        <branch name="N0">
            <wire x2="2080" y1="1552" y2="1552" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1200" name="X0" orien="R180" />
        <iomarker fontsize="28" x="1200" y="1376" name="X1" orien="R180" />
        <iomarker fontsize="28" x="1200" y="1440" name="X2" orien="R180" />
        <iomarker fontsize="28" x="2448" y="1312" name="N1" orien="R0" />
        <iomarker fontsize="28" x="2080" y="1552" name="N0" orien="R0" />
    </sheet>
</drawing>