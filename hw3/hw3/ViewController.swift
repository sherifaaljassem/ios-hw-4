//
//  ViewController.swift
//  hw3
//
//  Created by Sherifa Aljassem on 9/27/20.
//  Copyright © 2020 Sherifa Aljassem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var HieghtField: UITextField!
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var WeightField: UITextField!
    @IBOutlet weak var TitleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Calculate(_ sender: Any) {
        let height = Double(HeightField.text!)
        let weight = Double(WeightField.text!)
        let bmi = calcBMI(height: height1, weight: weight!)
        bmiLabel.text = String
        let status = statusLabel
        statusLabel.text = status
    }
   func calcBMI(height:Double, weight:Double){
    let bmi = weight/(height*height)
        }
    func bmiStatus(bmi: Double)-> String{
        if bmi < 20 {
            return "ضعيف"
        }
        else if bmi < 25{
            return "جيد"
         }
        else if bmi > 25{
            return  "متين"
        }
        else{
            return "خطأ"
        }
}
}
