#include <stdio.h>

int main() {
    int K,D,A;
    scanf("%d/%d/%d",&K,&D,&A);
    
    if ((D > K + A) || (D == 0))
        printf("hasu");
    else
        printf("gosu");

    return 0;
}