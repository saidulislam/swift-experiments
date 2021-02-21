//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    let quiz = [
        ["Two + Two equals to Six", "False"],
        ["Three + Six equals to Eight", "False"],
        ["Four + Eight equals to Twelve", "True"]
    ]
    
    var questionNumber  = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(qnum: questionNumber)
        
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        updateButton()
        
        if ( sender.currentTitle == quiz[questionNumber][1]) {
            print("Right!")
            sender.setTitleColor(UIColor.green, for: .normal)
            //sender.setTitle("Right!", for: .normal)
            //sender.setTitleColor(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), for: .normal)
        }
        else {
            print("Wrong!")
            sender.setTitleColor(UIColor.red, for: .normal)
            //sender.setTitle("Wrong!", for: .normal)
            //sender.setTitleColor(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), for: .normal)
        }
        
        questionNumber = Int.random(in: 0...2)
        updateUI(qnum: questionNumber)
        
    }
    

    func updateUI(qnum: Int) {
        questionLabel.text = quiz[qnum][0]
    }
    
    func updateButton() {
        trueButton.setTitleColor(UIColor.white, for: .normal)
        falseButton.setTitleColor(UIColor.white, for: .normal)
    }
    
    func fadeViewInThenOut(view : UILabel, delay: TimeInterval) {

        let animationDuration = 1.5

        UILabel.animate(withDuration: animationDuration, delay: delay, options: [UILabel.AnimationOptions.autoreverse, UILabel.AnimationOptions.repeat], animations: {
            view.alpha = 0
        }, completion: nil)

    }
    
}

