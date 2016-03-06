package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork1502 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

		node1: Host802154 {
			@display("p=3,18;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node2: Host802154 {
			@display("p=79,9;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node3: Host802154 {
			@display("p=162,56;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node4: Host802154 {
			@display("p=179,8;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node5: Host802154 {
			@display("p=256,29;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node6: Host802154 {
			@display("p=349,43;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node7: Host802154 {
			@display("p=361,5;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node8: Host802154 {
			@display("p=434,20;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node9: Host802154 {
			@display("p=513,46;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node10: Host802154 {
			@display("p=538,47;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node11: Host802154 {
			@display("p=638,2;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node12: Host802154 {
			@display("p=680,52;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node13: Host802154 {
			@display("p=5,98;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node14: Host802154 {
			@display("p=112,94;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node15: Host802154 {
			@display("p=136,106;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node16: Host802154 {
			@display("p=210,70;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node17: Host802154 {
			@display("p=256,66;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node18: Host802154 {
			@display("p=349,85;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node19: Host802154 {
			@display("p=382,98;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node20: Host802154 {
			@display("p=459,104;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node21: Host802154 {
			@display("p=470,100;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node22: Host802154 {
			@display("p=569,104;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node23: Host802154 {
			@display("p=616,67;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node24: Host802154 {
			@display("p=658,110;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node25: Host802154 {
			@display("p=24,129;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node26: Host802154 {
			@display("p=91,158;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node27: Host802154 {
			@display("p=145,147;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node28: Host802154 {
			@display("p=196,168;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node29: Host802154 {
			@display("p=262,125;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node30: Host802154 {
			@display("p=343,156;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node31: Host802154 {
			@display("p=361,126;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node32: Host802154 {
			@display("p=417,131;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node33: Host802154 {
			@display("p=475,127;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node34: Host802154 {
			@display("p=565,166;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node35: Host802154 {
			@display("p=604,158;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node36: Host802154 {
			@display("p=656,161;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node37: Host802154 {
			@display("p=54,175;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node38: Host802154 {
			@display("p=115,203;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node39: Host802154 {
			@display("p=124,184;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node40: Host802154 {
			@display("p=182,205;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node41: Host802154 {
			@display("p=251,186;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node42: Host802154 {
			@display("p=315,216;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node43: Host802154 {
			@display("p=387,211;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node44: Host802154 {
			@display("p=446,179;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node45: Host802154 {
			@display("p=472,205;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node46: Host802154 {
			@display("p=535,223;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node47: Host802154 {
			@display("p=636,225;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node48: Host802154 {
			@display("p=672,216;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node49: Host802154 {
			@display("p=36,280;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node50: Host802154 {
			@display("p=59,267;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node51: Host802154 {
			@display("p=127,275;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node52: Host802154 {
			@display("p=225,266;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node53: Host802154 {
			@display("p=260,271;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node54: Host802154 {
			@display("p=326,265;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node55: Host802154 {
			@display("p=402,291;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node56: Host802154 {
			@display("p=409,245;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node57: Host802154 {
			@display("p=499,290;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node58: Host802154 {
			@display("p=574,273;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node59: Host802154 {
			@display("p=632,262;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node60: Host802154 {
			@display("p=673,265;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node61: Host802154 {
			@display("p=11,295;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node62: Host802154 {
			@display("p=94,301;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node63: Host802154 {
			@display("p=150,322;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node64: Host802154 {
			@display("p=181,313;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node65: Host802154 {
			@display("p=289,304;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node66: Host802154 {
			@display("p=323,302;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node67: Host802154 {
			@display("p=379,324;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node68: Host802154 {
			@display("p=408,314;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node69: Host802154 {
			@display("p=516,335;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node70: Host802154 {
			@display("p=533,335;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node71: Host802154 {
			@display("p=610,296;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node72: Host802154 {
			@display("p=677,330;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node73: Host802154 {
			@display("p=48,401;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node74: Host802154 {
			@display("p=76,362;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node75: Host802154 {
			@display("p=167,362;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node76: Host802154 {
			@display("p=230,351;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node77: Host802154 {
			@display("p=235,354;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node78: Host802154 {
			@display("p=322,404;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node79: Host802154 {
			@display("p=404,351;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node80: Host802154 {
			@display("p=413,369;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node81: Host802154 {
			@display("p=492,355;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node82: Host802154 {
			@display("p=526,371;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node83: Host802154 {
			@display("p=622,392;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node84: Host802154 {
			@display("p=669,376;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node85: Host802154 {
			@display("p=39,417;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node86: Host802154 {
			@display("p=95,413;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node87: Host802154 {
			@display("p=139,413;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node88: Host802154 {
			@display("p=209,434;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node89: Host802154 {
			@display("p=265,439;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node90: Host802154 {
			@display("p=332,451;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node91: Host802154 {
			@display("p=353,429;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node92: Host802154 {
			@display("p=429,460;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node93: Host802154 {
			@display("p=479,462;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node94: Host802154 {
			@display("p=555,435;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node95: Host802154 {
			@display("p=633,441;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node96: Host802154 {
			@display("p=688,465;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node97: Host802154 {
			@display("p=39,496;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node98: Host802154 {
			@display("p=95,470;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node99: Host802154 {
			@display("p=153,472;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node100: Host802154 {
			@display("p=186,518;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node101: Host802154 {
			@display("p=276,488;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node102: Host802154 {
			@display("p=323,475;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node103: Host802154 {
			@display("p=372,511;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node104: Host802154 {
			@display("p=447,516;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node105: Host802154 {
			@display("p=486,501;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node106: Host802154 {
			@display("p=551,466;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node107: Host802154 {
			@display("p=620,478;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node108: Host802154 {
			@display("p=642,508;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node109: Host802154 {
			@display("p=1,557;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node110: Host802154 {
			@display("p=87,529;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node111: Host802154 {
			@display("p=170,537;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node112: Host802154 {
			@display("p=192,577;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node113: Host802154 {
			@display("p=250,565;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node114: Host802154 {
			@display("p=316,532;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node115: Host802154 {
			@display("p=397,544;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node116: Host802154 {
			@display("p=460,553;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node117: Host802154 {
			@display("p=498,563;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node118: Host802154 {
			@display("p=561,544;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node119: Host802154 {
			@display("p=603,578;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node120: Host802154 {
			@display("p=673,558;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node121: Host802154 {
			@display("p=45,604;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node122: Host802154 {
			@display("p=71,637;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node123: Host802154 {
			@display("p=147,633;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node124: Host802154 {
			@display("p=226,619;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node125: Host802154 {
			@display("p=235,638;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node126: Host802154 {
			@display("p=296,587;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node127: Host802154 {
			@display("p=373,615;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node128: Host802154 {
			@display("p=434,641;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node129: Host802154 {
			@display("p=516,632;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node130: Host802154 {
			@display("p=553,632;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node131: Host802154 {
			@display("p=608,598;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node132: Host802154 {
			@display("p=686,603;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node133: Host802154 {
			@display("p=6,690;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node134: Host802154 {
			@display("p=96,688;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node135: Host802154 {
			@display("p=122,659;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node136: Host802154 {
			@display("p=187,647;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node137: Host802154 {
			@display("p=264,667;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node138: Host802154 {
			@display("p=316,649;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node139: Host802154 {
			@display("p=389,699;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node140: Host802154 {
			@display("p=417,667;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node141: Host802154 {
			@display("p=480,681;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node142: Host802154 {
			@display("p=542,669;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node143: Host802154 {
			@display("p=607,684;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node144: Host802154 {
			@display("p=657,661;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node145: Host802154 {
			@display("p=311,81;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node146: Host802154 {
			@display("p=155,651;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node147: Host802154 {
			@display("p=349,633;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node148: Host802154 {
			@display("p=504,50;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node149: Host802154 {
			@display("p=389,589;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node150: Host802154 {
			@display("p=433,174;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}