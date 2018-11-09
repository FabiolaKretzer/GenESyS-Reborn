/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   FitterFabiola.h
 * Author: kretzer
 *
 * Created on 9 de Novembro de 2018, 13:16
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

#include "ProbDistrib.h"
#include "CollectorDatafileCancianImpl.h"
#include "StatisticsCancianImpl.h"

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
	std::string _dataFilename{""};
	StatisticsCancianImpl* _statistics;
        CollectorDatafileCancianImpl* _collector;
};

#endif /* FITTERFABIOLA_H */

