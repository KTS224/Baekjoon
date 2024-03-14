def solution(numbers):
    answer = []
    length = len(numbers)
    
    for i in range(length):
        for k in range(i + 1, length):
            answer.append(numbers[i] + numbers[k])
            
    return sorted(set(answer))