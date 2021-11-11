//
//  QuizBrain.swift
//  Quiz APP
//
//  Created by Milton Casiano on 11/10/21.
//

import Foundation


struct QuizBrain {
    
    
    var questionBank = [
       
        Questions(text: "5 + 2 = 9", answer: "False"),
        Questions(text: "9 - 2 = 8", answer: "False"),
        Questions(text: "2 + 3 = 5", answer: "True"),
        Questions(text: "1 - 1 = -1", answer: "False")
        
        
   ]
   
    
    
    
   var questionNumber = 0
    //create a function for displaying question text
    //1. define 2. number of parameters 3. return type -> string 4. return 5 calling
    
   func getQuestion() -> String {
    
       return questionBank[questionNumber].text

    
   }
    func checkAnswer(_ userInput : String) -> Bool{
           
        if userInput == questionBank[questionNumber].answer {
                
                return true
           }
       
        else {
                return false
       }
    }
    mutating func nextQuestion (){
           
        if questionNumber + 1 < questionBank.count {
           
       
           questionNumber += 1
           }
               
        else {
               
               questionNumber = 0
           }
           
       }
}
