#include <iostream>
using namespace std;
int fibo(int n) {
    if (n == 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    }
    for (int i = 2; i < n; i++) {
        return fibo(n-1) + fibo(n-2);
    }
    return 1;
}

int main() {
    int a;
    cin >> a;
    cout << fibo(a);
    return 0;
}