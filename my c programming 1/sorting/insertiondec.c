#include<stdio.h>

	void isort(int a[],int n)
{
	int i,j,temp;
	for(i=1;i<n;i++)
 { 
	temp=a[i];
	for(j=i-1;j>=0 && a[j]<temp;j--)
 {
	
	a[j+1]=a[j];
      }
a[j+1]=temp;
     }
    }
   
	void accept(int a[],int n)
{
	int i;
	for(i=0;i<n;i++)
{
	printf("enter data");
	scanf("%d",&a[i]);
    }
}
	void display(int a[],int n)
{
	int i;
	for(i=0;i<n;i++)
{
	printf("%d ",a[i]);
   }
}
	int main()
{
	int n,a[100];
	printf("how many number you want to enter:\n");
	scanf("%d",&n);
	accept(a,n);
	printf("\n before sort\n");
	display(a,n);
	isort(a,n);
	printf("\nafter sort:\n");
	display(a,n);
}
