#include <stdio.h>

int main()
{
    int count = 0;
    scanf("%d",&count);
    
    int a,b;
    
    for (int i = 1; i <= count; i++) {
        scanf("%d %d",&a,&b);
        
        printf("Case #%d: %d + %d = %d\n",i,a,b,a+b);
    }
    
    
    return 0;
}