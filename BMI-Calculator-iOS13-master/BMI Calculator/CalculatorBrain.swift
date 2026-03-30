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
            advice = "Eat more pies"
            color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        } else if bmiValue < 24.9 {
            advice = "Fit as a fiddle!"
            color = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        } else {
            advice = "Eat less pies!"
            color = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        }
        bmi = BMI(value: bmiValue, advice: advice ?? "advice not available", color: color ?? .black)
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "advice not available"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
