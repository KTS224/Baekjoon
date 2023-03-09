import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    var dec1 = Int(bin1, radix: 2)!
    var dec2 = Int(bin2, radix: 2)!
    
    return String(dec1 + dec2, radix: 2)
}