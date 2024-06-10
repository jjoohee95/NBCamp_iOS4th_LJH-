//
//  AddOperation.swift
//  Lv.1~4 Calculator
//
//  Created by Leejuhee on 6/9/24.
//
//
// 덧셈연산
class AddOperation: AbstractOperation {
    override func operate(num1: Double, num2: Double) -> Double {
        return num1 + num2
    }
}
