#include<string>
#include<iostream>
#include <stack>
using namespace std;
stack<char> Stack;

int main() {
    
    string S;
    cin >> S;
    
    int cnt = 0;
    
    for (int i = 0; i < S.size(); i++) {
        if (S[i] == '(') {
            Stack.push(S[i]);
        } else if (S[i] == ')') {
            if (Stack.empty()) {
                cnt++;
            } else {
                Stack.pop();
            }
        }
    }
    
    cnt += Stack.size();
    cout << cnt;
    
    
    return 0;
}