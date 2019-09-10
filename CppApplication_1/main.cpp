#include<time.h>
#include <stdio.h>
#include <stdlib.h> 

void preenche_vetor(int v[], int n){
    int i;
    for(i=0 ; i<n ; i++){
        v[i] = rand();
    }
}

int LinearSearch(int v[], int x, int n){
    int r=-1;
    int i=0;
    for (i=0 ; i<n ; i++){
        if(v[i] == x){
            r = i;
        }
    }
return r;
}

int BetterLinearSearch(int v[], int x, int n){
    int r=-1;
    int i=1;
    while(i != n){
        if(v[i] == x){
            r = i;
            return r;
        }
        i++;
    }
    return 0;
}

int SentinelLinearSearch(int v[], int x, int n){
    int last = v[n];
    v[n] = x;
    int r=-1;
    int i=1;
    while(v[i] != x){
        i++;
    }
    v[n] = last;
    if(i>n || v[n] == x){
        return i;
    }
    else{
        return 0;
    }
}

int main(){
    int *v,x,n=100;
    while(n<1000000000){
        srand(time(NULL));
        v=(int*) malloc(sizeof(int)*n);
        preenche_vetor(v,n);
        x=rand();
        time_t ini = clock();
        LinearSearch(v,x,n);
        //BetterLinearSearch(v,x,n);
        //SentinelLinearSearch(v,x,n);
        time_t end = clock();
        double tempo_total = (double)(end - ini)/CLOCKS_PER_SEC;
        //printf("%d,%d\n",end,ini);
        printf("tempo total para n = %d : %.6f\n",n,tempo_total);
        n=n*10;
    }
    return 0;
}