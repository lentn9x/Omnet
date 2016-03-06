//
// Generated file, do not edit! Created by nedtool 4.6 from GreedyPkt.msg.
//

#ifndef _GREEDYPKT_M_H_
#define _GREEDYPKT_M_H_

#include <omnetpp.h>

// nedtool version check
#define MSGC_VERSION 0x0406
#if (MSGC_VERSION!=OMNETPP_VERSION)
#    error Version mismatch! Probably this file was generated by an earlier version of nedtool: 'make clean' should help.
#endif



// cplusplus {{
#include "NetwPkt_m.h"
#include "GeoNode.h"
// }}

/**
 * Class generated from <tt>GreedyPkt.msg:12</tt> by nedtool.
 * <pre>
 * message GreedyPkt extends NetwPkt
 * {
 *     GeoNode destNode;
 *     GeoNode interNode;
 * }
 * </pre>
 */
class GreedyPkt : public ::NetwPkt
{
  protected:
    GeoNode destNode_var;
    GeoNode interNode_var;

  private:
    void copy(const GreedyPkt& other);

  protected:
    // protected and unimplemented operator==(), to prevent accidental usage
    bool operator==(const GreedyPkt&);

  public:
    GreedyPkt(const char *name=NULL, int kind=0);
    GreedyPkt(const GreedyPkt& other);
    virtual ~GreedyPkt();
    GreedyPkt& operator=(const GreedyPkt& other);
    virtual GreedyPkt *dup() const {return new GreedyPkt(*this);}
    virtual void parsimPack(cCommBuffer *b);
    virtual void parsimUnpack(cCommBuffer *b);

    // field getter/setter methods
    virtual GeoNode& getDestNode();
    virtual const GeoNode& getDestNode() const {return const_cast<GreedyPkt*>(this)->getDestNode();}
    virtual void setDestNode(const GeoNode& destNode);
    virtual GeoNode& getInterNode();
    virtual const GeoNode& getInterNode() const {return const_cast<GreedyPkt*>(this)->getInterNode();}
    virtual void setInterNode(const GeoNode& interNode);
};

inline void doPacking(cCommBuffer *b, GreedyPkt& obj) {obj.parsimPack(b);}
inline void doUnpacking(cCommBuffer *b, GreedyPkt& obj) {obj.parsimUnpack(b);}


#endif // ifndef _GREEDYPKT_M_H_

