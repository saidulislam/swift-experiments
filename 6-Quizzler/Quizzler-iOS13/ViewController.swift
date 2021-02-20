//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        "Two + Two equals to Six",
        "Three + Six equals to Eight",
        "Four + Eight equals to Twelve"
    ]
    
    var questionNumber  = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(qnum: questionNumber)
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber = Int.random(in: 0...2)
        updateUI(qnum: questionNumber)
    }
    

    func updateUI(qnum: Int) {
        questionLabel.text = quiz[ questionNumber ]
    }
}

