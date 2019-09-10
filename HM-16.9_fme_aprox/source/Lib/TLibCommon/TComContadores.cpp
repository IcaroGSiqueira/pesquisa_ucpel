/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   TComContadores.cpp
 * Author: icaro
 * 
 * Created on 17 de Abril de 2019, 14:08
 */

#include "TComContadores.h"
#include "TComDataCU.h"


std::map<std::string, long long> TComContadores::contador_interpolador;
int TComContadores::n_taps;
int TComContadores::clip_before;
int TComContadores::rounddown;


void TComContadores::contabilizaInterpolacaoPU(int w, int h){
    
    std::ostringstream chave;
    chave << w << "x" << h;
    
    if (contador_interpolador.find(chave.str()) != contador_interpolador.end())
        contador_interpolador[chave.str()]++;
    contador_interpolador.insert(std::make_pair(chave.str(), 0));
}

void TComContadores::printReport(){
    std::map<std::string, long long>::iterator i;
    
    for(i = contador_interpolador.begin(); i != contador_interpolador.end(); i++){
        printf("%s %lld\n", i->first.c_str(), i->second);
    }
}