#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    int alpha[26] = {};
    string s;
    
    fill_n(alpha, size(alpha) ,-1);
    
    cin >> s;
    
    for (int i = 0; i < s.size(); i++) {
        
        if (alpha[s[i] - 97] == -1) {
            alpha[s[i] - 97] = i;
        }
    }
    
    for (int i = 0; i < size(alpha); i++) {
        cout << alpha[i] << " ";
    }
    
    return 0;
}