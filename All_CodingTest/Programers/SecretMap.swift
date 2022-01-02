//
//  SecretMap.swift
//  All_CodingTest
//
//  Created by 김지섭 on 2022/01/02.
//


import Foundation

/// 비밀지도
class SecretMap: Run {
    
    func run() {
        print(solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28]))
        print(solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10]))
    }
    
    func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
        
        let answer: [String] = (0..<n)
            .map{(arr1[$0] | arr2[$0])}
            .map{String($0, radix: 2)}
            .map{$0.count == n ? $0 : (String(repeating: "0", count: n - $0.count) + $0)}
            .map{$0.map{$0 == "1" ? "#" : " "}.joined()}
        return answer

        // 2 위에 코드 프로그래머스에선 안돼서 만든것
//        let answer: [String] = (0..<n).map {
//            let newValue = String(arr1[$0] | arr2[$0], radix: 2)
//            let fitValue = newValue.count == n ? newValue : (String(repeating: "0", count: n - newValue.count) + newValue)
//            let convertedValue = fitValue.map{$0 == "1" ? "#" : " "}.joined()
//            return convertedValue
//        }
//
//        return answer
        
        
    }
}
