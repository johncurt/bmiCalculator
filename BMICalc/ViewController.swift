//
//  ViewController.swift
//  BMICalc
//
//  Created by John Fansler on 8/22/17.
//  Copyright © 2017 John Fansler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var BMILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        print("pressed")
        print("\(weightText.text!)")
        print(heightText.text!)
        if let height = Double(heightText.text!) {
            if let weight = Double(weightText.text!) {
                var bmiValue = (weight * 0.45) / pow(height * 0.025,2.0)
                print(bmiValue);
                BMILabel.text = String(Int(bmiValue))
            } else {
                let alertController = UIAlertController(title: "Error", message: "Invalid weight entry", preferredStyle: .alert)
                let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(OKAction)
                self.present(alertController, animated: true, completion: nil)
                weightText.text=""
            }
        } else {
            let alertController = UIAlertController(title: "Error", message: "Invalid height entry", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(OKAction)
            self.present(alertController, animated: true, completion: nil)
            heightText.text=""
        }
        
    }
    
    
}

