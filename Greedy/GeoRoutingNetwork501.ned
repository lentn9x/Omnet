package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork501 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

        node1: Host802154 {
            @display("p=261,210;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node2: Host802154 {
            @display("p=635,667;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node3: Host802154 {
            @display("p=363,51;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node4: Host802154 {
            @display("p=445,116;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node5: Host802154 {
            @display("p=299,131;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node6: Host802154 {
            @display("p=514,43;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node7: Host802154 {
            @display("p=580,125;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node8: Host802154 {
            @display("p=64,274;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node9: Host802154 {
            @display("p=175,210;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node10: Host802154 {
            @display("p=18,174;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node11: Host802154 {
            @display("p=363,428;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node12: Host802154 {
            @display("p=933,473;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node13: Host802154 {
            @display("p=362,229;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node14: Host802154 {
            @display("p=514,195;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node15: Host802154 {
            @display("p=33,392;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node16: Host802154 {
            @display("p=189,428;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node17: Host802154 {
            @display("p=473,326;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node18: Host802154 {
            @display("p=656,927;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node19: Host802154 {
            @display("p=650,396;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node20: Host802154 {
            @display("p=580,341;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node21: Host802154 {
            @display("p=607,249;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node22: Host802154 {
            @display("p=53,443;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node23: Host802154 {
            @display("p=227,516;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node24: Host802154 {
            @display("p=299,377;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node25: Host802154 {
            @display("p=499,531;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node26: Host802154 {
            @display("p=565,458;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node27: Host802154 {
            @display("p=580,568;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node28: Host802154 {
            @display("p=844,583;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node29: Host802154 {
            @display("p=79,568;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node30: Host802154 {
            @display("p=780,362;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node31: Host802154 {
            @display("p=422,583;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node32: Host802154 {
            @display("p=529,625;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node33: Host802154 {
            @display("p=712,583;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node34: Host802154 {
            @display("p=855,652;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node35: Host802154 {
            @display("p=684,473;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node36: Host802154 {
            @display("p=169,322;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node37: Host802154 {
            @display("p=870,289;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node38: Host802154 {
            @display("p=314,598;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node39: Host802154 {
            @display("p=378,516;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node40: Host802154 {
            @display("p=780,473;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node41: Host802154 {
            @display("p=742,715;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node42: Host802154 {
            @display("p=815,715;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node43: Host802154 {
            @display("p=227,942;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node44: Host802154 {
            @display("p=727,264;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node45: Host802154 {
            @display("p=786,543;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node46: Host802154 {
            @display("p=445,396;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node47: Host802154 {
            @display("p=154,640;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node48: Host802154 {
            @display("p=712,652;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node49: Host802154 {
            @display("p=299,289;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node50: Host802154 {
            @display("p=443,259;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node51: Host802154 {
            @display("p=363,730;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node52: Host802154 {
            @display("p=189,730;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node53: Host802154 {
            @display("p=400,969;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node54: Host802154 {
            @display("p=53,745;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node55: Host802154 {
            @display("p=227,818;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node56: Host802154 {
            @display("p=499,833;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node57: Host802154 {
            @display("p=565,760;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node58: Host802154 {
            @display("p=79,870;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node59: Host802154 {
            @display("p=870,793;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node60: Host802154 {
            @display("p=529,927;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node61: Host802154 {
            @display("p=830,969;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node62: Host802154 {
            @display("p=378,818;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node63: Host802154 {
            @display("p=757,855;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node64: Host802154 {
            @display("p=666,60;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node65: Host802154 {
            @display("p=963,118;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node66: Host802154 {
            @display("p=801,69;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node67: Host802154 {
            @display("p=886,113;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node68: Host802154 {
            @display("p=735,139;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node69: Host802154 {
            @display("p=828,193;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node70: Host802154 {
            @display("p=844,428;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node71: Host802154 {
            @display("p=905,28;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node72: Host802154 {
            @display("p=948,208;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node73: Host802154 {
            @display("p=160,84;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node74: Host802154 {
            @display("p=886,885;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node75: Host802154 {
            @display("p=613,833;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node76: Host802154 {
            @display("p=679,760;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node77: Host802154 {
            @display("p=948,613;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node78: Host802154 {
            @display("p=944,969;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node79: Host802154 {
            @display("p=978,793;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node80: Host802154 {
            @display("p=933,396;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node81: Host802154 {
            @display("p=38,969;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node82: Host802154 {
            @display("p=452,745;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
    connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}
