#include<stdio.h>
//#include<conio.h>
#include<stdlib.h>
int main()
{
int *ptr,n,n1,i;
printf("\n how many elements");
scanf("%d",&n);

ptr=(int*) malloc(n*sizeof(int));
printf("\n enter the element");
for(i=0;i<n;i++)
scanf("%d",ptr+i);
printf("how many new number");
 scanf("%d",&n1);
ptr=(int*) realloc(ptr,(n+n1)*sizeof(int));
if(ptr==NULL)
exit(1);
printf("\n enter the remaining number");
for(i=n;i<(n+n1);i++)
{
scanf("%d",ptr+i);
}
printf("\n entire list is:");
for(i=0;i<(n+n1);i++)
printf("%d\t",*(ptr+i));
}

/* how many elements5

 enter the element1
2
3
4
5
how many new number6

 enter the remaining number7
8
9
45
5
5

 entire list is:1	2	3	4y	5	7	8	9	45	5	5	*/
