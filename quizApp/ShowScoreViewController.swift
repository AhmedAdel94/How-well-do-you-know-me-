//
//  ShowScoreViewController.swift
//  quizApp
//
//  Created by Ahmed Adel on 7/18/17.
//  Copyright © 2017 Ahmed Adel. All rights reserved.
//

import UIKit

class ShowScoreViewController: UIViewController {
    
    var result:String!

    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = result
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}