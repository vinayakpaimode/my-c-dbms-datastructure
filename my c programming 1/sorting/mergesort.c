#include<stdio.h>
void merge(int a[],int mid,int lo,int hi)
{
int i,j,k,b[100];
i=lo,j=mid+1,k=lo;							
while(i<=mid&&j<=hi)					
	{
	if (a[i]<a[j])					
		{				    	 
		b[k]=a[i];				
		i++;k++;					
		}					
	else						
		{					
		b[k]=a[j];				
		j++;k++;					
		}	
}				
while(i<=mid)
	{
	b[k]=a[i];
	k++;i++;	
	}
while(j<=hi)
	{
	b[k]=a[j];
	k++;j++;	
	}

							
	for(i = lo;i <= hi;i++)
		{
		a[i]=b[i];
		}	
}			

void ms(int a[],int l,int h)
	{
    int mid; 
	 if(l < h)
	{
 	 mid = (l+h)/2;			
	 ms(a,l,mid); 
 	 ms(a,mid+1,h);
	 merge(a,mid,l,h);
}
	}
int main()
{
int i;
int a[]={1,3,2,4,5,6,7};
ms(a,0,6);
for(i=0;i<7;i++){
printf(" %d ",a[i]);}
return 0;
} 									          
	 									          
	 									    