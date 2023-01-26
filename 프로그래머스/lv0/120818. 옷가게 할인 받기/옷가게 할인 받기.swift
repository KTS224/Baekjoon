import Foundation

func solution(_ price:Int) -> Int {
    switch price {
    case 100000 ..< 300000:
        return Int(floor(Double(price) - Double(price)*0.05))
    case 300000 ..< 500000:
        return Int(floor(Double(price) - Double(price)*0.1))
    case 500000 ..< Int.max:
        return Int(floor(Double(price) - Double(price)*0.2))
    default:
        return price
    }
}