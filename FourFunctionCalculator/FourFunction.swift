//
//  FourFunctionCalculator.swift
//  Calculator
//
//  Created by Leejuhee on 6/9/24.
//
class Addition: Operation {
    override func calculate(num1: Double, num2: Double) -> Double {
        return num1 + num2
    }
}

class Subtraction: Operation {
    override func calculate(num1: Double, num2: Double) -> Double {
        return num1 - num2
    }
}

class Multiplication: Operation {
    override func calculate(num1: Double, num2: Double) -> Double {
        return num1 * num2
    }
}

class Division: Operation {
    override func calculate(num1: Double, num2: Double) -> Double {
        if num2 != 0 {
            return num1 / num2
        } else {
            print("Error: 0으로 나눌 수 없습니다!")
            return 0.0
        }
    }
}
