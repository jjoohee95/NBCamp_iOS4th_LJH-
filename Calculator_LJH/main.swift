//
//  main.swift
//  Lv.1~4 Calculator
//
//  Created by t2023-m0023 on 6/7/24.
//
import Foundation

let calculator = Calculator(addOperation: AddOperation(), substractOperation: SubstractOperation(), multiplyOperation: MultiplyOperation(), divideOperation: DivideOperation())

// 입력값 readLine()값을 Double로 형변환
print("첫 번째 숫자를 입력하세요")
let input = readLine()!
print("두 번째 숫자를 입력하세요")
let input2 = readLine()!

var num1 : Double = 0.0
var num2 : Double = 0.0

if let number = Double(input) {
    num1 = number
}

if let number = Double(input2) {
    num2 = number
}


let addResult = calculator.calculate(operation: AddOperation(), num1: num1, num2: num2)
let subResult = calculator.calculate(operation: SubstractOperation(), num1: num1, num2: num2)
let multiplyResult = calculator.calculate(operation: MultiplyOperation(), num1: num1, num2: num2)
let DivideResult = calculator.calculate(operation: DivideOperation(), num1: num1, num2: num2)


//나누기 소수점 2자리까지 출력하는 함수
let divideResult = String(format: "%.2f",DivideResult)

//결과값 출력
print(addResult)
print(subResult)
print(multiplyResult)
print(divideResult)





