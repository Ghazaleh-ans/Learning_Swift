//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [ Question(text: "Four + Two is equal to Six.", answer: "True"),
                 Question(text: "Bananas are green.", answer: "False"),
                 Question(text: "The capital of France is Paris.", answer: "True"),
                 Question(text: "Water boils at 100°C.", answer: "True")
    ]
    
    var questionNumber: Int = 0
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! //True or false
        let correctAnswer = quiz[questionNumber].answer
        
        if userAnswer == correctAnswer {
            print("Correct!")
        } else {
            print("Wrong!")
        }
        if questionNumber == quiz.count - 1 {
            questionNumber = 0
        }
        else{
            questionNumber += 1
        }
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber].text
    }

}

