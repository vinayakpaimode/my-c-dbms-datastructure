#include<stdio.h>
int partition(int A[],int low,int high)
{
int i,j,temp;
int pivot = A[low];
i = low+1;
j = high;
do
{
while(A[i]<=pivot)
	{ i++; }
while(A[j]>pivot)
	{ j--; }
if(i<j)
	{
	temp = A[i];
	A[i] = A[j]; 
	A[j] = temp;
	}
}while(i < j);

	temp = A[low];
	A[low] = A[j];
	A[j] = pivot;
return j;
}

void Quicksort(int A[],int low,int high)
{
	int partion1;
	if(low < high)
		{
		partion1 = partition(A,low,high);
		printf("partition = %d\n",partion1);
		Quicksort(A,low,partion1-1);
		Quicksort(A,partion1+1,high);
		}		
}

void accept(int A[],int n)
{int i;
	for(i = 0;i<n;i++)
	{
	printf("enter A[%d]\n",i);
	scanf("%d",&A[i]);
	}
}


void print(int A[],int n)
{int i;
	for(i = 0;i<n;i++)
	{
	printf("[%d]",A[i]);
	}
}


int main()
{
int A[100],n;
printf("\nhow many number you want -->>  \n");
scanf("%d",&n);
accept(A,n);
printf("\nBefore Quicksort \n");
print(A,n);
printf("\nAfter Quicksort \n");
Quicksort(A,0,n-1);
print(A,n);
return 0;

}
