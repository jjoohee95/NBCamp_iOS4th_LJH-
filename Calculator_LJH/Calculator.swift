//
//  Calculator.swift
//  Lv.1~4 Calculator
//
//  Created by Leejuhee on 6/9/24.
//
//Calculator 클래스

class Calculator {
    let addOperation: AddOperation
    let substractOperation: SubstractOperation
    let multiplyOperation: MultiplyOperation
    let divideOperation: DivideOperation

    init(addOperation: AddOperation, substractOperation: SubstractOperation, multiplyOperation: MultiplyOperation, divideOperation: DivideOperation) {
        self.addOperation = addOperation
        self.substractOperation = substractOperation
        self.multiplyOperation = multiplyOperation
        self.divideOperation = divideOperation
    }

    func calculate(operation: AbstractOperation, num1: Double, num2: Double) -> Double {
        return operation.operate(num1: num1, num2: num2)
    }
}
