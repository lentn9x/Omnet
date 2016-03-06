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