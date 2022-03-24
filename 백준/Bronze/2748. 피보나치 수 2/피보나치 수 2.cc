#include <iostream>
using namespace std;

int main() {
    long a[100];
    
    a[0] = 0;
    a[1] = 1;
    
    int num = 0;
    cin >> num;
    for (int i = 2; i <= num; i++) {
        a[i] = a[i-1] + a[i-2];
    }
    
    cout << a[num];
    
    return 0;
}