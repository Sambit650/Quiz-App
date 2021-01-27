//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Sambit Das on 29/06/2019.


import Foundation


class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        // Creating a quiz item and appending it to the list
        let item = Question(text: "IOS stand for intelligent operating System", correctAnswer: false)//iphone operating system
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "To Create Costants in swift We Use Keyword Const.", correctAnswer: false))//let
        
        list.append(Question(text: "Double has a Precision of At Least 15 Decimal Digits in swift.", correctAnswer: true))
        
        list.append(Question(text: "First IOS Was Written in 1985.", correctAnswer: false))//1986
        
        list.append(Question(text: "We Can Return Multiple Values In Swift From Function By Using Tuple.", correctAnswer: true))
        
        list.append(Question(text: "Char is a Data Type In SWIFT.", correctAnswer: false))
        
        list.append(Question(text: "If You Do Not Want To Mention External Name In Function Call, Then use ! sign Before The Parameters While Defining The Function.", correctAnswer: false))//?
        
        list.append(Question(text: "The Most Recent Version Of MacOS Is Based On UNIX.", correctAnswer: true))
        
        list.append(Question(text: "For Unwrapping Value Inside Optional What Should We Use ? sign.", correctAnswer: false))//!
        
        list.append(Question(text: "Multitasking In IOS Was Introduced In IOS 6.0 Version.", correctAnswer: false))//ios 4.0
        
        list.append(Question(text: "AppKit Framework Is Not Used In IOS .", correctAnswer: true))
        
        list.append(Question(text: "Where x = [Int]() is A Mutable Array In Swift.", correctAnswer: true))
        
        list.append(Question(text: "Application Running In Foreground But Currently Not Receiving Any Events .The Current State Of Application is Suspended State.", correctAnswer: false))//inactive
        
        list.append(Question(text: "Struct instance are allocated in heap.", correctAnswer: false))//stack
        
        list.append(Question(text: "AnyObject can represent an instance of any class type.", correctAnswer: true))
    }
}
