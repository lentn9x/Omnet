package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork2001 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

		node1: Host802154 {
			@display("p=18,71;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node2: Host802154 {
			@display("p=93,20;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node3: Host802154 {
			@display("p=196,51;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node4: Host802154 {
			@display("p=241,14;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node5: Host802154 {
			@display("p=322,4;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node6: Host802154 {
			@display("p=423,33;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node7: Host802154 {
			@display("p=443,10;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node8: Host802154 {
			@display("p=504,35;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node9: Host802154 {
			@display("p=572,19;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node10: Host802154 {
			@display("p=655,65;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node11: Host802154 {
			@display("p=762,48;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node12: Host802154 {
			@display("p=856,70;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node13: Host802154 {
			@display("p=917,45;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node14: Host802154 {
			@display("p=933,13;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node15: Host802154 {
			@display("p=31,110;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node16: Host802154 {
			@display("p=102,132;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node17: Host802154 {
			@display("p=166,134;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node18: Host802154 {
			@display("p=265,118;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node19: Host802154 {
			@display("p=356,138;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node20: Host802154 {
			@display("p=420,74;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node21: Host802154 {
			@display("p=453,93;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node22: Host802154 {
			@display("p=515,97;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node23: Host802154 {
			@display("p=627,89;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node24: Host802154 {
			@display("p=710,131;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node25: Host802154 {
			@display("p=743,77;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node26: Host802154 {
			@display("p=836,111;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node27: Host802154 {
			@display("p=921,130;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node28: Host802154 {
			@display("p=951,88;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node29: Host802154 {
			@display("p=20,162;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node30: Host802154 {
			@display("p=133,190;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node31: Host802154 {
			@display("p=153,182;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node32: Host802154 {
			@display("p=258,203;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node33: Host802154 {
			@display("p=287,190;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node34: Host802154 {
			@display("p=415,145;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node35: Host802154 {
			@display("p=483,182;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node36: Host802154 {
			@display("p=519,151;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node37: Host802154 {
			@display("p=573,211;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node38: Host802154 {
			@display("p=666,204;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node39: Host802154 {
			@display("p=768,165;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node40: Host802154 {
			@display("p=846,195;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node41: Host802154 {
			@display("p=874,143;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node42: Host802154 {
			@display("p=937,213;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node43: Host802154 {
			@display("p=9,276;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node44: Host802154 {
			@display("p=141,257;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node45: Host802154 {
			@display("p=166,221;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node46: Host802154 {
			@display("p=260,246;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node47: Host802154 {
			@display("p=298,237;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node48: Host802154 {
			@display("p=369,237;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node49: Host802154 {
			@display("p=481,250;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node50: Host802154 {
			@display("p=516,253;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node51: Host802154 {
			@display("p=573,267;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node52: Host802154 {
			@display("p=664,241;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node53: Host802154 {
			@display("p=734,235;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node54: Host802154 {
			@display("p=842,268;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node55: Host802154 {
			@display("p=921,217;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node56: Host802154 {
			@display("p=965,214;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node57: Host802154 {
			@display("p=58,325;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node58: Host802154 {
			@display("p=93,347;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node59: Host802154 {
			@display("p=194,296;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node60: Host802154 {
			@display("p=252,338;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node61: Host802154 {
			@display("p=289,315;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node62: Host802154 {
			@display("p=373,337;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node63: Host802154 {
			@display("p=461,309;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node64: Host802154 {
			@display("p=556,354;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node65: Host802154 {
			@display("p=620,336;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node66: Host802154 {
			@display("p=683,344;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node67: Host802154 {
			@display("p=750,301;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node68: Host802154 {
			@display("p=855,293;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node69: Host802154 {
			@display("p=905,347;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node70: Host802154 {
			@display("p=970,344;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node71: Host802154 {
			@display("p=57,384;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node72: Host802154 {
			@display("p=85,424;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node73: Host802154 {
			@display("p=209,380;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node74: Host802154 {
			@display("p=250,364;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node75: Host802154 {
			@display("p=286,379;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node76: Host802154 {
			@display("p=413,358;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node77: Host802154 {
			@display("p=428,357;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node78: Host802154 {
			@display("p=549,414;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node79: Host802154 {
			@display("p=582,378;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node80: Host802154 {
			@display("p=702,427;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node81: Host802154 {
			@display("p=783,380;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node82: Host802154 {
			@display("p=811,363;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node83: Host802154 {
			@display("p=888,362;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node84: Host802154 {
			@display("p=931,377;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node85: Host802154 {
			@display("p=63,478;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node86: Host802154 {
			@display("p=105,460;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node87: Host802154 {
			@display("p=153,492;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node88: Host802154 {
			@display("p=257,440;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node89: Host802154 {
			@display("p=323,436;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node90: Host802154 {
			@display("p=385,493;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node91: Host802154 {
			@display("p=460,454;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node92: Host802154 {
			@display("p=549,463;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node93: Host802154 {
			@display("p=574,476;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node94: Host802154 {
			@display("p=658,469;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node95: Host802154 {
			@display("p=744,479;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node96: Host802154 {
			@display("p=836,477;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node97: Host802154 {
			@display("p=927,478;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node98: Host802154 {
			@display("p=958,446;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node99: Host802154 {
			@display("p=41,551;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node100: Host802154 {
			@display("p=134,508;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node101: Host802154 {
			@display("p=147,545;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node102: Host802154 {
			@display("p=244,557;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node103: Host802154 {
			@display("p=323,540;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node104: Host802154 {
			@display("p=417,563;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node105: Host802154 {
			@display("p=442,559;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node106: Host802154 {
			@display("p=555,541;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node107: Host802154 {
			@display("p=613,517;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node108: Host802154 {
			@display("p=705,534;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node109: Host802154 {
			@display("p=743,534;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node110: Host802154 {
			@display("p=788,549;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node111: Host802154 {
			@display("p=862,561;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node112: Host802154 {
			@display("p=948,523;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node113: Host802154 {
			@display("p=53,586;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node114: Host802154 {
			@display("p=136,627;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node115: Host802154 {
			@display("p=196,635;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node116: Host802154 {
			@display("p=251,635;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node117: Host802154 {
			@display("p=287,600;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node118: Host802154 {
			@display("p=378,625;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node119: Host802154 {
			@display("p=433,617;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node120: Host802154 {
			@display("p=509,579;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node121: Host802154 {
			@display("p=623,581;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node122: Host802154 {
			@display("p=679,598;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node123: Host802154 {
			@display("p=779,631;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node124: Host802154 {
			@display("p=793,604;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node125: Host802154 {
			@display("p=883,607;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node126: Host802154 {
			@display("p=951,637;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node127: Host802154 {
			@display("p=6,707;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node128: Host802154 {
			@display("p=112,644;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node129: Host802154 {
			@display("p=179,694;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node130: Host802154 {
			@display("p=273,658;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node131: Host802154 {
			@display("p=356,696;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node132: Host802154 {
			@display("p=363,710;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node133: Host802154 {
			@display("p=432,664;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node134: Host802154 {
			@display("p=516,668;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node135: Host802154 {
			@display("p=584,702;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node136: Host802154 {
			@display("p=672,659;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node137: Host802154 {
			@display("p=753,663;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node138: Host802154 {
			@display("p=795,706;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node139: Host802154 {
			@display("p=915,692;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node140: Host802154 {
			@display("p=949,674;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node141: Host802154 {
			@display("p=47,734;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node142: Host802154 {
			@display("p=108,742;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node143: Host802154 {
			@display("p=184,772;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node144: Host802154 {
			@display("p=237,759;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node145: Host802154 {
			@display("p=298,785;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node146: Host802154 {
			@display("p=366,754;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node147: Host802154 {
			@display("p=449,774;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node148: Host802154 {
			@display("p=511,741;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node149: Host802154 {
			@display("p=592,769;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node150: Host802154 {
			@display("p=699,729;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node151: Host802154 {
			@display("p=730,752;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node152: Host802154 {
			@display("p=809,734;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node153: Host802154 {
			@display("p=893,723;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node154: Host802154 {
			@display("p=953,716;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node155: Host802154 {
			@display("p=63,800;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node156: Host802154 {
			@display("p=136,848;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node157: Host802154 {
			@display("p=208,790;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node158: Host802154 {
			@display("p=220,824;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node159: Host802154 {
			@display("p=315,828;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node160: Host802154 {
			@display("p=408,804;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node161: Host802154 {
			@display("p=431,815;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node162: Host802154 {
			@display("p=546,802;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node163: Host802154 {
			@display("p=579,829;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node164: Host802154 {
			@display("p=713,826;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node165: Host802154 {
			@display("p=766,798;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node166: Host802154 {
			@display("p=813,811;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node167: Host802154 {
			@display("p=903,829;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node168: Host802154 {
			@display("p=932,839;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node169: Host802154 {
			@display("p=4,884;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node170: Host802154 {
			@display("p=93,884;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node171: Host802154 {
			@display("p=163,896;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node172: Host802154 {
			@display("p=221,865;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node173: Host802154 {
			@display("p=332,878;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node174: Host802154 {
			@display("p=423,861;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node175: Host802154 {
			@display("p=448,911;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node176: Host802154 {
			@display("p=525,897;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node177: Host802154 {
			@display("p=606,859;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node178: Host802154 {
			@display("p=678,883;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node179: Host802154 {
			@display("p=759,927;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node180: Host802154 {
			@display("p=787,908;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node181: Host802154 {
			@display("p=860,924;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node182: Host802154 {
			@display("p=962,869;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node183: Host802154 {
			@display("p=35,966;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node184: Host802154 {
			@display("p=101,950;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node185: Host802154 {
			@display("p=177,940;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node186: Host802154 {
			@display("p=251,979;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node187: Host802154 {
			@display("p=353,931;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node188: Host802154 {
			@display("p=366,941;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node189: Host802154 {
			@display("p=437,994;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node190: Host802154 {
			@display("p=568,954;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node191: Host802154 {
			@display("p=617,932;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node192: Host802154 {
			@display("p=706,944;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node193: Host802154 {
			@display("p=714,940;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node194: Host802154 {
			@display("p=794,953;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node195: Host802154 {
			@display("p=875,948;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node196: Host802154 {
			@display("p=982,933;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node197: Host802154 {
			@display("p=649,636;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node198: Host802154 {
			@display("p=632,497;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node199: Host802154 {
			@display("p=888,353;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node200: Host802154 {
			@display("p=422,197;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}