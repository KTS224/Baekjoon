import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var array = array.sorted()
    var a = array.map { abs($0 - n) }
    return array[a.firstIndex(of: a.min()!)!]
}