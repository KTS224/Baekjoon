func solution(_ x:Int) -> Bool {
    let s = String(x)
    let mapArr = s.map { Int(String($0))! } //Chatacter형이 바로 Int로 안돼서
    let sum = mapArr.reduce(0, +)
    
    return x%sum == 0 ? true : false
}