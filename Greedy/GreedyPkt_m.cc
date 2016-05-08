//
// Generated file, do not edit! Created by nedtool 4.6 from GreedyPkt.msg.
//

// Disable warnings about unused variables, empty switch stmts, etc:
#ifdef _MSC_VER
#  pragma warning(disable:4101)
#  pragma warning(disable:4065)
#endif

#include <iostream>
#include <sstream>
#include "GreedyPkt_m.h"

USING_NAMESPACE


// Another default rule (prevents compiler from choosing base class' doPacking())
template<typename T>
void doPacking(cCommBuffer *, T& t) {
    throw cRuntimeError("Parsim error: no doPacking() function for type %s or its base class (check .msg and _m.cc/h files!)",opp_typename(typeid(t)));
}

template<typename T>
void doUnpacking(cCommBuffer *, T& t) {
    throw cRuntimeError("Parsim error: no doUnpacking() function for type %s or its base class (check .msg and _m.cc/h files!)",opp_typename(typeid(t)));
}




// Template rule for outputting std::vector<T> types
template<typename T, typename A>
inline std::ostream& operator<<(std::ostream& out, const std::vector<T,A>& vec)
{
    out.put('{');
    for(typename std::vector<T,A>::const_iterator it = vec.begin(); it != vec.end(); ++it)
    {
        if (it != vec.begin()) {
            out.put(','); out.put(' ');
        }
        out << *it;
    }
    out.put('}');
    
    char buf[32];
    sprintf(buf, " (size=%u)", (unsigned int)vec.size());
    out.write(buf, strlen(buf));
    return out;
}

// Template rule which fires if a struct or class doesn't have operator<<
template<typename T>
inline std::ostream& operator<<(std::ostream& out,const T&) {return out;}

Register_Class(GreedyPkt);

GreedyPkt::GreedyPkt(const char *name, int kind) : ::NetwPkt(name,kind)
{
    route_arraysize = 0;
    this->route_var = 0;
    this->length_var = 0;
}

GreedyPkt::GreedyPkt(const GreedyPkt& other) : ::NetwPkt(other)
{
    route_arraysize = 0;
    this->route_var = 0;
    copy(other);
}

GreedyPkt::~GreedyPkt()
{
    delete [] route_var;
}

GreedyPkt& GreedyPkt::operator=(const GreedyPkt& other)
{
    if (this==&other) return *this;
    ::NetwPkt::operator=(other);
    copy(other);
    return *this;
}

void GreedyPkt::copy(const GreedyPkt& other)
{
    this->destNode_var = other.destNode_var;
    this->interNode_var = other.interNode_var;
    delete [] this->route_var;
    this->route_var = (other.route_arraysize==0) ? NULL : new opp_string[other.route_arraysize];
    route_arraysize = other.route_arraysize;
    for (unsigned int i=0; i<route_arraysize; i++)
        this->route_var[i] = other.route_var[i];
    this->length_var = other.length_var;
}

void GreedyPkt::parsimPack(cCommBuffer *b)
{
    ::NetwPkt::parsimPack(b);
    doPacking(b,this->destNode_var);
    doPacking(b,this->interNode_var);
    b->pack(route_arraysize);
    doPacking(b,this->route_var,route_arraysize);
    doPacking(b,this->length_var);
}

void GreedyPkt::parsimUnpack(cCommBuffer *b)
{
    ::NetwPkt::parsimUnpack(b);
    doUnpacking(b,this->destNode_var);
    doUnpacking(b,this->interNode_var);
    delete [] this->route_var;
    b->unpack(route_arraysize);
    if (route_arraysize==0) {
        this->route_var = 0;
    } else {
        this->route_var = new opp_string[route_arraysize];
        doUnpacking(b,this->route_var,route_arraysize);
    }
    doUnpacking(b,this->length_var);
}

GeoNode& GreedyPkt::getDestNode()
{
    return destNode_var;
}

void GreedyPkt::setDestNode(const GeoNode& destNode)
{
    this->destNode_var = destNode;
}

GeoNode& GreedyPkt::getInterNode()
{
    return interNode_var;
}

void GreedyPkt::setInterNode(const GeoNode& interNode)
{
    this->interNode_var = interNode;
}

void GreedyPkt::setRouteArraySize(unsigned int size)
{
    opp_string *route_var2 = (size==0) ? NULL : new opp_string[size];
    unsigned int sz = route_arraysize < size ? route_arraysize : size;
    for (unsigned int i=0; i<sz; i++)
        route_var2[i] = this->route_var[i];
    for (unsigned int i=sz; i<size; i++)
        route_var2[i] = 0;
    route_arraysize = size;
    delete [] this->route_var;
    this->route_var = route_var2;
}

unsigned int GreedyPkt::getRouteArraySize() const
{
    return route_arraysize;
}

const char * GreedyPkt::getRoute(unsigned int k) const
{
    if (k>=route_arraysize) throw cRuntimeError("Array of size %d indexed by %d", route_arraysize, k);
    return route_var[k].c_str();
}

void GreedyPkt::setRoute(unsigned int k, const char * route)
{
    if (k>=route_arraysize) throw cRuntimeError("Array of size %d indexed by %d", route_arraysize, k);
    this->route_var[k] = route;
}

double GreedyPkt::getLength() const
{
    return length_var;
}

void GreedyPkt::setLength(double length)
{
    this->length_var = length;
}

class GreedyPktDescriptor : public cClassDescriptor
{
  public:
    GreedyPktDescriptor();
    virtual ~GreedyPktDescriptor();

