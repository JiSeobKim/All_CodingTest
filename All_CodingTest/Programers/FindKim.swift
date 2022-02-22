//
//  FindKim.swift
//  All_CodingTest
//
//  Created by 김지섭 on 2022/02/22.
//

import Foundation

class FindKim: Run {
    func run() {
        print(solution(["Jane","Kim"]))
    }
    
    func solution(_ seoul:[String]) -> String {
        "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
    }
}
