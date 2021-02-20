//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()
    
    var player: AVAudioPlayer!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        secondsPassed = 0
        titleLabel.text = hardness
        timer.invalidate()
        
        progressBar.progress = 0.0
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
        
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            print("\(secondsPassed) seconds.")
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            print(progressBar.progress)
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
            playSound(noteName: "alarm_sound")
        }
        
    }
    
    func playSound(noteName: String) {
            let url = Bundle.main.url(forResource: noteName, withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
        }
    

}
