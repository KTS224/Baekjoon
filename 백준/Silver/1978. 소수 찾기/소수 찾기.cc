#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    int count,so = 0;
    
    cin >> count;
    
    for (int i = 0; i < count; i++) {
        int num;
        cin >> num;
        int t = 0;
        
        if (num != 1) {
            for (int j = 1; j <= num; j++) {
                if (num%j == 0) {
                    t++;
                }
            }
            if (t == 2) {
                so++;
            }
        }
    }
    cout << so;
    return 0;
}