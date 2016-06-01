package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork5 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

        node1: Host802154 {
            @display("p=9,63;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node2: Host802154 {
            @display("p=139,4;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node3: Host802154 {
            @display("p=112,141;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node4: Host802154 {
            @display("p=222,5;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node5: Host802154 {
            @display("p=336,18;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node6: Host802154 {
            @display("p=428,68;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node7: Host802154 {
            @display("p=375,200;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node8: Host802154 {
            @display("p=582,33;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node9: Host802154 {
            @display("p=651,261;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node10: Host802154 {
            @display("p=520,208;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node11: Host802154 {
            @display("p=726,57;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node12: Host802154 {
            @display("p=840,15;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node13: Host802154 {
            @display("p=468,339;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node14: Host802154 {
            @display("p=988,18;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node15: Host802154 {
            @display("p=261,185;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node16: Host802154 {
            @display("p=229,96;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node17: Host802154 {
            @display("p=549,93;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node18: Host802154 {
            @display("p=682,126;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node19: Host802154 {
            @display("p=751,208;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node20: Host802154 {
            @display("p=917,94;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node21: Host802154 {
            @display("p=343,126;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node22: Host802154 {
            @display("p=20,208;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node23: Host802154 {
            @display("p=850,164;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node24: Host802154 {
            @display("p=619,350;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node25: Host802154 {
            @display("p=972,169;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node26: Host802154 {
            @display("p=0,261;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node27: Host802154 {
            @display("p=368,290;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node28: Host802154 {
            @display("p=957,275;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node29: Host802154 {
            @display("p=22,356;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node30: Host802154 {
            @display("p=91,324;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node31: Host802154 {
            @display("p=831,328;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node32: Host802154 {
            @display("p=711,431;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node33: Host802154 {
            @display("p=549,581;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node34: Host802154 {
            @display("p=283,343;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node35: Host802154 {
            @display("p=97,416;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node36: Host802154 {
            @display("p=726,328;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node37: Host802154 {
            @display("p=996,376;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node38: Host802154 {
            @display("p=197,446;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node39: Host802154 {
            @display("p=810,427;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node40: Host802154 {
            @display("p=876,488;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node41: Host802154 {
            @display("p=5,504;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node42: Host802154 {
            @display("p=443,605;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node43: Host802154 {
            @display("p=963,532;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node44: Host802154 {
            @display("p=29,587;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node45: Host802154 {
            @display("p=322,504;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node46: Host802154 {
            @display("p=328,590;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node47: Host802154 {
            @display("p=549,406;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node48: Host802154 {
            @display("p=498,687;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node49: Host802154 {
            @display("p=619,670;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node50: Host802154 {
            @display("p=292,909;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node51: Host802154 {
            @display("p=375,752;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node52: Host802154 {
            @display("p=977,634;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node53: Host802154 {
            @display("p=20,670;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node54: Host802154 {
            @display("p=292,744;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node55: Host802154 {
            @display("p=127,670;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node56: Host802154 {
            @display("p=434,446;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node57: Host802154 {
            @display("p=666,581;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node58: Host802154 {
            @display("p=736,658;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node59: Host802154 {
            @display("p=736,596;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node60: Host802154 {
            @display("p=212,786;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node61: Host802154 {
            @display("p=857,897;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node62: Host802154 {
            @display("p=711,737;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node63: Host802154 {
            @display("p=977,744;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node64: Host802154 {
            @display("p=59,801;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node65: Host802154 {
            @display("p=876,694;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node66: Host802154 {
            @display("p=619,786;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node67: Host802154 {
            @display("p=927,837;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node68: Host802154 {
            @display("p=520,897;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node69: Host802154 {
            @display("p=68,897;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node70: Host802154 {
            @display("p=736,852;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node71: Host802154 {
            @display("p=183,968;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node72: Host802154 {
            @display("p=57,999;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node73: Host802154 {
            @display("p=222,864;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node74: Host802154 {
            @display("p=383,897;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node76: Host802154 {
            @display("p=527,992;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node77: Host802154 {
            @display("p=428,823;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node78: Host802154 {
            @display("p=651,912;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node79: Host802154 {
            @display("p=792,988;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node80: Host802154 {
            @display("p=222,643;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node81: Host802154 {
            @display("p=988,968;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node82: Host802154 {
            @display("p=159,350;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node83: Host802154 {
            @display("p=197,547;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node84: Host802154 {
            @display("p=183,246;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node75: Host802154 {
            @display("p=343,406;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node85: Host802154 {
            @display("p=535,504;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node86: Host802154 {
            @display("p=726,519;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node87: Host802154 {
            @display("p=597,179;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node88: Host802154 {
            @display("p=458,149;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node89: Host802154 {
            @display("p=558,298;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node90: Host802154 {
            @display("p=634,488;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node91: Host802154 {
            @display("p=798,786;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node92: Host802154 {
            @display("p=850,587;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node93: Host802154 {
            @display("p=917,384;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node94: Host802154 {
            @display("p=840,253;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node95: Host802154 {
            @display("p=798,94;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node96: Host802154 {
            @display("p=520,767;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node97: Host802154 {
            @display("p=59,737;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node98: Host802154 {
            @display("p=336,694;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node99: Host802154 {
            @display("p=358,988;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node100: Host802154 {
            @display("p=59,525;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
    connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}
