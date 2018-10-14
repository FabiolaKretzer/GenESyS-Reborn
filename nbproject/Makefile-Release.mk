#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/Assign.o \
	${OBJECTDIR}/Attribute.o \
	${OBJECTDIR}/BuildSimpleModel1.o \
	${OBJECTDIR}/CollectorDatafileCancianImpl.o \
	${OBJECTDIR}/CollectorDatafileMyImpl1.o \
	${OBJECTDIR}/CollectorMyImpl1.o \
	${OBJECTDIR}/Create.o \
	${OBJECTDIR}/Delay.o \
	${OBJECTDIR}/Dispose.o \
	${OBJECTDIR}/Entity.o \
	${OBJECTDIR}/EntityType.o \
	${OBJECTDIR}/Event.o \
	${OBJECTDIR}/ExperimentDesignMyImpl1.o \
	${OBJECTDIR}/FactorOrInteractionContribution.o \
	${OBJECTDIR}/FitterFabiola.o \
	${OBJECTDIR}/FitterMyImpl1.o \
	${OBJECTDIR}/HypothesisTesterMyImpl1.o \
	${OBJECTDIR}/HypothesisTester_ar.o \
	${OBJECTDIR}/IntegratorDiogoImpl.o \
	${OBJECTDIR}/IntegratorMyImpl1.o \
	${OBJECTDIR}/Integrator_ar.o \
	${OBJECTDIR}/LinkedBy.o \
	${OBJECTDIR}/Listener.o \
	${OBJECTDIR}/Model.o \
	${OBJECTDIR}/ModelCheckerMyImpl1.o \
	${OBJECTDIR}/ModelComponent.o \
	${OBJECTDIR}/ModelInfrastructure.o \
	${OBJECTDIR}/ModelPersistenceMyImpl1.o \
	${OBJECTDIR}/ParserMyImpl1.o \
	${OBJECTDIR}/Plugin.o \
	${OBJECTDIR}/ProbDistrib.o \
	${OBJECTDIR}/ProcessAnalyserMyImpl1.o \
	${OBJECTDIR}/Queue.o \
	${OBJECTDIR}/Release.o \
	${OBJECTDIR}/Resource.o \
	${OBJECTDIR}/SamplerMyImpl1.o \
	${OBJECTDIR}/Sampler_BruFabJoa.o \
	${OBJECTDIR}/Seize.o \
	${OBJECTDIR}/SimulationControl.o \
	${OBJECTDIR}/SimulationResponse.o \
	${OBJECTDIR}/SimulationScenario.o \
	${OBJECTDIR}/Simulator.o \
	${OBJECTDIR}/SinkModelComponent.o \
	${OBJECTDIR}/SourceModelComponent.o \
	${OBJECTDIR}/StatisticsCancianImpl.o \
	${OBJECTDIR}/StatisticsCollector.o \
	${OBJECTDIR}/StatisticsMyImpl1.o \
	${OBJECTDIR}/TestInputAnalyserTools.o \
	${OBJECTDIR}/Util.o \
	${OBJECTDIR}/Variable.o \
	${OBJECTDIR}/Waiting.o \
	${OBJECTDIR}/WaitingResource.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/genesys-reborn

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/genesys-reborn: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/genesys-reborn ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/Assign.o: nbproject/Makefile-${CND_CONF}.mk Assign.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Assign.o Assign.cpp

${OBJECTDIR}/Attribute.o: nbproject/Makefile-${CND_CONF}.mk Attribute.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Attribute.o Attribute.cpp

${OBJECTDIR}/BuildSimpleModel1.o: nbproject/Makefile-${CND_CONF}.mk BuildSimpleModel1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/BuildSimpleModel1.o BuildSimpleModel1.cpp

${OBJECTDIR}/CollectorDatafileCancianImpl.o: nbproject/Makefile-${CND_CONF}.mk CollectorDatafileCancianImpl.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CollectorDatafileCancianImpl.o CollectorDatafileCancianImpl.cpp

${OBJECTDIR}/CollectorDatafileMyImpl1.o: nbproject/Makefile-${CND_CONF}.mk CollectorDatafileMyImpl1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CollectorDatafileMyImpl1.o CollectorDatafileMyImpl1.cpp

${OBJECTDIR}/CollectorMyImpl1.o: nbproject/Makefile-${CND_CONF}.mk CollectorMyImpl1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CollectorMyImpl1.o CollectorMyImpl1.cpp

