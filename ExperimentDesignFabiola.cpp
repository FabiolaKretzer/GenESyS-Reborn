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
    List<SimulationControl*>* control = _processAnalyser->getControls();
    SimulationScenario* scenario;
    
    int k = control->size();
    int total_k = pow(2, k);
    int size = (total_k - 1) * k;
    int combination[size];
    int factor = 1;
    
    int aux = total_k;
    while (aux >= 1) {
        int i = 0;
        aux = (aux / 2);
        for (int j = 0; j < aux; j++){
            combination[i] = -1 * factor;
        }
        i = i + aux;
    }
    scenario = new SimulationScenario();
    _scenarios->push_back(scenario);
    
    return true;
}

bool ExperimentDesignFabiola::calculateContributionAndCoefficients(){
    return true;
}

ProcessAnalyser_if* ExperimentDesignFabiola::getProcessAnalyser() const {
	return _processAnalyser;
}
