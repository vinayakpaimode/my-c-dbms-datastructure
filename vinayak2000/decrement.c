#include<stdio.h>
int main()
{
int a[3]={10,20,30};
char c[3]={'A','B','C'};
int i,*p=&a[2];
char *q=&c[2];
for(i=2;i>=0;i--)
{
printf("\n Address of %d element is %d and value is %d ",i,p,*p);
p--;
}
for(i=2;i>=0;i--)
{
printf("\n Address of %d element is %d and value is %c ",i,q,*q);
q--;
}
return 0;
}
/*

Address of 2 element is -86994536 and value is 30 
 Address of 1 element is -86994540 and value is 20 
 Address of 0 element is -86994544 and value is 10 
 Address of 2 element is -86994574 and value is C 
 Address of 1 element is -86994575 and value is B 
 Address of 0 element is -86994576 and value is A */
