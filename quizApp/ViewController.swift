//
//  ViewController.swift
//  quizApp
//
//  Created by Ahmed Adel on 6/12/17.
//  Copyright © 2017 Ahmed Adel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var answerLabel1: UIButton!
    @IBOutlet var answerLabel2: UIButton!
    @IBOutlet var answerLabel3: UIButton!
    
    @IBOutlet var showResultButton: UIButton!
    
    // Questions and Answers
    
    let questions = ["Favourite pet? (1/3)","Favourite color? (2/3)","Where was I born? (3/3)"]
    let answers = [["Dog","cat","Rabbit"],["Purple","Black","Green"],["Cairo","Alex","Sohag"]]
    
    // Variables
    
    var currentQuestion = 0
    
    var rightAnswerPlacement:UInt32 = 0
    
    var points = 0
    
    // label
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var result: UILabel!

    
    
    
    @IBAction func action(_ sender: UIButton)
    {
        if (sender.tag == Int(rightAnswerPlacement))
        {
            print("Right")
            points += 1
            //result.text = String(points)
            
            if points == 3{
                answerLabel1.isEnabled = false
                answerLabel2.isEnabled = false
                answerLabel3.isEnabled = false
                
                
            }
        }else{
            print("Wrong")
        }
        
        
        if(currentQuestion != questions.count)
        {
            newQuestion()
        }else{
            showResultButton.isEnabled = true
            showResultButton.isHidden = false
        }
        
    }
    override func viewDidAppear(_ animated: Bool)
    {
        newQuestion()
    }
    
    
    // Function that displays new question
    
    func newQuestion(){
        lbl.text = questions[currentQuestion]
        
        rightAnswerPlacement = arc4random_uniform(3)+1
        
        //Create a button
        
        var button:UIButton = UIButton()
        
        var x = 1
        
        for i in 1...3
        {
            // Create a button
            button = view.viewWithTag(i) as! UIButton
            
            if i == Int(rightAnswerPlacement)
            {
                button.setTitle(answers[currentQuestion][0], for: .normal)
            }else{
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x = 2
            }
            
            
        }
        
        currentQuestion += 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destViewController : ShowScoreViewController = segue.destination as! ShowScoreViewController
        destViewController.result = "Your result is " + String(points)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //newQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   



}

