//
//  CountOfPY.swift
//  All_CodingTest
//
//  Created by 김지섭 on 2022/02/14.
//

import Foundation

class CountOfPY: Run {
    func run() {
        ["pPoooyY",
         "Pyy"].forEach{
            print(solution($0))
        }
    }
    
    func solution(_ s:String) -> Bool
    {
        var countP = 0
        var countY = 0
        
        s.lowercased().forEach{
            switch $0 {
            case "y":
                countY += 1
            case "p":
                countP += 1
            default:
                break
            }
        }
        
        if countP == 0 && countY == 0 {
            return true
        } else {
            return countP == countY
        }
        
    }
}
