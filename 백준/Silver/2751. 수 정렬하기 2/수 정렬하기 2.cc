#include <iostream>
#include <string>
#include <algorithm>
using namespace std;


int main() {
    
    int num = 0;
    scanf("%d", &num);
    int s[num];
    
    for (int i = 0; i < num; i++) {
        scanf("%d", &s[i]);
    }
    
    sort(s, s + num);

    for (int i = 0; i < num; i++) {
        printf("%d\n",s[i]);
    }
    
    return 0;
}
