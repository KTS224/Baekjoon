#include <stdio.h>

int main()
{
    int count,num;
    int max = -1000000;
    int min = 1000000;
    
    scanf("%d", &count);
    
    while (count) {
        if (count == 1) {
            scanf("%d", &num);
        } else {
            scanf("%d ", &num);
        }

        if (num >= max) {
            max = num;
        }
        if (num <= min) {
            min = num;
        }
        count--;
    }
    
    printf("%d %d", min, max);
    
    return 0;
}