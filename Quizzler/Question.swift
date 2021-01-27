//
//  File.swift
//  Quizzler
//
//  Created by Sambit Das on 27/06/19.


import Foundation

class Question{
    
    //MARK:- Variables
    var questionText : String
    var answer : Bool
    
    init(text : String , correctAnswer : Bool){
        questionText = text
        answer = correctAnswer
    }
}
