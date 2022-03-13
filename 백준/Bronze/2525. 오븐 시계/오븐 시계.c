#include <stdio.h>

int main()
{
    int time,minute,c;
    
    scanf("%d %d",&time ,&minute);
    scanf("%d",&c);
    minute += c;
    
    while (minute >= 60) {
        minute -= 60;
        time += 1;
    }
    
    
    if (time >= 24) {
        time -= 24;
    }
    printf("%d %d",time,minute);
    return 0;
}