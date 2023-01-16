func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var arr: [String] = []
    var time: Int = 0
    
    guard cacheSize != 0 else {
        return cities.count * 5
    }
    
    cities.map { $0.lowercased() }.forEach { city in
        if !arr.contains(city) {
            if arr.count >= cacheSize {
                arr.popLast()
            }
            
            arr.insert(city, at: 0)
            time += 5
        } else {
            arr.insert(arr.remove(at: arr.firstIndex(of: city)!), at: 0)
            time += 1
        }
    }
    
    return time
}