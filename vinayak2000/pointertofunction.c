#include<stdio.h>
int main()
{
void  modify(int*,int*);
int n1=10,n2=20;
printf("\n two number are %d %d ",n1,n2);
modify(&n1,&n2);
printf("\n the modify values are %d %d",n1,n2);
}
void modify(int *ptrn1,int *ptrn2)
{
*ptrn1=50;
*ptrn2=100;
}



/*two number are 10 20 
 the modify values are 50 100*/
