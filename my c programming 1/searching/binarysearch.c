#include<stdio.h>
int bs(int a[],int n,int key)
{
	int lb,ub,mid;
	lb=0;
	ub=n-1;
	while(lb<=ub)
	{
		mid=(lb+ub)/2;
		if(key==a[mid])
			return mid;
		else
		{
			if(key<a[mid])
			{
				ub=mid-1;
			}
			else
			{
				lb=mid+1;
			}
		}
	}
	return -1;
}
void bubblesort(int a[],int n)
{
	int i,j,temp,swap;
	for(i=n-1;i>0;i--)
	{
		for(j=0;j<i;j++)
		{
			if(a[j]>a[j+1])
			{
				temp=a[j];
				a[j]=a[j+1];
				a[j+1]=temp;
			}
		}
	}
}
void accept(int a[],int n)
{
        int i;
        
        for(i=0;i<n;i++)
        {
                printf("Enter data %d:\t",i);
                scanf("%d",&a[i]);
        }
}
void display(int a[],int n)
{
        int i;
        for(i=0;i<n;i++)
        {
                printf("%d\n",a[i]);
        }
}
int main()
{
	int a[10],n,key,t;
	printf("\nHow many no u want:\n");
	scanf("%d",&n);
	accept(a,n);
	printf("\nUsorted Array:\n");
	display(a,n);
	bubblesort(a,n);
	printf("\nSorted Array:\n");
	display(a,n);
	printf("\nWhich data you want to search:\n");
        scanf("%d",&key);
	t=bs(a,n,key);
	if(t==-1)
	{
		printf("data not found\n");
	}
	else			
	{
		printf("Data found at position %d",t);
	}
}
