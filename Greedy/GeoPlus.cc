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
//    //double dist = myNode.distance(destNode);
//    GeoNode* nextNode_x;
//    GeoNode* nextNode_y;
    GeoNode* nextNode =&myNode ;
//    if (nbTable.size() > 0) {
//        double minDistance = 1000000;
//        for (unsigned int i = 0; i < nbTable.size() - 1; i++) {
//            if ((nbTable[i]->distance(myNode) < 2 * myNode.r)
//                    && (nextNode->distance(myNode) < 2 * myNode.r)) {
//                if (nbTable[i].distance(nextNode) > 2 * myNode.r) {
//                    if (nbTable[i].distance(nbTable[j]) < minDistance) {
//                        nextNode_x = &nbTable[i];
//                        nextNode_y = &nbTable[j];
//                        minDistance = nbTable[i].distance(nbTable[j]);
//                    }
//                }
//            }
//        }
//    }
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
    EV << "radius:" << myNode.r << endl;
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
        } else {
//            if (nbTable.size() > 0) {
//                GeoNode nextNode_x, nextNode_y;
//                double minDistance = 1000000;
//                for (unsigned int i = 0; i < nbTable.size() - 1; i++) {
//                    for (unsigned int j = i + 1; j < nbTable.size(); j++) {
//                        if ((nbTable[i].distance(myNode) < 2 * myNode.r)
//                                && (nbTable[j].distance(myNode) < 2 * myNode.r)) {
//                            if (nbTable[i].distance(nbTable[j])
//                                    > 2 * myNode.r) {
//                                if (nbTable[i].distance(nbTable[j])
//                                        < minDistance) {
//                                    nextNode_x = nbTable[i];
//                                    nextNode_y = nbTable[j];
//                                    minDistance = nbTable[i].distance(
//                                            nbTable[j]);
//                                }
//                            }
//                        }
//                    }
//                }
//                GreedyPlusPkt* greedyPlusPkt;
//                greedyPlusPkt = static_cast<GreedyPlusPkt*>(encapsMsg(
//                        static_cast<cPacket*>(msg)));
//                greedyPlusPkt->setName("GreedyPlusPkt");
//                greedyPlusPkt->setRouteArraySize(3);
//                greedyPlusPkt->setRoute(0, nextNode_x);
//                greedyPlusPkt->setRoute(1, myNode);
//                greedyPlusPkt->setRoute(2, nextNode_y);
//            }
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
    if (par("isSourceNode").boolValue()
            && msg->getKind() == SensorApplLayer::DATA_MESSAGE) {
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
//        greedyPlusPkt->setRoute(0, getParentModule()->getName());

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

void GeoPlus::handleLowerMsg(cMessage* msg) {
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
    } else if (strcmp(msg->getName(), "GreedyPlusPkt") == 0) {
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

//                    greedyPlusPkt->setRouteArraySize(routeSize + 1);
//                    greedyPlusPkt->setRoute(routeSize,
//                            getParentModule()->getName());

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
