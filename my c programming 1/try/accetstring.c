#include<string.h>
char a[10][10];
void accept(int n)
{
    int i,f;
        scanf("any enter %d",&f);
	for(i=0;i<n;i++)
		{
				printf("Enter data        :\n");
				scanf("%s",a[i]);
        }

}

int main()
{
int n, i,k;
char str[10][10];
char str2[] = "vinayak paimode";
printf("%s",str2);
printf(" hwelll""\n""how many number you enter     ");
scanf("%d",&n);
accept(n);



for(i=0;i<n;i++)
printf("%s\n",a[i]);

}
