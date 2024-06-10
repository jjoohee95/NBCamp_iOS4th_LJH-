//

//  DivideOperation.swift
//  Lv.1~4 Calculator
//
//  Created by Leejuhee on 6/9/24.
//
//
//나눗셈연산
class DivideOperation: AbstractOperation {
    override func operate(num1: Double, num2: Double) -> Double {
        if num2 != 0 {
            return num1 / num2
        } else {
            print("0으로 나눌 수 없습니다!")
            return 0.0
        }
    }
}
