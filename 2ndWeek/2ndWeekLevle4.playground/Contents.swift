
//level 04 클래스 상속 버젼

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

