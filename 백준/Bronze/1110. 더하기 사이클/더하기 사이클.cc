#include <iostream>
using namespace std;

int main() {
    
    int input;
    cin >> input;
    
    int count = 1;
    int copyInput = input;
    
    if (input < 10) {
        input = (input * 10) + ((input * 10)/10) + (input * 10)%10;
    } else {
        input = (input%10)*10 + ((input/10)+(input%10))%10;
    }
    
    while (input != copyInput) {
        input = (input%10)*10 + ((input/10)+(input%10))%10;
        count++;
    }
    
    cout << count;
    
    return 0;
}
