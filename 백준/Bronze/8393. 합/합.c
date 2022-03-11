#include <stdio.h>

int main()
{
    int a=0,c;
    scanf("%d",&c);

    for (int i = 0; i <= c; i++)
    {
        a += i;
    }
    printf("%d",a);

    return 0;
}