//
//  Calculator.swift
//  Calculator_...
//
//  Created by t2023-m0023 on 6/10/24.
//
//
//  File.swift
//  Calculator_LJH
//
//  Created by t2023-m0023 on 6/10/24.
//
//Calculator 클래스

class Calculator {
    var currentResult: Double
    var operation: Operation?

    init(currentResult: Double) {
        self.currentResult = currentResult
    }

    func setOperation(_ operation: Operation) {
        self.operation = operation
    }

    func calculate(num1: Double, num2: Double) -> Double {
        guard let operation = operation else {
            print("Error: 연산자가 설정되지 않았습니다.")
            return 0.0
        }
        return operation.calculate(num1: num1, num2: num2)
    }
}






//class Calculator {
//    let addOperation: AddOperation
//    let substractOperation: SubstractOperation
//    let multiplyOperation: MultiplyOperation
//    let divideOperation: DivideOperation
//
//    init(addOperation: AddOperation, substractOperation: SubstractOperation, multiplyOperation: MultiplyOperation, divideOperation: DivideOperation) {
//        self.addOperation = addOperation
//        self.substractOperation = substractOperation
//        self.multiplyOperation = multiplyOperation
//        self.divideOperation = divideOperation
//    }
//
//    func calculate(operation: AbstractOperation, num1: Double, num2: Double) -> Double {
//        return operation.operate(num1: num1, num2: num2)
//    }
//}

//class Calculator {
//    var currentResult: Double
//    var oper: Character?
//
//    init(currentResult: Double, oper: Character) {
//        self.currentResult = currentResult
//        self.oper = oper
//    }
//
//    func calculate(oper: Character, num1:Double, num2: Double) {
//        switch oper {
//        case "+":
//            operate(num1, num2)
//        case "-":
//            operate(num1, num2)
//        case "*":
//            operate(num1, num2)
//        case "/":
//            operate(num1, num2)
//        default:
//            break
//        }
//    }
//}

