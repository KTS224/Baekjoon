func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    // 배열 선언
    var answer = Array(repeating: Array(repeating: 0, count: arr1[0].count), count: arr1.count)
    
    for indexOut in 0 ..< arr1.count {
        for indexIn in 0 ..< arr1[0].count { // 첫번째 배열의 첫번째 원소 개수만큼 반복
            
            answer[indexOut][indexIn] = arr1[indexOut][indexIn] + arr2[indexOut][indexIn]
        }
    }
    
    return answer
}