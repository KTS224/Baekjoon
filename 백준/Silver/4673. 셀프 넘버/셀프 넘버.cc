#include <iostream>
using namespace std;

int main() {
    int number[10001];
    
    for (int i = 1; i < 10000; i++) {
        number[i] = i;
    }
    //1~10000저장된 배열생성기
    
    int test;
    
    for (int i = 1; i < 10000; i++) {
        int num = i;
        test = num;
        if (num < 10) {
            test += num/10;
            num = num%10;
            test += num;
        } else if (num < 100) {
            test += num/100;
            num = num%100;
            test += num/10;
            num = num%10;
            test += num;
        } else if (num < 1000) {
            test += num/1000;
            num = num%1000;
            test += num/100;
            num = num%100;
            test += num/10;
            num = num%10;
            test += num;
        } else if (num < 10000) {
            test += num/10000;
            num = num%10000;
            test += num/1000;
            num = num%1000;
            test += num/100;
            num = num%100;
            test += num/10;
            num = num%10;
            test += num;
        }
        if (test < 10000) {
            number[test] = 0;
        }
    }
    
    for (int i = 1; i < 10000; i++) {
        if (number[i] != 0) {
            cout << number[i] << "\n";
        }
    }
    return 0;
}

