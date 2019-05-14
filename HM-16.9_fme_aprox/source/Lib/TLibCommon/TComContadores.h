/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   TComContadores.h
 * Author: icaro
 *
 * Created on 17 de Abril de 2019, 14:08
 */

#ifndef TCOMCONTADORES_H
#define TCOMCONTADORES_H
#include <map>
#include <string>
#include"TComDataCU.h"

#include<sstream>
#include<iostream>
#define N_TAPS_APPROX 4 // 8, 6, 4 or 2 taps

class TComContadores {
public:
    static std::map<std::string, long long> contador_interpolador;
    static int n_taps;
    static int clip_before;
    static void  printReport();
    static void contabilizaInterpolacaoPU(int, int);


};

#endif /* TCOMCONTADORES_H */

