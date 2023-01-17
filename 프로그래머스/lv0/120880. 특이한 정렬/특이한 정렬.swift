import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    var numlist = numlist
    
    numlist.sort {
        abs($0-n) < abs($1-n)
        if abs($0-n) == abs($1-n) {
            return $0 > $1
        } else {
            return abs($0-n) < abs($1-n)
        }
    }

    return numlist
}