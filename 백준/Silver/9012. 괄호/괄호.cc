#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    
    int num;
    cin >> num;
    
    for (int i = 0; i < num; i++) {
        string s;
        int left = 0;
        
        cin >> s;
        
        for (int j = 0; j < s.length(); j++) {
            if (s[j] == '(') {
                left++;
            } else if (s[j] == ')' && left > 0) {
                left--;
            } else {
                left = -10;
            }
        }
        
        if (left == 0) {
            cout << "YES\n";
        } else {
            cout << "NO\n";
        }
        
    }
    
    return 0;
}
