#include <stdio.h>

int main()
{
    int count, score[1000];
    int max = 0;
    float sum = 0;
    scanf("%d", &count);
    
    for (int i = 0; i < count; i++) {
        scanf("%d", &score[i]);
        
        if (score[i] >= max) {
            max = score[i];
        }
    }
    
    for (int j = 0; j < count; j++) {
        sum += (((float)score[j] / max) * 100);
    }

    printf("%f",sum / count);
    return 0;
}