#include <stdio.h>

void reverse(int *num){
    *num = (*num / 100) + (((*num % 100)/10)*10) + ((*num % 10)*100);
}

int main() {
    int a,b;
    scanf("%d %d", &a, &b);
    
    reverse(&a);
    reverse(&b);
    
    if (a > b)
        printf("%d", a);
    else
        printf("%d", b);
    
    return 0;
}