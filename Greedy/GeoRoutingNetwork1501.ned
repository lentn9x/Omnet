package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork1501 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

		node1: Host802154 {
			@display("p=6,12;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node2: Host802154 {
			@display("p=98,29;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node3: Host802154 {
			@display("p=162,6;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node4: Host802154 {
			@display("p=179,24;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node5: Host802154 {
			@display("p=235,18;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node6: Host802154 {
			@display("p=298,53;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node7: Host802154 {
			@display("p=372,33;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node8: Host802154 {
			@display("p=453,35;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node9: Host802154 {
			@display("p=522,3;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node10: Host802154 {
			@display("p=582,13;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node11: Host802154 {
			@display("p=602,1;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node12: Host802154 {
			@display("p=679,45;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node13: Host802154 {
			@display("p=34,60;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node14: Host802154 {
			@display("p=113,65;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node15: Host802154 {
			@display("p=168,102;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node16: Host802154 {
			@display("p=204,112;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node17: Host802154 {
			@display("p=272,79;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node18: Host802154 {
			@display("p=329,86;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node19: Host802154 {
			@display("p=401,79;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node20: Host802154 {
			@display("p=435,88;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node21: Host802154 {
			@display("p=494,116;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node22: Host802154 {
			@display("p=566,85;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node23: Host802154 {
			@display("p=607,70;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node24: Host802154 {
			@display("p=696,85;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node25: Host802154 {
			@display("p=12,120;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node26: Host802154 {
			@display("p=112,173;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node27: Host802154 {
			@display("p=165,121;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node28: Host802154 {
			@display("p=226,172;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node29: Host802154 {
			@display("p=283,135;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node30: Host802154 {
			@display("p=321,155;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node31: Host802154 {
			@display("p=378,155;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node32: Host802154 {
			@display("p=434,135;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node33: Host802154 {
			@display("p=490,122;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node34: Host802154 {
			@display("p=577,160;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node35: Host802154 {
			@display("p=639,169;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node36: Host802154 {
			@display("p=651,140;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node37: Host802154 {
			@display("p=44,200;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node38: Host802154 {
			@display("p=90,232;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node39: Host802154 {
			@display("p=120,225;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node40: Host802154 {
			@display("p=210,201;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node41: Host802154 {
			@display("p=243,182;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node42: Host802154 {
			@display("p=323,226;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node43: Host802154 {
			@display("p=350,227;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node44: Host802154 {
			@display("p=438,199;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node45: Host802154 {
			@display("p=501,217;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node46: Host802154 {
			@display("p=554,193;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node47: Host802154 {
			@display("p=584,187;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node48: Host802154 {
			@display("p=671,221;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node49: Host802154 {
			@display("p=1,242;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node50: Host802154 {
			@display("p=104,269;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node51: Host802154 {
			@display("p=149,271;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node52: Host802154 {
			@display("p=181,235;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node53: Host802154 {
			@display("p=280,280;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node54: Host802154 {
			@display("p=310,261;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node55: Host802154 {
			@display("p=372,282;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node56: Host802154 {
			@display("p=423,233;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node57: Host802154 {
			@display("p=469,257;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node58: Host802154 {
			@display("p=553,255;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node59: Host802154 {
			@display("p=628,268;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node60: Host802154 {
			@display("p=646,264;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node61: Host802154 {
			@display("p=13,348;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node62: Host802154 {
			@display("p=75,302;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node63: Host802154 {
			@display("p=169,328;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node64: Host802154 {
			@display("p=199,347;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node65: Host802154 {
			@display("p=261,348;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node66: Host802154 {
			@display("p=340,315;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node67: Host802154 {
			@display("p=387,318;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node68: Host802154 {
			@display("p=441,347;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node69: Host802154 {
			@display("p=511,299;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node70: Host802154 {
			@display("p=531,334;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node71: Host802154 {
			@display("p=589,321;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node72: Host802154 {
			@display("p=660,330;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node73: Host802154 {
			@display("p=3,384;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node74: Host802154 {
			@display("p=68,355;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node75: Host802154 {
			@display("p=135,387;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node76: Host802154 {
			@display("p=197,403;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node77: Host802154 {
			@display("p=264,378;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node78: Host802154 {
			@display("p=316,397;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node79: Host802154 {
			@display("p=393,372;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node80: Host802154 {
			@display("p=460,378;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node81: Host802154 {
			@display("p=470,399;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node82: Host802154 {
			@display("p=546,369;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node83: Host802154 {
			@display("p=593,407;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node84: Host802154 {
			@display("p=685,396;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node85: Host802154 {
			@display("p=47,414;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node86: Host802154 {
			@display("p=107,428;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node87: Host802154 {
			@display("p=141,410;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node88: Host802154 {
			@display("p=225,441;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node89: Host802154 {
			@display("p=282,441;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node90: Host802154 {
			@display("p=324,449;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node91: Host802154 {
			@display("p=396,455;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node92: Host802154 {
			@display("p=446,454;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node93: Host802154 {
			@display("p=468,441;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node94: Host802154 {
			@display("p=579,428;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node95: Host802154 {
			@display("p=613,456;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node96: Host802154 {
			@display("p=664,418;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node97: Host802154 {
			@display("p=48,483;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node98: Host802154 {
			@display("p=84,481;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node99: Host802154 {
			@display("p=134,511;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node100: Host802154 {
			@display("p=199,486;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node101: Host802154 {
			@display("p=252,481;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node102: Host802154 {
			@display("p=339,470;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node103: Host802154 {
			@display("p=354,523;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node104: Host802154 {
			@display("p=411,486;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node105: Host802154 {
			@display("p=522,522;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node106: Host802154 {
			@display("p=556,517;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node107: Host802154 {
			@display("p=636,468;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node108: Host802154 {
			@display("p=644,472;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node109: Host802154 {
			@display("p=39,541;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node110: Host802154 {
			@display("p=114,572;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node111: Host802154 {
			@display("p=167,572;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node112: Host802154 {
			@display("p=208,579;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node113: Host802154 {
			@display("p=288,562;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node114: Host802154 {
			@display("p=303,557;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node115: Host802154 {
			@display("p=356,535;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node116: Host802154 {
			@display("p=423,530;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node117: Host802154 {
			@display("p=482,554;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node118: Host802154 {
			@display("p=552,542;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node119: Host802154 {
			@display("p=639,567;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node120: Host802154 {
			@display("p=669,565;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node121: Host802154 {
			@display("p=17,623;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node122: Host802154 {
			@display("p=109,639;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node123: Host802154 {
			@display("p=153,621;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node124: Host802154 {
			@display("p=196,604;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node125: Host802154 {
			@display("p=245,626;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node126: Host802154 {
			@display("p=296,593;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node127: Host802154 {
			@display("p=372,611;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node128: Host802154 {
			@display("p=430,619;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node129: Host802154 {
			@display("p=495,607;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node130: Host802154 {
			@display("p=526,593;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node131: Host802154 {
			@display("p=591,614;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node132: Host802154 {
			@display("p=690,634;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node133: Host802154 {
			@display("p=34,691;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node134: Host802154 {
			@display("p=102,643;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node135: Host802154 {
			@display("p=153,677;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node136: Host802154 {
			@display("p=192,660;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node137: Host802154 {
			@display("p=252,699;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node138: Host802154 {
			@display("p=322,658;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node139: Host802154 {
			@display("p=352,694;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node140: Host802154 {
			@display("p=408,695;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node141: Host802154 {
			@display("p=477,676;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node142: Host802154 {
			@display("p=581,668;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node143: Host802154 {
			@display("p=583,696;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node144: Host802154 {
			@display("p=649,687;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node145: Host802154 {
			@display("p=232,53;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node146: Host802154 {
			@display("p=657,532;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node147: Host802154 {
			@display("p=147,232;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node148: Host802154 {
			@display("p=32,325;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node149: Host802154 {
			@display("p=413,609;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node150: Host802154 {
			@display("p=683,656;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}