//
//  BasicStringControl.swift
//  All_CodingTest
//
//  Created by 김지섭 on 2022/02/22.
//

import Foundation

class BasicStringControl: Run {
    func run() {
        print(solution("a234"))
        print(solution("1234"))
    }
    
    func solution(_ s:String) -> Bool {
        return ((s.count == 4) || (s.count == 6)) && Int(s) != nil
    }
}
