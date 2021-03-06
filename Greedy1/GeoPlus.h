#ifndef _GEOPLUS_H_
#define _GEOPLUS_H_
class IMobility;

#define MIXIM_INET
#include <list>

#include <omnetpp.h>

#include "MiXiMDefs.h"
#include "BaseNetwLayer.h"
#include "SimpleAddress.h"
#include "Coord.h"
#include "IMobility.h"
#include <cmsgpar.h>
#include <vector>
#include "GeoNode.h"
#include "NeighborUpdatePkt_m.h"
#include "GreedyPlusPkt_m.h"
#include "SensorApplLayer.h"

class MIXIM_API GeoPlus: public BaseNetwLayer {
protected:
    GeoNode myNode;
    double tx_interval;
    cMessage *timerMsg;
    IMobility *myMobi, *destMobi;
    Coord myCor;
    std::vector<GeoNode> nbTable;
    std::vector<double> degTable;
    int nbUpdateCnt;
    enum messagesTypes {
        UNKNOWN = 0, DATA
    };
    double baseLineFactor[3],index[1000],shadow[1000],px1[1000],py1[1000],center[1000],count[1000],node1[1000],node2[1000];

public:
    GeoPlus() :
            BaseNetwLayer() {
    }

    /** @brief Initialization of omnetpp.ini parameters*/
    virtual void initialize(int);
    virtual void finish();
    GreedyPlusPkt* Mess(cMessage* msg);

protected:
    virtual GeoNode* findNextNode(GeoNode destNode);
    virtual void updateNbTable(GeoNode nbNode);
    virtual netwpkt_ptr_t encapsMsg(cPacket*);

    /** @brief Handle messages from upper layer */
    virtual void handleUpperMsg(cMessage *);

    /** @brief Handle messages from lower layer */
    virtual void handleLowerMsg(cMessage *);

    /** @brief we have no self messages */
    virtual void handleSelfMsg(cMessage* msg);

};

#endif
