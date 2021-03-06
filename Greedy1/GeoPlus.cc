#include <BaseModule.h>
#include <cenvir.h>
#include <cmessage.h>
#include <cmodule.h>
#include <cnamedobject.h>
#include <cobjectfactory.h>
#include <cownedobject.h>
#include <cpar.h>
#include <cregistrationlist.h>
#include <csimulation.h>
#include <GeoPlus.h>
#include <INETDefs.h>
#include <regmacros.h>
#include <simkerneldefs.h>
#include <simtime.h>
#include <simutil.h>
#include <cstring>
#include <iostream>
#include <SimpleBattery.h>

using std::endl;

Define_Module(GeoPlus);

GeoNode* GeoPlus::findNextNode(GeoNode destNode) {
    double dist = myNode.distance(destNode);
    GeoNode* nextNode = new GeoNode();
    nextNode = &myNode;

    if (nbTable.size() > 0) {
        double minDistance = dist;
        for (unsigned int i = 0; i < nbTable.size(); i++) {
            if (nbTable[i].distanceToLine(baseLineFactor) <= minDistance
                    && nbTable[i].distance(destNode) < dist) {
                nextNode = &nbTable[i];
                minDistance = nbTable[i].distanceToLine(baseLineFactor);
            }
        }
    }
    return nextNode;
}

void GeoPlus::updateNbTable(GeoNode nbNode) {
    bool updateTable = true;
    if (nbTable.size() == 0) {
        nbTable.push_back(nbNode);
    } else {
        for (unsigned int i = 0; i < nbTable.size(); i++) {
            if (nbTable[i] == nbNode) {
                updateTable = false;
                break;
            }
        }
        if (updateTable) {
            nbTable.push_back(nbNode);
        }
    }
}

GeoPlus::netwpkt_ptr_t GeoPlus::encapsMsg(cPacket *appPkt) {
    cPacket* msg = static_cast<cPacket*>(appPkt);
    GreedyPlusPkt* pkt = new GreedyPlusPkt(msg->getName(), DATA);
    cObject* cInfo = msg->removeControlInfo();

    ASSERT(cInfo);
    pkt->setBitLength(headerLength);
    pkt->setSrcAddr(myNetwAddr);
    pkt->setDestAddr(LAddress::L3BROADCAST);

    setDownControlInfo(pkt, LAddress::L2BROADCAST);
    //encapsulate the application packet
    pkt->encapsulate(msg);

    // clean-up
    delete cInfo;

    return pkt;
}

void GeoPlus::initialize(int stage) {
    BaseNetwLayer::initialize(stage);
    tx_interval = par("Tx_interval");
    nbUpdateCnt = 0;
    myMobi = dynamic_cast<IMobility*>(getParentModule()->getSubmodule(
            "mobility"));
    myCor = myMobi->getCurrentPosition();
    myNode.locationX = myCor.x;
    myNode.locationY = myCor.y;
    myNode.nodeID = getNode()->getId();
    if (stage == 0) {
        timerMsg = new cMessage("timer message");
    }
    if (stage == 1) {
        recordScalar("Initial Power",
                dynamic_cast<SimpleBattery*>(getParentModule()->getSubmodule(
                        "battery"))->estimateResidualAbs());
        scheduleAt(simTime() + tx_interval, timerMsg);
    }
}

void GeoPlus::handleSelfMsg(cMessage *msg) {
    if (strcmp(msg->getName(), "timer message") == 0) {
        if (nbUpdateCnt < 5) {
            scheduleAt(simTime() + tx_interval, msg); //schedule self-message
        }

        //Tao va gui goi tin NeighborBroadcast
        NeighborUpdatePkt* pkt = new NeighborUpdatePkt("NbBroadcast");
        pkt->setBitLength(headerLength);
        pkt->setDestAddr(LAddress::L3BROADCAST);
        pkt->setNodeInfo(myNode);
        setDownControlInfo(pkt, LAddress::L2BROADCAST);
        sendDown(pkt);
        nbUpdateCnt++;
    }
}

