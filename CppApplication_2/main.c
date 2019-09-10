#include<time.h>
#include <stdio.h>
#include <stdlib.h> 

void preenche_vetor(int v[], int n){
    int i;
    for(i=0 ; i<n ; i++){
        v[i] = rand();
    }
}

//typedef struct tree_nodo{
    //int val;
    //struct nodo *left;
    //struct nodo *right;
//}nodo;

void BuildMaxHeap(int v[], int n){
    //v.heapsize = v.length
    int i;
    for(i = n/2 ; i>0 ; i--){
        Max_Heapify(v,i,n);
    }
}

void Max_Heapify(int v[], int i, int n){
    int l = v[2*i+1], r = v[2*i+2], largest, temp;
    if (l <= n && v[l] > v[i]){
        largest = l;
    }else{
        largest = i;
    }
    if (r <= n && v[r] > v[largest]){
        largest = r;
    }
    if (largest != i){
        temp = v[i];
        v[i] = v[largest];
        v[largest] = temp;
        Max_Heapify(v,largest,n);
    }
}

void HeapSort(int v[], int n){
    int temp, i;
    BuildMaxHeap(v,n);
    for(i = n ; i > 0 ; i--){
        temp = v[0];
        v[0] = v [i];
        v[i] = temp;
        n = n-1;
        Max_Heapify(v,0,n);
    }
}

int Part(int v[], int p, int r){
    int x=v[r],i=p-1, temp, j;
    for(j=p ; j<=r-1 ; j++){
        if(v[j]<=x){
            i++;
            temp = v[j];
            v[j] = v[i];
            v[i] = temp;
        }
    }
    temp = v[r];
    v[r] = v[i+1];
    v[i+1] = temp;
    return(i+1);
}

void QuickSort(int v[], int p, int r){
    int q;
    if(p < r){
        q=Part(v,p,r);
        QuickSort(v,p,q-1);
        QuickSort(v,q+1,r);
    }
}


void SelectionSort(int v[], int n){
    int menor,i,j,tmp;
    for(i=1 ; i<n ; i++){
        menor=i;
        for(j=i+1 ; j<n ; j++){
            if(v[menor]>v[j]){
                menor = j;
                tmp = v[menor];
                v[menor] = v[i];
                v[i] = tmp;
            }
            
        }
    }
}

void InsertionSort(int v[], int n){
    int i,j,chave;
    for(i=2 ; i<n ; i++){
        chave=v[i];
        j=i-1;
        while((j>0) && (v[j] > chave)){
            v[j+1] = v[j];
            j--;
            
        }
        v[j+1] = chave;
    }
}


int BinarySearch(int v[], int x, int n){
    int p, q=n, m;
    floor(m=n/2);
    while(p<=(q+1)){
        floor(m=(q-p)/2);
        if(v[m] == x){
            return m;
        }else if(v[m] > x){
            q=m-1;
        }else{
            p=m+1;
        }
    }
    return -1;
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
    int *v,x,n=100,p=0;
    while(n<1000000000){
        srand(time(NULL));
        v=(int*) malloc(sizeof(int)*n);
        preenche_vetor(v,n);
        x=rand();
        
        
        //time_t ini1 = clock();
        
        //SelectionSort(v,n);
        
        //LinearSearch(v,x,n);
        
        //BinarySearch(v,x,n);
        
        //time_t end1 = clock();
        
        
        
        //time_t ini2 = clock();
        
        //InsertionSort(v,n);
        
        //BetterLinearSearch(v,x,n);
        
        //time_t end2 = clock();
        
        
        
        time_t ini3 = clock();
        
        HeapSort(v,n);
        
        //QuickSort(v,p,n);
        
        //SentinelLinearSearch(v,x,n);
        
        time_t end3 = clock();
        
        
        //double tempo_total1 = (double)(end1 - ini1)/CLOCKS_PER_SEC;
        //double tempo_total2 = (double)(end2 - ini2)/CLOCKS_PER_SEC;
        double tempo_total3 = (double)(end3 - ini3)/CLOCKS_PER_SEC;
        
        //printf("SelectionSort:\n");
        //printf("tempo total para n = %d : %.6f\n",n,tempo_total1);
        
        //printf("InsertionSort:\n");
        //printf("tempo total para n = %d : %.6f\n",n,tempo_total2);
        
        printf("QuickSort:\n");
        printf("tempo total para n = %d : %.6f\n",n,tempo_total3);
        
        n=n*10;
    }
    return 0;
}




