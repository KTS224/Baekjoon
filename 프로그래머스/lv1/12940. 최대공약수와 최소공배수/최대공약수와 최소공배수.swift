func solution(_ n:Int, _ m:Int) -> [Int] {
    var smallNumber = n >= m ? m : n
    var gcd = 0
    var lcm = 0
    
    for i in 1...smallNumber {
        if n % i == 0 && m % i == 0 {
            gcd = i
        }
    }
    
    lcm = n * m / gcd
    
    return [gcd, lcm]
}