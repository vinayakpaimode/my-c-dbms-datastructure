#include<stdio.h>
void mergesort (int low,int high,int a[],int n)
{
int mid;
if(low<high)
{
mid=(low+high)/2;
mergesort(low,mid,a,n);
mergesort(mid+1,high,a,n);
merge(low,mid,high,a,n);
}
}
int merge(int low,int mid,int high,int a[],int n)
{
int i,h,j,k,b[20];
i=low;
h=low;
j=mid+1;
while((h<=mid)&&(j<=high))
{
if(a[h]<=a[j])
{
b[i]=a[h];
h++;
}
else
{
b[i]=a[j];
j++;
}
i++;
}
if(h>mid)
{
for(k=j;k<=high;k++)
{
b[i]=a[k];
i++;
}
}
else
{
for(k=h;k<=high;k++)
{
b[i]=a[k];
i++;
}
}
for(k=low;k<=high;k++)
{
a[k]=b[k];
}
}
void display(int a[],int n)
{
 int i;
 for(i=0;i<n;i++)
{
printf("%3d",a[i]);
}
}
int main()
{
int i,n,x,z,a[20];
printf("enter the limit");
scanf(" %d",&n);
printf("enter the element");
for(i=0;i<n;i++)
{
scanf(" %3d",&a[i]);
}
x=0;
z=n-1;
mergesort(x,z,a,n);
display(a,n);
}
