//
//  수박수박수박수박수.swift
//  All_CodingTest
//
//  Created by 김지섭 on 2022/02/27.
//

import Foundation

class 수박수박수박수박수: Run {
    func run() {
        print(solution(3))
        print(solution(4))
    }
    
    func solution(_ n:Int) -> String {
        return (0..<n).reduce(""){$0 + (($1 % 2) == 0 ? "수":"박")}
    }
    
}
