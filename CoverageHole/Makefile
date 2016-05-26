#
# OMNeT++/OMNEST Makefile for CoverageHole
#
# This file was generated with the command:
#  opp_makemake -f --deep -O out -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/modules/application -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/base/modules -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/inet_stub/networklayer/common -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/modules/utility -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/base/utils -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/modules/power/battery -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/modules/phy -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/inet_stub/mobility/models -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/base -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/base/phyLayer -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/inet_stub/mobility -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/modules/analogueModel -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/inet_stub/util -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/modules/messages -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/inet_stub/linklayer/contract -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/base/connectionManager -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/inet_stub/base -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/base/messages -IC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/src/modules -LC:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM/out/$$\(CONFIGNAME\)/src -lmixim -KMIXIM_PROJ=C:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM
#

# Name of target to be created (-o option)
TARGET = CoverageHole$(EXE_SUFFIX)

# User interface (uncomment one) (-u option)
USERIF_LIBS = $(ALL_ENV_LIBS) # that is, $(TKENV_LIBS) $(CMDENV_LIBS)
#USERIF_LIBS = $(CMDENV_LIBS)
#USERIF_LIBS = $(TKENV_LIBS)

# C++ include paths (with -I)
INCLUDE_PATH = \
    -I$(MIXIM_PROJ)/src/modules/application \
    -I$(MIXIM_PROJ)/src/base/modules \
    -I$(MIXIM_PROJ)/src/inet_stub/networklayer/common \
    -I$(MIXIM_PROJ)/src \
    -I$(MIXIM_PROJ)/src/modules/utility \
    -I$(MIXIM_PROJ)/src/base/utils \
    -I$(MIXIM_PROJ)/src/modules/power/battery \
    -I$(MIXIM_PROJ)/src/modules/phy \
    -I$(MIXIM_PROJ)/src/inet_stub/mobility/models \
    -I$(MIXIM_PROJ)/src/base \
    -I$(MIXIM_PROJ)/src/base/phyLayer \
    -I$(MIXIM_PROJ)/src/inet_stub/mobility \
    -I$(MIXIM_PROJ)/src/modules/analogueModel \
    -I$(MIXIM_PROJ)/src/inet_stub/util \
    -I$(MIXIM_PROJ)/src/modules/messages \
    -I$(MIXIM_PROJ)/src/inet_stub/linklayer/contract \
    -I$(MIXIM_PROJ)/src/base/connectionManager \
    -I$(MIXIM_PROJ)/src/inet_stub/base \
    -I$(MIXIM_PROJ)/src/base/messages \
    -I$(MIXIM_PROJ)/src/modules \
    -I. \
    -Iresults

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS = -L$(MIXIM_PROJ)/out/$(CONFIGNAME)/src  -lmixim
LIBS += -Wl,-rpath,`abspath $(MIXIM_PROJ)/out/$(CONFIGNAME)/src`

# Output directory
PROJECT_OUTPUT_DIR = out
PROJECTRELATIVE_PATH =
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS = $O/CoverPlus.o $O/GeoNode.o $O/CoveragePkt_m.o $O/NeighborUpdatePkt_m.o

# Message files
MSGFILES = \
    CoveragePkt.msg \
    NeighborUpdatePkt.msg

# Other makefile variables (-K)
MIXIM_PROJ=C:/Users/PhongBK/Documents/WSN/myMiXiM/MiXiM

#------------------------------------------------------------------------------

# Pull in OMNeT++ configuration (Makefile.inc or configuser.vc)

ifneq ("$(OMNETPP_CONFIGFILE)","")
CONFIGFILE = $(OMNETPP_CONFIGFILE)
else
ifneq ("$(OMNETPP_ROOT)","")
CONFIGFILE = $(OMNETPP_ROOT)/Makefile.inc
else
CONFIGFILE = $(shell opp_configfilepath)
endif
endif

ifeq ("$(wildcard $(CONFIGFILE))","")
$(error Config file '$(CONFIGFILE)' does not exist -- add the OMNeT++ bin directory to the path so that opp_configfilepath can be found, or set the OMNETPP_CONFIGFILE variable to point to Makefile.inc)
endif

include $(CONFIGFILE)

# Simulation kernel and user interface libraries
OMNETPP_LIB_SUBDIR = $(OMNETPP_LIB_DIR)/$(TOOLCHAIN_NAME)
OMNETPP_LIBS = -L"$(OMNETPP_LIB_SUBDIR)" -L"$(OMNETPP_LIB_DIR)" -loppmain$D $(USERIF_LIBS) $(KERNEL_LIBS) $(SYS_LIBS)

COPTS = $(CFLAGS)  $(INCLUDE_PATH) -I$(OMNETPP_INCL_DIR)
MSGCOPTS = $(INCLUDE_PATH)

# we want to recompile everything if COPTS changes,
# so we store COPTS into $COPTS_FILE and have object
# files depend on it (except when "make depend" was called)
COPTS_FILE = $O/.last-copts
ifneq ($(MAKECMDGOALS),depend)
ifneq ("$(COPTS)","$(shell cat $(COPTS_FILE) 2>/dev/null || echo '')")
$(shell $(MKPATH) "$O" && echo "$(COPTS)" >$(COPTS_FILE))
endif
endif

