import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var report = Set(report).map { $0.split(separator: " ")}.flatMap { $0 } // 중복제거, 한명씩 분리
    // ["muzi", "neo", "muzi", "frodo", "apeach", "muzi", "frodo", "neo", "apeach", "frodo"]
    var 신고한사람: [String] = []
    var 신고당한사람: [String] = []
    var 정지당한사람이름들: [String] = []
    var ids: [String: Int] = [:] // 딕셔너리화 해서 인덱스 구할때 씀, firstIndex 안쓰려고 만듬
    for (index, id) in id_list.enumerated() {
            ids[id] = index
        }
    
    var countt = 0
    report.forEach { user in // 홀수번째와 짝수번째로 신고한사람과 당한사람구분
        if countt%2 == 0 {
            신고한사람.append(String(user))
        } else {
            신고당한사람.append(String(user))
        }
        countt += 1
    }

    var reportedCount: [Int] = Array(repeating: 0, count: id_list.count)
    for user in 신고당한사람 {
//        count[id_list.firstIndex(of: String(user))!] += 1
        reportedCount[ids[String(user)]!] += 1
    }// [1, 2, 0, 2]
    
    for i in 0..<reportedCount.count {  // 정지된 사람 구하기
        if reportedCount[i] >= k {
            정지당한사람이름들.append(id_list[i])
        }
    }// ["frodo", "neo"]

    var mail: [Int] = Array(repeating: 0, count: id_list.count)

    for user in 정지당한사람이름들 {
        for i in 0..<신고당한사람.count {
            if 신고당한사람[i] == user {
//                mail[id_list.firstIndex(of: 신고한사람[i])!] += 1
                mail[ids[신고한사람[i]]!] += 1
            }
        }
    }
    return mail
}