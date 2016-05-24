//
//  ViewController.swift
//  Quiz
//
//  Created by Rex Jolley on 5/23/16.
//  Copyright © 2016 Rex Jolley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionButton: UIButton!
    @IBOutlet weak var answerButton: UIButton!
    
    
    let questions: [String] = ["From what is cognac made?",
                               "What is 2 + 2",
                               "What is the capital of Vermont?"]
    
    let answers: [String] = ["Grapes",
                             "4",
                             "Montpelier"]
    
    var currentQuestionIndex: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showNextQuestion(sender: AnyObject){
        currentQuestionIndex+=1;
        if(currentQuestionIndex>=questions.count){
            currentQuestionIndex = 0;
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showNextAnswer(sender: AnyObject){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }


}

