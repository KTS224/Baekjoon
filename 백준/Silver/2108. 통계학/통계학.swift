import Foundation

var N = Int(readLine()!)!
var arr: [Double] = []
var dic: [Double: Int] = [:]

for _ in 1...N {
    var input = Double(readLine()!)!
    arr.append(input)
}

arr.sort()

for num in arr {
    if dic.contains { $0.key == num } {
        dic[num]! += 1
    } else {
        dic[num] = 1
    }
}

var sdic = dic.sorted { $0.1 > $1.1 }
var a = sdic[0].value
var b = 500001
var tempArr: [Double] = []
if sdic.count > 1 {
    b = sdic[1].value
    
    if sdic[0].value == sdic[1].value {
        for i in 0..<sdic.count-1 {
            if sdic[i].value == sdic[i+1].value {
                tempArr.append(sdic[i].key)
                tempArr.append(sdic[i+1].key)
            } else {
                break
            }
        }
    }
}

var setTempArr = Set(tempArr).sorted()
var set = Set(arr).sorted(by: >)
var 산술평균 = round(arr.reduce(0, +) / Double(N))
var 중앙값 = arr[N/2]
var 최빈값 = a == b ? setTempArr[1] : sdic[0].key
var 범위 = abs(arr.first! - arr.last!)
print(Int(산술평균))
print(Int(중앙값))
print(Int(최빈값))
print(Int(범위))