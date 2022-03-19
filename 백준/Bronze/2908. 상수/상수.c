#include <stdio.h>

int main() {
    int a,b;
    scanf("%d %d", &a, &b);
    int reA, reB;
    
    reA = (a / 100) + (((a % 100)/10)*10) + ((a % 10)*100);
    reB = (b / 100) + (((b % 100)/10)*10) + ((b % 10)*100);
    
    if (reA > reB) {
        printf("%d", reA);
    } else {
        printf("%d", reB);
    }
    
    return 0;
}