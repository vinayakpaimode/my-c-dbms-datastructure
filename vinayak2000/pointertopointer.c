#include<stdio.h>
int main()
{
int a=10;
int *p,**q;
p=&a;
q=&p;
printf("\n  value of a=%d ",a);
printf("\n  value of p=%d ",*p);
printf("\n  value of q=%d ",**q);
printf("\n Address value of a=%d ",p);
printf("\n Address  value of p=%d ",&p);
printf("\n Address value of q=%d ",&q);
return(0);
}

/* value of a=10 
  value of p=10 
  value of q=10 
 Address value of a=-550968260 
 Address  value of p=-550968256 
 Address value of q=-550968248*/
