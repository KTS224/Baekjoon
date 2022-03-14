#include <stdio.h>

int main()
{
    int num[5], sum = 0;
    
    for (int i = 0; i < 5; i++) {
        scanf("%d",&num[i]);
    }
    
    for (int j = 0; j < 5; j++) {
        sum += num[j] * num[j];
    }
    
    printf("%d",sum % 10);
    
    return 0;
}