import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var numbers = numbers
    var result = ""

    // MARK: 키패드 배열
    var arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [-100, 0, 100]]

    // MARK: Left 수
    struct Left {
        var arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [-100, 0, 100]]
        var leftNum = -100 {
            didSet {
                leftNumFirstIndex = switchIndex(leftNum)
                leftNumSecondIndex = arr[leftNumFirstIndex].firstIndex(of: leftNum) ?? 0
            }
        }
        lazy var leftNumFirstIndex = switchIndex(leftNum)
        lazy var leftNumSecondIndex = arr[leftNumFirstIndex].firstIndex(of: leftNum) ?? 0
    }
    //

    // MARK: Right 수
    struct Right {
        var arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [-100, 0, 100]]
        var rightNum = 100 {
            didSet {
                rightNumFirstIndex = switchIndex(rightNum)
                rightNumSecondIndex = arr[rightNumFirstIndex].firstIndex(of: rightNum) ?? 0
            }
        }
        lazy var rightNumFirstIndex = switchIndex(rightNum)
        lazy var rightNumSecondIndex = arr[rightNumFirstIndex].firstIndex(of: rightNum) ?? 0
    }
    //

    // MARK: 처음 들어오는 수
    var inputNum = numbers.first ?? 0
    var inputNumFirstIndex = switchIndex(inputNum)
    var inputNumSecondIndex: Int = arr[inputNumFirstIndex].firstIndex(of: inputNum) ?? 0
    //

    var left = Left()
    var right = Right()
    
    for i in 1...numbers.count {
        if inputNum == 2 || inputNum == 5 || inputNum == 8 || inputNum == 0 {
            // MARK: 손가락에서 inputNum번호까지의 거리
            var leftDistance = abs(inputNumFirstIndex - left.leftNumFirstIndex) + abs(inputNumSecondIndex - left.leftNumSecondIndex)
            var rightDistance = abs(inputNumFirstIndex - right.rightNumFirstIndex) + abs(inputNumSecondIndex - right.rightNumSecondIndex)
            //
            
            if leftDistance > rightDistance {
                //오른손으로 눌러야함
                right.rightNum = inputNum
                result.append("R")
            } else if leftDistance < rightDistance {
                //왼손으로 눌러야함
                left.leftNum = inputNum
                result.append("L")
            } else if leftDistance == rightDistance {
                //거리가 같을 경우 "hand" 에 따라 눌러야함
                if hand == "left" {
                    left.leftNum = inputNum
                    result.append("L")
                } else {
                    right.rightNum = inputNum
                    result.append("R")
                }
            }
            
        } else if inputNum == 1 || inputNum == 4 || inputNum == 7 {
            left.leftNum = inputNum
            result.append("L")
        } else if inputNum == 3 || inputNum == 6 || inputNum == 9 {
            right.rightNum = inputNum
            result.append("R")
        }
        
        //마지막 인덱스 참조 방지
        if i == numbers.count {
            break
        }
        
        inputNum = numbers[i]
        inputNumFirstIndex = switchIndex(inputNum)
        inputNumSecondIndex = arr[inputNumFirstIndex].firstIndex(of: inputNum) ?? 0
    }
    
    return result
}

// MARK: 수를 index로 변환해주는 함수
func switchIndex(_ num: Int) -> Int {
    switch num {
    case 1, 2, 3 :
        return 0
    case 4, 5, 6:
        return 1
    case 7, 8, 9:
        return 2
    default :
        return 3
    }
}