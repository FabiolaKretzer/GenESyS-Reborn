
#include "StatisticsCancianImpl.h"
#include "ProbDistrib.h"

#include "FitterFabiola.h"

void FitterFabiola::constructor() {
    delete _statistics;
    delete _collector;
    
    _collector = new Traits<Collector_if>::Implementation();
    _collector->setDataFilename(_dataFilename);
    
    _statistics = new Traits<Statistics_if>::Implementation();
    _statistics->setCollector(_collector);
}

bool FitterFabiola::isNormalDistributed(double confidencelevel) {
    std::ofstream output("./normalDistribution.txt", std::ios::out);
    
    Traits<Sampler_if>::Implementation sampler;
    
    for (int i = 0; i < 1000; i++)
        output << sampler.sampleUniform(5, 10) << std::endl;
    
    output.close();
    Traits<HypothesisTester_if>::Implementation aux;
    aux.setDataFilename("./normalDistribution.txt");
    
    return aux.testAverage(confidencelevel, _dataFilename, HypothesisTester_if::EQUAL)
        && aux.testVariance(confidencelevel, _dataFilename, HypothesisTester_if::EQUAL);
}

void FitterFabiola::fitUniform (double *sqrerror, double *min, double *max){
    if (!_statistics)
        constructor();
    
    *min = _statistics->min();
    *max = _statistics->max();
    double sizeClass = (*max - *min) / _statistics->histogramNumClasses();
    double elements = _statistics->numElements();
    
    double integral = 0;
    Traits<Integrator_if>::Implementation integrate;
    
    double a = *min;
    double b = a + sizeClass;
    
    for (auto i = 0; i < _statistics->histogramNumClasses(); i++) {
        integral = integrate.integrate(a, b, ProbDistrib::uniform, *min, *max);
        *sqrerror = *sqrerror + pow(( _statistics->histogramClassFrequency(i) / elements) - integral, 2);
        a = b;
        b = b + sizeClass;
    }
}
    
void FitterFabiola::fitTriangular (double *sqrerror, double *min, double *mo, double *max) {
    if (!_statistics)
        constructor();
    
    *min = _statistics->min();
    *mo = _statistics->mode();
    *max = _statistics->max();
    double sizeClass = (*max - *min) / _statistics->histogramNumClasses();
    double elements = _statistics->numElements();
    
    double integral = 0;
    Traits<Integrator_if>::Implementation integrate;
    
    double a = *min;
    double b = a + sizeClass;
    
    for (auto i = 0; i < _statistics->histogramNumClasses(); i++) {
        integral = integrate.integrate(a, b, ProbDistrib::triangular, *min, *mo, *max);
        *sqrerror = *sqrerror + pow(( _statistics->histogramClassFrequency(i) / elements) - integral, 2);
        a = b;
        b = b + sizeClass;
    }
}

void FitterFabiola::fitNormal (double *sqrerror, double *avg, double *stddev) {
    if (!_statistics)
        constructor();
    
    *avg = _statistics->average();
    *stddev = _statistics->stddeviation();
    
    double min = _statistics->min();
    double max = _statistics->max();
    double sizeClass = (max - min) / _statistics->histogramNumClasses();
    double elements = _statistics->numElements();
    
    double integral = 0;
    Traits<Integrator_if>::Implementation integrate;
    
    double a = min;
    double b = a + sizeClass;
    
    for (auto i = 0; i < _statistics->histogramNumClasses(); i++) {
        integral = integrate.integrate(a, b, ProbDistrib::normal, *avg, *stddev);
        *sqrerror = *sqrerror + pow(( _statistics->histogramClassFrequency(i) / elements) - integral, 2);
        a = b;
        b = b + sizeClass;
    }
}

void FitterFabiola::fitExpo (double *sqrerror, double *avg1) {
    if (!_statistics)
        constructor();
    
    *avg1 = _statistics->average();
    
    double min = _statistics->min();
    double max = _statistics->max();
    double sizeClass = (max - min) / _statistics->histogramNumClasses();
    double elements = _statistics->numElements();
    
    double integral = 0;
    Traits<Integrator_if>::Implementation integrate;
    
    double a = min;
    double b = a + sizeClass;
    
    for (auto i = 0; i < _statistics->histogramNumClasses(); i++) {
        integral = integrate.integrate(a, b, ProbDistrib::exponential, *avg1);
        *sqrerror = *sqrerror + pow(( _statistics->histogramClassFrequency(i) / elements) - integral, 2);
        a = b;
        b = b + sizeClass;
    }
}

