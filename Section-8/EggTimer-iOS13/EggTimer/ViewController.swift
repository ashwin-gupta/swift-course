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
    
    let eggTimes = ["Soft" : 3, "Medium" : 4, "Hard" : 7]
    
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()
    
    var player: AVAudioPlayer!
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        progressBar.progress = 0.0
        secondsPassed = 0
        timer.invalidate()
        titleLabel.text = hardness
        
        
        totalTime = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            
            let percentageProgress = Float(secondsPassed)/Float(totalTime)
            secondsPassed += 1
            progressBar.progress = percentageProgress
        
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
            progressBar.progress = 1.0
            playAlarm()
        }
    }
    
    func playAlarm() {
        guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else {
            return
        }
                
        player = try! AVAudioPlayer(contentsOf: url)
        player.play()
    }
    


}
