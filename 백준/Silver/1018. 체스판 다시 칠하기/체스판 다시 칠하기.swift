import Foundation

var input1 = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr: [[String]] = []
var count: [Int] = []

for _ in 1...input1[0] {
    let input2 = readLine()!
    var temp: [String] = []
    for char in input2 {
        temp.append(String(char))
    }

    arr.append(temp)
}

for col in 0...input1[0]-8 { // 세로
    for row in 0...input1[1]-8 { // 가로
        var tempCount = 0
        var BorW = "B"
        var WorB = "W"
        for i in row...row+7 {  // 8 * 8 네모를 세는 포문
            if i % 2 == 0 {
                if BorW != arr[col][i] {
                    tempCount += 1
                }
                if BorW != arr[col+2][i] {
                    tempCount += 1
                }
                if BorW != arr[col+4][i] {
                    tempCount += 1
                }
                if BorW != arr[col+6][i] {
                    tempCount += 1
                }
                if WorB != arr[col+1][i] {
                    tempCount += 1
                }
                if WorB != arr[col+3][i] {
                    tempCount += 1
                }
                if WorB != arr[col+5][i] {
                    tempCount += 1
                }
                if WorB != arr[col+7][i] {
                    tempCount += 1
                }
            } else {
                if BorW == arr[col][i] {
                    tempCount += 1
                }
                if BorW == arr[col+2][i] {
                    tempCount += 1
                }
                if BorW == arr[col+4][i] {
                    tempCount += 1
                }
                if BorW == arr[col+6][i] {
                    tempCount += 1
                }
                if WorB == arr[col+1][i] {
                    tempCount += 1
                }
                if WorB == arr[col+3][i] {
                    tempCount += 1
                }
                if WorB == arr[col+5][i] {
                    tempCount += 1
                }
                if WorB == arr[col+7][i] {
                    tempCount += 1
                }
            }
        }
        count.append(tempCount)
        
        BorW = "W"
        WorB = "B"
        tempCount = 0
        for i in row...row+7 {  // 8 * 8 네모를 세는 포문
            if i % 2 == 0 {
                if BorW != arr[col][i] {
                    tempCount += 1
                }
                if BorW != arr[col+2][i] {
                    tempCount += 1
                }
                if BorW != arr[col+4][i] {
                    tempCount += 1
                }
                if BorW != arr[col+6][i] {
                    tempCount += 1
                }
                if WorB != arr[col+1][i] {
                    tempCount += 1
                }
                if WorB != arr[col+3][i] {
                    tempCount += 1
                }
                if WorB != arr[col+5][i] {
                    tempCount += 1
                }
                if WorB != arr[col+7][i] {
                    tempCount += 1
                }
            } else {
                if BorW == arr[col][i] {
                    tempCount += 1
                }
                if BorW == arr[col+2][i] {
                    tempCount += 1
                }
                if BorW == arr[col+4][i] {
                    tempCount += 1
                }
                if BorW == arr[col+6][i] {
                    tempCount += 1
                }
                if WorB == arr[col+1][i] {
                    tempCount += 1
                }
                if WorB == arr[col+3][i] {
                    tempCount += 1
                }
                if WorB == arr[col+5][i] {
                    tempCount += 1
                }
                if WorB == arr[col+7][i] {
                    tempCount += 1
                }
            }
        }
        count.append(tempCount)
    }
}

print(count.min()!)