void FitterFabiola::fitErlang (double *sqrerror, double *avg, double *m) {
    if (!_statistics)
        constructor();
    
    *avg = _statistics->average();
    *m = *avg * std::pow(*avg / _statistics->stddeviation(), 2);
    
    double min = _statistics->min();
    double max = _statistics->max();
    double sizeClass = (max - min) / _statistics->histogramNumClasses();
    double elements = _statistics->numElements();
    
    double integral = 0;
    Traits<Integrator_if>::Implementation integrate;
    
    double a = min;
    double b = a + sizeClass;
    
    for (auto i = 0; i < _statistics->histogramNumClasses(); i++) {
        integral = integrate.integrate(a, b, ProbDistrib::erlang, *avg, *m);
        *sqrerror = *sqrerror + pow(( _statistics->histogramClassFrequency(i) / elements) - integral, 2);
        a = b;
        b = b + sizeClass;
    }
}

void FitterFabiola::fitBeta (double *sqrerror, double *alpha, double *beta, double *infLimit, double *supLimit) {
    if (!_statistics)
        constructor();
    
    *infLimit = _statistics->min();
    *supLimit = _statistics->max();
    
    double avg = _statistics->average();
    double dev = _statistics->stddeviation();
    
    *alpha = ((1 - avg) / std::pow(dev, 2) - 1 / avg) * std::pow(avg, 2);
    *beta = *alpha * (1 / avg - 1);
    
    double sizeClass = (*supLimit - *infLimit) / _statistics->histogramNumClasses();
    double elements = _statistics->numElements();
    
    double integral = 0;
    Traits<Integrator_if>::Implementation integrate;
    
    double a = *infLimit;
    double b = a + sizeClass;
    
    for (auto i = 0; i < _statistics->histogramNumClasses(); i++) {
        integral = integrate.integrate(a, b, ProbDistrib::beta, *alpha, *beta, *infLimit, *supLimit);
        *sqrerror = *sqrerror + pow(( _statistics->histogramClassFrequency(i) / elements) - integral, 2);
        a = b;
        b = b + sizeClass;
    }
}
	
void FitterFabiola::fitWeibull (double *sqrerror, double *alpha, double *scale) {
    if (!_statistics)
        constructor();
    
    double avg = _statistics->average();
    double dev = _statistics->stddeviation();
    
    *alpha = std::pow(dev / avg, -1.086);
    *scale = avg / std::tgamma(1 + 1 / *alpha);
    
    double min = _statistics->min();
    double max = _statistics->max();
    double sizeClass = (max - min) / _statistics->histogramNumClasses();
    double elements = _statistics->numElements();
    
    double integral = 0;
    Traits<Integrator_if>::Implementation integrate;
    
    double a = min;
    double b = a + sizeClass;
    
    for (auto i = 0; i < _statistics->histogramNumClasses(); i++) {
        integral = integrate.integrate(a, b, ProbDistrib::weibull, *alpha, *scale);
        *sqrerror = *sqrerror + pow(( _statistics->histogramClassFrequency(i) / elements) - integral, 2);
        a = b;
        b = b + sizeClass;
    }
}

void FitterFabiola::fitAll (double *sqrerror, std::string *name) {
    if (!_statistics)
        constructor();
    
    double error, x, p1, p2, p3, p4;
    
    fitUniform(&error, &p1, &p2);
    *name = "Uniform";
    
    fitTriangular(&x, &p1, &p2, &p3);
    
    if(x < error) {
        error = x;
        *name = "Triangular";
    }
    
    fitNormal(&x, &p1, &p2);
    
    if(x < error) {
        error = x;
        *name = "Normal";
    }
    
    fitExpo(&x, &p1);
    
    if(x < error) {
        error = x;
        *name = "Exponential";
    }
    
    fitErlang(&x, &p1, &p2);
    
    if(x < error) {
        error = x;
        *name = "Erlang";
    }
    
    fitBeta(&x, &p1, &p2, &p3, &p4);
    
    if(x < error) {
        error = x;
        *name = "Beta";
    }
    
    fitWeibull(&x, &p1, &p2);
    
    if(x < error) {
        error = x;
        *name = "Weibull";
    }
    
    *sqrerror = error; 
}

void FitterFabiola::setDataFilename(std::string dataFilename) {
    delete _statistics;
    delete _collector;
    
    _statistics = nullptr;
    _collector = nullptr;
    _dataFilename = dataFilename;
}

std::string FitterFabiola::getDataFilename() {
    return _dataFilename;
}