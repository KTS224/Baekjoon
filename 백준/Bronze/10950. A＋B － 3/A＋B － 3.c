#include <stdio.h>

int main()
{
    int c;
    scanf("%d",&c);
    int a[c],b[c];
    for(int i=0; i < c; i++)
         scanf("%d %d",&a[i],&b[i]);

    for(int j=0; j < c; j++)
        printf("%d\n",a[j]+b[j]);

    return 0;
}