import Foundation
var N = Int(readLine()!)!
var arr: [Double] = []
var dic: [Double: Int] = [:]

// 배열에 저장 후 정렬
for _ in 1...N {
    let input = Double(readLine()!)!
    arr.append(input)
}
arr.sort()
//

// 최빈값 구하기
for num in arr {
    if dic.contains(where: { $0.key == num }) {
        dic[num]! += 1
    } else {
        dic[num] = 1
    }
}
//

// 최빈값의 중복 체크를 위해 정렬 후
var sdic = dic.sorted { $0.1 > $1.1 }
// 정렬된 첫번째 값.value
var a = sdic[0].value
// 들어온 수가 하나일 수 있기에 두번째 값은 아직 안받음
var b = 500001
var tempArr: [Double] = []

// 들어온 수가 두개 이상일때
if arr.count > 1 {
    // 두번째.value 값 받음
    b = sdic[1].value

    // 첫번째 값과 두번째 값이 같을때 -> 최빈값이 중복일때
    if sdic[0].value == sdic[1].value {
        for i in 0..<sdic.count-1 {
            // 최빈값이 같은 값들만 배열에 저장해둔다
            if sdic[i].value == sdic[i+1].value {
                tempArr.append(sdic[i].key)
                tempArr.append(sdic[i+1].key)
            } else {
                // 같지 않을 경우 break
                break
            }
        }
    }
}

var setTempArr = Set(tempArr).sorted()
var 산술평균 = round(arr.reduce(0, +) / Double(N))
var 중앙값 = arr[N/2]
var 최빈값 = a == b ? setTempArr[1] : sdic[0].key
var 범위 = abs(arr.first! - arr.last!)
print(Int(산술평균))
print(Int(중앙값))
print(Int(최빈값))
print(Int(범위))