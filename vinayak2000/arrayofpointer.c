#include<stdio.h>
int max=3;
int main()
{
int var[]={10,100,1000};
int i,*ptr[max];
for(i=0;i<max;i++)
{
ptr[i]=&var[i];
}
for(i=0;i<max;i++)
{
printf("\n value f var %d =%d",i,*ptr[i]);
}
return 0;
}
/*value f var 0 =10
 value f var 1 =100
 value f var 2 =1000*/
