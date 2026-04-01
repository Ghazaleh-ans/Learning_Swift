//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    var tipBrain = TipBrain()
    
    @IBOutlet var answerButtons: [UIButton]!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twenyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    @IBAction func tipChanged(_ sender: UIButton) {
        for button in answerButtons {
            button.isSelected = (button == sender)
        }
        tipBrain.selectedTip = (String(sender.currentTitle!.split(separator: "%")[0]))
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        let value = Int(sender.value)
        tipBrain.people = value
        splitNumberLabel.text = "\(value)"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        billTextField.endEditing(true)
        tipBrain.billAmount = Float(billTextField.text!) ?? 0.0
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.share = tipBrain.calculateEachPersonShare()
            destinationVC.people = tipBrain.people
            destinationVC.tipPercent = Int(tipBrain.getTipValue() * 100)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

