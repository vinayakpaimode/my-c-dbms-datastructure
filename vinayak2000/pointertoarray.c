#include<stdio.h>
int main()
{
int arr[5]={1,2,3,4,5};
int *p;
int(*ptr)[5];
p=arr;
ptr=&arr;
printf("\n Base size of p =%d  \n base size of ptr =%d ",sizeof(*p),sizeof(*ptr));
printf("\n p=%d ,ptr=%d",p,ptr);
p++;
ptr++;
printf("\n p=%d ,ptr=%d",p,ptr);
return 0;
}


/* Base size of p =4  
 base size of ptr =20 
 p=-1591412336 ,ptr=-1591412336
 p=-1591412332 ,ptr=-1591412316*/
