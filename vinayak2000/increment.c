#include<stdio.h>
int main()
{
int a[3]={10,20,30};
char c[3]={'A','B','C'};
int i,*p=a;
char *q=c;
for(i=0;i<3;i++)
{
printf("\n address of %d element is %d and value is %d",i,p,*p);
p++;
}
for(i=0;i<3;i++)
{
printf("\n address of %d element is %d and value is %c",i,q,*q);
q++;
}
return(0);
}



/*address of 0 element is -1120427776 and value is 10
 address of 1 element is -1120427772 and value is 20
 address of 2 element is -1120427768 and value is 30
 address of 0 element is -1120427808 and value is A
 address of 1 element is -1120427807 and value is B
 address of 2 element is -1120427806 and value is C
computer09@computer09:~/Desktop/vinayak$ ^C
computer09@computer09:~/Desktop/vinayak$ 

