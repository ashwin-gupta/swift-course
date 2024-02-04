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
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choiceButtonOne: UIButton!
    @IBOutlet weak var choiceButtonTwo: UIButton!
    @IBOutlet weak var choiceButtonThree: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    
    var questionNumber = 0
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector (updateUI), userInfo: nil, repeats: false)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        progressBar.progress = 0
    }

    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        let choices = quizBrain.getQuestionChoices()
        
        choiceButtonOne.setTitle(choices[0], for: .normal)
        choiceButtonTwo.setTitle(choices[1], for: .normal)
        choiceButtonThree.setTitle(choices[2], for: .normal)
        progressBar.progress = quizBrain.getProgress()
        
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        choiceButtonOne.backgroundColor = UIColor.clear
        choiceButtonTwo.backgroundColor = UIColor.clear
        choiceButtonThree.backgroundColor = UIColor.clear

    }

}

