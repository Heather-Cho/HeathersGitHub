//
//  main.swift
//  3ndWeekLevle1
//
//  Created by t2023-m0114 on 2024/03/12.
//

var gamecount = 0
let game = BaseballGame()


while true {

    let First = gameStart()
    First.gameStart()
    
    var FirsrInput = readLine()
    var firsrInputst = ""
    if let value = FirsrInput {firsrInputst = value}
    
    var firsrInput = Int(firsrInputst)

    if firsrInput == 1 {
        game.start()
        gamecount += 1
        continue}
    
    if firsrInput == 2 {
        print("< 게임 기록 보기 >")
        print(gamecount)
        
        for i in 0..<gamecount {
            (print("\(i + 1)번째 게임 : 시도 횟수 - \(game.log[i])"))
        }
        continue}
    
    if firsrInput == 3 {
        (print("게임을 종료합니다"))
        gamecount += 1
        break}
    
    else {
        print("올바른 숫자를 입력해주세요! 😩")
        continue}
}
        




