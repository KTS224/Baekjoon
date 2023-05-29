import sys

N = int(input())
arr = []

for _ in range(1, N+1):
    arr.append(int(sys.stdin.readline()))

for i in sorted(arr):
    print(i)