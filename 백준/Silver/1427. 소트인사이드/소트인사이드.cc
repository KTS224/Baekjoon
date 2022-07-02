#include<string>
#include<iostream>
#include <algorithm>
using namespace std;

bool compare(int i, int j) {
    return j < i;
}

int main() {
    ios::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
    
    string str;
    cin >> str;
    
    sort(str.begin() , str.end(), compare);
    
    cout << str;
    
    return 0;
}