//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ghazall on 27.03.26.
//  Copyright © 2026 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi : Float?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        bmi = weight / (height * height)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi!)
    }
}
