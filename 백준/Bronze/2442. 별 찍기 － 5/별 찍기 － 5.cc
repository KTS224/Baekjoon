#include <iostream>
using namespace std;

int main() {
    
    int num;
    scanf("%d", &num);
    
    for (int i = 1; i<=num; i++) {
        for (int j = num; j > i; j--) {
            printf(" ");
        }
        
        for (int j = 1; j <= (i*2)-1; j++) {
            printf("*");
        }
        printf("\n");
    }
    return 0;
}