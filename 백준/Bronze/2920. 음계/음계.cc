#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    int num[8];
    int ascCount = 0;
    int descCount = 0;
    
    for (int i = 0; i < size(num); i++) {
        cin >> num[i];
    }

    for (int i = 0 ; i < size(num)-1; i++) {
        if (num[i] < num[i+1])
            ascCount += 1;
        else if (num[i] > num[i+1])
            descCount += 1;
    }
    
        if (ascCount == 7)
            cout << "ascending";
        else if (descCount == 7)
            cout << "descending";
        else
            cout << "mixed";
    
    return 0;
}