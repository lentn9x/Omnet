cplusplus {{
#include "NetwPkt_m.h"
#include "GeoNode.h"
}}
class noncobject GeoNode;
class NetwPkt;
class LAddress::L3Type extends void;

message GreedyPkt extends NetwPkt
{
    GeoNode destNode;
    GeoNode interNode;
    string route[];
    double length = 0;
}