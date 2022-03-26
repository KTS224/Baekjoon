#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    
    int num;
    string s;
    int sum = 0;
    char test;
    
    cin >> num;
    getchar();
    getline(cin, s);
    
    for (int i = 0; i < size(s); i++) {
        test = s[i];
        sum += test - 48;
    }
    
    cout << sum;
    
    return 0;
}
