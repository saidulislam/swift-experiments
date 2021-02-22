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
        Question(q: "A slug's blood is green.", a: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Question(q: "Google was originally called 'Backrub'.", a: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
    ]
    
    var questionNumber  = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(qnum: questionNumber)
        
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        updateButton()
        
        if ( sender.currentTitle == quiz[questionNumber].a) {
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
        
        questionNumber = Int.random(in: 0...quiz.count)
        updateUI(qnum: questionNumber)
        
    }
    

    func updateUI(qnum: Int) {
        questionLabel.text = quiz[qnum].q
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

