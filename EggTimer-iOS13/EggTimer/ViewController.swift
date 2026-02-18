//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var totalTime = 0
    var secondsPassed = 0
    var timer: Timer?          // store a reference to the timer

    @objc func updateCounter() {
        progressBar.progress = Float(secondsPassed) / Float(totalTime)
        if secondsPassed < totalTime {
            secondsPassed += 1
            print(secondsPassed)
        } else {
            timer?.invalidate()   // stop the timer when it hits 0
            timer = nil
            Label.text = "DONE!"
            playSound()
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")!
        player = try! AVAudioPlayer(contentsOf: url)
        player?.play()
    }

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var Label: UILabel!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer?.invalidate()       // cancel any previous timer before starting a new one
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        secondsPassed = 0
        Label.text = hardness
        progressBar.progress = 0.0
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
}
