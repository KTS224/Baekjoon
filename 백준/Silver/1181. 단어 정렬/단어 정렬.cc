#include<string>
#include<iostream>
#include <stack>
#include <algorithm>
using namespace std;

int compare(string i, string j) {
    if (i.length() == j.length()) {
        return i < j;
    } else
        return j.length() > i.length();
}

int main() {
    ios::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
    
    int N;
    cin >> N;

    string str[20001];
    for (int i = 0; i < N; i++) {
        cin >> str[i];
    }

    sort(str , str + N, compare);

    for (int i = 0; i < N; i++) {
        if (str[i] == str[i + 1]) {
            continue;
        } else
            cout << str[i] << "\n";
    }
    
    
    return 0;
}