void GeoPlus::handleUpperMsg(cMessage* msg) {
    if ((nbUpdateCnt == 5)
            && (msg->getKind() == SensorApplLayer::DATA_MESSAGE)) {
        EV << "da vao goi tin" << endl;
        GreedyPlusPkt* greedyPlusPkt;
        greedyPlusPkt = static_cast<GreedyPlusPkt*>(encapsMsg(
                static_cast<cPacket*>(msg)));
        greedyPlusPkt->setName("GreedyPlusPkt");

        GeoNode *destNode = new GeoNode();
        destNode->nodeID = par("destId").longValue();
        destNode->locationX = par("destX").doubleValue();
        destNode->locationY = par("destY").doubleValue();
        greedyPlusPkt->setDestNode(*destNode);

        greedyPlusPkt->setRouteArraySize(1);
        greedyPlusPkt->setRoute(0, getParentModule()->getName());

        myNode.drawLine(*destNode, baseLineFactor);
        greedyPlusPkt->setBaseLineFactor(0, baseLineFactor[0]);
        greedyPlusPkt->setBaseLineFactor(1, baseLineFactor[1]);
        greedyPlusPkt->setBaseLineFactor(2, baseLineFactor[2]);

        GeoNode interNode = *findNextNode(greedyPlusPkt->getDestNode());
        greedyPlusPkt->setInterNode(interNode);
        greedyPlusPkt->setLength(myNode.distance(interNode));

        greedyPlusPkt->setBitLength(headerLength);
        greedyPlusPkt->setDestAddr(LAddress::L3BROADCAST);
        sendDown(greedyPlusPkt);
        EV << "Node ID: " << myNode.nodeID << endl;
        EV << "ID node tiep theo: " << greedyPlusPkt->getInterNode().nodeID
                  << endl;
        EV << "Bat dau gui goi Greedy" << endl;
    } else {
        delete (msg);
    }
}

GreedyPlusPkt* GeoPlus::Mess(cMessage* msg){

            GreedyPlusPkt* greedyPlusPkt;
            greedyPlusPkt = static_cast<GreedyPlusPkt*>(encapsMsg(
                    static_cast<cPacket*>(msg)));
            greedyPlusPkt->setName("GreedyPlusPkt");

            GeoNode *destNode = new GeoNode();
            destNode->nodeID = par("destId").longValue();
            destNode->locationX = par("destX").doubleValue();
            destNode->locationY = par("destY").doubleValue();
            greedyPlusPkt->setDestNode(*destNode);

            greedyPlusPkt->setRouteArraySize(1);
            greedyPlusPkt->setRoute(0, getParentModule()->getName());

            //myNode.drawLine(*destNode, baseLineFactor);
            greedyPlusPkt->setBaseLineFactor(0, baseLineFactor[0]);
            greedyPlusPkt->setBaseLineFactor(1, baseLineFactor[1]);
            greedyPlusPkt->setBaseLineFactor(2, baseLineFactor[2]);

            GeoNode interNode = *findNextNode(greedyPlusPkt->getDestNode());
            greedyPlusPkt->setInterNode(interNode);
            greedyPlusPkt->setLength(myNode.distance(interNode));

            greedyPlusPkt->setBitLength(headerLength);
            greedyPlusPkt->setDestAddr(LAddress::L3BROADCAST);

    return greedyPlusPkt;
}

