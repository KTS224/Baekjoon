#include<string>
#include<cstring>
//#include <algorithm>
#include<iostream>
using namespace std;

int queue[2000001] = { 0 };
int countt = 0;
int frontt = -1;
int backk = 0;

void push(int item) {
    queue[++frontt] = item;
    countt++;
}

int pop() {
    if (backk > frontt) {
        return -1;
    } else {
        int tmp = 0;
        tmp = queue[backk++];
        countt--;
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


int back() {
    if (countt == 0) {
        return -1;
    } else
        return queue[frontt];
}

int front() {
    if (countt == 0) {
        return -1;
    } else
        return queue[backk];
}

int main() {
    
    int n;
    scanf("%d", &n);
//    cin >> n;

    while (n--) {

        char command[30] = {};
        scanf("%s",command);
//        cin >> command;
        
        if (strcmp(command, "push") == 0) {
            int item;
            scanf("%d", &item);
            push(item);
        } else if (strcmp(command, "front") == 0) {
            printf("%d\n", front());
//            cout << front() << endl;
        } else if (strcmp(command, "back") == 0) {
            printf("%d\n", back());
//            cout << back() << endl;
        } else if (strcmp(command, "size") == 0) {
            printf("%d\n", size());
//            cout << size() << endl;
        } else if (strcmp(command, "empty") == 0) {
            printf("%d\n", empty());
//            cout << empty() << endl;
        } else if (strcmp(command, "pop") == 0) {
            printf("%d\n", pop());
//            cout << pop() << endl;
        }
    }

    return 0;
}
