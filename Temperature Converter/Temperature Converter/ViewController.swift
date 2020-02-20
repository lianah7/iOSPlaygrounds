//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Liana on 2/11/20.
//  Copyright © 2020 Liana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var temperatureEntry: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: UIButton) {
        let tempF = Double(temperatureEntry.text!)
        let tempC = (5/9.0) * (tempF! - 32)
        answerLabel.text = String(tempC)
    }
    
}

