#include<stdio.h>
//#include<conio.h>
#include<stdlib.h>
int main()
{
int *ptr,n,i,sum=0;
printf("\n how many elements");
scanf("%d",&n);

ptr=(int*)malloc(n*sizeof(int));
if(ptr==NULL)
{
printf("\n MEMARY WAS NOT ALLOCATED");
exit(0);
}
printf("\n enter the element");
for(i=0;i<n;i++)
{
scanf("%d",ptr+i);
sum=sum+ *(ptr+i);
}
printf("\n you enter: \n");
for(i=0;i<n;i++)
printf("%d \n",ptr[i]);
printf("the sum is =%d ",sum);
free(ptr);
}

/* how many elements2

 enter the element2
2

 you enter: 
2 
2 
the sum is =4*/


