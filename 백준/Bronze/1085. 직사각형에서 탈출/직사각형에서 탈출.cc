#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    
    int x,y,w,h;
    cin >> x >> y >> w >> h;
    
    long num1,num2;
    
    if (x<w-x) {
        num1 = x;
    } else {
        num1 = w-x;
    }
    
    if (y<h-y) {
        num2 = y;
    } else {
        num2 = h-y;
    }
    
    if (num1 < num2) {
        cout << num1;
    } else
        cout << num2;
    
    return 0;
}
