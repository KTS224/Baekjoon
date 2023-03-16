import Foundation

func solution(_ chicken:Int) -> Int {
    var coupon = chicken
    var order = 0
    
    while !(coupon < 10) {
        order += coupon / 10
        coupon = coupon / 10 + coupon % 10
    }
    
    return order
}