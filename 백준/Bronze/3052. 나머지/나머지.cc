#include <iostream>
using namespace std;

int main() {
    int r[42] = {};
    int num[10];
    int count = 0;
    
    for (int i = 0; i < 10; i++) {
        cin >> num[i];
        r[num[i]%42]++;
    }
    
    for (int i = 0; i < 42; i++) {
        if (r[i] != 0) {
            count++;
        }
    }
    
    cout << count;
    
    return 0;
}
