#include<string.h>
#include<stdio.h>



int main()
{
int i,n;
char str1[5][10];
printf("how many strint you enter");
scanf("%d",&n);
for(i=0;i<n;i++)
{
printf("\n enter string \n");
scanf("%s",str1[i]);
}
for(i=0;i<n;i++)
printf("%s\n",str1[i]);


}
