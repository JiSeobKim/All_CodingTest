//
//  DartGame.swift
//  All_CodingTest
//
//  Created by 김지섭 on 2022/01/05.
//

import Foundation

class DartGame: Run {
    func run() {
        ["1S2D*3T",
         "1D2S#10S",
         "1D2S0T",
         "1S*2T*3S",
         "1D#2S*3S",
         "1T2D3D#",
         "1D2S3T*"].forEach {
            print(solution($0))
        }
        
//        print(solution2("1S2D*3T"))
        
    }
    
    enum ScoreType: String {
        case s = "S"
        case d = "D"
        case t = "T"
        
        var powValue: Float {
            switch self {
            case .s: return 1
            case .d: return 2
            case .t: return 3
            }
        }
    }
    
    enum Option: String {
        case star = "*"
        case shop = "#"
    }
    
    
    func solution(_ dartResult:String) -> Int {
        
        var result: [Int] = []
        
        var value: Int?
        var numberString = ""
        
        func append() {
            result.append(value!)
            value = nil
            numberString = ""
        }
        
        for row in dartResult.enumerated() {
            if row.element.isNumber {
                if value != nil {
                    append()
                }
                numberString += String(row.element)
            } else if let scoreType = ScoreType(rawValue: String(row.element)) {
                let num = Float(numberString)!
                value = Int(pow(num, scoreType.powValue))
                
            } else if let option = Option(rawValue: String(row.element)) {
                switch option {
                case .star:
                    value! *= 2
                    if result.indices ~= (result.count - 1) {
                        result[result.count - 1] *= 2
                    }
                case .shop:
                    value! *= -1
                }
            }
            
            if row.offset == (dartResult.count - 1) {
                append()
            }
        }
        
        return result.reduce(0,+)
    }
}
