import sys
input = sys.stdin.readline

sett = set()
num = int(input())

for _ in range(0, num):
    command = input().split()

    if len(command) == 1:
        if command[0] == "all":
            sett = set(range(1, 21))
        else:
            sett = set()
        continue

    n = int(command[1])

    if command[0] == "add":
        if n not in sett:
            sett.add(n)
    elif command[0] == "remove":
        sett.discard(n)
    elif command[0] == "check":
        if n in sett:
            print("1")
        elif n not in sett:
            print("0")
    elif command[0] == "toggle":
        if n not in sett:
            sett.add(n)
        else:
            sett.discard(n)