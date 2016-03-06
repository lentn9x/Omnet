cplusplus {{
#include "NetwPkt_m.h"
#include "GeoNode.h"
}}
class noncobject GeoNode;
class NetwPkt;
class LAddress::L3Type extends void;

message GreedyPlusPkt extends NetwPkt
{
    GeoNode destNode;
    GeoNode interNode;
    GeoNode route[];
    double length = 0;
    double baseLineFactor[3];
}