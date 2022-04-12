#include <iostream>
using namespace std;

int main() {
    int score;
    int sum = 0;
    for (int i = 0; i < 5; i++) {
        cin >> score;
        
        if (score <= 40) {
            score = 40;
        }
        
        sum += score;
    }
    
    int avr = sum / 5;
    
    cout << avr;
    
    return 0;
}