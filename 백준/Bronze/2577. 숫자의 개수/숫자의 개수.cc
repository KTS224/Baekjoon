#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    int a,b,c;
    long p;
    int num[10] = {};
    
    cin >> a;
    cin >> b;
    cin >> c;
    
    p = a * b * c;
    string s;
    s = to_string(p);
    
    for (int i = 0; i < size(s); i++) {
        num[s[i]-48]++;
    }
    
    for (int i = 0; i < 10; i++) {
        cout << num[i] << endl;
    }
    
    return 0;
}