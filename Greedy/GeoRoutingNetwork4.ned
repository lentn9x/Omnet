package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork4 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

		node1: Host802154 {
			@display("p=45,69;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node2: Host802154 {
			@display("p=98,34;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node3: Host802154 {
			@display("p=101,71;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node4: Host802154 {
			@display("p=71,215;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node5: Host802154 {
			@display("p=144,221;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node6: Host802154 {
			@display("p=179,112;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node7: Host802154 {
			@display("p=51,138;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node8: Host802154 {
			@display("p=32,30;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node9: Host802154 {
			@display("p=210,30;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node10: Host802154 {
			@display("p=138,44;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node11: Host802154 {
			@display("p=275,130;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node12: Host802154 {
			@display("p=290,52;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node13: Host802154 {
			@display("p=232,92;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node14: Host802154 {
			@display("p=234,199;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node15: Host802154 {
			@display("p=155,171;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node16: Host802154 {
			@display("p=124,128;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node17: Host802154 {
			@display("p=314,207;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node18: Host802154 {
			@display("p=248,265;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node19: Host802154 {
			@display("p=183,321;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node20: Host802154 {
			@display("p=138,274;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node21: Host802154 {
			@display("p=37,282;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node22: Host802154 {
			@display("p=15,199;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node23: Host802154 {
			@display("p=28,321;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node24: Host802154 {
			@display("p=51,398;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node25: Host802154 {
			@display("p=137,424;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node26: Host802154 {
			@display("p=106,353;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node27: Host802154 {
			@display("p=89,279;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node28: Host802154 {
			@display("p=210,287;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node29: Host802154 {
			@display("p=262,361;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node30: Host802154 {
			@display("p=179,385;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node31: Host802154 {
			@display("p=162,343;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node32: Host802154 {
			@display("p=261,339;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node33: Host802154 {
			@display("p=340,279;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node34: Host802154 {
			@display("p=374,211;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node35: Host802154 {
			@display("p=387,131;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node36: Host802154 {
			@display("p=436,76;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node37: Host802154 {
			@display("p=355,85;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node38: Host802154 {
			@display("p=365,20;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node39: Host802154 {
			@display("p=484,22;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node40: Host802154 {
			@display("p=572,43;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node41: Host802154 {
			@display("p=501,96;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node42: Host802154 {
			@display("p=467,171;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node43: Host802154 {
			@display("p=558,164;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node44: Host802154 {
			@display("p=502,258;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node45: Host802154 {
			@display("p=432,268;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node46: Host802154 {
			@display("p=375,331;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node47: Host802154 {
			@display("p=452,352;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node48: Host802154 {
			@display("p=451,441;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node49: Host802154 {
			@display("p=354,426;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node50: Host802154 {
			@display("p=313,367;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node51: Host802154 {
			@display("p=295,312;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node52: Host802154 {
			@display("p=289,429;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node53: Host802154 {
			@display("p=220,441;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node54: Host802154 {
			@display("p=163,470;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node55: Host802154 {
			@display("p=85,444;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node56: Host802154 {
			@display("p=26,455;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node57: Host802154 {
			@display("p=59,525;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node58: Host802154 {
			@display("p=183,528;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node59: Host802154 {
			@display("p=316,500;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node60: Host802154 {
			@display("p=315,554;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node61: Host802154 {
			@display("p=124,509;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node62: Host802154 {
			@display("p=126,477;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node63: Host802154 {
			@display("p=250,496;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node64: Host802154 {
			@display("p=435,506;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node65: Host802154 {
			@display("p=591,478;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node66: Host802154 {
			@display("p=565,382;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node67: Host802154 {
			@display("p=544,326;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node68: Host802154 {
			@display("p=572,293;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node69: Host802154 {
			@display("p=641,244;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node70: Host802154 {
			@display("p=593,221;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node71: Host802154 {
			@display("p=633,169;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node72: Host802154 {
			@display("p=620,122;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node73: Host802154 {
			@display("p=575,102;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node74: Host802154 {
			@display("p=661,56;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node75: Host802154 {
			@display("p=748,18;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node76: Host802154 {
			@display("p=651,21;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node77: Host802154 {
			@display("p=554,25;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node78: Host802154 {
			@display("p=497,47;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node79: Host802154 {
			@display("p=738,96;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node80: Host802154 {
			@display("p=736,159;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node81: Host802154 {
			@display("p=671,121;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node82: Host802154 {
			@display("p=681,211;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node83: Host802154 {
			@display("p=703,326;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node84: Host802154 {
			@display("p=662,359;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node85: Host802154 {
			@display("p=610,344;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node86: Host802154 {
			@display("p=658,416;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node87: Host802154 {
			@display("p=550,447;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node88: Host802154 {
			@display("p=502,487;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node89: Host802154 {
			@display("p=500,531;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node90: Host802154 {
			@display("p=426,559;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node91: Host802154 {
			@display("p=368,516;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node92: Host802154 {
			@display("p=592,563;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node93: Host802154 {
			@display("p=677,523;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node94: Host802154 {
			@display("p=698,456;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node95: Host802154 {
			@display("p=732,397;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node96: Host802154 {
			@display("p=342,143;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node97: Host802154 {
			@display("p=712,271;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node98: Host802154 {
			@display("p=24,528;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node99: Host802154 {
			@display("p=21,619;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node100: Host802154 {
			@display("p=94,581;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node101: Host802154 {
			@display("p=170,645;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node102: Host802154 {
			@display("p=198,588;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node103: Host802154 {
			@display("p=309,629;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node104: Host802154 {
			@display("p=508,629;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node105: Host802154 {
			@display("p=378,602;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node106: Host802154 {
			@display("p=398,684;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node107: Host802154 {
			@display("p=530,588;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node108: Host802154 {
			@display("p=600,666;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node109: Host802154 {
			@display("p=687,603;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node110: Host802154 {
			@display("p=630,532;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node111: Host802154 {
			@display("p=736,538;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node112: Host802154 {
			@display("p=809,436;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node113: Host802154 {
			@display("p=806,330;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node114: Host802154 {
			@display("p=779,223;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node115: Host802154 {
			@display("p=821,164;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node116: Host802154 {
			@display("p=799,93;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node117: Host802154 {
			@display("p=802,32;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node118: Host802154 {
			@display("p=882,35;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node119: Host802154 {
			@display("p=919,105;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node120: Host802154 {
			@display("p=901,233;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node121: Host802154 {
			@display("p=849,276;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node122: Host802154 {
			@display("p=899,422;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node123: Host802154 {
			@display("p=890,539;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node124: Host802154 {
			@display("p=783,491;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node125: Host802154 {
			@display("p=834,599;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node126: Host802154 {
			@display("p=773,705;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node127: Host802154 {
			@display("p=765,641;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node128: Host802154 {
			@display("p=687,677;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node129: Host802154 {
			@display("p=639,627;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node130: Host802154 {
			@display("p=520,679;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node131: Host802154 {
			@display("p=417,639;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node132: Host802154 {
			@display("p=269,710;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node133: Host802154 {
			@display("p=235,633;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node134: Host802154 {
			@display("p=60,701;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node135: Host802154 {
			@display("p=105,635;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node136: Host802154 {
			@display("p=126,721;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node137: Host802154 {
			@display("p=221,688;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node138: Host802154 {
			@display("p=313,770;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node139: Host802154 {
			@display("p=78,764;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node140: Host802154 {
			@display("p=195,781;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node141: Host802154 {
			@display("p=198,732;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node142: Host802154 {
			@display("p=421,774;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node143: Host802154 {
			@display("p=367,720;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node144: Host802154 {
			@display("p=505,736;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node145: Host802154 {
			@display("p=680,768;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node146: Host802154 {
			@display("p=605,728;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node147: Host802154 {
			@display("p=579,772;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node148: Host802154 {
			@display("p=774,774;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node149: Host802154 {
			@display("p=672,738;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node150: Host802154 {
			@display("p=849,719;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}