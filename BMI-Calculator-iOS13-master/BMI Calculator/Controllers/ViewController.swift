//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = ((sender.value) * 100).rounded() / 100
        heightValue.text = "\(height)m"
        print(height)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = ((sender.value) * 100).rounded() / 100
        weightValue.text = "\(weight)Kg"
        print(weight)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

