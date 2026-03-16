//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

//extension UIButton {
//  func shortChangeTo(_ color:UIColor) {
//    let prev = self.backgroundColor
//    self.backgroundColor = color
//    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
//       self.backgroundColor = prev
//    }
//  }
//}


class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    var timer: Timer? = nil
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! //True or false
        let userGotItRight = quizBrain.checkAnswer(userAnswer)

        if userGotItRight{
//            sender.shortChangeTo(.green)
            sender.backgroundColor = UIColor.green
        } else {
//            sender.shortChangeTo(.red)
            sender.backgroundColor = UIColor.red
        }
        if questionNumber == quiz.count - 1 {
            questionNumber = 0
        }
        else{
            questionNumber += 1
        }
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
    }
    

}

