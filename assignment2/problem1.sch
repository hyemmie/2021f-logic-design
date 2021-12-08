<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X0" />
        <signal name="X2" />
        <signal name="X1" />
        <signal name="XLXN_8" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="N1" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="N0" />
        <port polarity="Input" name="X0" />
        <port polarity="Input" name="X2" />
        <port polarity="Input" name="X1" />
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
        <block symbolname="or2" name="XLXI_3">
            <blockpin signalname="X2" name="I0" />
            <blockpin signalname="X1" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="N1" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_6">
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
            <wire x2="256" y1="144" y2="144" x1="240" />
            <wire x2="288" y1="144" y2="144" x1="256" />
            <wire x2="896" y1="144" y2="144" x1="288" />
            <wire x2="288" y1="144" y2="528" x1="288" />
            <wire x2="832" y1="528" y2="528" x1="288" />
        </branch>
        <iomarker fontsize="28" x="240" y="144" name="X0" orien="R180" />
        <branch name="X1">
            <wire x2="256" y1="320" y2="320" x1="240" />
            <wire x2="400" y1="320" y2="320" x1="256" />
            <wire x2="480" y1="320" y2="320" x1="400" />
            <wire x2="880" y1="320" y2="320" x1="480" />
            <wire x2="400" y1="320" y2="432" x1="400" />
            <wire x2="480" y1="432" y2="432" x1="400" />
            <wire x2="560" y1="176" y2="176" x1="480" />
            <wire x2="480" y1="176" y2="320" x1="480" />
        </branch>
        <iomarker fontsize="28" x="240" y="320" name="X1" orien="R180" />
        <instance x="880" y="448" name="XLXI_1" orien="R0" />
        <branch name="X2">
            <wire x2="368" y1="384" y2="384" x1="240" />
            <wire x2="528" y1="384" y2="384" x1="368" />
            <wire x2="864" y1="384" y2="384" x1="528" />
            <wire x2="880" y1="384" y2="384" x1="864" />
            <wire x2="368" y1="384" y2="496" x1="368" />
            <wire x2="480" y1="496" y2="496" x1="368" />
            <wire x2="560" y1="240" y2="240" x1="528" />
            <wire x2="528" y1="240" y2="384" x1="528" />
        </branch>
        <iomarker fontsize="28" x="240" y="384" name="X2" orien="R180" />
        <instance x="896" y="272" name="XLXI_2" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="880" y1="208" y2="208" x1="816" />
            <wire x2="896" y1="208" y2="208" x1="880" />
        </branch>
        <instance x="560" y="304" name="XLXI_3" orien="R0" />
        <instance x="1200" y="352" name="XLXI_5" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="1184" y1="176" y2="176" x1="1152" />
            <wire x2="1184" y1="176" y2="224" x1="1184" />
            <wire x2="1200" y1="224" y2="224" x1="1184" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1184" y1="352" y2="352" x1="1136" />
            <wire x2="1184" y1="288" y2="352" x1="1184" />
            <wire x2="1200" y1="288" y2="288" x1="1184" />
        </branch>
        <branch name="N1">
            <wire x2="1488" y1="256" y2="256" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1488" y="256" name="N1" orien="R0" />
        <instance x="480" y="560" name="XLXI_6" orien="R0" />
        <instance x="832" y="592" name="XLXI_7" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="832" y1="464" y2="464" x1="736" />
        </branch>
        <branch name="N0">
            <wire x2="1120" y1="496" y2="496" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1120" y="496" name="N0" orien="R0" />
    </sheet>
</drawing>