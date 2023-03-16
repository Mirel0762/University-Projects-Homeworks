/* Să se scrie un program C care să efectueze următoarea prelucare:se dă un arbore binar oarecare;să se construiască o coadă care conține elementele
din arbore și subarborii din arbore,astfel:în aceeași celulă din coadă,vor fi stocate cheia din rădăcina unui subarbore și subarborii dominați
de nodul respctiv - de ex.,în prima celulă,vom stoca din rădăcina arborelui și pointeri către cei doi subarbori ai rădăcinii,stânga/dreapta.. */

#include <stdio.h>

#include <malloc.h>

struct arbore
{
    int k;
    struct arbore *ss,*sd;
};


struct arbore *init_arbore_binar()
{
    struct arbore *aux;
    char nn,c1;
    int k;

    printf(" e nod NULL ? ");
    scanf("%c",&nn);
    c1=getchar();
    if ((nn== 'n')||(nn== 'N'))
    {
        printf(" cheie : ");
        scanf("%d",&k);
        c1=getchar();
        aux=(struct arbore *) malloc (sizeof (struct arbore ));
        aux->k=k;
        printf("Fiul stang al lui %d",k);
        aux->ss=init_arbore_binar();
        printf("Fiul drept al lui %d",k);
        aux->sd=init_arbore_binar();
        return aux;
    }
    else
        return NULL;

}

void RSD( struct arbore *a)
{
    if(a)
    {
        printf("%d ",a->k);
        RSD(a->ss);
        RSD(a->sd);
    }
}

//COADA

typedef struct celula_lista
{
    struct arbore *k;
    struct celula_lista *next;
} LIST;
typedef struct coada
{
    LIST *front,*rear;
} QUEUE;

QUEUE *newq(QUEUE *q)
{
    q=(QUEUE *)malloc(sizeof(QUEUE));
    q->front=q->rear=NULL;
    return(q);
}

int emptyq(QUEUE *q)
{
    if((q->front==q->rear)&&(q->front==NULL))
        return(1);
    else
        return(0);
}

QUEUE *addq(QUEUE *q,struct arbore *e)
{
    LIST *aux;
    aux=(LIST *)malloc(sizeof(LIST));
    aux->k=e;
    aux->next=NULL;
    if ((q->front==NULL)&&(q->rear==NULL)) /* e primul element */
        q->front=q->rear=aux;
    else
    {
        q->rear->next=aux;
        q->rear=aux;
    }
    return(q);
}

void printq(QUEUE *q)
{
    LIST *p;
    if(emptyq(q))
        printf(" coada vida \n ");
    else
    {
        p=q->front;
        while (p!=NULL)
        {
            RSD(p->k);
            printf("*\n");
            p=p->next;
        }

    }
    printf(" \n ");
}
int frontq(QUEUE *q)
{
    if(!emptyq(q))
        return(q->front->k);
    else
    {
        printf("\n Coada este vida.");
        return(-1);
    }
}
 QUEUE *q;
void creareCoada(struct arbore *a)
{

    if(a)
    {
        addq(q,a);
        creareCoada(a->ss);
        creareCoada(a->sd);
    }

}

int main()
{
    struct arbore *a;

    printf("Radacina");
    a=init_arbore_binar();
    printf("Parcurgerea RSD : ");
    RSD(a);

    printf("\n");
    printf("\n\nCoada introdusa este: ");

    q=newq(q);
    creareCoada(a);
    printq(q);



    printf("\n");
    return 0;
}