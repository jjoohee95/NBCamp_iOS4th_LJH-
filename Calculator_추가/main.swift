//
//입력값 숫자/연산자 (유효성확인, 나누기 연산 num2!=0 확인)
//입력값 숫자와 연산자 기반 연산 메서드 구현
//계산 결과 표시 / 누적결과값 저장 및 초기화
//반복
import Foundation

var currentResult: Double = 0.0
var calculator = Calculator(currentResult: currentResult)

//print("첫 번째 숫자를 입력하세요 : ", terminator: "")
//if let input = readLine(), let num1 = Double(input){

while true {
    print("1. 계산종료   2. 계산기 초기화  3.누적계산")
    print("원하는 번호를 선택해 주세요", terminator: "")

    if let option = readLine(), let choice = Int(option) {
        switch choice {
        case 1:
            print("계산종료")
            break
        case 2:
            print("첫 번째 숫자를 입력하세요 : ", terminator: "")
            if let input = readLine(), let num1 = Double(input){
                print("두 번째 숫자를 입력하세요 : ", terminator: "")
                if let input2 = readLine(),let num2 = Double(input2) {
                    print("연산자를 선택하세요 (+, -, *, /) : ", terminator: "")
                    if let operation = readLine() {
                        switch operation {
                        case "+":
                            calculator.setOperation(Addition())
                        case "-":
                            calculator.setOperation(Subtraction())
                        case "*":
                            calculator.setOperation(Multiplication())
                        case "/":
                            calculator.setOperation(Division())
                        default:
                            print("Error: 지원되지 않는 연산자입니다.")
                            continue
                        }
                        currentResult = calculator.calculate(num1: num1, num2: num2)
                        let result = String(format: "%.2f", currentResult)
                        print("결과: \(result)")
                    } else {
                        print("Error: 연산자를 입력하세요.")
                    }
                } else { print("Error: 두 번째 숫자를 입력하세요.")}
            } else {print("Error: 첫 번째 숫자를 입력하세요.")}

        case 3:
            print("두 번째 숫자를 입력하세요 : ", terminator: "")
            if let input2 = readLine(), let num2 = Double(input2) {
            print("연산자를 선택하세요 (+, -, *, /) : ", terminator: "")
                if let operation = readLine() {
                    switch operation {
                    case "+":
                        calculator.setOperation(Addition())
                    case "-":
                        calculator.setOperation(Subtraction())
                    case "*":
                        calculator.setOperation(Multiplication())
                    case "/":
                        calculator.setOperation(Division())
                    default:
                        print("Error: 지원되지 않는 연산자입니다.")
                        continue
                    }
                    currentResult = calculator.calculate(num1: currentResult, num2: num2)
                    let result = String(format: "%.2f", currentResult)
                    print("결과: \(result)")

                } else {
                    print("Error: 연산자를 입력하세요.")
                }
            } else {
                print("Error: 숫자를 입력하세요.")
            }
        default:
            print("Error: 올바른 옵션을 선택하세요.")
        }

        // 사용자가 '1'을 선택하면 반복문을 종료합니다.
        if choice == 1 {
            break
        }
    } else {
        print("Error: 숫자를 입력하세요.")
    }
}


//push


//var currentResult: Double = 0.0
//var First = true
//var oper = Character?
//let calculator = Calculator(currentResult: currentResult, oper: oper)
//
//print("계산기")
//while true {
//    //반복계산가능
//    print("1. 계산종료   2. 계산기초기화    3. 누적계산")
//    print("원하는 번호를 선택해 주세요", terminator: "")
//    let oper = readLine()!
//    if let choice = Int(oper) {
//        switch choice {
//        case 1: //계산종료
//            print("계산종료")
//            break
//        case 2: //누적계산 초기화후 새로운 숫자 입력
//        print("첫 번째 숫자를 입력하세요 : ", terminator: "")
//        let num1 = readLine()
//        print("두 번째 숫자를 입력하세요 : ", terminator: "")
//        let num2 = readLine()
//            if let num1 = Double(num1!), num2 = Double(num2!){
//                print("연산자를 입력하세요 : ", terminator: "")
//                let oper = readLine()!
//                calculator.calculate(operation: AbstractOperation, num1: <#T##Double#>, num2: <#T##Double#>)
//                First = false
//            }
//        case 3: //누적계산 결과 유지 추가 계산
//            if First {
//                print("Error : 누적된 계산 값이 없습니다. 다른 방법을 이용하세요")
//                break
//            }
//            let num1 = currentResult
//            print("두 번째 숫자를 입력하세요 : ", terminator: "")
//            let num2 = readLine()
//            if let num2 = Double(num2!) {
//            print("연산자를 입력하세요 : ", terminator: "")
//            let oper = readLine()!
//            calculator.calculate(operation: AbstractOperation, num1: <#T##Double#>, num2: <#T##Double#>)
//            First = false
//            }
//        default:
//            print("Error : 다른 방법으로 다시 시도해주세요")
//            break
//        }
//    }
//}





//  main.swift
//  FourFunctionCalculator
//
//  Created by Leejuhee on 6/10/24.
//
//import Foundation
//
//let calculator = Calculator(addOperation: AddOperation(), substractOperation: SubstractOperation(), multiplyOperation: MultiplyOperation(), divideOperation: DivideOperation())
//
//
//// 입력값 readLine()값을 Double로 형변환
//print("숫자를 입력하세요")
//let input = readLine()!
//print("숫자를 입력하세요")
//let input2 = readLine()!
//print("원하는 연산자를 입력하세요")
//let input3 = readLine()!
//
//var num1 : Double = 0.0
//var num2 : Double = 0.0
//
//let oper = Character(input3)
//
//if let number = Double(input) {
//    num1 = number
//}
//if let number = Double(input2) {
//    num2 = number
//}
//
//
//
//let addResult = calculator.calculate(operation: AddOperation(), num1: num1, num2: num2)
//let subResult = calculator.calculate(operation: SubstractOperation(), num1: num1, num2: num2)
//let multiplyResult = calculator.calculate(operation: MultiplyOperation(), num1: num1, num2: num2)
//let DivideResult = calculator.calculate(operation: DivideOperation(), num1: num1, num2: num2)
//
//
////나누기 소수점 2자리까지 출력하는 함수
//let divideResult = String(format: "%.2f",DivideResult)
//
////결과값 출력
//print(addResult)
//print(subResult)
//print(multiplyResult)
//print(divideResult)