void GeoPlus::handleLowerMsg(cMessage* msg) {
    double r = 48;
    if (strcmp(msg->getName(), "NbBroadcast") == 0) {
        NeighborUpdatePkt* netwMsg = check_and_cast<NeighborUpdatePkt*>(msg);
        if (LAddress::isL3Broadcast(netwMsg->getDestAddr())) {
            updateNbTable(netwMsg->getNodeInfo());
        }
        EV << "Node ID: " << myNode.nodeID << endl;
        EV << "Cap nhat nbTable: ";
        for (unsigned int i = 0; i < nbTable.size(); i++) {
            EV << nbTable[i].nodeID << " ";
        }
        EV << endl;
        delete (netwMsg);
       if(1){
            unsigned int i,j,n,m;
            for (unsigned int i = 0; i < nbTable.size(); i++){
                myNode.pointNode(nbTable[i],i,r,px1,py1);
            }
            for (i = 0; i < nbTable.size(); i++) nbTable[i].deg = myNode.degNode(nbTable[i]);
            for (i = 0; i < nbTable.size(); i++) center[i] = myNode.degNode(nbTable[i]);
            for (i = 0; i < nbTable.size(); i++) count[i] = i;
            for (i = 0; i < nbTable.size(); i++) {
                GeoNode a;
                a.locationX = px1[2*i];
                a.locationY = py1[2*i];
                nbTable[i].chil_loca_x = px1[2*i];
                nbTable[i].chil_loca_y = py1[2*i];
                shadow[2*i] = myNode.degNode(a);
                nbTable[i].chil_deg_1 = myNode.degNode(a);
                a.locationX = px1[2*i+1];
                a.locationY = py1[2*i+1];
                nbTable[i].chil_loca_x2 = px1[2*i+1];
                nbTable[i].chil_loca_y2 = py1[2*i+1];
                shadow[2*i+1] = myNode.degNode(a);
                nbTable[i].chil_deg_2 = myNode.degNode(a);


                if (nbTable[i].chil_deg_1 > nbTable[i].chil_deg_2) {
                    if (nbTable[i].chil_deg_1 - nbTable[i].chil_deg_2 > 180) {
                        double k;
                        k = nbTable[i].chil_deg_1;
                        nbTable[i].chil_deg_1 = nbTable[i].chil_deg_2;
                        nbTable[i].chil_deg_2 = k;
                        nbTable[i].chil_loca_x = px1[2*i+1];
                        nbTable[i].chil_loca_y = py1[2*i+1];
                        nbTable[i].chil_loca_x2 = px1[2*i];
                        nbTable[i].chil_loca_y2 = py1[2*i];
                    }

                }
                if (nbTable[i].chil_deg_1 < nbTable[i].chil_deg_2) {
                    if (nbTable[i].chil_deg_2 - nbTable[i].chil_deg_1 < 180) {
                        double k;
                        k = nbTable[i].chil_deg_1;
                        nbTable[i].chil_deg_1 = nbTable[i].chil_deg_2;
                        nbTable[i].chil_deg_2 = k;
                        nbTable[i].chil_loca_x = px1[2*i+1];
                        nbTable[i].chil_loca_y = py1[2*i+1];
                        nbTable[i].chil_loca_x2 = px1[2*i];
                        nbTable[i].chil_loca_y2 = py1[2*i];
                    }

                }
            }
            n = nbTable.size();
            for (i=1;  i < n; i++)
                for (j = n-1; j >= i; j--)
                if (center[j] < center[j-1] ) {
                    double k;
                    k = center[j];
                    center[j] = center[j-1];
                    center[j-1] = k;
                    k = count[j];
                    count[j] = count[j-1];
                    count[j-1] = k;
                }
            EV << "Bang nbTable:"<<nbTable.size() <<":"<<myNode.nodeID <<":"<<nbUpdateCnt<< endl;
                                for (unsigned int i = 0; i < nbTable.size(); i++) {
                                    j = count[i];
                                    EV << nbTable[j].nodeID <<"-"<< nbTable[j].locationX <<"-"<< nbTable[j].locationY << "-" << nbTable[j].deg << endl;
                                    EV << "(" << nbTable[j].chil_loca_x << "," << nbTable[j].chil_loca_y << " - " << nbTable[j].chil_deg_1 <<")(" << nbTable[j].chil_loca_x2 << "," << nbTable[j].chil_loca_y2 << " - " << nbTable[j].chil_deg_2 << ")" << endl;
                                }
            }
            EV << "Cap node tao duoc ranh :" << endl;
            int c = 0;
            for (unsigned int i = 0; i < nbTable.size()-1; i++) {
                int j = count[i],k = count[i+1];
                GeoNode a,b;
                a.locationX = nbTable[j].chil_loca_x;
                a.locationY = nbTable[j].chil_loca_y;
                b.locationX = nbTable[k].locationX;
                b.locationY = nbTable[k].locationY;
                double d = myNode.distant(a,b);
                if (d > r) {
                    node1[c] = j;
                    node2[c] = k;
                    c = c + 1;
                }
            }
            for (unsigned int i = 0; i < c; i++) {
                EV << "Cap Node nbTable:" << endl;
                EV << nbTable[node1[i]].nodeID <<"-"<< nbTable[node2[i]].nodeID << endl;
            }
            if (c > 0) {
            for (unsigned int i = 0; i < c; i++) {
            GeoNode a,b,c;int j,k;
            if ((nbUpdateCnt == 5)
                        && (msg->getKind() == SensorApplLayer::DATA_MESSAGE)
                        ) {
                EV << "da vao goi tin" << endl;
                GreedyPlusPkt* greedyPlusPkt = Mess(msg);
                if (greedyPlusPkt->getRouterArraySize() == 0){
                                   a.locationX = myNode.locationX;
                                   a.locationY = myNode.locationY;
                                   a.nodeID = myNode.nodeID;
                                   greedyPlusPkt->setBaseNode(a);
                                   greedyPlusPkt->setRouterArraySize(1);
                                   greedyPlusPkt->setRouter(0,a);
                                }
                                   j = node1[0];
                                   b.locationX = nbTable[j].locationX;
                                   b.locationY = nbTable[j].locationY;
                                   b.nodeID = nbTable[j].nodeID;

                                   greedyPlusPkt->setInterNode(b);

                                   greedyPlusPkt->setDestAddr(LAddress::L3BROADCAST);

                                   greedyPlusPkt->setRouterArraySize(greedyPlusPkt->getRouterArraySize() + 1);
                                   greedyPlusPkt->setRouter(greedyPlusPkt->getRouterArraySize() - 1,b);

                                   setDownControlInfo(greedyPlusPkt, LAddress::L2BROADCAST);
                                   sendDown(greedyPlusPkt);
                        }
                 }
            }
    } else if (strcmp(msg->getName(), "GreedyPlusPkt") == 0) {
//        GreedyPlusPkt* greedyPlusPkt = check_and_cast<GreedyPlusPkt*>(msg);
//        if (greedyPlusPkt->getBaseNode() == myNode) {
//            EV << "Da tim thay ho cam bien Greedy :" << endl;
//            EV << "Duong di gom " << greedyPlusPkt->getRouterArraySize() + 1 << " node (Hop count): ";
//            for (unsigned int i = 0; i < greedyPlusPkt->getRouterArraySize(); i++) {
//                                EV << greedyPlusPkt->getRouter(i).nodeID << " -> ";
//                            }
//            delete (greedyPlusPkt);
//                endSimulation();
//        }
//        EV << "Nhan goi tin GreedyPlus" << endl;
//        EV << "Node ID: " << myNode.nodeID << endl;
//        EV << "ID node tiep theo: " << greedyPlusPkt->getInterNode().nodeID
//                  << endl;

        GreedyPlusPkt* greedyPlusPkt = check_and_cast<GreedyPlusPkt*>(msg);
        EV << "Nhan goi tin GreedyPlus" << endl;
        EV << "Node ID: " << myNode.nodeID << endl;
        EV << "ID node tiep theo: " << greedyPlusPkt->getInterNode().nodeID
                  << endl;

        baseLineFactor[0] = greedyPlusPkt->getBaseLineFactor(0);
        baseLineFactor[1] = greedyPlusPkt->getBaseLineFactor(1);
        baseLineFactor[2] = greedyPlusPkt->getBaseLineFactor(2);

        unsigned int routeSize = greedyPlusPkt->getRouteArraySize(), i;

        if (greedyPlusPkt->getDestNode() != myNode
                && greedyPlusPkt->getInterNode() != myNode) {
            delete (greedyPlusPkt);
        } else {
            if (greedyPlusPkt->getDestNode() == myNode) {
                EV << "Goi tin GreedyPlus da toi dich: " << endl;
                EV << "Duong di gom " << routeSize + 1 << " node (Hop count): ";
                for (i = 0; i < routeSize; i++) {
                    EV << greedyPlusPkt->getRoute(i) << " -> ";
                }
                EV << this->getParentModule()->getName() << endl;
                EV << "Do dai duong di la: " << greedyPlusPkt->getLength()
                          << endl;

                delete (greedyPlusPkt);
                endSimulation();
            } else {
                GeoNode* interNode = findNextNode(greedyPlusPkt->getDestNode());
                if (interNode == &myNode) {
                    EV << "Bi tac o day!!!" << endl;
                    EV << "Da di qua " << routeSize + 1
                              << " node (Hop count): ";
                    for (i = 0; i < routeSize; i++) {
                        EV << greedyPlusPkt->getRoute(i) << " -> ";
                    }
                    EV << this->getParentModule()->getName() << endl;

                    delete (greedyPlusPkt);
                    endSimulation();
                } else {
                    cObject * const pCtrlInfo =
                            greedyPlusPkt->removeControlInfo();
                    if (pCtrlInfo != NULL) {
                        delete pCtrlInfo;
                    }
                    greedyPlusPkt->setInterNode(*interNode);
                    greedyPlusPkt->setDestAddr(LAddress::L3BROADCAST);
                    greedyPlusPkt->setLength(
                            greedyPlusPkt->getLength()
                                    + myNode.distance(*interNode));

                    greedyPlusPkt->setRouteArraySize(routeSize + 1);
                    greedyPlusPkt->setRoute(routeSize,
                            getParentModule()->getName());

                    setDownControlInfo(greedyPlusPkt, LAddress::L2BROADCAST);
                    sendDown(greedyPlusPkt);
                    EV << "Chuyen tiep goi tin GreedyPlus" << endl;
                }
            }
        }
    }
}

void GeoPlus::finish() {
    recordScalar("Remaining Power",
            dynamic_cast<SimpleBattery*>(getParentModule()->getSubmodule(
                    "battery"))->estimateResidualAbs());
//    for (unsigned int i = 0; i < nbTable.size(); i++) {
//        recordScalar("ID", nbTable[i].nodeID);
//        recordScalar("locationX", nbTable[i].locationX);
//        recordScalar("locationY", nbTable[i].locationY);
//    }
    BaseNetwLayer::finish();

}
