package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork501 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

        node1: Host802154 {
            @display("p=128,77;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node2: Host802154 {
            @display("p=172,103;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node3: Host802154 {
            @display("p=363,51;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node4: Host802154 {
            @display("p=445,116;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node5: Host802154 {
            @display("p=612,134;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node6: Host802154 {
            @display("p=829,25;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node7: Host802154 {
            @display("p=550,92;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node8: Host802154 {
            @display("p=64,274;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node9: Host802154 {
            @display("p=175,210;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node10: Host802154 {
            @display("p=397,203;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node11: Host802154 {
            @display("p=563,184;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node12: Host802154 {
            @display("p=607,279;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node13: Host802154 {
            @display("p=362,229;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node14: Host802154 {
            @display("p=974,189;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node15: Host802154 {
            @display("p=33,392;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node16: Host802154 {
            @display("p=189,428;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node17: Host802154 {
            @display("p=326,362;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node18: Host802154 {
            @display("p=493,410;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node19: Host802154 {
            @display("p=650,381;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node20: Host802154 {
            @display("p=815,311;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node21: Host802154 {
            @display("p=874,409;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node22: Host802154 {
            @display("p=53,443;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node23: Host802154 {
            @display("p=227,516;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node24: Host802154 {
            @display("p=357,453;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node25: Host802154 {
            @display("p=458,521;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node26: Host802154 {
            @display("p=615,479;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node27: Host802154 {
            @display("p=801,554;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node28: Host802154 {
            @display("p=942,568;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node29: Host802154 {
            @display("p=220,347;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node30: Host802154 {
            @display("p=199,207;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node31: Host802154 {
            @display("p=428,603;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node32: Host802154 {
            @display("p=529,625;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node33: Host802154 {
            @display("p=692,612;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node34: Host802154 {
            @display("p=855,652;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node35: Host802154 {
            @display("p=923,669;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node36: Host802154 {
            @display("p=169,322;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node37: Host802154 {
            @display("p=284,218;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node38: Host802154 {
            @display("p=341,397;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node39: Host802154 {
            @display("p=550,331;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node40: Host802154 {
            @display("p=816,448;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node41: Host802154 {
            @display("p=832,723;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node42: Host802154 {
            @display("p=933,738;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node43: Host802154 {
            @display("p=98,982;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node44: Host802154 {
            @display("p=271,418;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node45: Host802154 {
            @display("p=220,397;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node46: Host802154 {
            @display("p=496,427;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node47: Host802154 {
            @display("p=618,437;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node48: Host802154 {
            @display("p=220,274;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node49: Host802154 {
            @display("p=296,311;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node50: Host802154 {
            @display("p=529,288;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
    connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}
