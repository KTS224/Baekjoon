#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    
    string s;
    int alpha[26] = {0};
    
    cin >> s;
    
    for (int i = 0; i < size(s); i++) {
        if (s[i] >= 'a') {              //
            alpha[s[i] - 'a']++;            // 97 == 'a'
        } else if (s[i] <= 'Z') {         //
            alpha[s[i] - 'A']++;            //65 == 'A'
        }
    }
    
    int max = 0;
    int error = 0;
    
    for (int i = 0; i < size(alpha); i++) {
        
        if (max != 0 && max == alpha[i]) { ///max == alpha[size(alpha)-1]
            //max = 1000001;
            error++;
        } else if (alpha[i] > max) {
            max = alpha[i];
            error = 0;
        }
    }  // 중복체크
    
    char sort = '\0';
    int test = 0;
    
    for (int i = 0; i < size(alpha); i++) {
        if (alpha[i] > test) {
            test = alpha[i];
            sort = char(i + 'A');
        }
    }
    
    if (error > 0) {
        cout << "?" << endl;
    } else if (max < 1000001) {
        cout << sort;
    }
    
    return 0;
}
