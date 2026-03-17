//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Ghazall on 18.02.26.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let cA: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answer = a
        cA = correctAnswer
    }
}
