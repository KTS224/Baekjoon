#include <iostream>
using namespace std;

int main() {
    
    string s;
    float res=0.0;
    cin >> s;
    
    if (s[0] == 'A') {
        res +=4.0;
    } else if (s[0] == 'B') {
        res +=3.0;
    } else if (s[0] == 'C') {
        res +=2.0;
    } else if (s[0] == 'D') {
        res +=1.0;
    }
    
    if (s[1] == '+') {
        res +=0.3;
    } else if (s[1] == '-') {
        res -=0.3;
    }
    
        printf("%.1f",res);
    
    return 0;
}
