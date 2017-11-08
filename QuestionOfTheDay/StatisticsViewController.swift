//
//  StatisticsViewController.swift
//  QuestionOfTheDay
//
//  Created by Mucherla,Veera Kishon Kumar on 11/6/17.
//

import UIKit

class StatisticsViewController: UIViewController {

    @IBOutlet weak var questionLBL: UILabel!
    @IBOutlet weak var answer0LBL: UILabel!
    @IBOutlet weak var answer1LBL: UILabel!
    @IBOutlet weak var answer2LBL: UILabel!
    @IBOutlet weak var per0LBL: UILabel!
    @IBOutlet weak var per1LBL: UILabel!
    @IBOutlet weak var per2LBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let statisticsInstance = Statistician()
        let ques : String = statisticsInstance.fetchQuestionOfTheDay().question!
        let ans0 : String = statisticsInstance.fetchQuestionOfTheDay().answer0!
        let ans1 : String = statisticsInstance.fetchQuestionOfTheDay().answer1!
        let ans2 : String = statisticsInstance.fetchQuestionOfTheDay().answer2!
        
        
        
            
        print(ques)
        questionLBL.text = ques
        answer0LBL.text = ans0
        answer1LBL.text = ans1
        answer2LBL.text = ans2
        var percents = statisticsInstance.findPercentage()
        per0LBL.text = "\(percents[0])"
        per1LBL.text = "\(percents[1])"
        per2LBL.text = "\(percents[2])"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let statisticsInstance = Statistician()
        var percents = statisticsInstance.findPercentage()
        per0LBL.text = "\(percents[0])"
        per1LBL.text = "\(percents[1])"
        per2LBL.text = "\(percents[2])"
        
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
