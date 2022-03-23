#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    string s1;
    getline(cin, s1);

    int num = 1;
    for (int i = 0; i <= s1.length(); i++) {
        if (s1[i] == ' ') {
            num++;
        }
    }
    
    if (s1[0] == ' ') {
        num--;
    }
    if (s1[s1.length()-1] == ' ') {
        num--;
    }
    if (s1 == "") {
        num = 0;
    }
    if (s1 == " ") {
        num = 0;
    }
        cout << num;
    
    return 0;
}