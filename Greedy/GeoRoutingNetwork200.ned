package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork200 extends BaseNetwork
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
            @display("p=161,35;i=misc/node2,,0;b=3,5;is=vs;i2=-");
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
            @display("p=430,20;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node8: Host802154 {
            @display("p=543,21;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node9: Host802154 {
            @display("p=598,17;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node10: Host802154 {
            @display("p=684,24;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node11: Host802154 {
            @display("p=726,57;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node12: Host802154 {
            @display("p=840,15;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node13: Host802154 {
            @display("p=882,52;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node14: Host802154 {
            @display("p=972,54;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node15: Host802154 {
            @display("p=81,104;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node16: Host802154 {
            @display("p=126,99;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node17: Host802154 {
            @display("p=176,104;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node18: Host802154 {
            @display("p=229,96;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node19: Host802154 {
            @display("p=293,129;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node20: Host802154 {
            @display("p=414,123;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node21: Host802154 {
            @display("p=473,108;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node22: Host802154 {
            @display("p=549,93;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node23: Host802154 {
            @display("p=630,104;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node24: Host802154 {
            @display("p=682,126;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node25: Host802154 {
            @display("p=757,88;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node26: Host802154 {
            @display("p=813,98;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node27: Host802154 {
            @display("p=917,94;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node28: Host802154 {
            @display("p=979,117;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node29: Host802154 {
            @display("p=20,208;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node30: Host802154 {
            @display("p=81,158;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node31: Host802154 {
            @display("p=176,178;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node32: Host802154 {
            @display("p=229,206;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node33: Host802154 {
            @display("p=299,165;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node34: Host802154 {
            @display("p=415,180;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node35: Host802154 {
            @display("p=434,191;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node36: Host802154 {
            @display("p=509,199;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node37: Host802154 {
            @display("p=558,129;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node38: Host802154 {
            @display("p=655,147;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node39: Host802154 {
            @display("p=750,204;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node40: Host802154 {
            @display("p=850,164;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node41: Host802154 {
            @display("p=885,241;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node42: Host802154 {
            @display("p=972,169;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node43: Host802154 {
            @display("p=0,261;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node44: Host802154 {
            @display("p=115,245;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node45: Host802154 {
            @display("p=187,273;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node46: Host802154 {
            @display("p=251,235;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node47: Host802154 {
            @display("p=328,277;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node48: Host802154 {
            @display("p=360,236;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node49: Host802154 {
            @display("p=434,267;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node50: Host802154 {
            @display("p=519,241;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node51: Host802154 {
            @display("p=654,208;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node52: Host802154 {
            @display("p=685,235;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node53: Host802154 {
            @display("p=59,223;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node54: Host802154 {
            @display("p=842,267;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node55: Host802154 {
            @display("p=890,270;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node56: Host802154 {
            @display("p=957,275;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node57: Host802154 {
            @display("p=22,356;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node58: Host802154 {
            @display("p=91,324;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node59: Host802154 {
            @display("p=162,292;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node60: Host802154 {
            @display("p=237,325;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node61: Host802154 {
            @display("p=328,376;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node62: Host802154 {
            @display("p=360,355;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node63: Host802154 {
            @display("p=495,275;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node64: Host802154 {
            @display("p=579,208;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node65: Host802154 {
            @display("p=571,261;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node66: Host802154 {
            @display("p=715,277;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node67: Host802154 {
            @display("p=766,147;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node68: Host802154 {
            @display("p=831,328;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node69: Host802154 {
            @display("p=872,310;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node70: Host802154 {
            @display("p=958,343;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node71: Host802154 {
            @display("p=46,375;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node72: Host802154 {
            @display("p=97,416;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node73: Host802154 {
            @display("p=206,412;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node74: Host802154 {
            @display("p=255,395;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node75: Host802154 {
            @display("p=287,360;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node76: Host802154 {
            @display("p=303,713;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node77: Host802154 {
            @display("p=410,301;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node78: Host802154 {
            @display("p=649,245;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node79: Host802154 {
            @display("p=532,641;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node80: Host802154 {
            @display("p=29,309;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node81: Host802154 {
            @display("p=685,360;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node82: Host802154 {
            @display("p=649,442;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node83: Host802154 {
            @display("p=715,494;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node84: Host802154 {
            @display("p=996,376;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node85: Host802154 {
            @display("p=64,479;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node86: Host802154 {
            @display("p=201,494;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node87: Host802154 {
            @display("p=152,461;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node88: Host802154 {
            @display("p=256,431;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node89: Host802154 {
            @display("p=242,721;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node90: Host802154 {
            @display("p=333,736;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node91: Host802154 {
            @display("p=389,768;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node92: Host802154 {
            @display("p=427,787;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node93: Host802154 {
            @display("p=553,721;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node94: Host802154 {
            @display("p=616,634;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node95: Host802154 {
            @display("p=642,752;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node96: Host802154 {
            @display("p=823,476;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node97: Host802154 {
            @display("p=876,488;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node98: Host802154 {
            @display("p=969,457;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node99: Host802154 {
            @display("p=5,504;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node100: Host802154 {
            @display("p=162,532;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node101: Host802154 {
            @display("p=112,603;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node102: Host802154 {
            @display("p=363,650;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node103: Host802154 {
            @display("p=203,793;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node104: Host802154 {
            @display("p=776,752;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node105: Host802154 {
            @display("p=389,878;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node106: Host802154 {
            @display("p=438,810;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node107: Host802154 {
            @display("p=519,826;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node108: Host802154 {
            @display("p=776,694;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node109: Host802154 {
            @display("p=851,685;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node110: Host802154 {
            @display("p=789,549;i=misc/node2,red,100;b=3,5;is=vs;i2=-");
        }
        node111: Host802154 {
            @display("p=870,560;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node112: Host802154 {
            @display("p=963,532;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node113: Host802154 {
            @display("p=29,587;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node114: Host802154 {
            @display("p=85,574;i=misc/node2,red,100;b=3,5;is=vs;i2=-");
        }
        node115: Host802154 {
            @display("p=283,648;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node116: Host802154 {
            @display("p=242,634;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node117: Host802154 {
            @display("p=241,878;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node118: Host802154 {
            @display("p=280,878;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node119: Host802154 {
            @display("p=599,765;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node120: Host802154 {
            @display("p=681,715;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node121: Host802154 {
            @display("p=741,776;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node122: Host802154 {
            @display("p=757,713;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node123: Host802154 {
            @display("p=846,772;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node124: Host802154 {
            @display("p=746,587;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node125: Host802154 {
            @display("p=862,603;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node126: Host802154 {
            @display("p=977,634;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node127: Host802154 {
            @display("p=20,670;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node128: Host802154 {
            @display("p=102,702;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node129: Host802154 {
            @display("p=187,603;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node130: Host802154 {
            @display("p=174,996;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node131: Host802154 {
            @display("p=256,933;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node132: Host802154 {
            @display("p=306,978;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node133: Host802154 {
            @display("p=363,959;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node134: Host802154 {
            @display("p=677,785;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node135: Host802154 {
            @display("p=532,947;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node136: Host802154 {
            @display("p=616,968;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node137: Host802154 {
            @display("p=676,949;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node138: Host802154 {
            @display("p=682,603;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node139: Host802154 {
            @display("p=885,650;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node140: Host802154 {
            @display("p=994,684;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node141: Host802154 {
            @display("p=49,745;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node142: Host802154 {
            @display("p=118,767;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node143: Host802154 {
            @display("p=167,758;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node144: Host802154 {
            @display("p=283,758;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node145: Host802154 {
            @display("p=345,768;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node146: Host802154 {
            @display("p=301,3;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node147: Host802154 {
            @display("p=460,780;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node148: Host802154 {
            @display("p=511,782;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node149: Host802154 {
            @display("p=525,014;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node150: Host802154 {
            @display("p=685,762;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node151: Host802154 {
            @display("p=629,017;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node152: Host802154 {
            @display("p=586,845;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node153: Host802154 {
            @display("p=859,753;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node154: Host802154 {
            @display("p=977,744;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node155: Host802154 {
            @display("p=59,801;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node156: Host802154 {
            @display("p=124,809;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node157: Host802154 {
            @display("p=142,841;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node158: Host802154 {
            @display("p=238,802;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node159: Host802154 {
            @display("p=448,650;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node160: Host802154 {
            @display("p=586,911;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node161: Host802154 {
            @display("p=634,682;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node162: Host802154 {
            @display("p=528,799;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node163: Host802154 {
            @display("p=360,826;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node164: Host802154 {
            @display("p=700,851;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node165: Host802154 {
            @display("p=779,838;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node166: Host802154 {
            @display("p=823,845;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node167: Host802154 {
            @display("p=927,837;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node168: Host802154 {
            @display("p=957,836;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node169: Host802154 {
            @display("p=68,897;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node170: Host802154 {
            @display("p=112,865;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node171: Host802154 {
            @display("p=209,922;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node172: Host802154 {
            @display("p=280,911;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node173: Host802154 {
            @display("p=502,740;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node174: Host802154 {
            @display("p=345,897;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node175: Host802154 {
            @display("p=473,882;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node176: Host802154 {
            @display("p=708,712;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node177: Host802154 {
            @display("p=812,754;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node178: Host802154 {
            @display("p=846,770;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node179: Host802154 {
            @display("p=766,917;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node180: Host802154 {
            @display("p=818,865;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node181: Host802154 {
            @display("p=901,864;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node182: Host802154 {
            @display("p=950,924;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node183: Host802154 {
            @display("p=57,999;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node184: Host802154 {
            @display("p=127,929;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node185: Host802154 {
            @display("p=202,949;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node186: Host802154 {
            @display("p=222,983;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node187: Host802154 {
            @display("p=307,992;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node188: Host802154 {
            @display("p=607,785;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node189: Host802154 {
            @display("p=448,954;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node190: Host802154 {
            @display("p=527,992;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node191: Host802154 {
            @display("p=571,958;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node192: Host802154 {
            @display("p=651,970;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node193: Host802154 {
            @display("p=762,986;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node194: Host802154 {
            @display("p=792,988;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node195: Host802154 {
            @display("p=901,934;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node196: Host802154 {
            @display("p=988,968;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node197: Host802154 {
            @display("p=159,350;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node198: Host802154 {
            @display("p=441,987;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node199: Host802154 {
            @display("p=11,544;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node200: Host802154 {
            @display("p=81,356;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
    connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}
