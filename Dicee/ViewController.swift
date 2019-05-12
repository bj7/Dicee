//
//  ViewController.swift
//  Dicee
//
//  Created by Joshua Bernitt on 5/8/19.
//  Copyright © 2019 Joshua Bernitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceValue1: Int = 1
    var randomDiceValue2: Int = 1
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func RollButtonClicked(_ sender: Any) {
        randomDiceValue1 = Int.random(in: 1...6)
        randomDiceValue2 = Int.random(in: 1...6)

        print(randomDiceValue1, randomDiceValue2)
        diceImage1.image = UIImage(named: "dice\(randomDiceValue1)")
        diceImage2.image = UIImage(named: "dice\(randomDiceValue2)")
    }
}

