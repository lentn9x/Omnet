package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork2002 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

		node1: Host802154 {
			@display("p=47,5;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node2: Host802154 {
			@display("p=124,18;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node3: Host802154 {
			@display("p=199,62;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node4: Host802154 {
			@display("p=234,54;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node5: Host802154 {
			@display("p=352,7;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node6: Host802154 {
			@display("p=401,30;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node7: Host802154 {
			@display("p=465,28;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node8: Host802154 {
			@display("p=555,16;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node9: Host802154 {
			@display("p=573,54;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node10: Host802154 {
			@display("p=687,2;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node11: Host802154 {
			@display("p=763,70;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node12: Host802154 {
			@display("p=853,61;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node13: Host802154 {
			@display("p=887,49;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node14: Host802154 {
			@display("p=961,18;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node15: Host802154 {
			@display("p=52,92;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node16: Host802154 {
			@display("p=74,110;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node17: Host802154 {
			@display("p=177,123;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node18: Host802154 {
			@display("p=279,77;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node19: Host802154 {
			@display("p=302,112;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node20: Host802154 {
			@display("p=405,110;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node21: Host802154 {
			@display("p=490,142;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node22: Host802154 {
			@display("p=513,132;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node23: Host802154 {
			@display("p=597,127;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node24: Host802154 {
			@display("p=647,115;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node25: Host802154 {
			@display("p=730,126;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node26: Host802154 {
			@display("p=801,126;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node27: Host802154 {
			@display("p=912,135;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node28: Host802154 {
			@display("p=956,116;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node29: Host802154 {
			@display("p=22,201;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node30: Host802154 {
			@display("p=102,147;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node31: Host802154 {
			@display("p=164,181;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node32: Host802154 {
			@display("p=241,214;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node33: Host802154 {
			@display("p=313,170;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node34: Host802154 {
			@display("p=421,206;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node35: Host802154 {
			@display("p=451,173;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node36: Host802154 {
			@display("p=537,157;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node37: Host802154 {
			@display("p=597,177;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node38: Host802154 {
			@display("p=651,188;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node39: Host802154 {
			@display("p=761,202;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node40: Host802154 {
			@display("p=808,154;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node41: Host802154 {
			@display("p=871,200;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node42: Host802154 {
			@display("p=932,192;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node43: Host802154 {
			@display("p=23,282;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node44: Host802154 {
			@display("p=139,225;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node45: Host802154 {
			@display("p=192,275;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node46: Host802154 {
			@display("p=232,221;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node47: Host802154 {
			@display("p=293,227;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node48: Host802154 {
			@display("p=406,223;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node49: Host802154 {
			@display("p=462,276;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node50: Host802154 {
			@display("p=528,272;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node51: Host802154 {
			@display("p=622,248;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node52: Host802154 {
			@display("p=674,259;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node53: Host802154 {
			@display("p=731,216;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node54: Host802154 {
			@display("p=823,267;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node55: Host802154 {
			@display("p=892,224;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node56: Host802154 {
			@display("p=939,253;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node57: Host802154 {
			@display("p=53,296;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node58: Host802154 {
			@display("p=96,330;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node59: Host802154 {
			@display("p=209,329;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node60: Host802154 {
			@display("p=218,316;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node61: Host802154 {
			@display("p=352,302;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node62: Host802154 {
			@display("p=409,288;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node63: Host802154 {
			@display("p=495,301;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node64: Host802154 {
			@display("p=526,310;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node65: Host802154 {
			@display("p=638,302;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node66: Host802154 {
			@display("p=668,303;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node67: Host802154 {
			@display("p=768,346;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node68: Host802154 {
			@display("p=792,345;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node69: Host802154 {
			@display("p=874,326;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node70: Host802154 {
			@display("p=979,287;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node71: Host802154 {
			@display("p=44,398;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node72: Host802154 {
			@display("p=97,415;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node73: Host802154 {
			@display("p=209,367;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node74: Host802154 {
			@display("p=245,364;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node75: Host802154 {
			@display("p=341,391;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node76: Host802154 {
			@display("p=424,362;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node77: Host802154 {
			@display("p=482,360;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node78: Host802154 {
			@display("p=538,368;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node79: Host802154 {
			@display("p=635,405;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node80: Host802154 {
			@display("p=649,372;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node81: Host802154 {
			@display("p=740,420;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node82: Host802154 {
			@display("p=799,378;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node83: Host802154 {
			@display("p=870,374;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node84: Host802154 {
			@display("p=956,379;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node85: Host802154 {
			@display("p=37,493;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node86: Host802154 {
			@display("p=97,484;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node87: Host802154 {
			@display("p=194,493;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node88: Host802154 {
			@display("p=258,462;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node89: Host802154 {
			@display("p=334,437;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node90: Host802154 {
			@display("p=377,470;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node91: Host802154 {
			@display("p=494,488;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node92: Host802154 {
			@display("p=532,492;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node93: Host802154 {
			@display("p=594,490;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node94: Host802154 {
			@display("p=649,451;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node95: Host802154 {
			@display("p=735,471;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node96: Host802154 {
			@display("p=833,459;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node97: Host802154 {
			@display("p=924,430;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node98: Host802154 {
			@display("p=943,487;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node99: Host802154 {
			@display("p=44,522;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node100: Host802154 {
			@display("p=140,508;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node101: Host802154 {
			@display("p=193,545;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node102: Host802154 {
			@display("p=282,537;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node103: Host802154 {
			@display("p=336,571;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node104: Host802154 {
			@display("p=380,502;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node105: Host802154 {
			@display("p=467,519;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node106: Host802154 {
			@display("p=570,529;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node107: Host802154 {
			@display("p=638,522;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node108: Host802154 {
			@display("p=712,517;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node109: Host802154 {
			@display("p=774,534;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node110: Host802154 {
			@display("p=852,523;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node111: Host802154 {
			@display("p=872,562;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node112: Host802154 {
			@display("p=971,556;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node113: Host802154 {
			@display("p=7,578;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node114: Host802154 {
			@display("p=140,596;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node115: Host802154 {
			@display("p=162,635;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node116: Host802154 {
			@display("p=250,592;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node117: Host802154 {
			@display("p=329,611;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node118: Host802154 {
			@display("p=366,618;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node119: Host802154 {
			@display("p=495,599;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node120: Host802154 {
			@display("p=511,603;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node121: Host802154 {
			@display("p=642,591;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node122: Host802154 {
			@display("p=647,630;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node123: Host802154 {
			@display("p=745,634;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node124: Host802154 {
			@display("p=791,596;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node125: Host802154 {
			@display("p=917,621;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node126: Host802154 {
			@display("p=962,623;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node127: Host802154 {
			@display("p=13,663;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node128: Host802154 {
			@display("p=101,649;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node129: Host802154 {
			@display("p=208,708;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node130: Host802154 {
			@display("p=277,703;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node131: Host802154 {
			@display("p=290,668;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node132: Host802154 {
			@display("p=428,673;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node133: Host802154 {
			@display("p=493,660;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node134: Host802154 {
			@display("p=549,673;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node135: Host802154 {
			@display("p=579,662;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node136: Host802154 {
			@display("p=681,684;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node137: Host802154 {
			@display("p=726,671;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node138: Host802154 {
			@display("p=848,688;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node139: Host802154 {
			@display("p=908,670;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node140: Host802154 {
			@display("p=976,694;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node141: Host802154 {
			@display("p=18,768;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node142: Host802154 {
			@display("p=75,733;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node143: Host802154 {
			@display("p=201,753;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node144: Host802154 {
			@display("p=240,730;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node145: Host802154 {
			@display("p=302,751;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node146: Host802154 {
			@display("p=390,729;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node147: Host802154 {
			@display("p=468,720;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node148: Host802154 {
			@display("p=516,771;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node149: Host802154 {
			@display("p=630,754;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node150: Host802154 {
			@display("p=712,772;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node151: Host802154 {
			@display("p=761,714;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node152: Host802154 {
			@display("p=827,772;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node153: Host802154 {
			@display("p=870,733;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node154: Host802154 {
			@display("p=937,719;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node155: Host802154 {
			@display("p=15,824;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node156: Host802154 {
			@display("p=86,787;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node157: Host802154 {
			@display("p=155,799;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node158: Host802154 {
			@display("p=221,795;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node159: Host802154 {
			@display("p=312,842;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node160: Host802154 {
			@display("p=386,817;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node161: Host802154 {
			@display("p=432,834;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node162: Host802154 {
			@display("p=503,798;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node163: Host802154 {
			@display("p=579,850;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node164: Host802154 {
			@display("p=702,817;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node165: Host802154 {
			@display("p=744,811;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node166: Host802154 {
			@display("p=826,808;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node167: Host802154 {
			@display("p=910,849;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node168: Host802154 {
			@display("p=935,833;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node169: Host802154 {
			@display("p=48,889;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node170: Host802154 {
			@display("p=97,913;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node171: Host802154 {
			@display("p=149,910;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node172: Host802154 {
			@display("p=236,916;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node173: Host802154 {
			@display("p=285,871;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node174: Host802154 {
			@display("p=422,876;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node175: Host802154 {
			@display("p=479,887;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node176: Host802154 {
			@display("p=512,887;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node177: Host802154 {
			@display("p=600,884;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node178: Host802154 {
			@display("p=710,878;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node179: Host802154 {
			@display("p=768,891;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node180: Host802154 {
			@display("p=797,905;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node181: Host802154 {
			@display("p=874,909;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node182: Host802154 {
			@display("p=937,911;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node183: Host802154 {
			@display("p=33,992;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node184: Host802154 {
			@display("p=103,950;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node185: Host802154 {
			@display("p=145,965;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node186: Host802154 {
			@display("p=221,974;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node187: Host802154 {
			@display("p=290,971;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node188: Host802154 {
			@display("p=399,975;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node189: Host802154 {
			@display("p=490,945;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node190: Host802154 {
			@display("p=564,988;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node191: Host802154 {
			@display("p=609,988;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node192: Host802154 {
			@display("p=689,957;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node193: Host802154 {
			@display("p=724,998;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node194: Host802154 {
			@display("p=820,941;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node195: Host802154 {
			@display("p=908,960;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node196: Host802154 {
			@display("p=977,972;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node197: Host802154 {
			@display("p=997,376;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node198: Host802154 {
			@display("p=365,490;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node199: Host802154 {
			@display("p=668,306;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node200: Host802154 {
			@display("p=593,263;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}