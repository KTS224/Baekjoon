var num = readLine()!
var n = Int(num)! - 4
var arr = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]
var ans = 0

성냥개비()

func 성냥개비() -> Int {
    for n1 in 0...9 {
        for n2 in 0...9 {
            for n3 in 0...9 {
                for n4 in 0...9 {
                    ans = ((n2*10) + n1) + ((n4*10) + n3)
                    if ans > 99 {
                        break
                    } else if arr[n1] + arr[n2] + arr[n3] + arr[n4] + arr[ans/10] + arr[ans%10] == n {
                        print("\(n2)\(n1)+\(n4)\(n3)=\(ans/10)\(ans%10)")
                        return 0
                    }
                }
            }
        }
    }
    print("impossible")
    return 0
}