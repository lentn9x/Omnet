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
#include <GeoBasic.h>
#include <INETDefs.h>
#include <regmacros.h>
#include <simkerneldefs.h>
#include <simtime.h>
#include <simutil.h>
#include <cstring>
#include <iostream>
#include <SimpleBattery.h>

using std::endl;

Define_Module(GeoBasic);

GeoNode* GeoBasic::findNextNode(GeoNode destNode) {
    double dist = myNode.distance(destNode);
    GeoNode* nextNode = new GeoNode();
    nextNode = &myNode;

    for (unsigned int i = 0; i < nbTable.size(); i++) {
        if (nbTable[i].distance(destNode) < dist) {
            nextNode = &nbTable[i];
            dist = nbTable[i].distance(destNode);
        }
    }
    return nextNode;
}

void GeoBasic::updateNbTable(GeoNode nbNode) {
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

GeoBasic::netwpkt_ptr_t GeoBasic::encapsMsg(cPacket *appPkt) {
    cPacket* msg = static_cast<cPacket*>(appPkt);
    GreedyPkt* pkt = new GreedyPkt(msg->getName(), DATA);
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

void GeoBasic::initialize(int stage) {
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

void GeoBasic::handleSelfMsg(cMessage *msg) {
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

void GeoBasic::handleUpperMsg(cMessage* msg) {
    if (par("isSourceNode").boolValue()
            && msg->getKind() == SensorApplLayer::DATA_MESSAGE) {
        GreedyPkt* greedyPkt;
        greedyPkt = static_cast<GreedyPkt*>(encapsMsg(
                static_cast<cPacket*>(msg)));
        greedyPkt->setName("GreedyPkt");

        GeoNode *destNode = new GeoNode();
        destNode->nodeID = par("destId").longValue();
        destNode->locationX = par("destX").doubleValue();
        destNode->locationY = par("destY").doubleValue();
        greedyPkt->setDestNode(*destNode);

        greedyPkt->setRouteArraySize(1);
        greedyPkt->setRoute(0, getParentModule()->getName());

        GeoNode interNode = *findNextNode(greedyPkt->getDestNode());
        greedyPkt->setInterNode(interNode);
        greedyPkt->setLength(myNode.distance(interNode));

        greedyPkt->setBitLength(headerLength);
        greedyPkt->setDestAddr(LAddress::L3BROADCAST);
        sendDown(greedyPkt);
        EV << "Node ID: " << myNode.nodeID << endl;
        EV << "ID node tiep theo: " << greedyPkt->getInterNode().nodeID << endl;
        EV << "Bat dau gui goi Greedy" << endl;
    } else {
        delete (msg);
    }
}

void GeoBasic::handleLowerMsg(cMessage* msg) {
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
    } else if (strcmp(msg->getName(), "GreedyPkt") == 0) {
        GreedyPkt* greedyPkt = check_and_cast<GreedyPkt*>(msg);
        EV << "Nhan goi tin Greedy" << endl;
        EV << "Node ID: " << myNode.nodeID << endl;
        EV << "ID node tiep theo: " << greedyPkt->getInterNode().nodeID << endl;

        unsigned int routeSize = greedyPkt->getRouteArraySize(), i;

        if (greedyPkt->getDestNode() != myNode
                && greedyPkt->getInterNode() != myNode) {
            delete (greedyPkt);
        } else {
            if (greedyPkt->getDestNode() == myNode) {
                EV << "Goi tin Greedy da toi dich" << endl;
                EV << "Duong di gom " << routeSize + 1 << " node (Hop count): ";
                for (i = 0; i < routeSize; i++) {
                    EV << greedyPkt->getRoute(i) << " -> ";
                }
                EV << this->getParentModule()->getName() << endl;
                EV << "Do dai duong di la: " << greedyPkt->getLength() << endl;

                delete (greedyPkt);
                endSimulation();
            } else {
                GeoNode* interNode = findNextNode(greedyPkt->getDestNode());
                if (interNode == &myNode) {
                    EV << "Bi tac o day!!!" << endl;
                    EV << "Da di qua " << routeSize + 1
                              << " node (Hop count): ";
                    for (i = 0; i < routeSize; i++) {
                        EV << greedyPkt->getRoute(i) << " -> ";
                    }
                    EV << this->getParentModule()->getName() << endl;

                    delete (greedyPkt);
                    endSimulation();
                } else {
                    cObject * const pCtrlInfo = greedyPkt->removeControlInfo();
                    if (pCtrlInfo != NULL) {
                        delete pCtrlInfo;
                    }
                    greedyPkt->setInterNode(*interNode);
                    greedyPkt->setDestAddr(LAddress::L3BROADCAST);
                    greedyPkt->setLength(
                            greedyPkt->getLength()
                                    + myNode.distance(*interNode));

                    greedyPkt->setRouteArraySize(routeSize + 1);
                    greedyPkt->setRoute(routeSize,
                            getParentModule()->getName());

                    setDownControlInfo(greedyPkt, LAddress::L2BROADCAST);
                    sendDown(greedyPkt);
                    EV << "Chuyen tiep goi tin Greedy" << endl;
                }
            }
        }
    }
}

void GeoBasic::finish() {
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
