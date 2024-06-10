
//  Lv.1~4 Calculator
//  Created by Leejuhee on 6/7/24.

//- [ ]  Lv1
//    - [ ]  더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기
//    - [ ]  생성한 클래스를 이용하여 연산을 진행하고 출력


//- [ ]  Lv2
//    - [ ]  Lv1에서 만든 Calculator 클래스에 “나머지 연산”이 가능하도록 코드를 추가하고, 연산 진행 후 출력
//    - [ ]  ex) 나머지 연산 예시 : 6을 3으로 나눈 나머지는 0 / 5를 3으로 나눈 나머지는 2

//import Foundation
//
////Calculator 클래스 속성 초기화
//class Calculator {
//
//    func calculate(operation: Character, num1: Double, num2: Double) -> Double {
//        switch operation{
//        case "+":
//            return num1 + num2
//        case "-":
//            return num1 - num2
//        case "*":
//            return num1 * num2
//        case "/":
//            if num2 != 0 {
//                return num1 / num2
//            } else {print(" 0으로 나눌 수 없습니다! ")
//                return 0.0 }
//        case "%":
//            return num1.truncatingRemainder(dividingBy: num2)
//        default:
//            print(" 알 수 없는 연산자로 계산 할 수 없습니다! ")
//            return 0.0
//        }
//    }
//}
//
//let calculator = Calculator()
//let addResult = calculator.calculate(operation: "+", num1: 1, num2: 1)
//let subResult = calculator.calculate(operation: "-", num1: 1, num2: 1)
//let multiplyResult = calculator.calculate(operation: "*", num1: 1, num2: 1)
//let divideResult = calculator.calculate(operation: "/", num1: 1, num2: 1)
//let remainderResult = calculator.calculate(operation: "%", num1: 1, num2: 0)
//
//let dividePercent = String(format: "%.2f", divideResult)
//
//print("addResult : \(addResult)")
//print("subResult : \(subResult)")
//print("multiplyResult : \(multiplyResult)")
//print("dividePercent : \(divideResult)")
//print("remainderResult : \(remainderResult)")


//- [ ]  Lv3
//    - [ ]  아래 각각의 클래스들을 만들고 클래스간의 관계를 고려하여 Calculator 클래스와 관계 맺기
//        - [ ]  AddOperation(더하기)
//        - [ ]  SubstractOperation(빼기)
//        - [ ]  MultiplyOperation(곱하기)
//        - [ ]  DivideOperation(나누기)
//    - [ ]  Calculator 클래스의 내부코드를 변경
//        - [ ]  관계를 맺은 후 필요하다면 별도로 만든 연산 클래스의 인스턴스를 Calculator 내부에서 사용
//    - Lv2 와 비교하여 어떠한 점이 개선 되었는지 스스로 생각해 봅니다.
//        - hint. 클래스의 책임(단일책임원칙)
//
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
//    func calculate(oper: String, num1: Double, num2: Double) -> Double? {
//        var result: Double?
//        switch oper {
//        case "+":
//            result = addOperation.operate(num1: num1, num2: num2)
//        case "-":
//            result = substractOperator.operate(num1: num1, num2: num2)
//        case "*":
//            result = multiplyOperation.operate(num1: num1, num2: num2)
//        case "/":
//            result = divideOperation.operate(num1: num1, num2: num2)
//        default:
//            print("ERROR")
//        }
//        return result
//    }
//
//    // Calculator 인스턴스 생성 및 사용
//    let addOperator = AddOperation()
//    let substractOperator = SubstractOperation()
//    let multiplyOperator = MultiplyOperation()
//    let divideOperator = DivideOperation()
//}
//
//let calculator = Calculator(addOperation: AddOperation(), substractOperation: SubstractOperation(), multiplyOperation: MultiplyOperation(), divideOperation: DivideOperation())
//
//let addResult = calculator.calculate(oper: "+", num1: 2, num2: 3)
//let subResult = calculator.calculate(oper: "-", num1: 2, num2: 3)
//let multiplyResult = calculator.calculate(oper: "-", num1: 2, num2: 3)
//let divideResult = calculator.calculate(oper: "-", num1: 2, num2: 3)
//
//print("addResult : \(String(describing: addResult))")
//print("subResult : \(String(describing: subResult))")
//print("multiplyResult : \(String(describing: multiplyResult))")
//print("dividePercent : \(String(describing: divideResult))")

