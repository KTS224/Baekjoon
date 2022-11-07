func solution(_ strings:[String], _ n:Int) -> [String] {
    var strings = strings.sorted()
    
    strings.sort { $0[$0.index($0.startIndex, offsetBy: n)] < $1[$1.index($1.startIndex, offsetBy: n)] }
    
    return strings
}