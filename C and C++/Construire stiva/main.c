/*
Se considera o lista simplu inlantuita.Sa se identifice elementele
divizibile cu 3 din lista si sa se construiasca din acestea
o stiva.La final in stiva se va insera si media aritmetica a
numerelor divizibile cu 3 din lista initiala.
*/

#include <stdio.h>
#include <conio.h>
#include <malloc.h>
#include <string.h>
#include <stdlib.h>
struct lista
{
    int k;
    struct lista *next;
};
typedef struct list
{
    int k;
    struct list *next;
} stiva;
struct lista *cons_lsi(int k,struct lista *l)
{
    struct lista *aux;
    aux=(struct lista *)malloc(sizeof(struct lista));
    aux->k=k;
    aux->next=l;
    return(aux);
}
struct lista *init_l()
{
    struct lista *l;
    int ci,k;
    char c,ck,cc[5];
    l=NULL;
    printf("Doriti sa incepeti initializarea listei [n pentru terminare]?");
    scanf("%c",&c);
    if (c!='n')
        k=1;
    else
        k=-1;
    while (k!=-1)
    {
        printf(" Introduceti o cheie : ");
        scanf("%s",cc);
        if (strcmp(cc,"n")) //!=0
            k=1; // daca nu s-a apasat n
        else
            k=-1;
        ci=atoi(cc);
        if(k!=-1)
            l=cons_lsi(ci,l);
    }
    return(l);
}
stiva *push(stiva *vf, int x)
{
    stiva *aux;
    aux=(stiva*)malloc(sizeof(stiva));
    aux->k=x;
    aux->next=vf;
    vf=aux;
    return vf;
}

stiva *divizibile_cu_trei(struct lista *l)
{
    stiva *vf=NULL;
    struct lista *p;
    float media=0;
    int nr=0;
    p=l;
    for(p=l;p;p=p->next)
    {
        if((p->k)%3==0)
        {
            vf=push(vf,p->k);
        }
        else
        {
            media=media+p->k;
            nr++;
        }
    }
    printf("\n");
    if (nr > 0)
    {
        media=media/nr;
        vf=push(vf,media);
    }

    return vf;
}
void tipar(struct lista *l)
{
    struct lista *p;
    for(p=l;p;p=p->next)
        printf("%d->",p->k);
    printf("NULL\n");
}
void afisare(stiva *vf)
{
    stiva *p;

    for(p=vf;p;p=p->next)
        printf("%i->",p->k);
    printf("NULL");
}
int main()
{
    struct lista *l;
    stiva *vf=NULL;
    l=init_l();
    printf("\n\nLista deja introdusa este :\n\n");
    tipar(l);
    printf("\n\nElementele stivei divizbile cu 3 :\n\n");
    vf=divizibile_cu_trei(l);
    afisare(vf);
    return 0;
}
