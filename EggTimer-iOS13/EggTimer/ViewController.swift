//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var counter = 60
    var timer: Timer?          // store a reference to the timer

    @objc func updateCounter() {
        if counter > 0 {
            print("\(counter) seconds.")
            counter -= 1
        } else {
            timer?.invalidate()   // stop the timer when it hits 0
            timer = nil
            print("Done!")
            Label.text = "DONE!"
        }
    }

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var Label: UILabel!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer?.invalidate()       // cancel any previous timer before starting a new one
        progressBar.progress = 1.0
        let hardness = sender.currentTitle!
        counter = eggTimes[hardness]!   // assign to the INSTANCE variable, not a new local one
        Label.text = "How do you like your eggs?"
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
}
