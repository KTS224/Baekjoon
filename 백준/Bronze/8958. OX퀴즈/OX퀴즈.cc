#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    
    int num;
    
    cin >> num;
    getchar();
    string s;
    
    for (int i = 0; i < num; i++) {
        getline(cin, s);
        int score = 0;
        long count = size(s);
        int sum = 0;
        for (int j = 0; j < size(s); j++) {
            
            if (s[j] == 'O') {
                score += 1;
                sum += score;
            } else if (s[j] == 'X') {
                score = 0;
                count--;
            }
        }
        cout << sum << endl;
    }
    
    return 0;
}
