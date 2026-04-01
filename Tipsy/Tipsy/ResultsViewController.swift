//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Ghazall on 01.04.26.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var share: Float = 0.0
    var people: Int = 0
    var tipPercent: Int = 10
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        totalLabel.text = String(format: "$%.2f", share)
        settingsLabel.text = "Splite between \(people) people with \(tipPercent)% tip."
        super.viewDidLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
