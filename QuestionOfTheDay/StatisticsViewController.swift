//
//  StatisticsViewController.swift
//  QuestionOfTheDay
//
//  Created by Mucherla,Veera Kishon Kumar on 11/6/17.
//

import UIKit

class StatisticsViewController: UITabBarController {

    @IBOutlet weak var questionLBL: UILabel!
    @IBOutlet weak var answer0LBL: UILabel!
    @IBOutlet weak var answer1LBL: UILabel!
    @IBOutlet weak var answer2LBL: UILabel!
    @IBOutlet weak var per0LBL: UILabel!
    @IBOutlet weak var per1LBL: UILabel!
    @IBOutlet weak var per2LBL: UILabel!
    var statisticsInstance = Statistician()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        questionLBL.text = statisticsInstance.fetchQuestionOfTheDay().question
//        answer0LBL.text = statisticsInstance.fetchQuestionOfTheDay().answer0
//        answer1LBL.text = statisticsInstance.fetchQuestionOfTheDay().answer1
//        answer2LBL.text = statisticsInstance.fetchQuestionOfTheDay().answer2
//        var percents = statisticsInstance.findPercentage()
//        per0LBL.text = "\(percents[0])"
//        per1LBL.text = "\(percents[1])"
//        per2LBL.text = "\(percents[2])"
        
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
