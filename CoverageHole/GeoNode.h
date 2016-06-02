#ifndef GEONODE_H_
#define GEONODE_H_
#define MIXIM_INET
#include <math.h>
#include <algorithm>

class GeoNode {
public:

    long nodeID;
    double locationX, locationY;
    double deg,chil_loca_x,chil_loca_y,chil_deg_1,chil_loca_x2,chil_loca_y2,chil_deg_2;

        GeoNode();
        GeoNode(double a, double b);
        GeoNode(long x, double a, double b);
        GeoNode(long x,double a,double b,double g,double z,double k,double c,double v,double t,double y);
        bool operator==(const GeoNode& b);
        bool operator!=(const GeoNode& b);
        double distance(GeoNode a);
        double distant(GeoNode a,GeoNode b);
        void drawLine(GeoNode a, double baseLineFactor[]);
        double distanceToLine(double baseLineFactor[]);
        double degNode(GeoNode a);
        void pointNode(GeoNode a,int z, int r, double* px1, double* py1);
};

#endif /* GeoNode_H_ */
