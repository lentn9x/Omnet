package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork1001 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

		node1: Host802154 {
			@display("p=68,68;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node2: Host802154 {
			@display("p=129,50;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node3: Host802154 {
			@display("p=149,28;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node4: Host802154 {
			@display("p=220,28;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node5: Host802154 {
			@display("p=299,42;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node6: Host802154 {
			@display("p=412,59;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node7: Host802154 {
			@display("p=432,9;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node8: Host802154 {
			@display("p=503,6;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node9: Host802154 {
			@display("p=583,41;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node10: Host802154 {
			@display("p=662,26;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node11: Host802154 {
			@display("p=0,112;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node12: Host802154 {
			@display("p=99,73;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node13: Host802154 {
			@display("p=191,77;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node14: Host802154 {
			@display("p=240,86;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node15: Host802154 {
			@display("p=304,120;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node16: Host802154 {
			@display("p=416,100;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node17: Host802154 {
			@display("p=465,123;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node18: Host802154 {
			@display("p=536,138;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node19: Host802154 {
			@display("p=565,74;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node20: Host802154 {
			@display("p=678,122;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node21: Host802154 {
			@display("p=53,170;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node22: Host802154 {
			@display("p=133,180;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node23: Host802154 {
			@display("p=199,192;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node24: Host802154 {
			@display("p=261,164;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node25: Host802154 {
			@display("p=344,164;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node26: Host802154 {
			@display("p=373,141;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node27: Host802154 {
			@display("p=461,184;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node28: Host802154 {
			@display("p=557,181;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node29: Host802154 {
			@display("p=580,204;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node30: Host802154 {
			@display("p=677,191;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node31: Host802154 {
			@display("p=68,272;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node32: Host802154 {
			@display("p=88,239;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node33: Host802154 {
			@display("p=203,268;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node34: Host802154 {
			@display("p=243,218;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node35: Host802154 {
			@display("p=309,224;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node36: Host802154 {
			@display("p=385,219;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node37: Host802154 {
			@display("p=467,250;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node38: Host802154 {
			@display("p=548,212;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node39: Host802154 {
			@display("p=570,240;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node40: Host802154 {
			@display("p=648,257;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node41: Host802154 {
			@display("p=35,306;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node42: Host802154 {
			@display("p=125,286;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node43: Host802154 {
			@display("p=147,302;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node44: Host802154 {
			@display("p=221,302;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node45: Host802154 {
			@display("p=281,284;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node46: Host802154 {
			@display("p=403,331;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node47: Host802154 {
			@display("p=425,304;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node48: Host802154 {
			@display("p=521,336;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node49: Host802154 {
			@display("p=582,303;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node50: Host802154 {
			@display("p=689,284;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node51: Host802154 {
			@display("p=61,400;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node52: Host802154 {
			@display("p=134,387;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node53: Host802154 {
			@display("p=176,405;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node54: Host802154 {
			@display("p=276,402;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node55: Host802154 {
			@display("p=333,389;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node56: Host802154 {
			@display("p=403,387;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node57: Host802154 {
			@display("p=452,393;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node58: Host802154 {
			@display("p=517,371;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node59: Host802154 {
			@display("p=604,411;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node60: Host802154 {
			@display("p=681,416;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node61: Host802154 {
			@display("p=67,460;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node62: Host802154 {
			@display("p=83,448;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node63: Host802154 {
			@display("p=166,468;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node64: Host802154 {
			@display("p=245,430;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node65: Host802154 {
			@display("p=320,481;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node66: Host802154 {
			@display("p=357,454;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node67: Host802154 {
			@display("p=478,425;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node68: Host802154 {
			@display("p=525,458;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node69: Host802154 {
			@display("p=571,487;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node70: Host802154 {
			@display("p=685,420;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node71: Host802154 {
			@display("p=26,514;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node72: Host802154 {
			@display("p=91,532;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node73: Host802154 {
			@display("p=207,523;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node74: Host802154 {
			@display("p=272,499;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node75: Host802154 {
			@display("p=308,544;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node76: Host802154 {
			@display("p=399,529;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node77: Host802154 {
			@display("p=443,515;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node78: Host802154 {
			@display("p=543,508;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node79: Host802154 {
			@display("p=584,522;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node80: Host802154 {
			@display("p=658,506;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node81: Host802154 {
			@display("p=17,586;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node82: Host802154 {
			@display("p=139,564;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node83: Host802154 {
			@display("p=169,578;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node84: Host802154 {
			@display("p=265,608;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node85: Host802154 {
			@display("p=335,623;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node86: Host802154 {
			@display("p=400,589;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node87: Host802154 {
			@display("p=430,603;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node88: Host802154 {
			@display("p=504,586;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node89: Host802154 {
			@display("p=567,584;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node90: Host802154 {
			@display("p=680,609;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node91: Host802154 {
			@display("p=18,646;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node92: Host802154 {
			@display("p=103,680;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node93: Host802154 {
			@display("p=194,630;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node94: Host802154 {
			@display("p=262,681;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node95: Host802154 {
			@display("p=335,669;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node96: Host802154 {
			@display("p=393,633;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node97: Host802154 {
			@display("p=461,695;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node98: Host802154 {
			@display("p=496,659;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node99: Host802154 {
			@display("p=603,651;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node100: Host802154 {
			@display("p=633,632;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}