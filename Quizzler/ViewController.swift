//
//  ViewController.swift
//  Quizzler
//
//  Created by Sambit Das on 29/06/2019.


import UIKit

class ViewController: UIViewController {
    
    //MARK:- Variables and Outlets
    let allQuestion = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestion.list[0]
        questionLabel.text = firstQuestion.questionText
    }
    
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 2 {
            pickedAnswer = false
        }
        else if sender.tag == 1 {
            pickedAnswer = true
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        nextQuestion()
    }
    
    func updateUI() {
        scoreLabel.text = "\(score)"
        progressLabel.text = "\(questionNumber + 1 ) / 15"
        
        progressBar.frame.size.width = (view.frame.size.width / 15) * CGFloat(questionNumber + 1)
    }
    
    
    func nextQuestion() {
        
        if questionNumber <= 14 {
            questionLabel.text = allQuestion.list[questionNumber].questionText
            updateUI()
        } else {
            let alert = UIAlertController(title: "Awesome! your score is \(score)", message: "You've finish all Questions , Do u want to start over ?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in self.startOver()  })
            alert.addAction(restartAction)
            present(alert ,animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestion.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct")
            score = score + 1
            print(score)
        }
        else{
            ProgressHUD.showError("Wrong!")
        }
    }
    
    func startOver() {
        score = 0
        questionNumber = 0
        nextQuestion()
    }
}
