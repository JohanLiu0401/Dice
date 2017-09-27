//
//  ViewController.swift
//  Dice
//
//  Created by Johan on 26/09/2017.
//  Copyright © 2017 Johan Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceNumber = 0
    @IBOutlet weak var diceImage: UIImageView!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: UIButton) {
        diceNumber = Int(arc4random_uniform(6))
        diceImage.image = UIImage(named: diceArray[diceNumber])
    }
    
}

