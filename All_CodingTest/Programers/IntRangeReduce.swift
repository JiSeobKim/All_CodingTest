//
//  IntRangeReduce.swift
//  All_CodingTest
//
//  Created by 김지섭 on 2022/01/23.
//

//import Foundation

class IntRangeReduce: Run {
    func run() {
        
    }
    
    func solution(_ a:Int, _ b:Int) -> Int64 {
        return Int64((min(a,b)...max(a,b)).reduce(0,+))
    }
}
