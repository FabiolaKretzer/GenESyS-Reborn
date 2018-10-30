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
    int size = total_k * k;
    int combination[size];
    int factor = 1;
    
    // generate matrix of the scenarios
    int aux = total_k;
    int i = 0;
    int generic = 2;
    while (aux >= 1 && generic != total_k) {
        aux = (aux / 2);
        for(int g = 0; g < generic; g++) {
            factor = -1 * factor;
            for (int j = 0; j < aux; j++){
                combination[i] = factor;
                i++;
            }
        }
        generic = 2 * generic;
    }
    
    // add scenarios in controller
    int x;
    for (int h = 0; h < total_k; h++){
        x = h;
        for(std::list<SimulationControl*>::iterator it = control->find(control->first()); it != control->find(control->last()); ++it) {
                scenario->setControlValue(*it, (double) combination[x]);
                x = x + k;
        }
        _processAnalyser->startSimulationOfScenario(scenario);
        _scenarios->push_back(scenario);
    }
    return true;
}

bool ExperimentDesignFabiola::calculateContributionAndCoefficients(){
    return true;
}

ProcessAnalyser_if* ExperimentDesignFabiola::getProcessAnalyser() const {
	return _processAnalyser;
}
