#include<string>
#include<iostream>
#include <stack>
#include <algorithm>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
    
    string num = "1";

    while (1) {
        cin >> num;
        if (num == "0")
            break;
        
        stack<char> S;
        
        for (int i = 0; i < num.length()/2; i++) {
            S.push(num[i]);
        }

        if (num.length() % 2 == 1) { //홀수일때
            for (int i = num.length()/2 + 1; i < num.length(); i++) {
                if (S.top() == num[i]) {
                    S.pop();
                } else
                    break;
            }
        } else {
            for (int i = num.length()/2; i < num.length(); i++) {
                if (S.top() == num[i]) {
                    S.pop();
                } else
                    break;
            }
        }
        
        if (S.empty() == 1)
            cout << "yes\n";
        else
            cout << "no\n";
    }
    
    return 0;
}