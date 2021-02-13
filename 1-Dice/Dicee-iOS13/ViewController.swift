//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageView1.image = #imageLiteral(resourceName: "DiceThree")
        diceImageView2.image = #imageLiteral(resourceName: "DiceFive")
    }

//    var leftDiceIndex = 0
//    var rightDiceIndex = 5
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
//        print("A - leftDiceIndex = \(leftDiceIndex)")
//        print("A - rightDiceIndex = \(rightDiceIndex)")
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
//        leftDiceIndex += 1
//        rightDiceIndex -= 1
        
//        print("B - leftDiceIndex = \(leftDiceIndex)")
//        print("B - rightDiceIndex = \(rightDiceIndex)")
    }
    
}

