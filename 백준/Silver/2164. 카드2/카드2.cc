#include<string>
#include<iostream>
using namespace std;

int queue[8000000] = { 0 };
int front = 0;
int rear = -1;
int cnt = 0;

void add(int item) {
    queue[++rear] = item;
    cnt++;
}

void remov() {
    front++;
    cnt--;
}

void frontorear() {
    queue[++rear] = queue[front];
    front++;
}

int main() {
    
    int N;
    scanf("%d", &N);
    
    if (N == 1) {
        cout << 1;
    } else {
        for (int i = 0; i < N; i++) {
            add(i + 1);
        }
        
        while (cnt > 2) {
            remov();
            frontorear();
        }
        
        remov();
        cout << queue[front];
    }
    
    return 0;
}