package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork100 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

        node1: Host802154 {
            @display("p=62,678;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node2: Host802154 {
            @display("p=346,478;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node3: Host802154 {
            @display("p=249,668;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node4: Host802154 {
            @display("p=118,680;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node5: Host802154 {
            @display("p=88,824;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node6: Host802154 {
            @display("p=512,502;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node7: Host802154 {
            @display("p=296,808;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node8: Host802154 {
            @display("p=212,610;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node9: Host802154 {
            @display("p=423,502;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node10: Host802154 {
            @display("p=32,30;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node11: Host802154 {
            @display("p=155,557;i=misc/node2,#8000FF,100;b=3,5;is=vs;i2=-");
        }
        node12: Host802154 {
            @display("p=155,653;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node13: Host802154 {
            @display("p=346,678;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node14: Host802154 {
            @display("p=196,487;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node15: Host802154 {
            @display("p=249,701;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node16: Host802154 {
            @display("p=296,719;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node17: Host802154 {
            @display("p=172,780;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node18: Host802154 {
            @display("p=572,502;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node19: Host802154 {
            @display("p=384,780;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node20: Host802154 {
            @display("p=668,197;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node21: Host802154 {
            @display("p=423,173;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node22: Host802154 {
            @display("p=423,253;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node23: Host802154 {
            @display("p=124,125;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node24: Host802154 {
            @display("p=212,268;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node25: Host802154 {
            @display("p=196,188;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node26: Host802154 {
            @display("p=124,246;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node27: Host802154 {
            @display("p=254,369;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node28: Host802154 {
            @display("p=280,158;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node29: Host802154 {
            @display("p=374,224;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node30: Host802154 {
            @display("p=469,110;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node31: Host802154 {
            @display("p=608,261;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node32: Host802154 {
            @display("p=296,330;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node33: Host802154 {
            @display("p=512,330;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node34: Host802154 {
            @display("p=602,182;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node35: Host802154 {
            @display("p=584,705;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node36: Host802154 {
            @display("p=584,625;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node37: Host802154 {
            @display("p=619,321;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node38: Host802154 {
            @display("p=774,197;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node39: Host802154 {
            @display("p=384,930;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node40: Host802154 {
            @display("p=365,20;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node41: Host802154 {
            @display("p=484,22;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node42: Host802154 {
            @display("p=572,43;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node43: Host802154 {
            @display("p=733,286;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node44: Host802154 {
            @display("p=656,625;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node45: Host802154 {
            @display("p=790,354;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node46: Host802154 {
            @display("p=563,454;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node47: Host802154 {
            @display("p=676,694;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node48: Host802154 {
            @display("p=731,580;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node49: Host802154 {
            @display("p=646,855;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node50: Host802154 {
            @display("p=484,855;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node51: Host802154 {
            @display("p=557,912;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node52: Host802154 {
            @display("p=241,572;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node53: Host802154 {
            @display("p=602,780;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node54: Host802154 {
            @display("p=539,738;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node55: Host802154 {
            @display("p=176,330;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node56: Host802154 {
            @display("p=337,386;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node57: Host802154 {
            @display("p=280,415;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node58: Host802154 {
            @display("p=448,345;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node59: Host802154 {
            @display("p=62,239;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node60: Host802154 {
            @display("p=41,401;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node61: Host802154 {
            @display("p=88,502;i=misc/node2,red,100;b=3,5;is=vs;i2=-");
        }
        node62: Host802154 {
            @display("p=327,595;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node63: Host802154 {
            @display("p=280,469;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node64: Host802154 {
            @display("p=241,454;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node65: Host802154 {
            @display("p=243,422;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node66: Host802154 {
            @display("p=161,407;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node67: Host802154 {
            @display("p=634,493;i=misc/node2,red,100;b=3,5;is=vs;i2=-");
        }
        node68: Host802154 {
            @display("p=697,949;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node69: Host802154 {
            @display("p=709,780;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node70: Host802154 {
            @display("p=788,752;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node71: Host802154 {
            @display("p=816,719;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node72: Host802154 {
            @display("p=656,386;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node73: Host802154 {
            @display("p=759,517;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node74: Host802154 {
            @display("p=746,454;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node75: Host802154 {
            @display("p=852,312;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node76: Host802154 {
            @display("p=807,292;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node77: Host802154 {
            @display("p=893,246;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node78: Host802154 {
            @display("p=748,18;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node79: Host802154 {
            @display("p=608,110;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node80: Host802154 {
            @display("p=554,25;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node81: Host802154 {
            @display("p=497,47;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node82: Host802154 {
            @display("p=970,286;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node83: Host802154 {
            @display("p=903,478;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node84: Host802154 {
            @display("p=903,311;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node85: Host802154 {
            @display("p=709,407;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node86: Host802154 {
            @display("p=947,752;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node87: Host802154 {
            @display("p=856,862;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node88: Host802154 {
            @display("p=804,847;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node89: Host802154 {
            @display("p=539,793;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node90: Host802154 {
            @display("p=656,918;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node91: Host802154 {
            @display("p=608,958;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node92: Host802154 {
            @display("p=668,143;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node93: Host802154 {
            @display("p=497,625;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node94: Host802154 {
            @display("p=408,610;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node95: Host802154 {
            @display("p=786,66;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node96: Host802154 {
            @display("p=871,26;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node97: Host802154 {
            @display("p=804,927;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node98: Host802154 {
            @display("p=746,870;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node99: Host802154 {
            @display("p=408,716;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node100: Host802154 {
            @display("p=587,401;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
    connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}
