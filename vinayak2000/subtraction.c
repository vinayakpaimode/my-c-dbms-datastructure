#include<stdio.h>
int main()
{
int a[5]={10,20,30,40,50};
char c[5]={'A','B','C','D','E'};
int i,*p=&a[4];
char *q=&c[4];
printf("\n address p element is %d and value is %d ",p,*p);
printf("\n address Q element is %d and value is %c ",q,*q);
p=p-3;
q=q-2;
printf("\n address p element is %d and value is %d ",p,*p);
printf("\n address Q element is %d and value is %c ",q,*q);
return(0);
}
/*
address p element is -1418568864 and value is 50 
 address Q element is -1418568844 and value is E 
 address p element is -1418568876 and value is 20 
 address Q element is -1418568846 and value is C computer09@computer09:~/Desktop/vinayak$ 

