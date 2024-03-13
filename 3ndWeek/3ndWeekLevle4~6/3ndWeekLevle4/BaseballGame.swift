//
//  BaseballGame.swift
//  3ndWeekLevle1
//
//  Created by t2023-m0114 on 2024/03/12.
//

import Foundation

class BaseballGame {
    var log = [Int]() // 게임 기록의 배열
    
    func start() {
        print("< 게임을 시작합니다 >")
        print("숫자를 입력하세요")

        let answer = makeAnswer()
        var answerArr = (String(answer).map{ Int(String($0))! })
        
        var record = 0 // 이번 게임 기록
        
        while true {
            //input 옵셔널 바인딩
            var Input = Int(readLine()!)
            var input = 0
            if let value = Input {input = value}
            else { // 입력값이 숫자가 아닌 경우
                print("올바르지 않은 입력값입니다. 문자가 아닌 '숫자로'만 입력해주세요.")
                print("숫자를 입력하세요")
                continue
            }
            
            var userInput = input // 사용자입력값
            var inputArr = (String(input).map{ Int(String($0))! })
            
            
            
            //입력값이 정답인경우
            if userInput == answer {
                print("정답입니다! 축하합니다! 😺")
                record += 1
                log.append(record)
                break
            }
            
            
            //입력값이 오류인경우 (시도 횟수 추가되지 않음)
            if inputArr.count != 3 { // 입력값이 3자리가 아닌경우
                userInput = Int()
                print("올바르지 않은 입력값입니다. 세 자리 숫자로 입력해주세요.")
                print("숫자를 입력하세요")
                continue
            }
            if inputArr.count != Set(inputArr).count { //입력값에 중복된 숫자가 있는경우
                userInput = Int()
                print("올바르지 않은 입력값입니다. 중복된 숫자가 있습니다.")
                print("숫자를 입력하세요")
                continue
            }
            if inputArr[0] == 0 { //첫번째 숫자에 0을 입력한경우
                userInput = Int()
                print("올바르지 않은 입력값입니다. 첫번째 숫자엔 0이 들어갈 수 없습니다.")
                print("숫자를 입력하세요")
                continue
            }
            
            //입력값이 정답과 다른 경우
            // 스트라이크 (같은자리 같은숫자 카운트)
            var strike = 0
            for i in 0...2 {
                if inputArr[i] == answerArr[i] {
                    strike += 1
                }
            }
            
            // 볼 (중복된 숫자 - 스트라이크)
            var duplicate = 0
            for i in 0...2 {
                for n in 0...2 {
                    if inputArr[i] == answerArr[n] {duplicate += 1}
                }
            }
            var ball = duplicate - strike

            
            if strike == 0 && ball == 0 {
                print ("Noting")
                print("숫자를 입력하세요")
                record += 1
                continue
            }
            if strike > 0 && ball == 0 {
                print ("\(strike) 스트라이크")
                print("숫자를 입력하세요")
                record += 1
                continue
            }
            if strike == 0 && ball > 0 {
                print ("\(ball) 볼")
                print("숫자를 입력하세요")
                record += 1
                continue
            }
            if strike > 0 && ball > 0 {
                print ("\(strike) 스트라이크 \(ball) 볼")
                print("숫자를 입력하세요")
                record += 1
                continue
            }
        }
    }
    
    
    //Answer 생성 (Lv3. 0에서 9까지의 서로 다른 3자리의 숫자)
    func makeAnswer() -> Int {
        var makeAnswerarr = [Int]()
        while Set(makeAnswerarr).count != 3 {
                makeAnswerarr.append(Int.random(in: 0 ... 9))
            }
        if makeAnswerarr[0] == 0 {makeAnswerarr.shuffle()}
        // 맨 앞자리에 0이 온다면 섞어라
        
        //중복값 제거
        var makeAnswer: Set = Set(makeAnswerarr)
        
        return Array(makeAnswer).reduce(0, { $0 * 10 + $1 })
    }

}

