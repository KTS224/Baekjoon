#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    string s1;
    
    int num;
    int count;
    
    cin >> count;
    
    while (count > 0) {
        cin >> num;
        getchar();
        getline(cin,s1);
        
        for (int i = 0; i < s1.length(); i++)
            for (int j = 0; j < num; j++)
                cout << s1[i];
        cout << endl;
        count--;
    }
    
 
    return 0;
}