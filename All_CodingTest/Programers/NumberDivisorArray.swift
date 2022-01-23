//
//  NumberDivisorArray.swift
//  All_CodingTest
//
//  Created by 김지섭 on 2022/01/23.
//

import Foundation

class NumberDivisorArray: Run {
    func run() {
        print(solution([5, 9, 7, 10], 5))
        print(solution([2, 36, 1, 3], 1))
        print(solution([3,2,6], 10))
    }
    
    func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
        let result = arr.filter{$0 % divisor == 0}.sorted(by: <)
        return result.count == 0 ? [-1] : result
    }
}
