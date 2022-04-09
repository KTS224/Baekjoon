#include <iostream>
using namespace std;

int main() {
    int num,Jnum;
    scanf("%d",&num);
    int count = num;
    for (int i = 0; i<num; i++) {
        scanf("%d",&Jnum);
        
        for (int j = 0; j<Jnum; j++) {
            printf("#");
        }
        printf("\n");
            
        for (int k = 0; k < Jnum-2; k++) {
            printf("#");
            for (int j = 0; j < Jnum-2; j++) {
                printf("J");
            }
            printf("#\n");
        }
        
        if (Jnum !=1) {
            for (int j = 0; j<Jnum; j++) {
                printf("#");
            }
        }
        
        count--;
        if (Jnum==1) {
            printf("\n");
        }
        
        if (count != 0 && Jnum !=1) {
            printf("\n\n");
        }
        
    }
    return 0;
}