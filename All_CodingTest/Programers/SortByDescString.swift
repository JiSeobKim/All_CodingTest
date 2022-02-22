//
//  SortByDescString.swift
//  All_CodingTest
//
//  Created by 김지섭 on 2022/02/14.
//

import Foundation

class SortByDescString: Run {
    func run() {
        print("Zbcdefg".sorted(by: >))
        print(solution("Zbcdefg") == "gfedcbZ")
    }
    
    func solution(_ s:String) -> String {
        let start: ([String],[String]) = ([],[])
        
        var value = s.reduce(start){
            var temp = $0
            if $1.isUppercase {
                temp.1.append(String($1))
            } else {
                temp.0.append(String($1))
            }
            return temp
        }
        value.0.sort(by: >)
        value.1.sort(by: >)
        
        return value.0.joined() + value.1.joined()
    }
}
