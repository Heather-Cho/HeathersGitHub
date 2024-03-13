//
//  BaseballGame.swift
//  3ndWeekLevle1
//
//  Created by t2023-m0114 on 2024/03/12.
//

import Foundation

class BaseballGame {
    
    func start() {}
    
    //Answer 생성
    func makeAnswer() -> Int {
        var makeAnswerarr = [Int]()
        while Set(makeAnswerarr).count < 3 {
                makeAnswerarr.append(Int.random(in: 1 ... 9))
            if makeAnswerarr.count == 3 {break}
            }
        return makeAnswerarr.reduce(0, { $0 * 10 + $1 })
    }

}

