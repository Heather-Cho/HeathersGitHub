


/* level 1 ~ 2 과제
var firstNumber = 7
var secondNumber = 3

class Calculator {
    let addResult = firstNumber + secondNumber
    let subtractResult = firstNumber - secondNumber
    let multiplyResult = firstNumber * secondNumber
    let divideResult = firstNumber / secondNumber
    let remainder = firstNumber % secondNumber
}


let calculator = Calculator()

print("더하기 : \(calculator.addResult)")
print("빼기 : \(calculator.subtractResult)")
print("곱하기 : \(calculator.multiplyResult)")
print("나누기 : \(calculator.divideResult)")
print("나머지 : \(calculator.remainder)")
 */

/* level 3 과제

 var firstNumber = 7
 var secondNumber = 3

//사칙연산 클래스
class AddOperation {let Add = firstNumber + secondNumber}
class SubstractOperation {let Substract = firstNumber - secondNumber}
class MultiplyOperation {let Multiply = firstNumber * secondNumber}
class DivideOperation {let Divide = firstNumber / secondNumber}

//상수선언
let addOperation = AddOperation()
let substractOperation = SubstractOperation()
let multiplyOperation = MultiplyOperation()
let divideOperation = DivideOperation()

/*중간검산
print("더하기 : \(addOperation.Add)")
print("빼기 : \(substractOperation.Substract)")
print("곱하기 : \(multiplyOperation.Multiply)")
print("나누기 : \(divideOperation.Divide)")
 */

//계산자 클래스
class Calculator {
    let Add = addOperation.Add
    let Sub = substractOperation.Substract
    let Mul = multiplyOperation.Multiply
    let Div = divideOperation.Divide
 }
//상수선언
let calculator = Calculator()

//결과값
print("더하기 : \(calculator.Add)")
print("빼기 : \(calculator.Sub)")
print("곱하기 : \(calculator.Mul)")
print("나누기 : \(calculator.Div)")
 */








/* 다른방식(fail)
class Calculator {
    func calculate(operator1: String, firstNumber: Int, secondNumber: Int)  -> Double {
        var oper = String(operator1)
        var add = firstNumber + secondNumber
        var sub = firstNumber - secondNumber
        var mul = firstNumber * secondNumber
        var div = firstNumber / secondNumber

        if oper == "+" {Double(add)}
        else if oper == "-" {return Double(sub)}
        else if oper == "*" {return Double(mul)}
        else if oper == "/" {return Double(div)}
        }
}

 let calculator = Calculator()

 let addResult = calculator.calculate(operator1: "+", firstNumber: 10, secondNumber: 20)
 let subResult = calculator.calculate(operator1: "-", firstNumber: 10, secondNumber: 20)
*/



/*다른방식 1~2 (success)
class Calculator {
    func calculate(_ operatorType: String,_ firstNumber: Int,_ secondNumber: Int)  -> Double {
        
        // operator는 시스템 상의 이름으로 사용 불가
        var oper = operatorType
        var add = firstNumber + secondNumber
        var sub = firstNumber - secondNumber
        var mul = firstNumber * secondNumber
        var div = firstNumber / secondNumber
        var rem = firstNumber % secondNumber
        
        if oper == "+" {return Double(add)}
        else if oper == "-" {return Double(sub)}
        else if oper == "*" {return Double(mul)}
        else if oper == "/" {return Double(div)}
        else if oper == "%" {return Double(rem)}
        else {return 0}

    }
}

 let calculator = Calculator()
    
 let addResult = calculator.calculate("+", 10, 20)
 let subResult = calculator.calculate("-", 10, 20)
 let multiplyResult = calculator.calculate("*", 10, 20)
 let divideResult = calculator.calculate("/", 10, 20)
 let remainderResult = calculator.calculate("%", 10, 20)
*/



// 다른방식 3 (success)
class Calculator {
    func calculate(_ operatorType: String,_ firstNumber1: Int,_ secondNumber1: Int)  -> Double {
        let oper = operatorType
        let fn = firstNumber1
        let sn = secondNumber1
        
        if oper == "+" {return addOperation.operation(fn, sn)}
        else if oper == "-" {return substractOperation.operation(fn, sn)}
        else if oper == "*" {return multiplyOperation.operation(fn, sn)}
        else if oper == "/" {return divideOperation.operation(fn, sn)}
        else {return 0}
    }
}

class AddOperation:Calculator{
        func operation (_ firstNumber: Int,_ secondNumber: Int)  -> Double {
            return Double(firstNumber + secondNumber)
        }
    }
class SubstractOperation:Calculator{
    func operation (_ firstNumber: Int,_ secondNumber: Int)  -> Double {
        return Double(firstNumber - secondNumber)
    }
}
class MultiplyOperation:Calculator{
    func operation (_ firstNumber: Int,_ secondNumber: Int)  -> Double {
        return Double(firstNumber * secondNumber)
    }
}
class DivideOperation:Calculator{
    func operation (_ firstNumber: Int,_ secondNumber: Int)  -> Double {
        return Double(firstNumber / secondNumber)
    }
}
    
let addOperation = AddOperation()
let substractOperation = SubstractOperation()
let multiplyOperation = MultiplyOperation()
let divideOperation = DivideOperation()
let calculator = Calculator()

let addResult = calculator.calculate("+", 10, 20)
let subResult = calculator.calculate("-", 10, 20)
let mulResult = calculator.calculate("*", 10, 20)
let divResult = calculator.calculate("/", 10, 20)




