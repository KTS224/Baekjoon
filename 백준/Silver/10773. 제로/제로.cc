#include<string>
#include<cstring>
//#include <algorithm>
#include<iostream>
using namespace std;

int stack[100001] = { 0 };
int countt = 0;

void push(int item) {
    stack[countt] = item;
    countt++;
}

int pop() {
    if (countt == 0) {
        return -1;
    } else {
        int tmp = 0;
        tmp = stack[--countt];
        return tmp;
    }
}

int size() {
    return countt;
}

int empty() {
    if (countt == 0) {
        return 1;
    } else
        return 0;
}

int top() {
    if (empty())
        return -1;
    else {
        int tmp = 0;
        tmp = countt -1;
        return stack[tmp];
    }
        
}

int main() {
    
    int n;
    cin >> n;

    while (n--) {


        int item = 0;
        cin >> item;

        if (item == 0) {
            pop();
        } else {
            push(item);
        }

    }

    int sum = 0;
    for (int i = 0; i < size(); i++) {
        sum += stack[i];
    }

    cout << sum << endl;
    
    return 0;
}
