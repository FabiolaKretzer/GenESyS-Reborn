#ifndef EXPERIMENTDESIGNFABIOLA_H
#define EXPERIMENTDESIGNFABIOLA_H

#include "ExperimentDesign_if.h"
#include <math.h>
#include <iostream>

using namespace std;

class ExperimentDesignFabiola : public ExperimentDesign_if {
public:
	ExperimentDesignFabiola();
	ExperimentDesignFabiola(const ExperimentDesignFabiola& orig);
	virtual ~ExperimentDesignFabiola();
public:
	ProcessAnalyser_if* getProcessAnalyser() const;
public:
	bool generate2krScenarioExperiments();
	bool calculateContributionAndCoefficients();
	std::list<FactorOrInteractionContribution*>* getContributions() const;
private:
	ProcessAnalyser_if* _processAnalyser; //= new Traits<ExperimentDesign_if>::ProcessAnalyserImplementation();
	std::list<FactorOrInteractionContribution*>* _contributions = new std::list<FactorOrInteractionContribution*>();
        std::list<SimulationScenario*>* _scenarios = new std::list<SimulationScenario*>();
};

#endif /* EXPERIMENTDESIGNFABIOLA_H */

