import Foundation

func solution(_ letter:String) -> Any {
    var letter = " \(letter) "
    
    let before = [".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--.."]
    
    let after = ["a", "b", "c", "d", "e", "f" ,"g", "h" , "i" , "j" , "k" , "l" , "m" , "n" , "o" , "p" , "q" , "r" , "s" , "t" , "u" , "v" , "w" , "x" , "y" , "z"]
    
    
    for _  in 1...2 {
        for i in 0..<after.count {
            letter = letter.replacingOccurrences(of: " \(before[i]) ", with: " \(after[i]) ")
        }
    }
    
    return letter.replacingOccurrences(of: " ", with: "")
}