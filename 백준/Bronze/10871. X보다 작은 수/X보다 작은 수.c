#include <stdio.h>

int main()
{
    int N,X;
    
    scanf("%d %d",&N,&X);
    
    for (int i = 1; i <= N; i++) {
        int num;
        scanf("%d",&num);
        
        if (num < X) {
            printf("%d ",num);
        }
    }
    
    return 0;
}