//arrray of pointer and dynamic memory allocation

#include<stdio.h>
int main()
{
int *row[10];
int r,c,i,j;
printf("\n how many rows and column :");
scanf("%d %d",&r,&c);
for(i=0;i<r;i++)
{
row[i]=(int*)malloc(c* sizeof(int)); // (*int)malloc(c * sizeof(int));
for(j=0;j<c;j++)
{
printf(" enter the %d %d elements ",i,j);
scanf("%d",row[i]+j);
}
}

printf("\n the matrix is:\n");
for(i=0;i<r;i++)
{
for(j=0;j<c;j++)
printf("%d\t",*row[i]+j);
printf("\n");
}

}
 /*how many rows and column :2
3
 enter the 0 0 elements 1
 enter the 0 1 elements 2
 enter the 0 2 elements 5
 enter the 1 0 elements 4
 enter the 1 1 elements 8
 enter the 1 2 elements 8

 the matrix is:
1	2	3	
4	5	6	*/
