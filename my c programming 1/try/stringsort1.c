#include<stdio.h>

#include<string.h>
char a[20][20];
void bubblesort(int n)
{
	int i,j,r;
char temp[20],swap[20];
	for(i=n-1;i>0;i--)
	{
		for(j=0;j<i;j++)
		{
		  r=strcmp(a[j],a[j+1]);
          
           if(r>0)
			{
				strcpy(temp,a[j]);
				strcpy(a[j],a[j+1]);
				strcpy(a[j+1],temp);
			}
		}
	}
}

void accept(int n)

{
        int i;
        
        for(i=0;i<n;i++)
        {
                printf("Enter data %d:\t",i);
                scanf("%s",a[i]);
        }
}
void show(int n)
{
int i;
printf("--------------------------------------\n");
for(i=0;i<n;i++)
printf("%s\n",a[i]);
printf("--------------------------------------\n");
}

int main()
{
int n;
printf("how many number you want to enter ");
scanf("%d",&n);
accept(n);
printf("before sort   \n   " );
show(n);
printf("after sort   \n   " );
bubblesort(n);
show(n);
  
}


/*how many number you want to enter 6
Enter data 0:	may
Enter data 1:	sep
Enter data 2:	oct
Enter data 3:	jan
Enter data 4:	apr
Enter data 5:	nov
before sort   
   --------------------------------------
may
sep
oct
jan
apr
nov
--------------------------------------
after sort   
   --------------------------------------
apr
jan
may
nov
oct
sep
--------------------------------------
*/
