import Foundation

struct BombNumber :Equatable {
    var line1 = ""
    var line2 = ""
    var line3 = ""
    var line4 = ""
    var line5 = ""
}

let bombNumbers: [BombNumber] = [
    BombNumber(line1: "***",
               line2: "* *",
               line3: "* *",
               line4: "* *",
               line5: "***"),
    
    BombNumber(line1: "  *",
               line2: "  *",
               line3: "  *",
               line4: "  *",
               line5: "  *"),
    
    BombNumber(line1: "***",
               line2: "  *",
               line3: "***",
               line4: "*  ",
               line5: "***"),
    
    BombNumber(line1: "***",
               line2: "  *",
               line3: "***",
               line4: "  *",
               line5: "***"),
    
    BombNumber(line1: "* *",
               line2: "* *",
               line3: "***",
               line4: "  *",
               line5: "  *"),
    
    BombNumber(line1: "***",
               line2: "*  ",
               line3: "***",
               line4: "  *",
               line5: "***"),
    
    BombNumber(line1: "***",
               line2: "*  ",
               line3: "***",
               line4: "* *",
               line5: "***"),
    
    BombNumber(line1: "***",
               line2: "  *",
               line3: "  *",
               line4: "  *",
               line5: "  *"),
    
    BombNumber(line1: "***",
               line2: "* *",
               line3: "***",
               line4: "* *",
               line5: "***"),
    
    BombNumber(line1: "***",
               line2: "* *",
               line3: "***",
               line4: "  *",
               line5: "***")
]

var line1 = readLine()!
var line2 = readLine()!
var line3 = readLine()!
var line4 = readLine()!
var line5 = readLine()!
var slicedLine1: [String] = []
var slicedLine2: [String] = []
var slicedLine3: [String] = []
var slicedLine4: [String] = []
var slicedLine5: [String] = []
var inputBombNumbers: [BombNumber] = []
var isCorrectCode = true
var codeNumber = ""

slicedLine1 = sliceCodeBy3count(line1, slicedLine1)
slicedLine2 = sliceCodeBy3count(line2, slicedLine2)
slicedLine3 = sliceCodeBy3count(line3, slicedLine3)
slicedLine4 = sliceCodeBy3count(line4, slicedLine4)
slicedLine5 = sliceCodeBy3count(line5, slicedLine5)

for i in 0..<slicedLine1.count {
    inputBombNumbers.append(BombNumber(line1: slicedLine1[i], line2: slicedLine2[i], line3: slicedLine3[i], line4: slicedLine4[i], line5: slicedLine5[i]))
}

for num in inputBombNumbers {
    if !bombNumbers.contains(num) {
        isCorrectCode = false
    }
    
    for i in 0...9 {
        if bombNumbers[i] == num {
            codeNumber += String(i)
        }
    }
}

print(isCorrectCode ? (Int(codeNumber) ?? 1) % 6 == 0 ? "BEER!!" : "BOOM!!" : "BOOM!!")

func sliceCodeBy3count(_ line: String, _ slicedLine: [String]) -> [String] {
    var slicedLine = slicedLine
    var temp = ""
    
    for c in line {
        if temp.count >= 3 {
            slicedLine.append(temp)
            temp = ""
            continue
        }
        
        temp += String(c)
    }
    
    slicedLine.append(temp)
    return slicedLine
}