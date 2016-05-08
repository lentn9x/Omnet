package georouting;

import org.mixim.base.modules.BaseNetwork;

network GeoRoutingNetwork1002 extends BaseNetwork
{
    parameters:
        @display("bgb=1000,1000;bgl=2");

    submodules:

		node1: Host802154 {
			@display("p=34,60;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node2: Host802154 {
			@display("p=86,63;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node3: Host802154 {
			@display("p=198,3;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node4: Host802154 {
			@display("p=227,20;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node5: Host802154 {
			@display("p=339,34;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node6: Host802154 {
			@display("p=376,66;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node7: Host802154 {
			@display("p=430,16;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node8: Host802154 {
			@display("p=499,60;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node9: Host802154 {
			@display("p=627,67;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node10: Host802154 {
			@display("p=677,16;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node11: Host802154 {
			@display("p=13,95;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node12: Host802154 {
			@display("p=90,106;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node13: Host802154 {
			@display("p=147,111;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node14: Host802154 {
			@display("p=233,92;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node15: Host802154 {
			@display("p=286,134;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node16: Host802154 {
			@display("p=387,96;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node17: Host802154 {
			@display("p=465,136;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node18: Host802154 {
			@display("p=519,127;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node19: Host802154 {
			@display("p=590,78;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node20: Host802154 {
			@display("p=652,94;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node21: Host802154 {
			@display("p=21,196;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node22: Host802154 {
			@display("p=82,203;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node23: Host802154 {
			@display("p=173,187;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node24: Host802154 {
			@display("p=264,202;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node25: Host802154 {
			@display("p=342,173;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node26: Host802154 {
			@display("p=371,176;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node27: Host802154 {
			@display("p=451,147;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node28: Host802154 {
			@display("p=537,188;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node29: Host802154 {
			@display("p=602,208;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node30: Host802154 {
			@display("p=696,185;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node31: Host802154 {
			@display("p=66,245;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node32: Host802154 {
			@display("p=97,232;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node33: Host802154 {
			@display("p=169,243;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node34: Host802154 {
			@display("p=251,240;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node35: Host802154 {
			@display("p=310,233;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node36: Host802154 {
			@display("p=387,211;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node37: Host802154 {
			@display("p=484,253;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node38: Host802154 {
			@display("p=494,270;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node39: Host802154 {
			@display("p=583,229;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node40: Host802154 {
			@display("p=637,253;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node41: Host802154 {
			@display("p=38,295;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node42: Host802154 {
			@display("p=71,339;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node43: Host802154 {
			@display("p=144,320;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node44: Host802154 {
			@display("p=244,309;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node45: Host802154 {
			@display("p=289,346;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node46: Host802154 {
			@display("p=385,311;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node47: Host802154 {
			@display("p=448,335;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node48: Host802154 {
			@display("p=549,336;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node49: Host802154 {
			@display("p=595,348;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node50: Host802154 {
			@display("p=648,329;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node51: Host802154 {
			@display("p=20,353;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node52: Host802154 {
			@display("p=73,380;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node53: Host802154 {
			@display("p=208,411;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node54: Host802154 {
			@display("p=223,398;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node55: Host802154 {
			@display("p=323,391;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node56: Host802154 {
			@display("p=394,378;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node57: Host802154 {
			@display("p=457,418;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node58: Host802154 {
			@display("p=557,401;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node59: Host802154 {
			@display("p=580,357;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node60: Host802154 {
			@display("p=658,407;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node61: Host802154 {
			@display("p=65,489;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node62: Host802154 {
			@display("p=84,464;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node63: Host802154 {
			@display("p=175,489;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node64: Host802154 {
			@display("p=225,472;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node65: Host802154 {
			@display("p=281,428;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node66: Host802154 {
			@display("p=403,426;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node67: Host802154 {
			@display("p=445,464;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node68: Host802154 {
			@display("p=554,424;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node69: Host802154 {
			@display("p=616,427;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node70: Host802154 {
			@display("p=671,430;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node71: Host802154 {
			@display("p=16,516;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node72: Host802154 {
			@display("p=92,553;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node73: Host802154 {
			@display("p=197,540;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node74: Host802154 {
			@display("p=227,527;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node75: Host802154 {
			@display("p=338,537;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node76: Host802154 {
			@display("p=397,542;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node77: Host802154 {
			@display("p=440,538;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node78: Host802154 {
			@display("p=497,508;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node79: Host802154 {
			@display("p=576,535;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node80: Host802154 {
			@display("p=656,493;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node81: Host802154 {
			@display("p=32,576;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node82: Host802154 {
			@display("p=109,565;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node83: Host802154 {
			@display("p=185,597;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node84: Host802154 {
			@display("p=253,629;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node85: Host802154 {
			@display("p=336,592;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node86: Host802154 {
			@display("p=370,620;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node87: Host802154 {
			@display("p=436,570;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node88: Host802154 {
			@display("p=542,562;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node89: Host802154 {
			@display("p=582,561;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node90: Host802154 {
			@display("p=641,594;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node91: Host802154 {
			@display("p=34,698;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node92: Host802154 {
			@display("p=89,668;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node93: Host802154 {
			@display("p=168,648;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node94: Host802154 {
			@display("p=233,635;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node95: Host802154 {
			@display("p=347,636;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node96: Host802154 {
			@display("p=411,648;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node97: Host802154 {
			@display("p=474,682;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node98: Host802154 {
			@display("p=553,655;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node99: Host802154 {
			@display("p=583,641;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		node100: Host802154 {
			@display("p=635,685;i=misc/node2,,0;b=3,5;is=vs;i2=-");
		}
		connections allowunconnected:
		//	all connections and gates are to be generated dynamically
}