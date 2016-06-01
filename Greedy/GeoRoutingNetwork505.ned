package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork505 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

        node1: Host802154 {
            @display("p=331,355;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node2: Host802154 {
            @display("p=90,68;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node3: Host802154 {
            @display("p=569,24;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node4: Host802154 {
            @display("p=709,275;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node5: Host802154 {
            @display("p=331,9;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node6: Host802154 {
            @display("p=399,102;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node7: Host802154 {
            @display("p=457,20;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node8: Host802154 {
            @display("p=864,355;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node9: Host802154 {
            @display("p=131,131;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node10: Host802154 {
            @display("p=197,87;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node11: Host802154 {
            @display("p=262,87;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node12: Host802154 {
            @display("p=873,9;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node13: Host802154 {
            @display("p=618,131;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node14: Host802154 {
            @display("p=521,131;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node15: Host802154 {
            @display("p=26,252;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node16: Host802154 {
            @display("p=82,199;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node17: Host802154 {
            @display("p=757,20;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node18: Host802154 {
            @display("p=757,160;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node19: Host802154 {
            @display("p=298,146;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node20: Host802154 {
            @display("p=724,96;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node21: Host802154 {
            @display("p=950,175;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node22: Host802154 {
            @display("p=82,275;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node23: Host802154 {
            @display("p=645,53;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node24: Host802154 {
            @display("p=791,377;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node25: Host802154 {
            @display("p=630,420;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node26: Host802154 {
            @display("p=316,223;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node27: Host802154 {
            @display("p=417,247;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node28: Host802154 {
            @display("p=197,513;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node29: Host802154 {
            @display("p=536,537;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node30: Host802154 {
            @display("p=136,333;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node31: Host802154 {
            @display("p=214,338;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node32: Host802154 {
            @display("p=283,290;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node33: Host802154 {
            @display("p=584,252;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node34: Host802154 {
            @display("p=399,333;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node35: Host802154 {
            @display("p=502,355;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node36: Host802154 {
            @display("p=57,398;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node37: Host802154 {
            @display("p=603,333;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node38: Host802154 {
            @display("p=146,460;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node39: Host802154 {
            @display("p=576,477;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node40: Host802154 {
            @display("p=716,803;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node41: Host802154 {
            @display("p=680,477;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node42: Host802154 {
            @display("p=766,238;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node43: Host802154 {
            @display("p=432,169;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node44: Host802154 {
            @display("p=521,214;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node45: Host802154 {
            @display("p=716,340;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node46: Host802154 {
            @display("p=260,442;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node47: Host802154 {
            @display("p=375,507;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node48: Host802154 {
            @display("p=843,238;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node49: Host802154 {
            @display("p=457,442;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node50: Host802154 {
            @display("p=18,477;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node51: Host802154 {
            @display("p=935,68;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node52: Host802154 {
            @display("p=44,572;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node53: Host802154 {
            @display("p=509,825;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node54: Host802154 {
            @display("p=476,630;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node55: Host802154 {
            @display("p=236,593;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node56: Host802154 {
            @display("p=166,601;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node57: Host802154 {
            @display("p=275,658;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node58: Host802154 {
            @display("p=402,630;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node59: Host802154 {
            @display("p=102,658;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node60: Host802154 {
            @display("p=436,875;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node61: Host802154 {
            @display("p=275,890;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node62: Host802154 {
            @display("p=102,722;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node63: Host802154 {
            @display("p=162,737;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node64: Host802154 {
            @display("p=229,722;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node65: Host802154 {
            @display("p=44,803;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node66: Host802154 {
            @display("p=147,825;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node67: Host802154 {
            @display("p=248,803;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node68: Host802154 {
            @display("p=221,947;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node69: Host802154 {
            @display("p=436,788;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node70: Host802154 {
            @display("p=325,947;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node71: Host802154 {
            @display("p=411,708;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node72: Host802154 {
            @display("p=426,951;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node73: Host802154 {
            @display("p=361,810;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node74: Host802154 {
            @display("p=509,708;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node75: Host802154 {
            @display("p=102,912;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node76: Host802154 {
            @display("p=26,962;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node77: Host802154 {
            @display("p=864,639;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node78: Host802154 {
            @display("p=879,563;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node79: Host802154 {
            @display("p=965,601;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node80: Host802154 {
            @display("p=618,658;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node81: Host802154 {
            @display("p=716,658;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node82: Host802154 {
            @display("p=676,578;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node83: Host802154 {
            @display("p=965,405;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node84: Host802154 {
            @display("p=806,810;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node85: Host802154 {
            @display("p=691,962;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node86: Host802154 {
            @display("p=925,475;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node87: Host802154 {
            @display("p=645,869;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node88: Host802154 {
            @display("p=858,890;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node89: Host802154 {
            @display("p=532,947;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node90: Host802154 {
            @display("p=950,854;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node91: Host802154 {
            @display("p=639,760;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node92: Host802154 {
            @display("p=988,20;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node93: Host802154 {
            @display("p=904,290;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node94: Host802154 {
            @display("p=816,727;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node95: Host802154 {
            @display("p=929,734;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node96: Host802154 {
            @display("p=751,897;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node97: Host802154 {
            @display("p=904,966;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node98: Host802154 {
            @display("p=781,513;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node99: Host802154 {
            @display("p=864,124;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
    connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}
