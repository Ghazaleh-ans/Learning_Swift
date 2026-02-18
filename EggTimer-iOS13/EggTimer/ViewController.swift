//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
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
        }
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer?.invalidate()       // cancel any previous timer before starting a new one
        
        let hardness = sender.currentTitle!
        counter = eggTimes[hardness]!   // assign to the INSTANCE variable, not a new local one
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
}
