#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int memoZero[41];
int memoOne[41];


int fibonacciZero(int n) {
    if (n == 0) {
        return 1;
    } else if (n == 1) {
        return 0;
    } else if (memoZero[n] != 0) {
        return memoZero[n];
    }else {
        memoZero[n] = fibonacciZero(n-1) + fibonacciZero(n-2);
        return memoZero[n];
    }
}

int fibonacciOne(int n) {
    if (n == 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else if (memoOne[n] != 0) {
        return memoOne[n];
    } else {
        memoOne[n] = fibonacciOne(n-1) + fibonacciOne(n-2);
        return memoOne[n];
    }
}

int main() {
    
    int count;
    scanf("%d", &count);

    for (int i = 0; i < count; i++) {
        int num;
        scanf("%d", &num);

        printf("%d ", fibonacciZero(num));
        printf("%d\n",fibonacciOne(num));
    }

    return 0;
}