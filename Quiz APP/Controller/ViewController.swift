//
//  ViewController.swift
//  Quiz APP
//
//  Created by Milton Casiano on 10/27/21.
//

import UIKit

class ViewController: UIViewController {

    //Outlets -> variable |
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var questions: UILabel!
    
    
    var quizbrain = QuizBrain()
    //creating object to intregrate model and view controller
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        updateUI()  // calling a function
        
        //define
        //find the number of parameters
        // mention the return
        // return the calculation
        
        //call the function
        
    }
    
    @objc func updateUI(){
        
        questions.text = quizbrain.getQuestion()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear

    }




    @IBAction func ButtonPressed(_ sender: UIButton) {
        
        
        let userInput = sender.currentTitle!
        
        let checkAnswer = quizbrain.checkAnswer(userInput)
        
        
        if checkAnswer {
            
            sender.backgroundColor = UIColor.green
            
        }
    
        else {
            sender.backgroundColor = UIColor.red
        }
        
        quizbrain.nextQuestion()

        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
    
        }
}

//1. color reset
//2. index out of reach
