package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork1 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

		node1: Host802154 {
			@display("p=9,16;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node2: Host802154 {
			@display("p=43,30;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node3: Host802154 {
			@display("p=84,17;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node4: Host802154 {
			@display("p=31,37;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node5: Host802154 {
			@display("p=59,45;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node6: Host802154 {
			@display("p=89,61;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node7: Host802154 {
			@display("p=18,75;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node8: Host802154 {
			@display("p=62,77;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node9: Host802154 {
			@display("p=68,95;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node10: Host802154 {
			@display("p=3,6;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}