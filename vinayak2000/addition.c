#include<stdio.h>
int main()
{
int a[5]={10,20,30,40,50};
char c[5]={'A','B','C','D','E'};
int i,*p=a;
char *q=c;
printf("\n address p element is %d and value is %d ",p,*p);
printf("\n address Q element is %d and value is %c ",q,*q);
p=p+4;
q=q+3;
printf("\n address p element is %d and value is %d ",p,*p);
printf("\n address Q element is %d and value is %c ",q,*q);
return(0);
}
/*address p element is -1971310096 and value is 10 
 address Q element is -1971310064 and value is A 
 address p element is -1971310080 and value is 50 
 address Q element is -1971310061 and value is D*/

















