package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork50 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

        node1: Host802154 {
            @display("p=550,613;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node2: Host802154 {
            @display("p=465,613;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node3: Host802154 {
            @display("p=458,429;i=misc/node2,red,100;b=3,5;is=vs;i2=-");
        }
        node4: Host802154 {
            @display("p=524,43;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node5: Host802154 {
            @display("p=704,136;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node6: Host802154 {
            @display("p=785,71;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node7: Host802154 {
            @display("p=756,267;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node8: Host802154 {
            @display("p=331,369;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node9: Host802154 {
            @display("p=518,282;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node10: Host802154 {
            @display("p=595,43;i=misc/node2,red,100;b=3,5;is=vs;i2=-");
        }
        node11: Host802154 {
            @display("p=503,199;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node12: Host802154 {
            @display("p=659,95;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node13: Host802154 {
            @display("p=842,190;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node14: Host802154 {
            @display("p=410,328;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node15: Host802154 {
            @display("p=306,444;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node16: Host802154 {
            @display("p=503,121;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node17: Host802154 {
            @display("p=198,160;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node18: Host802154 {
            @display("p=509,369;i=misc/node2,#FF8040,100;b=3,5;is=vs;i2=-");
        }
        node19: Host802154 {
            @display("p=733,199;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node20: Host802154 {
            @display("p=771,343;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node21: Host802154 {
            @display("p=443,392;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node22: Host802154 {
            @display("p=158,557;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node23: Host802154 {
            @display("p=261,267;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node24: Host802154 {
            @display("p=99,542;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node25: Host802154 {
            @display("p=201,714;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node26: Host802154 {
            @display("p=114,407;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node27: Host802154 {
            @display("p=261,636;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node28: Host802154 {
            @display("p=198,282;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node29: Host802154 {
            @display("p=283,145;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node30: Host802154 {
            @display("p=143,313;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node31: Host802154 {
            @display("p=539,665;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node32: Host802154 {
            @display("p=379,684;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node33: Host802154 {
            @display("p=313,650;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node34: Host802154 {
            @display("p=749,476;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node35: Host802154 {
            @display("p=143,429;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node36: Host802154 {
            @display("p=371,145;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node37: Host802154 {
            @display("p=807,578;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node38: Host802154 {
            @display("p=851,407;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node39: Host802154 {
            @display("p=158,166;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node40: Host802154 {
            @display("p=836,239;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node41: Host802154 {
            @display("p=622,593;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node42: Host802154 {
            @display("p=771,392;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node43: Host802154 {
            @display("p=377,36;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node44: Host802154 {
            @display("p=214,684;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node45: Host802154 {
            @display("p=756,628;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node46: Host802154 {
            @display("p=851,542;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
        node47: Host802154 {
            @display("p=695,542;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node48: Host802154 {
            @display("p=384,593;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node49: Host802154 {
            @display("p=321,527;i=misc/node2,blue,100;b=3,5;is=vs;i2=-");
        }
        node50: Host802154 {
            @display("p=283,224;i=misc/node2,,0;b=3,5;is=vs;i2=-");
        }
    connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}
