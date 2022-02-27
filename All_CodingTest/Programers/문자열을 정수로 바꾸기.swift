//
//  문자열을 정수로 바꾸기.swift
//  All_CodingTest
//
//  Created by 김지섭 on 2022/02/27.
//

import Foundation

class 문자열을_정수로_바꾸기: Run {
    func run() {
        print(solution("+1234"))
    }
    
    func solution(_ s:String) -> Int {
        return Int(s)!
    }
}
