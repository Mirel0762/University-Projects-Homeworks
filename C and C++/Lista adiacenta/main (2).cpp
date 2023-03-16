#include <iostream>
#include <malloc.h>
#include <string.h>
#include <stdlib.h>
#include <fstream>
using namespace std;

ifstream f("intrare.txt");
ofstream g("iesire.txt");

struct lista {
    int k;
    struct lista *next;
};

struct lista *cons_lsi(int k, struct lista *l) {
    struct lista *aux;
    aux = (struct lista *)malloc(sizeof(struct lista));
    aux->k = k;
    aux->next = l;
    return (aux);
};

void tipar(struct lista *l) {
    struct lista *p;
    for (p = l; p; p = p->next)
        g << p->k << " ";
    g << endl;
}

struct lista *init_l() {
    struct lista *l;
    int n, x, i;
    l = NULL;
    f >> n;
    for (i = 0; i < n; i++) {
        f >> x;
        l = cons_lsi(x, l);
    }
    return (l);
}

int main() {
    struct lista *l[10];  //vector de pointer,l[i] reprezinta capul listei
    int i,j,n,gasit,exista;
    f >> n;
    for (i = 0; i < n; i++) {
        l[i] = init_l();
    }


    for (i = 1; i <= n; i++)
    {
        g << i << ":";
        gasit = 0;
        for (j = 0; j < n; j++)
        {
            struct lista *p = l[j];
            exista = 0;
            while (p)
            {
                if (p->k == i)
                {
                    if (exista)
                    {
                        g<<j+1<<" ";
                    }
                    else
                        g <<j+1<<" ";
                    exista = 1;
                    gasit = 1;
                }
                p = p->next;
            }

        }
        if (!gasit)
            g << "NULL";
        g << endl;
    }

    return 0;
}