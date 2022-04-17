#include <iostream>
using namespace std;

int main() {
    
    int num;
    
    cin >> num;
    
    int q,w,e,r,t;
    
    cin >> q >> w >> e >> r >> t;
    
    int count = 0;
    if (q == num)
        count++;
    if (w==num)
        count++;
    if (e==num)
        count++;
    if (r==num)
        count++;
    if (t==num)
        count++;
    
    cout << count;
    return 0;
}


