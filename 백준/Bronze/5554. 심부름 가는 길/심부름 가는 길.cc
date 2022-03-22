#include <iostream>
using namespace std;

int main() {
    
    int a,b,c,d,sum = 0,count = 0;
    cin >> a >> b >> c >> d;
    
    sum = a + b + c + d;
    
    while (sum >= 60) {
        sum = sum - 60;
        count ++;
    }
    
    cout << count << endl << sum;
    
    return 0;
}