${OBJECTDIR}/Create.o: nbproject/Makefile-${CND_CONF}.mk Create.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Create.o Create.cpp

${OBJECTDIR}/Delay.o: nbproject/Makefile-${CND_CONF}.mk Delay.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Delay.o Delay.cpp

${OBJECTDIR}/Dispose.o: nbproject/Makefile-${CND_CONF}.mk Dispose.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Dispose.o Dispose.cpp

${OBJECTDIR}/Entity.o: nbproject/Makefile-${CND_CONF}.mk Entity.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Entity.o Entity.cpp

${OBJECTDIR}/EntityType.o: nbproject/Makefile-${CND_CONF}.mk EntityType.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/EntityType.o EntityType.cpp

${OBJECTDIR}/Event.o: nbproject/Makefile-${CND_CONF}.mk Event.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Event.o Event.cpp

${OBJECTDIR}/ExperimentDesignMyImpl1.o: nbproject/Makefile-${CND_CONF}.mk ExperimentDesignMyImpl1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ExperimentDesignMyImpl1.o ExperimentDesignMyImpl1.cpp

${OBJECTDIR}/FactorOrInteractionContribution.o: nbproject/Makefile-${CND_CONF}.mk FactorOrInteractionContribution.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/FactorOrInteractionContribution.o FactorOrInteractionContribution.cpp

${OBJECTDIR}/FitterFabiola.o: nbproject/Makefile-${CND_CONF}.mk FitterFabiola.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/FitterFabiola.o FitterFabiola.cpp

${OBJECTDIR}/FitterMyImpl1.o: nbproject/Makefile-${CND_CONF}.mk FitterMyImpl1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/FitterMyImpl1.o FitterMyImpl1.cpp

${OBJECTDIR}/HypothesisTesterMyImpl1.o: nbproject/Makefile-${CND_CONF}.mk HypothesisTesterMyImpl1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/HypothesisTesterMyImpl1.o HypothesisTesterMyImpl1.cpp

${OBJECTDIR}/HypothesisTester_ar.o: nbproject/Makefile-${CND_CONF}.mk HypothesisTester_ar.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/HypothesisTester_ar.o HypothesisTester_ar.cpp

${OBJECTDIR}/IntegratorDiogoImpl.o: nbproject/Makefile-${CND_CONF}.mk IntegratorDiogoImpl.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/IntegratorDiogoImpl.o IntegratorDiogoImpl.cpp

${OBJECTDIR}/IntegratorMyImpl1.o: nbproject/Makefile-${CND_CONF}.mk IntegratorMyImpl1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/IntegratorMyImpl1.o IntegratorMyImpl1.cpp

${OBJECTDIR}/Integrator_ar.o: nbproject/Makefile-${CND_CONF}.mk Integrator_ar.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Integrator_ar.o Integrator_ar.cpp

${OBJECTDIR}/LinkedBy.o: nbproject/Makefile-${CND_CONF}.mk LinkedBy.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/LinkedBy.o LinkedBy.cpp

${OBJECTDIR}/Listener.o: nbproject/Makefile-${CND_CONF}.mk Listener.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Listener.o Listener.cpp

${OBJECTDIR}/Model.o: nbproject/Makefile-${CND_CONF}.mk Model.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Model.o Model.cpp

${OBJECTDIR}/ModelCheckerMyImpl1.o: nbproject/Makefile-${CND_CONF}.mk ModelCheckerMyImpl1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ModelCheckerMyImpl1.o ModelCheckerMyImpl1.cpp

${OBJECTDIR}/ModelComponent.o: nbproject/Makefile-${CND_CONF}.mk ModelComponent.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ModelComponent.o ModelComponent.cpp

${OBJECTDIR}/ModelInfrastructure.o: nbproject/Makefile-${CND_CONF}.mk ModelInfrastructure.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ModelInfrastructure.o ModelInfrastructure.cpp

${OBJECTDIR}/ModelPersistenceMyImpl1.o: nbproject/Makefile-${CND_CONF}.mk ModelPersistenceMyImpl1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ModelPersistenceMyImpl1.o ModelPersistenceMyImpl1.cpp

${OBJECTDIR}/ParserMyImpl1.o: nbproject/Makefile-${CND_CONF}.mk ParserMyImpl1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ParserMyImpl1.o ParserMyImpl1.cpp

