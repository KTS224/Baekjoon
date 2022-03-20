#include <stdio.h>

int main() {
    int a ,b ,c;
    
    while (1) {
        scanf("%d %d %d",&a,&b,&c);
        
        if (a==0 && b==0 && c==0) {
            break;
        }
        
        if ((c*c) == (a*a) + (b*b)) {
            printf("right\n");
        } else if ((a*a) == (c*c) + (b*b)) {
            printf("right\n");
        } else if ((b*b) == (a*a) + (c*c)) {
            printf("right\n");
        } else {
            printf("wrong\n");
        }
    }
    return 0;
}