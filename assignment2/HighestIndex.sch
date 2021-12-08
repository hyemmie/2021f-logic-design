<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X2" />
        <signal name="X1" />
        <signal name="X3" />
        <signal name="N1" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="N0" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="X0" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="Z" />
        <port polarity="Input" name="X2" />
        <port polarity="Input" name="X1" />
        <port polarity="Input" name="X3" />
        <port polarity="Output" name="N1" />
        <port polarity="Output" name="N0" />
        <port polarity="Input" name="X0" />
        <port polarity="Output" name="Z" />
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
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <block symbolname="or2" name="XLXI_1">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X3" name="I1" />
            <blockpin signalname="N1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="X2" name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="X1" name="I0" />
            <blockpin signalname="XLXN_19" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="X3" name="I1" />
            <blockpin signalname="N0" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="X3" name="I0" />
            <blockpin signalname="X2" name="I1" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_7">
            <blockpin signalname="XLXN_34" name="I0" />
            <blockpin signalname="XLXN_33" name="I1" />
            <blockpin signalname="Z" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="X2">
            <wire x2="464" y1="368" y2="368" x1="336" />
            <wire x2="560" y1="368" y2="368" x1="464" />
            <wire x2="560" y1="368" y2="512" x1="560" />
            <wire x2="656" y1="512" y2="512" x1="560" />
            <wire x2="880" y1="368" y2="368" x1="560" />
            <wire x2="464" y1="368" y2="800" x1="464" />
            <wire x2="560" y1="800" y2="800" x1="464" />
        </branch>
        <branch name="X1">
            <wire x2="528" y1="576" y2="576" x1="336" />
            <wire x2="928" y1="576" y2="576" x1="528" />
            <wire x2="528" y1="576" y2="640" x1="528" />
            <wire x2="576" y1="640" y2="640" x1="528" />
        </branch>
        <iomarker fontsize="28" x="336" y="304" name="X3" orien="R180" />
        <instance x="880" y="432" name="XLXI_1" orien="R0" />
        <branch name="N1">
            <wire x2="1168" y1="336" y2="336" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="336" name="N1" orien="R0" />
        <iomarker fontsize="28" x="336" y="368" name="X2" orien="R180" />
        <branch name="XLXN_19">
            <wire x2="928" y1="512" y2="512" x1="880" />
        </branch>
        <instance x="656" y="544" name="XLXI_2" orien="R0" />
        <instance x="928" y="640" name="XLXI_3" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="1216" y1="544" y2="544" x1="1184" />
        </branch>
        <instance x="1216" y="608" name="XLXI_4" orien="R0" />
        <iomarker fontsize="28" x="336" y="576" name="X1" orien="R180" />
        <branch name="N0">
            <wire x2="1504" y1="512" y2="512" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="1504" y="512" name="N0" orien="R0" />
        <branch name="X3">
            <wire x2="400" y1="304" y2="304" x1="336" />
            <wire x2="624" y1="304" y2="304" x1="400" />
            <wire x2="880" y1="304" y2="304" x1="624" />
            <wire x2="624" y1="304" y2="480" x1="624" />
            <wire x2="1216" y1="480" y2="480" x1="624" />
            <wire x2="400" y1="304" y2="864" x1="400" />
            <wire x2="560" y1="864" y2="864" x1="400" />
        </branch>
        <instance x="560" y="928" name="XLXI_5" orien="R0" />
        <branch name="X0">
            <wire x2="576" y1="704" y2="704" x1="336" />
        </branch>
        <iomarker fontsize="28" x="336" y="704" name="X0" orien="R180" />
        <instance x="576" y="768" name="XLXI_6" orien="R0" />
        <instance x="912" y="848" name="XLXI_7" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="880" y1="672" y2="672" x1="832" />
            <wire x2="880" y1="672" y2="720" x1="880" />
            <wire x2="912" y1="720" y2="720" x1="880" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="880" y1="832" y2="832" x1="816" />
            <wire x2="880" y1="784" y2="832" x1="880" />
            <wire x2="912" y1="784" y2="784" x1="880" />
        </branch>
        <branch name="Z">
            <wire x2="1200" y1="752" y2="752" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="1200" y="752" name="Z" orien="R0" />
    </sheet>
</drawing>