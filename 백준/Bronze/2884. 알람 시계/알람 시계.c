#include <stdio.h>

int main()
{
    int time,minute;
    
    scanf("%d %d",&time ,&minute);
    
    if (minute >= 45) {
        minute -= 45;
    } else if (minute < 45) {
        minute = 60 - (45 - minute);
        time -= 1;
    }
    
    if (time < 0) {
        time = 24 + time;
    }
    printf("%d %d",time,minute);
    return 0;
}
/*
 만약 분이 30이면
 30 - 45 안되니까
 30 - 30 하고 60 - 15 = 45
 
 20분이면
 20 - 20 하고 60 - 25 = 35
 
 결국
 60 - (45 - minute) ㅇ
 */