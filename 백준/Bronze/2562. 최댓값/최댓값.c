#include <stdio.h>

int main()
{
    int a[10];
    int max = 0,count = 0;
    
    for (int i = 0; i < 9; i++) {
        scanf("%d",&a[i]);
        
        if (a[i] > max) {
            max = a[i];
            count = i+1;
        }
        
    }
    
    printf("%d\n",max);
    printf("%d\n",count);
    return 0;
}