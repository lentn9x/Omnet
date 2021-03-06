#include "GeoNode.h"

GeoNode::GeoNode() {
    nodeID = 0;
    locationX = 0;
    locationY = 0;
}

GeoNode::GeoNode(double a, double b) {
    nodeID = 0;
    locationX = a;
    locationY = b;
}

GeoNode::GeoNode(long x, double a, double b) {
    nodeID = x;
    locationX = a;
    locationY = b;
}

GeoNode::GeoNode(long x,double a,double b,double g,double z,double k,double c,double v,double t,double y){
    nodeID = x;
    locationX = a;
    locationY = b;
    deg = g;
    chil_loca_x = z;
    chil_loca_y = k;
    chil_deg_1 = t;
    chil_loca_x2 = c;
    chil_loca_y2 = v;
    chil_deg_2 = y;
}

bool GeoNode::operator==(const GeoNode& b) {
    return (nodeID == b.nodeID);
}

bool GeoNode::operator!=(const GeoNode& b) {
    return (nodeID != b.nodeID);
}

double GeoNode::distance(GeoNode a) {
    double d = sqrt(
            pow((locationX - a.locationX), 2)
                    + pow((locationY - a.locationY), 2));
    return d;
}

double GeoNode::distant(GeoNode a,GeoNode b){
    double d = sqrt(
                pow((b.locationX - a.locationX), 2)
                        + pow((b.locationY - a.locationY), 2));
    return d;
}

void GeoNode::pointNode(GeoNode a,int z, int r, double* px1, double* py1){
    double b,c,i,j,k,delta,y1,y2;
    double x1,x2,emp1,emp2,x;
    r = 48;
    b = a.locationX - locationX;
    c = a.locationY - locationY;
    i = b*b + c*c;
    j = -2*c*i;
    k = i*i-4*b*b*r*r;
    delta = sqrt(j*j-4*i*k);
    y1 = (-j-delta)/(4*i);
    y2 = (-j+delta)/(4*i);
    px1[2*z] = locationX+sqrt(r*r-y1*y1);
    px1[2*z+1] = locationX+sqrt(r*r-y2*y2);
    py1[2*z] = locationY+y1;
    py1[2*z+1] = locationY+y2;
    if (abs(px1[2*z]-a.locationX) > r) {
        px1[2*z] = locationX-sqrt(r*r-y1*y1);
    }
    if (abs(px1[2*z+1]-a.locationX) > r) {
        px1[2*z+1] = locationX-sqrt(r*r-y2*y2);
    }
}

double GeoNode::degNode(GeoNode a){
    double d = atan((a.locationY - locationY)/(a.locationX - locationX))*(180/3.14);
    if ((locationX <= a.locationX) && (locationY < a.locationY)) {
        d = 360 - d;
    } else if ((locationX > a.locationX) && (locationY <= a.locationY)) {
        d = 180 - d;
    } else if ((locationX > a.locationX) && (locationY >= a.locationY)) {
        d = 180 - d;
    } else if ((locationX <= a.locationX) && (locationY > a.locationY)) {
        d = -d;
    }
    if (d == 360)
        {d = 0 ;}
    return d;
}

void GeoNode::drawLine(GeoNode a, double baseLineFactor[]) {
    // phuong trinh co dang baseLineFactor[0]x + baseLineFactor[1]y + baseLineFactor[2] = 0
    baseLineFactor[0] = locationY - a.locationY;
    baseLineFactor[1] = a.locationX - locationX;
    baseLineFactor[2] = -baseLineFactor[1] * locationY
            - baseLineFactor[0] * locationX;
}

double GeoNode::distanceToLine(double baseLineFactor[]) {
    double d = fabs(
            baseLineFactor[0] * locationX + baseLineFactor[1] * locationY
                    + baseLineFactor[2])
            / sqrt(pow(baseLineFactor[0], 2) + pow(baseLineFactor[1], 2));
    return d;
}
