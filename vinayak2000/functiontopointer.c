#include<stdio.h>
int main()
{
int larger(int*,int*);
int n1,n2,max;
printf("enter two number ");
scanf("%d%d",&n1,&n2);
max=larger(&n1,&n2);
printf("the larger number is %d",max);
}
int larger(int *ptrn1,int *ptrn2)

{
if(*ptrn1>*ptrn2)
return(*ptrn1);
else
return(*
	ptrn2);
}

{
if(*ptrn1>*ptrn2)
return(*ptrn1);
else
return(*ptrn2);
}
 /*enter two number 5 6
the larger number is 6*/
