//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let eggTimes = ["Soft": 5, "Medium":7, "Hard": 12]
    var counter = 60

    override func viewDidLoad() {
        super.viewDidLoad()

        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }



    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            print("\(counter) seconds.")
            counter -= 1
        }
    }

    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
//        if hardness == "Soft" {
//            print(eggTimes["Soft"]!)
//        }
//        else if hardness == "Medium" {
//            print(eggTimes["Medium"]!)
//        }
//        else{
//            print(eggTimes["Hard"]!)
//        }
        let result = eggTimes[hardness]!
        print(result)
    }
}
