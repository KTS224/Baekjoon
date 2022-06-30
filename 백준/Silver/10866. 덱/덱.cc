#include<cstring>
#include<iostream>
using namespace std;

int deque[100000] = { 0 };
int frontt = 50000;
int rear = 49999;
int cnt = 0;

void push_front(int item) {
    deque[--frontt] = item;
    cnt++;
}

void push_back(int item) {
    deque[++rear] = item;
    cnt++;
}

int pop_front() {
    if (cnt == 0) {
        return -1;
    } else {
        cnt--;
        return deque[frontt++];
    }
}

int pop_back() {
    if (cnt == 0) {
        return -1;
    } else {
        cnt--;
        return deque[rear--];
    }
}

int size() {
    return cnt;
}

int empty() {
    if (size() == 0) {
        return 1;
    } else {
        return 0;
    }
}

int front() {
    if (cnt == 0) {
        return -1;
    } else
        return deque[frontt];
    
}

int back() {
    if (cnt == 0) {
        return -1;
    } else
        return deque[rear];
}

int main() {
    
    int N;
    scanf("%d", &N);
    
    while (N--) {
        
        char command[30];
        scanf("%s", command);
        
        if (strcmp(command, "push_front") == 0) {
            int item;
            scanf("%d", &item);
            push_front(item);
            
        } else if ((strcmp(command, "push_back") == 0)) {
            int item;
            scanf("%d\n", &item);
            push_back(item);
            
        } else if ((strcmp(command, "pop_front") == 0)) {
            printf("%d\n", pop_front());
        } else if ((strcmp(command, "pop_back") == 0)) {
            printf("%d\n", pop_back());
        } else if ((strcmp(command, "size") == 0)) {
            printf("%d\n", size());
        } else if ((strcmp(command, "empty") == 0)) {
            printf("%d\n", empty());
        } else if ((strcmp(command, "front") == 0)) {
            printf("%d\n", front());
        } else if ((strcmp(command, "back") == 0)) {
            printf("%d\n", back());
        }
    }
    
    return 0;
}
