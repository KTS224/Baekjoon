import Foundation

let genemis = readLine()!.split(separator: " ").compactMap{ Int($0) }
let startlink = readLine()!.split(separator: " ").compactMap{ Int($0) }
var genemisScore = 0
var startlinkScore = 0
var isGenemisWinning = false

for i in 0...8 {
    genemisScore += genemis[i]
      
    if genemisScore > startlinkScore {
        isGenemisWinning = true
    }
    
    startlinkScore += startlink[i]
}

print(isGenemisWinning ? "Yes" : "No")