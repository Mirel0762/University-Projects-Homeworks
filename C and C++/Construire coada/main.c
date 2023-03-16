/*
Se considera o lista simplu inlantuita circulara.Sa se identifice
elementele pare din listă și sa se construiasca cu aceasta o coada
,inserand dupa fiecare valoarea 10.
Lista 2 3 5 6 8 11
Coada 8 10 6 10 2 10
*/

#include <stdio.h>
#include <malloc.h>
#include <stdlib.h>
#include <string.h>

typedef struct lista
	{ int k;
	  struct lista *next;
	} listac;

typedef struct celula_lista
{
    int k;
    struct celula_lista *next;
} LIST;

typedef struct coada
{
    LIST *front,*rear;
} QUEUE;

listac *cons_c(int k,listac *l)
{ listac *aux,*p;
	aux=(listac *)malloc(sizeof(listac));
	aux->k=k;
	if(l)
	{
        p=l;
        while(p->next!=l)
          p=p->next;
        p->next=aux;
        aux->next=l;
	}
	else
	  aux->next=aux;
	return(aux);
}

/* initializarea listei */
listac *init_l()
{
 char c,cc[5];
 int ci,k;
 listac *l=NULL;
 printf(" DORITI SA INCEPETI INITIALIZAREA LISTEI ? [d/n] [n final] ");
 scanf("%c",&c);
 //c1=getchar();
 if (c!='n')
	 k=1;
 else
	 k=-1;
 printf("\n");
 while (k!=-1)
 {      printf(" O CHEIE : ");
	    scanf("%s",cc);
		//c1=getchar();
		if (strcmp(cc,"n"))
			k=1;
		else
			k=-1;
		ci=atoi(cc);
		if (k!=-1)
			l=cons_c(ci,l);
 }
 return(l);
 }
QUEUE *newq(QUEUE *q)
{
    q=(QUEUE *)malloc(sizeof(QUEUE));
    q->front=q->rear=NULL;
    return(q);
}
QUEUE *addq(QUEUE *q,int e)
{
    LIST *aux;
    aux=(LIST *)malloc(sizeof(LIST));
    aux->k=e;
    aux->next=NULL;
    if ((q->front==NULL)&&
        (q->rear==NULL)) /* e primul element */
        q->front=q->rear=aux;
    else
    {
        q->rear->next=aux;
        q->rear=aux;
    }
    return(q);
}
int emptyq(QUEUE *q)
{
    if((q->front==q->rear)&&(q->front==NULL))
        return(1);
    else return(0);
}
QUEUE *inserare_dupa_par(listac *l)
{
    listac *p;
    QUEUE *q;
    q=NULL;
    q=newq(q);
    p=l;
    do
    {
        if((p->k)%2==0)
        {
            q=addq(q,p->k);
            q=addq(q,10);
        }
        p=p->next;
    } while(p!=l);
    return q;
}
void tipar(listac *l)
{
    listac *p;
	printf("\n\n Lista : ");
	if(l)
	{
		p=l;
		do
		{
			printf("%d->",p->k);
			p=p->next;
		}
		while (p!=l);
		printf("%d!!",l->k);
	}
	else
        printf("vida");
}




void printq(QUEUE *q)
{
    LIST *p;
    p=q->front;
    if(emptyq(q))
        printf(" coada vida \n ");
    else
        {
            do
            {
                printf("%d ",p->k);
                p=p->next;
            }
            while (p!=NULL);
        }
    printf(" \n ");
}
int main()
{
    listac *l;
    QUEUE *q;
	l=init_l();
	printf("\n Lista initiala este: ");
	tipar(l);
	q=inserare_dupa_par(l);
	printf("\n Coada este: ");
	printq(q);

	return 0;
}
