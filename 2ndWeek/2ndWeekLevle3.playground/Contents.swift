


//level 03 case 01 사칙연산 클래스를 프로퍼티로 사용.

class Calculator {
    func calculate(_ operatorType: String,_ firstNumber1: Int,_ secondNumber1: Int)  -> Double {
        let oper = operatorType
        let fn = firstNumber1
        let sn = secondNumber1
        
        class AddOperation {
                func operation (_ firstNumber: Int,_ secondNumber: Int)  -> Double {
                    return Double(firstNumber + secondNumber)
                }
            }
        
        class SubstractOperation {
            func operation (_ firstNumber: Int,_ secondNumber: Int)  -> Double {
                return Double(firstNumber - secondNumber)
            }
        }
        
        class MultiplyOperation{
            func operation (_ firstNumber: Int,_ secondNumber: Int)  -> Double {
                return Double(firstNumber * secondNumber)
            }
        }
        
        class DivideOperation{
            func operation (_ firstNumber: Int,_ secondNumber: Int)  -> Double {
                return Double(firstNumber / secondNumber)
            }
        }
        
        //상수 선언
        let addOperation = AddOperation()
        let substractOperation = SubstractOperation()
        let multiplyOperation = MultiplyOperation()
        let divideOperation = DivideOperation()
        
        if oper == "+" {return addOperation.operation(fn, sn)}
        else if oper == "-" {return substractOperation.operation(fn, sn)}
        else if oper == "*" {return multiplyOperation.operation(fn, sn)}
        else if oper == "/" {return divideOperation.operation(fn, sn)}
        else {return 0}
    }
}

let calculator = Calculator()
    
let addResult = calculator.calculate("+", 10, 20)
let subResult = calculator.calculate("-", 10, 20)
let mulResult = calculator.calculate("*", 10, 20)
let divResult = calculator.calculate("/", 10, 20)




/* level 03 case 02 함수사용x

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
