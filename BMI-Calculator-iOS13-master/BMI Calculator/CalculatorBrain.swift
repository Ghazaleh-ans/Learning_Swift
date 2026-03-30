//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ghazall on 27.03.26.
//  Copyright © 2026 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmiValue = "0.0"
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmi = weight / (height * height)
        bmiValue = String(format: "%.1f", bmi)
    }
    
    func getBMIValue() -> String {
        return bmiValue
    }
}
