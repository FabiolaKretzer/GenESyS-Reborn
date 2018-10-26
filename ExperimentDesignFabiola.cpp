#include "ExperimentDesignFabiola.h"
#include "Assign.h"

ExperimentDesignFabiola::ExperimentDesignFabiola() {
}

std::list<FactorOrInteractionContribution*>* ExperimentDesignFabiola::getContributions() const {
	return _contributions;
}

ExperimentDesignFabiola::ExperimentDesignFabiola(const ExperimentDesignFabiola& orig) {
}

ExperimentDesignFabiola::~ExperimentDesignFabiola() {
}

bool ExperimentDesignFabiola::generate2krScenarioExperiments(){
    return true;
}

bool ExperimentDesignFabiola::calculateContributionAndCoefficients(){
    return true;
}

ProcessAnalyser_if* ExperimentDesignFabiola::getProcessAnalyser() const {
	return _processAnalyser;
}
