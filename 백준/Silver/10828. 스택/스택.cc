#include<string>
#include<cstring>
//#include <algorithm>
#include<iostream>
using namespace std;

int stack[10001] = { 0 };
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
        char command[100] = {};
        cin >> command;
        
        if (strcmp(command, "push") == 0) {
            int item;
            cin >> item;
            push(item);
        } else if (strcmp(command, "pop") == 0) {
            cout << pop() << endl;
        } else if (strcmp(command, "size") == 0) {
            cout << size() << endl;
        } else if (strcmp(command, "empty") == 0) {
            cout << empty() << endl;
        } else if (strcmp(command, "top") == 0) {
            cout << top() << endl;
        }
    }
    return 0;
}