#------------------------------------------------------------------------------
# User-supplied makefile fragment(s)
# >>>
# <<<
#------------------------------------------------------------------------------

# Main target
all: $O/$(TARGET)
	$(Q)$(LN) $O/$(TARGET) .

$O/$(TARGET): $(OBJS)  $(wildcard $(EXTRA_OBJS)) Makefile
	@$(MKPATH) $O
	@echo Creating executable: $@
	$(Q)$(CXX) $(LDFLAGS) -o $O/$(TARGET)  $(OBJS) $(EXTRA_OBJS) $(AS_NEEDED_OFF) $(WHOLE_ARCHIVE_ON) $(LIBS) $(WHOLE_ARCHIVE_OFF) $(OMNETPP_LIBS)

.PHONY: all clean cleanall depend msgheaders

.SUFFIXES: .cc

$O/%.o: %.cc $(COPTS_FILE)
	@$(MKPATH) $(dir $@)
	$(qecho) "$<"
	$(Q)$(CXX) -c $(CXXFLAGS) $(COPTS) -o $@ $<

%_m.cc %_m.h: %.msg
	$(qecho) MSGC: $<
	$(Q)$(MSGC) -s _m.cc $(MSGCOPTS) $?

msgheaders: $(MSGFILES:.msg=_m.h)

clean:
	$(qecho) Cleaning...
	$(Q)-rm -rf $O
	$(Q)-rm -f CoverageHole CoverageHole.exe libCoverageHole.so libCoverageHole.a libCoverageHole.dll libCoverageHole.dylib
	$(Q)-rm -f ./*_m.cc ./*_m.h
	$(Q)-rm -f results/*_m.cc results/*_m.h

cleanall: clean
	$(Q)-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(qecho) Creating dependencies...
	$(Q)$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc results/*.cc

# DO NOT DELETE THIS LINE -- make depend depends on it.
$O/CoverPlus.o: CoverPlus.cc \
	CoverPlus.h \
	CoveragePkt_m.h \
	GeoNode.h \
	NeighborUpdatePkt_m.h \
	$(MIXIM_PROJ)/src/base/messages/NetwPkt_m.h \
	$(MIXIM_PROJ)/src/base/modules/BaseBattery.h \
	$(MIXIM_PROJ)/src/base/modules/BaseLayer.h \
	$(MIXIM_PROJ)/src/base/modules/BaseModule.h \
	$(MIXIM_PROJ)/src/base/modules/BaseNetwLayer.h \
	$(MIXIM_PROJ)/src/base/modules/MiximBatteryAccess.h \
	$(MIXIM_PROJ)/src/base/utils/HostState.h \
	$(MIXIM_PROJ)/src/base/utils/MiXiMDefs.h \
	$(MIXIM_PROJ)/src/base/utils/PassedMessage.h \
	$(MIXIM_PROJ)/src/base/utils/SimpleAddress.h \
	$(MIXIM_PROJ)/src/base/utils/miximkerneldefs.h \
	$(MIXIM_PROJ)/src/inet_stub/base/Coord.h \
	$(MIXIM_PROJ)/src/inet_stub/base/INETDefs.h \
	$(MIXIM_PROJ)/src/inet_stub/linklayer/contract/MACAddress.h \
	$(MIXIM_PROJ)/src/inet_stub/mobility/IMobility.h \
	$(MIXIM_PROJ)/src/inet_stub/util/FWMath.h \
	$(MIXIM_PROJ)/src/modules/application/SensorApplLayer.h \
	$(MIXIM_PROJ)/src/modules/power/battery/BatteryState.h \
	$(MIXIM_PROJ)/src/modules/power/battery/DeviceEntry.h \
	$(MIXIM_PROJ)/src/modules/power/battery/SimpleBattery.h \
	$(MIXIM_PROJ)/src/modules/utility/Packet.h
$O/CoveragePkt_m.o: CoveragePkt_m.cc \
	CoveragePkt_m.h \
	GeoNode.h \
	$(MIXIM_PROJ)/src/base/messages/NetwPkt_m.h \
	$(MIXIM_PROJ)/src/base/utils/MiXiMDefs.h \
	$(MIXIM_PROJ)/src/base/utils/SimpleAddress.h \
	$(MIXIM_PROJ)/src/base/utils/miximkerneldefs.h \
	$(MIXIM_PROJ)/src/inet_stub/base/INETDefs.h \
	$(MIXIM_PROJ)/src/inet_stub/linklayer/contract/MACAddress.h
$O/GeoNode.o: GeoNode.cc \
	GeoNode.h
$O/NeighborUpdatePkt_m.o: NeighborUpdatePkt_m.cc \
	GeoNode.h \
	NeighborUpdatePkt_m.h \
	$(MIXIM_PROJ)/src/base/messages/NetwPkt_m.h \
	$(MIXIM_PROJ)/src/base/utils/MiXiMDefs.h \
	$(MIXIM_PROJ)/src/base/utils/SimpleAddress.h \
	$(MIXIM_PROJ)/src/base/utils/miximkerneldefs.h \
	$(MIXIM_PROJ)/src/inet_stub/base/INETDefs.h \
	$(MIXIM_PROJ)/src/inet_stub/linklayer/contract/MACAddress.h

