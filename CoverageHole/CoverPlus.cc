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
#include <CoverPlus.h>
#include <INETDefs.h>
#include <regmacros.h>
#include <simkerneldefs.h>
#include <simtime.h>
#include <simutil.h>
#include <cstring>
#include <iostream>
#include <SimpleBattery.h>

using std::endl;

Define_Module(CoverPlus);

GeoNode* CoverPlus::findNextNode(GeoNode destNode) {
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

void CoverPlus::updateNbTable(GeoNode nbNode) {
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

CoverPlus::netwpkt_ptr_t CoverPlus::encapsMsg(cPacket *appPkt) {
    cPacket* msg = static_cast<cPacket*>(appPkt);
    CoveragePkt* pkt = new CoveragePkt(msg->getName(), DATA);
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

void CoverPlus::initialize(int stage) {
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

void CoverPlus::handleSelfMsg(cMessage *msg) {
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

void CoverPlus::handleUpperMsg(cMessage* msg) {
}

void CoverPlus::findBaseNode() {

    double r = 48;
    unsigned int i, j, n, m;
    for (unsigned int i = 0; i < nbTable.size(); i++) {
        myNode.pointNode(nbTable[i], i, r, px1, py1);
    }
    for (i = 0; i < nbTable.size(); i++)
        nbTable[i].deg = myNode.degNode(nbTable[i]);
    for (i = 0; i < nbTable.size(); i++)
        center[i] = myNode.degNode(nbTable[i]);
    for (i = 0; i < nbTable.size(); i++)
        count[i] = i;
    for (i = 0; i < nbTable.size(); i++) {
        GeoNode a;
        a.locationX = px1[2 * i];
        a.locationY = py1[2 * i];
        nbTable[i].chil_loca_x = px1[2 * i];
        nbTable[i].chil_loca_y = py1[2 * i];
        shadow[2 * i] = myNode.degNode(a);
        nbTable[i].chil_deg_1 = myNode.degNode(a);
        a.locationX = px1[2 * i + 1];
        a.locationY = py1[2 * i + 1];
        nbTable[i].chil_loca_x2 = px1[2 * i + 1];
        nbTable[i].chil_loca_y2 = py1[2 * i + 1];
        shadow[2 * i + 1] = myNode.degNode(a);
        nbTable[i].chil_deg_2 = myNode.degNode(a);

        if (nbTable[i].chil_deg_1 > nbTable[i].chil_deg_2) {
            if (nbTable[i].chil_deg_1 - nbTable[i].chil_deg_2 > 180) {
                double k;
                k = nbTable[i].chil_deg_1;
                nbTable[i].chil_deg_1 = nbTable[i].chil_deg_2;
                nbTable[i].chil_deg_2 = k;
                nbTable[i].chil_loca_x = px1[2 * i + 1];
                nbTable[i].chil_loca_y = py1[2 * i + 1];
                nbTable[i].chil_loca_x2 = px1[2 * i];
                nbTable[i].chil_loca_y2 = py1[2 * i];
            }

        }
        if (nbTable[i].chil_deg_1 < nbTable[i].chil_deg_2) {
            if (nbTable[i].chil_deg_2 - nbTable[i].chil_deg_1 < 180) {
                double k;
                k = nbTable[i].chil_deg_1;
                nbTable[i].chil_deg_1 = nbTable[i].chil_deg_2;
                nbTable[i].chil_deg_2 = k;
                nbTable[i].chil_loca_x = px1[2 * i + 1];
                nbTable[i].chil_loca_y = py1[2 * i + 1];
                nbTable[i].chil_loca_x2 = px1[2 * i];
                nbTable[i].chil_loca_y2 = py1[2 * i];
            }
        }
    }

    n = nbTable.size();
    for (i = 1; i < n; i++)
        for (j = n - 1; j >= i; j--)
            if (center[j] < center[j - 1]) {
                double k;
                k = center[j];
                center[j] = center[j - 1];
                center[j - 1] = k;
                k = count[j];
                count[j] = count[j - 1];
                count[j - 1] = k;
            }
    EV << "Bang nbTable:" << nbTable.size() << ":" << myNode.nodeID << ":"
              << myNode.locationX << "-" << myNode.locationY << ":"
              << nbUpdateCnt << endl;
    for (unsigned int i = 0; i < nbTable.size(); i++) {
        j = count[i];
        EV << nbTable[j].nodeID << "-" << nbTable[j].locationX << "-"
                  << nbTable[j].locationY << "-" << nbTable[j].deg << endl;
        EV << "(" << nbTable[j].chil_loca_x << "," << nbTable[j].chil_loca_y
                  << " - " << nbTable[j].chil_deg_1 << ")("
                  << nbTable[j].chil_loca_x2 << "," << nbTable[j].chil_loca_y2
                  << " - " << nbTable[j].chil_deg_2 << ")" << endl;
    }
    EV << "Cap node tao duoc ranh :" << endl;
    int c = 0;
    EV << "nbTAble.size" << nbTable.size() << endl;
    for (unsigned int i = 0; i < nbTable.size(); i++) {
        EV << "danh sach gia tri : " << nbTable[count[i]].nodeID - 3 << " " << i
                  << endl;
    }
    int p = nbTable.size();
    if (p > 2) {
        p = p + 1;
    }
    EV << p << endl;
    couple = 0;
    for (unsigned int i = 1; i < p; i++) {
        int j = count[i - 1], k = count[i];
        GeoNode a, b;
        if (i == nbTable.size()) {
            k = count[0];
        }
        a.locationX = nbTable[j].chil_loca_x;
        a.locationY = nbTable[j].chil_loca_y;
        b.locationX = nbTable[k].locationX;
        b.locationY = nbTable[k].locationY;
        double d = myNode.distant(a, b);
        if (d > r) {
            node1[couple] = j;
            node2[couple] = k;
            if (nbTable[k].deg - nbTable[j].deg > 180) {
                node1[couple] = k;
                node2[couple] = j;
            }
            couple = couple + 1;
        }
    }
    for (unsigned int i = 0; i < couple; i++) {
        EV << "Cap Node nbTable:" << endl;
        EV << nbTable[node1[i]].nodeID - 3 << "-"
                  << nbTable[node2[i]].nodeID - 3 << endl;
    }
}

void CoverPlus::handleLowerMsg(cMessage* msg) {

    findBaseNode();
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

        if (nbUpdateCnt >= 5 && couple) {
            CoveragePkt* coveragePkt = new CoveragePkt();
            coveragePkt->setName("CoveragePkt");

            EV << "can thiep vao day" << endl;

            GeoNode *destNode = new GeoNode();
            destNode->nodeID = par("destId").longValue();
            destNode->locationX = par("destX").doubleValue();
            destNode->locationY = par("destY").doubleValue();
            coveragePkt->setDestNode(*destNode);

            coveragePkt->setRouteArraySize(1);
            coveragePkt->setRoute(0, getParentModule()->getName());

            for (int i = 0; i < couple; i++) {

                CoveragePkt* clone = (CoveragePkt*) coveragePkt->dup();
                GeoNode a, b;

                a.locationX = myNode.locationX;
                a.locationY = myNode.locationY;
                a.nodeID = myNode.nodeID;
                clone->setBaseNode(a);
                clone->setRouterArraySize(1);
                clone->setRouter(0, a);

                int k = node1[i];
                b.locationX = nbTable[k].locationX;
                b.locationY = nbTable[k].locationY;
                b.nodeID = nbTable[k].nodeID;

                clone->setInterNode(b);

                clone->setRouter(clone->getRouterArraySize() - 1, b);

//                coveragePkt->setLength(myNode.distance(interNode));

                clone->setBitLength(headerLength);
                clone->setDestAddr(LAddress::L3BROADCAST);

                setDownControlInfo(clone, LAddress::L2BROADCAST);
                sendDown(clone);
                EV << "Node ID: " << myNode.nodeID << endl;
                EV << "ID node tiep theo: " << clone->getInterNode().nodeID
                          << endl;
                EV << "Bat dau gui goi Coverage" << endl;
            }
        }
    }

    else if (strcmp(msg->getName(), "CoveragePkt") == 0) {
        CoveragePkt* coveragePkt = check_and_cast<CoveragePkt*>(msg);
        unsigned int routeSize = coveragePkt->getRouteArraySize(), i;
        unsigned int routerSize = coveragePkt->getRouterArraySize(), j;

        EV << "Nhan goi tin Coverage" << endl;
        EV << "Node ID: " << myNode.nodeID << endl;
        EV << "ID Node tiep theo: " << coveragePkt->getInterNode().nodeID
                  << endl;



// <--------------------------------------------------------------------------->

        if (coveragePkt->getInterNode() != myNode) {
            EV << "here" << endl;
            delete (coveragePkt);
        } else {
            bool check[100], checkout;
            checkout = true;
            for (int i = 0; i < 100; i++) {
                check[i] = true;
            }
            {
                EV << "vao den day roi, routerSize = " << routerSize << endl;
                if ((coveragePkt->getBaseNode() == myNode)
                        && (routerSize > 5)) {
                    for (i = 0; i < routerSize; i++)
                    if (check[coveragePkt->getRouter(i).nodeID] == true) {
                        check[coveragePkt->getRouter(i).nodeID] = false;
                    } else {
                        checkout = false;
                    }
//                    int t=0;
//                    for (i = 0; i < routerSize - 1; i++){
//                        int p = coveragePkt->getRouter(i).nodeID;
//                        if (coveragePkt->getTracker(p) == 1){
//                           t++;
//                        }
//                    }
//                    if (t == routerSize - 1) {
//                        checkout == false;
//                    }
                    if (checkout == true){
                    EV << "ok: " << endl;
                    for (i = 0; i < routerSize - 1; i++) {
                        EV << "node" << coveragePkt->getRouter(i).nodeID - 3
                                  << ", ";
                        int p = coveragePkt->getRouter(i).nodeID;
                       // coveragePkt->setTracker(p) = 1;
                    }
                    EV << "node" << coveragePkt->getRouter(i).nodeID - 3 << endl;
                    }
//                endSimulation();
                } else {
                    GeoNode* interNode = findNextNode(
                            coveragePkt->getDestNode());

                    cObject * const pCtrlInfo =
                            coveragePkt->removeControlInfo();
                    if (pCtrlInfo != NULL) {
                        delete pCtrlInfo;
                    }
                    coveragePkt->setInterNode(*interNode);
                    coveragePkt->setDestAddr(LAddress::L3BROADCAST);
                    coveragePkt->setLength(
                            coveragePkt->getLength()
                                    + myNode.distance(*interNode));

                    coveragePkt->setRouteArraySize(routeSize + 1);
                    coveragePkt->setRoute(routeSize,
                            getParentModule()->getName());
                    EV << "couple" << couple << endl;
                    for (i = 0; i < couple; i++) {

                        CoveragePkt* clone =
                                (CoveragePkt*) coveragePkt->dup();
                        GeoNode a, b;

                        if ((clone->getRouterArraySize() == 0)
                                && (couple > 0)) {
                            a.locationX = myNode.locationX;
                            a.locationY = myNode.locationY;
                            a.nodeID = myNode.nodeID;
                            clone->setBaseNode(a);
                            clone->setRouterArraySize(1);
                            clone->setRouter(0, a);
                        }

                        int k = node1[i];
                        b.locationX = nbTable[k].locationX;
                        b.locationY = nbTable[k].locationY;
                        b.nodeID = nbTable[k].nodeID;

                        clone->setInterNode(b);

                        clone->setRouterArraySize(
                                clone->getRouterArraySize() + 1);
                        clone->setRouter(clone->getRouterArraySize() - 1, b);

                        setDownControlInfo(clone, LAddress::L2BROADCAST);
                        sendDown(clone);
                        EV << "Chuyen tiep goi tin Coverage" << endl;
                    }
                }
            }
        }
    }
}

void CoverPlus::finish() {
//    recordScalar("Remaining Power",
//            dynamic_cast<SimpleBattery*>(getParentModule()->getSubmodule(
//                    "battery"))->estimateResidualAbs());
//    for (unsigned int i = 0; i < nbTable.size(); i++) {
//        recordScalar("ID", nbTable[i].nodeID);
//        recordScalar("locationX", nbTable[i].locationX);
//        recordScalar("locationY", nbTable[i].locationY);
//    }

    BaseNetwLayer::finish();
    EV << "su kien cuoi cung" << endl;
}
