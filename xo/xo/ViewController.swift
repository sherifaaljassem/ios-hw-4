//
//  ViewController.swift
//  xo
//
//  Created by Sherifa Aljassem on 9/28/20.
//  Copyright © 2020 Sherifa Aljassem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var turnLabel: UILabel!
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func click(_ sender: Any) { print (counter)
        if counter % 2 == 0{
            sender.setTitle("X", for: .normal)
            turnLabel.text = "O Turn"
        }
        else{
            sender.setTitle("O", for: .normal)
            turnLabel.text = "X Turn"
        }
        sender.isEnabled = false
        counter += 1
        print(counter)
    }
    func checkWinner(w: String){
        let r1 = b1.titleLabel?.text == w && b2.titleLabel?.text == w && b3.titleLabel?.text == w
        
        let r2 =  b4.titleLabel?.text == w && b5.titleLabel?.text == w && b6.titleLabel?.text == w
        
        let r3 = b7.titleLabel?.text == w && b8.titleLabel?.text == w && b9.titleLabel?.text == w
        
        let c1 = b1.titleLabel?.text == w && b4.titleLabel?.text == w && b7.titleLabel?.text == w
        
        let c2 = b2.titleLabel?.text == w && b5.titleLabel?.text == w && b8.titleLabel?.text == w
        
        let c3 = b3.titleLabel?.text == w && b6.titleLabel?.text == w && b9.titleLabel?.text == w
        
        let d1 = b1.titleLabel?.text == w && b5.titleLabel?.text == w && b9.titleLabel?.text == w
        
        let d2 = b3.titleLabel?.text == w && b5.titleLabel?.text == w && b7.titleLabel?.text == w
        
        if r1 || r2 || r3 || c1 || c2 || c3 || d1 || d2{
            alertWinner(winner:w)
        }
    }
    func alertWinner(winner: String){
        let alertController = UIAlertController(title: "\(winner) wins", message: "Tap restart to restart the game", preferredStyle: .alert)
        let action = UIAlertAction(title: "Restart", style: .cancel,handler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
}