    virtual bool doesSupport(cObject *obj) const;
    virtual const char *getProperty(const char *propertyname) const;
    virtual int getFieldCount(void *object) const;
    virtual const char *getFieldName(void *object, int field) const;
    virtual int findField(void *object, const char *fieldName) const;
    virtual unsigned int getFieldTypeFlags(void *object, int field) const;
    virtual const char *getFieldTypeString(void *object, int field) const;
    virtual const char *getFieldProperty(void *object, int field, const char *propertyname) const;
    virtual int getArraySize(void *object, int field) const;

    virtual std::string getFieldAsString(void *object, int field, int i) const;
    virtual bool setFieldAsString(void *object, int field, int i, const char *value) const;

    virtual const char *getFieldStructName(void *object, int field) const;
    virtual void *getFieldStructPointer(void *object, int field, int i) const;
};

Register_ClassDescriptor(GreedyPktDescriptor);

GreedyPktDescriptor::GreedyPktDescriptor() : cClassDescriptor("GreedyPkt", "NetwPkt")
{
}

GreedyPktDescriptor::~GreedyPktDescriptor()
{
}

bool GreedyPktDescriptor::doesSupport(cObject *obj) const
{
    return dynamic_cast<GreedyPkt *>(obj)!=NULL;
}

const char *GreedyPktDescriptor::getProperty(const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? basedesc->getProperty(propertyname) : NULL;
}

int GreedyPktDescriptor::getFieldCount(void *object) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    return basedesc ? 4+basedesc->getFieldCount(object) : 4;
}

unsigned int GreedyPktDescriptor::getFieldTypeFlags(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeFlags(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static unsigned int fieldTypeFlags[] = {
        FD_ISCOMPOUND,
        FD_ISCOMPOUND,
        FD_ISARRAY | FD_ISEDITABLE,
        FD_ISEDITABLE,
    };
    return (field>=0 && field<4) ? fieldTypeFlags[field] : 0;
}

const char *GreedyPktDescriptor::getFieldName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldNames[] = {
        "destNode",
        "interNode",
        "route",
        "length",
    };
    return (field>=0 && field<4) ? fieldNames[field] : NULL;
}

int GreedyPktDescriptor::findField(void *object, const char *fieldName) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    int base = basedesc ? basedesc->getFieldCount(object) : 0;
    if (fieldName[0]=='d' && strcmp(fieldName, "destNode")==0) return base+0;
    if (fieldName[0]=='i' && strcmp(fieldName, "interNode")==0) return base+1;
    if (fieldName[0]=='r' && strcmp(fieldName, "route")==0) return base+2;
    if (fieldName[0]=='l' && strcmp(fieldName, "length")==0) return base+3;
    return basedesc ? basedesc->findField(object, fieldName) : -1;
}

const char *GreedyPktDescriptor::getFieldTypeString(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldTypeString(object, field);
        field -= basedesc->getFieldCount(object);
    }
    static const char *fieldTypeStrings[] = {
        "GeoNode",
        "GeoNode",
        "string",
        "double",
    };
    return (field>=0 && field<4) ? fieldTypeStrings[field] : NULL;
}

const char *GreedyPktDescriptor::getFieldProperty(void *object, int field, const char *propertyname) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldProperty(object, field, propertyname);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        default: return NULL;
    }
}

int GreedyPktDescriptor::getArraySize(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getArraySize(object, field);
        field -= basedesc->getFieldCount(object);
    }
    GreedyPkt *pp = (GreedyPkt *)object; (void)pp;
    switch (field) {
        case 2: return pp->getRouteArraySize();
        default: return 0;
    }
}

std::string GreedyPktDescriptor::getFieldAsString(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldAsString(object,field,i);
        field -= basedesc->getFieldCount(object);
    }
    GreedyPkt *pp = (GreedyPkt *)object; (void)pp;
    switch (field) {
        case 0: {std::stringstream out; out << pp->getDestNode(); return out.str();}
        case 1: {std::stringstream out; out << pp->getInterNode(); return out.str();}
        case 2: return oppstring2string(pp->getRoute(i));
        case 3: return double2string(pp->getLength());
        default: return "";
    }
}

bool GreedyPktDescriptor::setFieldAsString(void *object, int field, int i, const char *value) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->setFieldAsString(object,field,i,value);
        field -= basedesc->getFieldCount(object);
    }
    GreedyPkt *pp = (GreedyPkt *)object; (void)pp;
    switch (field) {
        case 2: pp->setRoute(i,(value)); return true;
        case 3: pp->setLength(string2double(value)); return true;
        default: return false;
    }
}

const char *GreedyPktDescriptor::getFieldStructName(void *object, int field) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructName(object, field);
        field -= basedesc->getFieldCount(object);
    }
    switch (field) {
        case 0: return opp_typename(typeid(GeoNode));
        case 1: return opp_typename(typeid(GeoNode));
        default: return NULL;
    };
}

void *GreedyPktDescriptor::getFieldStructPointer(void *object, int field, int i) const
{
    cClassDescriptor *basedesc = getBaseClassDescriptor();
    if (basedesc) {
        if (field < basedesc->getFieldCount(object))
            return basedesc->getFieldStructPointer(object, field, i);
        field -= basedesc->getFieldCount(object);
    }
    GreedyPkt *pp = (GreedyPkt *)object; (void)pp;
    switch (field) {
        case 0: return (void *)(&pp->getDestNode()); break;
        case 1: return (void *)(&pp->getInterNode()); break;
        default: return NULL;
    }
}


