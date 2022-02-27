//
//  신고_결과_받기.swift
//  All_CodingTest
//
//  Created by 김지섭 on 2022/02/27.
//

import Foundation

class 신고_결과_받기: Run {
    func run() {
        
    }
    
    func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
        var dict: [String:Set<String>] = [:]
        
        report.forEach {
            let info = $0.components(separatedBy: .whitespaces)
            let se = dict[info.first!]
            se?
        }
        
        
        return []
    }
}
