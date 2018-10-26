#ifndef EXPERIMENTDESIGNFABIOLA_H
#define EXPERIMENTDESIGNFABIOLA_H

#include "ExperimentDesign_if.h"

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
};

#endif /* EXPERIMENTDESIGNFABIOLA_H */