${OBJECTDIR}/Plugin.o: nbproject/Makefile-${CND_CONF}.mk Plugin.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Plugin.o Plugin.cpp

${OBJECTDIR}/ProbDistrib.o: nbproject/Makefile-${CND_CONF}.mk ProbDistrib.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ProbDistrib.o ProbDistrib.cpp

${OBJECTDIR}/ProcessAnalyserMyImpl1.o: nbproject/Makefile-${CND_CONF}.mk ProcessAnalyserMyImpl1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ProcessAnalyserMyImpl1.o ProcessAnalyserMyImpl1.cpp

${OBJECTDIR}/Queue.o: nbproject/Makefile-${CND_CONF}.mk Queue.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Queue.o Queue.cpp

${OBJECTDIR}/Release.o: nbproject/Makefile-${CND_CONF}.mk Release.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Release.o Release.cpp

${OBJECTDIR}/Resource.o: nbproject/Makefile-${CND_CONF}.mk Resource.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Resource.o Resource.cpp

${OBJECTDIR}/SamplerMyImpl1.o: nbproject/Makefile-${CND_CONF}.mk SamplerMyImpl1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SamplerMyImpl1.o SamplerMyImpl1.cpp

${OBJECTDIR}/Sampler_BruFabJoa.o: nbproject/Makefile-${CND_CONF}.mk Sampler_BruFabJoa.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Sampler_BruFabJoa.o Sampler_BruFabJoa.cpp

${OBJECTDIR}/Seize.o: nbproject/Makefile-${CND_CONF}.mk Seize.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Seize.o Seize.cpp

${OBJECTDIR}/SimulationControl.o: nbproject/Makefile-${CND_CONF}.mk SimulationControl.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SimulationControl.o SimulationControl.cpp

${OBJECTDIR}/SimulationResponse.o: nbproject/Makefile-${CND_CONF}.mk SimulationResponse.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SimulationResponse.o SimulationResponse.cpp

${OBJECTDIR}/SimulationScenario.o: nbproject/Makefile-${CND_CONF}.mk SimulationScenario.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SimulationScenario.o SimulationScenario.cpp

${OBJECTDIR}/Simulator.o: nbproject/Makefile-${CND_CONF}.mk Simulator.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Simulator.o Simulator.cpp

${OBJECTDIR}/SinkModelComponent.o: nbproject/Makefile-${CND_CONF}.mk SinkModelComponent.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SinkModelComponent.o SinkModelComponent.cpp

${OBJECTDIR}/SourceModelComponent.o: nbproject/Makefile-${CND_CONF}.mk SourceModelComponent.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/SourceModelComponent.o SourceModelComponent.cpp

${OBJECTDIR}/StatisticsCancianImpl.o: nbproject/Makefile-${CND_CONF}.mk StatisticsCancianImpl.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/StatisticsCancianImpl.o StatisticsCancianImpl.cpp

${OBJECTDIR}/StatisticsCollector.o: nbproject/Makefile-${CND_CONF}.mk StatisticsCollector.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/StatisticsCollector.o StatisticsCollector.cpp

${OBJECTDIR}/StatisticsMyImpl1.o: nbproject/Makefile-${CND_CONF}.mk StatisticsMyImpl1.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/StatisticsMyImpl1.o StatisticsMyImpl1.cpp

${OBJECTDIR}/TestInputAnalyserTools.o: nbproject/Makefile-${CND_CONF}.mk TestInputAnalyserTools.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/TestInputAnalyserTools.o TestInputAnalyserTools.cpp

${OBJECTDIR}/Util.o: nbproject/Makefile-${CND_CONF}.mk Util.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Util.o Util.cpp

${OBJECTDIR}/Variable.o: nbproject/Makefile-${CND_CONF}.mk Variable.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Variable.o Variable.cpp

${OBJECTDIR}/Waiting.o: nbproject/Makefile-${CND_CONF}.mk Waiting.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Waiting.o Waiting.cpp

${OBJECTDIR}/WaitingResource.o: nbproject/Makefile-${CND_CONF}.mk WaitingResource.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/WaitingResource.o WaitingResource.cpp

${OBJECTDIR}/main.o: nbproject/Makefile-${CND_CONF}.mk main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/genesys-reborn

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
