package georouting;

import org.mixim.base.modules.BaseNetwork;

network CoverageNetwork503 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

        node1: Host802154 {
            @display("p=137,575;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node2: Host802154 {
            @display("p=160,93;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node3: Host802154 {
            @display("p=419,48;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node4: Host802154 {
            @display("p=529,42;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node5: Host802154 {
            @display("p=672,63;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node6: Host802154 {
            @display("p=787,10;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node7: Host802154 {
            @display("p=862,117;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node8: Host802154 {
            @display("p=609,203;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node9: Host802154 {
            @display("p=956,695;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node10: Host802154 {
            @display("p=941,384;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node11: Host802154 {
            @display("p=261,143;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node12: Host802154 {
            @display("p=956,57;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node13: Host802154 {
            @display("p=821,384;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node14: Host802154 {
            @display("p=832,277;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node15: Host802154 {
            @display("p=486,143;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node16: Host802154 {
            @display("p=600,33;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node17: Host802154 {
            @display("p=681,177;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node18: Host802154 {
            @display("p=536,307;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node19: Host802154 {
            @display("p=672,316;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node20: Host802154 {
            @display("p=739,420;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node21: Host802154 {
            @display("p=894,575;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node22: Host802154 {
            @display("p=38,93;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node23: Host802154 {
            @display("p=462,399;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node24: Host802154 {
            @display("p=594,527;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node25: Host802154 {
            @display("p=514,512;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node26: Host802154 {
            @display("p=486,85;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node27: Host802154 {
            @display("p=806,525;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node28: Host802154 {
            @display("p=701,117;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node29: Host802154 {
            @display("p=320,710;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node30: Host802154 {
            @display("p=787,177;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node31: Host802154 {
            @display("p=242,247;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node32: Host802154 {
            @display("p=672,259;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node33: Host802154 {
            @display("p=137,203;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node34: Host802154 {
            @display("p=672,522;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node35: Host802154 {
            @display("p=299,569;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node36: Host802154 {
            @display("p=61,827;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node37: Host802154 {
            @display("p=235,614;i=misc/node2,,0;b=10,16;is=vs;i2=-");
        }
        node38: Host802154 {
            @display("p=536,188;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node39: Host802154 {
            @display("p=478,335;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node40: Host802154 {
            @display("p=299,70;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node41: Host802154 {
            @display("p=716,363;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node42: Host802154 {
            @display("p=385,399;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node43: Host802154 {
            @display("p=299,841;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node44: Host802154 {
            @display("p=385,188;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node45: Host802154 {
            @display("p=609,301;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node46: Host802154 {
            @display("p=410,512;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node47: Host802154 {
            @display("p=471,456;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node48: Host802154 {
            @display("p=724,481;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node49: Host802154 {
            @display("p=986,974;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node50: Host802154 {
            @display("p=362,301;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node51: Host802154 {
            @display("p=32,590;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node52: Host802154 {
            @display("p=179,496;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node53: Host802154 {
            @display("p=200,350;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node54: Host802154 {
            @display("p=122,399;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node55: Host802154 {
            @display("p=92,511;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node56: Host802154 {
            @display("p=137,262;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node57: Host802154 {
            @display("p=32,218;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node58: Host802154 {
            @display("p=175,744;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node59: Host802154 {
            @display("p=38,350;i=misc/node2,,0;b=10,16;is=vs;i2=-");
        }
        node60: Host802154 {
            @display("p=280,414;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node61: Host802154 {
            @display("p=956,301;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node62: Host802154 {
            @display("p=374,935;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node63: Host802154 {
            @display("p=521,841;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node64: Host802154 {
            @display("p=941,827;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node65: Host802154 {
            @display("p=464,744;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node66: Host802154 {
            @display("p=434,856;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node67: Host802154 {
            @display("p=479,607;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node68: Host802154 {
            @display("p=956,456;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node69: Host802154 {
            @display("p=227,974;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node70: Host802154 {
            @display("p=472,974;i=misc/node2,,0;b=10,16;is=vs;i2=-");
        }
        node71: Host802154 {
            @display("p=862,907;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node72: Host802154 {
            @display("p=599,661;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node73: Host802154 {
            @display("p=61,967;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node74: Host802154 {
            @display("p=739,841;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node75: Host802154 {
            @display("p=160,914;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node76: Host802154 {
            @display("p=637,783;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node77: Host802154 {
            @display("p=652,856;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node78: Host802154 {
            @display("p=697,607;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node79: Host802154 {
            @display("p=61,725;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node80: Host802154 {
            @display("p=754,929;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node81: Host802154 {
            @display("p=690,974;i=misc/node2,,0;b=10,16;is=vs;i2=-");
        }
        node82: Host802154 {
            @display("p=840,759;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node83: Host802154 {
            @display("p=817,661;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node84: Host802154 {
            @display("p=566,753;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node85: Host802154 {
            @display("p=362,646;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node86: Host802154 {
            @display("p=362,783;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node87: Host802154 {
            @display("p=190,835;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node88: Host802154 {
            @display("p=581,935;i=misc/node2,,0;b=10,16;is=vs;i2=-");
        }
        node89: Host802154 {
            @display("p=965,188;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node90: Host802154 {
            @display("p=956,128;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node91: Host802154 {
            @display("p=877,33;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node92: Host802154 {
            @display("p=479,680;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node93: Host802154 {
            @display("p=724,725;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
    connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}
