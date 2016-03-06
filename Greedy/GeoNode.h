#ifndef GEONODE_H_
#define GEONODE_H_
#define MIXIM_INET
#include <math.h>
#include <algorithm>

class GeoNode {
public:

    long nodeID;
    double locationX, locationY;
    double R=100; //ban kinh truyen tin
    double r=40;  //ban kinh cam bien , thoa man 2r <= R

    GeoNode();
    GeoNode(double a, double b);
    GeoNode(long x, double a, double b);
    bool operator==(const GeoNode& b);
    bool operator!=(const GeoNode& b);
    double distance(GeoNode a);
    void drawLine(GeoNode a, double baseLineFactor[]);
    double distanceToLine(double baseLineFactor[]);

};

#endif /* GeoNode_H_ */
