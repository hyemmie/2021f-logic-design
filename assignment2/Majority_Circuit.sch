<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X1" />
        <signal name="X2" />
        <signal name="X3" />
        <signal name="X5" />
        <signal name="X4" />
        <signal name="X6" />
        <signal name="X0" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_12" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_17" />
        <signal name="XLXN_15" />
        <signal name="XLXN_14" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_33" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="o" />
        <port polarity="Input" name="X1" />
        <port polarity="Input" name="X2" />
        <port polarity="Input" name="X3" />
        <port polarity="Input" name="X5" />
        <port polarity="Input" name="X4" />
        <port polarity="Input" name="X6" />
        <port polarity="Input" name="X0" />
        <port polarity="Output" name="o" />
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
        <blockdef name="CountOne3Bit">
            <timestamp>2021-10-10T11:10:21</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="X0" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="X0" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="XLXN_35" name="I0" />
            <blockpin signalname="XLXN_33" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_27">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_35" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_25">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_26">
            <blockpin signalname="XLXN_38" name="I0" />
            <blockpin signalname="XLXN_37" name="I1" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_31">
            <blockpin signalname="XLXN_49" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_50" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_32">
            <blockpin signalname="XLXN_46" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="CountOne3Bit" name="XLXI_38">
            <blockpin signalname="XLXN_9" name="N0" />
            <blockpin signalname="XLXN_8" name="N1" />
            <blockpin signalname="X1" name="X0" />
            <blockpin signalname="X2" name="X1" />
            <blockpin signalname="X3" name="X2" />
        </block>
        <block symbolname="CountOne3Bit" name="XLXI_39">
            <blockpin signalname="XLXN_12" name="N0" />
            <blockpin signalname="XLXN_10" name="N1" />
            <blockpin signalname="X4" name="X0" />
            <blockpin signalname="X5" name="X1" />
            <blockpin signalname="X6" name="X2" />
        </block>
        <block symbolname="or2" name="XLXI_40">
            <blockpin signalname="XLXN_47" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="o" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="X1">
            <wire x2="304" y1="208" y2="208" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="208" name="X1" orien="R180" />
        <branch name="X2">
            <wire x2="304" y1="272" y2="272" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="272" name="X2" orien="R180" />
        <branch name="X3">
            <wire x2="304" y1="336" y2="336" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="336" name="X3" orien="R180" />
        <branch name="X5">
            <wire x2="304" y1="576" y2="576" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="576" name="X5" orien="R180" />
        <branch name="X4">
            <wire x2="304" y1="512" y2="512" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="512" name="X4" orien="R180" />
        <branch name="X6">
            <wire x2="304" y1="640" y2="640" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="640" name="X6" orien="R180" />
        <branch name="X0">
            <wire x2="1728" y1="752" y2="752" x1="272" />
            <wire x2="1792" y1="752" y2="752" x1="1728" />
            <wire x2="1728" y1="448" y2="752" x1="1728" />
            <wire x2="1792" y1="736" y2="752" x1="1792" />
            <wire x2="1840" y1="736" y2="736" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="272" y="752" name="X0" orien="R180" />
        <instance x="928" y="208" name="XLXI_7" orien="R0" />
        <instance x="1728" y="512" name="XLXI_6" orien="R0" />
        <instance x="1376" y="480" name="XLXI_5" orien="R0" />
        <instance x="1072" y="640" name="XLXI_4" orien="R0" />
        <instance x="1072" y="336" name="XLXI_3" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="1728" y1="384" y2="384" x1="1632" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1344" y1="544" y2="544" x1="1328" />
            <wire x2="1344" y1="416" y2="544" x1="1344" />
            <wire x2="1376" y1="416" y2="416" x1="1344" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1360" y1="240" y2="240" x1="1328" />
            <wire x2="1360" y1="240" y2="352" x1="1360" />
            <wire x2="1376" y1="352" y2="352" x1="1360" />
        </branch>
        <instance x="1840" y="864" name="XLXI_22" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="2128" y1="768" y2="768" x1="2096" />
        </branch>
        <instance x="2128" y="896" name="XLXI_23" orien="R0" />
        <branch name="XLXN_35">
            <wire x2="2080" y1="880" y2="880" x1="1472" />
            <wire x2="2128" y1="832" y2="832" x1="2080" />
            <wire x2="2080" y1="832" y2="880" x1="2080" />
        </branch>
        <instance x="1216" y="976" name="XLXI_27" orien="R0" />
        <instance x="992" y="1200" name="XLXI_24" orien="R0" />
        <instance x="1104" y="1360" name="XLXI_25" orien="R0" />
        <instance x="1424" y="1232" name="XLXI_26" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="1424" y1="1104" y2="1104" x1="1248" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1376" y1="1264" y2="1264" x1="1360" />
            <wire x2="1376" y1="1168" y2="1264" x1="1376" />
            <wire x2="1424" y1="1168" y2="1168" x1="1376" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="704" y1="272" y2="272" x1="688" />
            <wire x2="1072" y1="272" y2="272" x1="704" />
            <wire x2="704" y1="272" y2="912" x1="704" />
            <wire x2="704" y1="912" y2="1072" x1="704" />
            <wire x2="992" y1="1072" y2="1072" x1="704" />
            <wire x2="1216" y1="912" y2="912" x1="704" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="768" y1="576" y2="576" x1="688" />
            <wire x2="1072" y1="576" y2="576" x1="768" />
            <wire x2="768" y1="576" y2="848" x1="768" />
            <wire x2="768" y1="848" y2="1136" x1="768" />
            <wire x2="992" y1="1136" y2="1136" x1="768" />
            <wire x2="1216" y1="848" y2="848" x1="768" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="784" y1="208" y2="208" x1="688" />
            <wire x2="896" y1="208" y2="208" x1="784" />
            <wire x2="992" y1="208" y2="208" x1="896" />
            <wire x2="1072" y1="208" y2="208" x1="992" />
            <wire x2="992" y1="208" y2="800" x1="992" />
            <wire x2="1840" y1="800" y2="800" x1="992" />
            <wire x2="896" y1="208" y2="1232" x1="896" />
            <wire x2="1104" y1="1232" y2="1232" x1="896" />
            <wire x2="928" y1="80" y2="80" x1="784" />
            <wire x2="784" y1="80" y2="208" x1="784" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="832" y1="512" y2="512" x1="688" />
            <wire x2="944" y1="512" y2="512" x1="832" />
            <wire x2="1072" y1="512" y2="512" x1="944" />
            <wire x2="944" y1="512" y2="1296" x1="944" />
            <wire x2="1104" y1="1296" y2="1296" x1="944" />
            <wire x2="928" y1="144" y2="144" x1="832" />
            <wire x2="832" y1="144" y2="512" x1="832" />
        </branch>
        <instance x="2368" y="352" name="XLXI_31" orien="R0" />
        <instance x="2512" y="1008" name="XLXI_32" orien="R0" />
        <branch name="XLXN_45">
            <wire x2="2464" y1="800" y2="800" x1="2384" />
            <wire x2="2464" y1="800" y2="880" x1="2464" />
            <wire x2="2512" y1="880" y2="880" x1="2464" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="2464" y1="1136" y2="1136" x1="1680" />
            <wire x2="2464" y1="944" y2="1136" x1="2464" />
            <wire x2="2512" y1="944" y2="944" x1="2464" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="2800" y1="912" y2="912" x1="2768" />
            <wire x2="2800" y1="624" y2="912" x1="2800" />
            <wire x2="2832" y1="624" y2="624" x1="2800" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="2304" y1="112" y2="112" x1="1184" />
            <wire x2="2304" y1="112" y2="224" x1="2304" />
            <wire x2="2368" y1="224" y2="224" x1="2304" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="2304" y1="416" y2="416" x1="1984" />
            <wire x2="2304" y1="288" y2="416" x1="2304" />
            <wire x2="2368" y1="288" y2="288" x1="2304" />
        </branch>
        <branch name="XLXN_50">
            <wire x2="2800" y1="256" y2="256" x1="2624" />
            <wire x2="2800" y1="256" y2="560" x1="2800" />
            <wire x2="2832" y1="560" y2="560" x1="2800" />
        </branch>
        <instance x="304" y="368" name="XLXI_38" orien="R0">
        </instance>
        <instance x="304" y="672" name="XLXI_39" orien="R0">
        </instance>
        <instance x="2832" y="688" name="XLXI_40" orien="R0" />
        <branch name="o">
            <wire x2="3120" y1="592" y2="592" x1="3088" />
        </branch>
        <iomarker fontsize="28" x="3120" y="592" name="o" orien="R0" />
    </sheet>
</drawing>