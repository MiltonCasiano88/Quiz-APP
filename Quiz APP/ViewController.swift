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
    
    //2D array - two dimensional array
    var questionBank = [["5 + 2 = 9", "False"],
                        ["9 - 2 = 8", "False"],
                        ["2 + 3 = 5", "True"],
                        ["1 - 1 = -1", "False"]]
    
    questionBank[2][1]
    
    questionBank[1]
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        updateUI()
    }
    func updateUI(){
        
        questions.text = questionBank[0][0]
    }




    @IBAction func ButtonPressed(_sender: UIButton){
        
        userInput = sender.currentTitle!
        
        if userInput == AnswerBank {
            
            sender.backgroundColor = green
        }
    }
}
