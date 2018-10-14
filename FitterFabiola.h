/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   FitterFabiola.h
 * Author: fabiola
 *
 * Created on 14 de Outubro de 2018, 17:53
 */

#ifndef FITTERFABIOLA_H
#define FITTERFABIOLA_H

#include <iostream>
#include <fstream>
#include <string>
#include <functional>
#include <cmath>
#include <vector>
#include "Fitter_if.h"
#include "Traits.h"
#include "ProbDistrib.h"

class FitterFabiola: public Fitter_if {
    
public:
	FitterFabiola();
	FitterFabiola(const FitterFabiola& orig);
	~FitterFabiola();
	bool isNormalDistributed(double confidencelevel);
	void fitUniform (double *sqrerror, double *min, double *max);
	void fitTriangular (double *sqrerror, double *min, double *mo, double *max);
	void fitNormal (double *sqrerror, double *avg, double *stddev);
	void fitExpo (double *sqrerror, double *avg1);
	void fitErlang (double *sqrerror, double *avg, double *m);
	void fitBeta (double *sqrerror, double *alpha, double *beta, double *infLimit, double *supLimit);
	void fitWeibull (double *sqrerror, double *alpha, double *scale);
	void fitAll (double *sqrerror, std::string *name);
public:
	void setDataFilename(std::string dataFilename);
	std::string getDataFilename();
private:
	void constructor();
	
private:
	std::string _dataFilename{""};
	Traits<Statistics_if>::Implementation * _statistics{nullptr};
        Traits<Collector_if>::Implementation * _collector{nullptr};
};

#endif /* FITTERFABIOLA_H */

