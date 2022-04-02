#include <iostream>
#include <algorithm>
using namespace std;

int main() {

    int num;
    
    cin >> num;
    
    int s[num];
    
    for (int i = 0; i < num; i++) {
        cin >> s[i];
    }
    
    sort(s, s+num);
    
    for (int i = 0; i < num; i++) {
        cout << s[i] << endl;
    }
    
    return 0;
}