//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ghazall on 27.03.26.
//  Copyright © 2026 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    var advice: String?
    var color: UIColor?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            advice = "Underweight"
            color = .blue
        } else if bmiValue > 18.5 && bmiValue < 24.9 {
            advice = "Normal weight"
            color = .green
        } else {
            advice = "Overweight"
            color = .red
        }
        print(advice ?? "advice not available")
        bmi = BMI(value: bmiValue, advice: advice ?? "advice not available", color: color ?? .black)
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
}
