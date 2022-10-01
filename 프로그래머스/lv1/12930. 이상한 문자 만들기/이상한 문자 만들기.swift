func solution(_ s:String) -> String {
    var answer: String = ""
    var sToArray = Array(s) // 문자열을 배열로 변환
    var blackCounter: Int = 0 // 공백칸을 세기위한 변수
    var counter: Int = 0 // 배열의 위치를 세기위한 변수

    for spelling in sToArray {
        blackCounter = (spelling == " ") ? 0 : blackCounter + 1 // spelling 이 공백일 경우 0으로 초기화 아닐경우 +1

        answer += (blackCounter%2 == 1) ? sToArray[counter].uppercased() : sToArray[counter].lowercased()  // 홀수일경우 대문자 아니면 소문자

        counter += 1
    }
    
    return answer
}