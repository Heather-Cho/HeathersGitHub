


//level 01 case 01

class Calculator {
    func calculate(_ operatorType: String,_ firstNumber: Int,_ secondNumber: Int)  -> Double {
        
        var oper = operatorType
        var add = firstNumber + secondNumber
        var sub = firstNumber - secondNumber
        var mul = firstNumber * secondNumber
        var div = firstNumber / secondNumber
        
        if oper == "+" {return Double(add)}
        else if oper == "-" {return Double(sub)}
        else if oper == "*" {return Double(mul)}
        else if oper == "/" {return Double(div)}
        else {return 0}

    }
}

 let calculator = Calculator()
    
 let addResult = calculator.calculate("+", 10, 20)
 let subResult = calculator.calculate("-", 10, 20)
 let multiplyResult = calculator.calculate("*", 10, 20)
 let divideResult = calculator.calculate("/", 10, 20)




/* level 01 case 02
var firstNumber = 7
var secondNumber = 3

class Calculator {
    let addResult = firstNumber + secondNumber
    let subtractResult = firstNumber - secondNumber
    let multiplyResult = firstNumber * secondNumber
    let divideResult = firstNumber / secondNumber
}


let calculator = Calculator()

print("더하기 : \(calculator.addResult)")
print("빼기 : \(calculator.subtractResult)")
print("곱하기 : \(calculator.multiplyResult)")
print("나누기 : \(calculator.divideResult)")
 */

