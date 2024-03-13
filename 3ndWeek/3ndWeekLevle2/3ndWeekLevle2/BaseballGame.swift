//
//  BaseballGame.swift
//  3ndWeekLevle1
//
//  Created by t2023-m0114 on 2024/03/12.
//

import Foundation

class BaseballGame {
    
    func start() {

        let answer = makeAnswer()
        let answerArr = (String(answer).map{ Int(String($0))! })
        
        
        while true {
            
            var input = Int(readLine()!)!
            
            var useriInput = input // 사용자입력값
            var inputArr = (String(useriInput).map{ Int(String($0))! })
            
            //입력값이 정답인경우
            if useriInput == answer {
                print("정답입니다! 축하합니다! 😺")
                break
            }
            //입력값이 오류인경우
            if inputArr.count < 3 {
                useriInput = Int()
                print("올바르지 않은 입력값입니다. 세 자리 숫자로 입력해주세요.")
                print("숫자를 입력하세요")
                continue
            }
            if inputArr == [nil] {
                useriInput = Int()
                print("올바르지 않은 입력값입니다. '숫자'만 입력해주세요.")
                print("숫자를 입력하세요")
                continue
            }
            if inputArr.contains(0) {
                useriInput = Int()
                print("올바르지 않은 입력값입니다. 0이 포함되어 있습니다.")
                print("숫자를 입력하세요")
                continue
            }
            if inputArr.count != Set(inputArr).count {
                useriInput = Int()
                print("올바르지 않은 입력값입니다. 중복된 숫자가 있습니다.")
                print("숫자를 입력하세요")
                continue
            }
            
            //입력값이 정답과 다른 경우
            var strike = 0
            for i in 0...2 {
                if inputArr[i] == answerArr[i] {
                    strike += 1
                }
            }
            
            var duplicate = 0
            for i in 0...2 {
                for n in 0...2 {
                    if inputArr[i] == answerArr[n] {duplicate += 1}
                }
            }
            var ball = duplicate - strike

            if strike == 0 && ball == 0 {
                print ("Noting")
                continue
            }
            if strike > 0 && ball == 0 {
                print ("\(strike) 스트라이크")
                continue
            }
            if strike == 0 && ball > 0 {
                print ("\(ball) 볼")
                continue
            }
            if strike > 0 && ball > 0 {
                print ("\(strike) 스트라이크 \(ball) 볼")
                continue
            }
        }
    
    }
    
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

