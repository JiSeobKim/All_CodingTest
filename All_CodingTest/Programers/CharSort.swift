//
//  CharSort.swift
//  All_CodingTest
//
//  Created by 김지섭 on 2022/02/14.
//

import Foundation

class CharSort: Run {
    func run() {
        [
            solution(["sun", "bed", "car"], 1) == ["car", "bed", "sun"],
            solution(["abce", "abcd", "cdx"], 2) == ["abcd", "abce", "cdx"]
        ].forEach{print($0)}
    }
    
    func solution(_ strings:[String], _ n:Int) -> [String] {
        return strings.sorted(by: { Array($0)[n] == Array($1)[n] ? $0 < $1 : Array($0)[n] < Array($1)[n]})
        
    }
}
