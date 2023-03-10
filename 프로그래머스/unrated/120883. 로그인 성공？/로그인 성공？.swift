import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    guard !db.contains(id_pw) else { return "login" }
    
    guard !(db.filter { $0[0] == id_pw[0] }.count > 0) else { return "wrong pw" }
    
    return "fail"
}