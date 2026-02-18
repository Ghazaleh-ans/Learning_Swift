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
    
    let quiz = [["Four + Two is equal to Six.", "True"], ["Bananas are green.", "False"], ["The capital of France is Paris.", "True"], ["Water boils at 100°C.", "True"]]
    
    var questionNumber: Int = 0
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! //True or false
        let correctAnswer = quiz[questionNumber][1]
        
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
        questionLabel.text = quiz[questionNumber][0]
    }

}

