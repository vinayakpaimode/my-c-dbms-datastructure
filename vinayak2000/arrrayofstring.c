#include<stdio.h>
int max=4;
int main()
{
char *msg[]={"welcome ","Good morning","thank you","excellent"};
int i=0;
for(i=0;i<max;i++)
printf("\n Message %d = %s",i,msg[i]);
return 0;
}

/*Message 0 = welcome 
 Message 1 = Good morning
 Message 2 = thank you
 Message 3 = excellent*/
