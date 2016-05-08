/* -*- mode:c++ -*- ********************************************************
 * file:        Flood.cc
 *
 * author:      Daniel Willkomm
 *
 * copyright:   (C) 2004 Telecommunication Networks Group (TKN) at
 *              Technische Universitaet Berlin, Germany.
 *
 *              This program is free software; you can redistribute it 
 *              and/or modify it under the terms of the GNU General Public 
 *              License as published by the Free Software Foundation; either
 *              version 2 of the License, or (at your option) any later 
 *              version.
 *              For further information see file COPYING 
 *              in the top level directory
 *
 ***************************************************************************
 * part of:     framework implementation developed by tkn
 * description: a simple flooding protocol
 *              the user can decide whether to use plain flooding or not
 **************************************************************************/

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

using std::endl;

Define_Module(GeoBasic);

void GeoBasic::initialize(int stage)
{
	BaseNetwLayer::initialize(stage);
	tx_interval = par("Tx_interval");
    smCounter = 0;
    nbUpdateCnt = 0;
    //my current location
    myMobi = dynamic_cast<IMobility*>(getParentModule()->getSubmodule("mobility"));
    myCor = myMobi->getCurrentPosition();
    myNode.locationX = myCor.x;
    myNode.locationY = myCor.y;
    myNode.nodeID = getNode()->getId();
    if (stage == 0) {
        timerMsg = new cMessage("timer message");
    }
	if (stage==1){
	    scheduleAt(simTime()+tx_interval, timerMsg);
	}
}
void GeoBasic::handleSelfMsg(cMessage *msg)
 {
    if (strcmp(msg->getName(), "timer message") == 0) {
//        ev<<"receive self message"<<endl;
        if (nbUpdateCnt < 5)
            scheduleAt(simTime() + tx_interval, msg); //schedule self-message
//create and send out broadcast Msg
    NeighborUpdatePkt* pkt = new NeighborUpdatePkt("NbBroadcast");
    pkt->setBitLength(headerLength);
    pkt->setDestAddr(LAddress::L3BROADCAST);
    pkt->setNodeInfo(myNode);
    setDownControlInfo(pkt, LAddress::L2BROADCAST);
    sendDown(pkt);
    nbUpdateCnt ++;
    }
}
void GeoBasic::finish()
{
   //if (par("stats")) {
        for(unsigned int i=0; i<nbTable.size();i++){
            recordScalar("ID", nbTable[i].nodeID);
            recordScalar("locationX", nbTable[i].locationX);
            recordScalar("locationY", nbTable[i].locationY);
        }
   // }
	BaseNetwLayer::finish();

}
void GeoBasic::handleUpperMsg(cMessage* msg)
{
//    EV << "value of isSource node" << par("isSourceNode").boolValue() <<endl;
    if (par("isSourceNode").boolValue() && msg->getKind() == SensorApplLayer::DATA_MESSAGE){
 //       EV <<" I am a source code " << endl;
 //       assert(dynamic_cast<cPacket*> (msg));
        GreedyPkt* greedyPkt;
        greedyPkt =  static_cast<GreedyPkt*>(encapsMsg(static_cast<cPacket*> (msg)));
        greedyPkt->setName("GreedyPkt");
        EV << "da vao goi tin" << endl;
        GeoNode *destNode = new GeoNode();
        destNode->nodeID = par("destId").longValue();
        destNode->locationX = par("destX").doubleValue();
        destNode->locationY = par("destY").doubleValue();
        greedyPkt->setDestNode(*destNode);
        greedyPkt->setInterNode(*findNextNode(greedyPkt->getDestNode()));
        EV << "my node ID" << myNode.nodeID << endl;
        EV << "next node ID" << greedyPkt->getInterNode().nodeID << endl;
        greedyPkt->setBitLength(headerLength);
        greedyPkt->setDestAddr(LAddress::L3BROADCAST);
    //    setDownControlInfo(greedyPkt, LAddress::L2BROADCAST);
        sendDown(greedyPkt);
        EV << "SOURCE: send a message" << endl;
    }
    else{
        delete (msg);
    }
}
void GeoBasic::updateNbTable(GeoNode nbNode){
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
        if (updateTable)
            nbTable.push_back(nbNode);
    }
}
GeoNode* GeoBasic::findNextNode(GeoNode destNode){
    double dist = myNode.distance(destNode);
    GeoNode* nextNode = new GeoNode();
    nextNode = &myNode;
    for (unsigned int i = 0; i < nbTable.size(); i++){
        if (nbTable[i].distance(destNode) < dist){
            nextNode = &nbTable[i];
            dist = nbTable[i].distance(destNode);
        }
    }
    return nextNode;
}
void GeoBasic::handleLowerMsg(cMessage* msg)
{
    if(strcmp(msg-> getName(),"NbBroadcast")==0){
            NeighborUpdatePkt* netwMsg = check_and_cast<NeighborUpdatePkt*>(msg);
            if(LAddress::isL3Broadcast(netwMsg->getDestAddr())){
                updateNbTable(netwMsg->getNodeInfo());
            }
            EV<< "node Id: "<< myNode.nodeID << endl;
            for (unsigned int i = 0; i < nbTable.size(); i++){
                EV << nbTable[i].nodeID << endl;
            }
            delete(netwMsg);
            EV<< "update neigbor table" << endl;
        }
    else if(strcmp(msg->getName(),"GreedyPkt")==0){
        EV << "get a greedy packet" << endl;
               GreedyPkt* greedyPkt = check_and_cast<GreedyPkt*>(msg);
               EV << "myNode ID" << myNode.nodeID<< endl;
               EV << "interNode ID" << greedyPkt->getInterNode().nodeID << endl;
               EV << "destNode ID" << greedyPkt->getDestNode().nodeID << endl;
               if (greedyPkt->getDestNode().nodeID != myNode.nodeID && greedyPkt->getInterNode().nodeID != myNode.nodeID){
                 //  EV <<"received a packet"<<endl;
                   delete(greedyPkt);
               }
               else {
                   if (greedyPkt->getDestNode().nodeID == myNode.nodeID){
                       EV <<"DESTINATION: received a packet"<<endl;
                       delete(greedyPkt);
                   }
                   else{
          //             EV<< "forwards a packet" <<endl;
                       if (findNextNode(greedyPkt->getDestNode()) == &myNode){
                           delete(greedyPkt);
                           EV<< "STUCK: packet stuck here" <<endl;
                       }
                       else{
                           cObject *const pCtrlInfo = greedyPkt->removeControlInfo();
                           if (pCtrlInfo != NULL)
                               delete pCtrlInfo;
                      //     setDownControlInfo(greedyPkt, LAddress::L2BROADCAST);
                           greedyPkt->setInterNode(*findNextNode(greedyPkt->getDestNode()));
                           greedyPkt->setDestAddr(LAddress::L3BROADCAST);
                           setDownControlInfo(greedyPkt, LAddress::L2BROADCAST);
                           sendDown(greedyPkt);
                           EV << "INTERMEDIATE: forward packet" <<endl;
                       }
                   }
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
