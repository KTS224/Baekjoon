#include<string>
#include<iostream>
#include <algorithm>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
    
    int cntSort[10001] = { 0 };
    
    int N;
    cin >> N;
    
    for (int i = 0; i < N; i++) {
        int num;
        cin >> num;
        
        cntSort[num]++;
    }
    
    for (int i = 0; i < 10001; i++) {
        if (cntSort[i] != 0) {
            for (int j = 0; j < cntSort[i]; j++) {
                cout << i << "\n";
            }
        }
    }
    return 0;
}
