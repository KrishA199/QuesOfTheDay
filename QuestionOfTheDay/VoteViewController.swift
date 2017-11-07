 import UIKit

class VoteViewController: UIViewController {
    
    
    
    @IBOutlet weak var questionLBL: UILabel!
    @IBOutlet weak var answer0LBL: UILabel!
    @IBOutlet weak var answer1LBL: UILabel!
    @IBOutlet weak var answerLBL: UILabel!
    var statisticsInstance : Statistician = Statistician()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Saving test object in the test table
     questionLBL.text = statisticsInstance.fetchQuestionOfTheDay().question!
        answer0LBL.text = statisticsInstance.fetchQuestionOfTheDay().answer0!
        answer1LBL.text = statisticsInstance.fetchQuestionOfTheDay().answer1!
        answerLBL.text = statisticsInstance.fetchQuestionOfTheDay().answer2!
        
    }
    
    @IBAction func onClickAnswer0(_ sender: Any) {
        let opinion : Opinion = Opinion(answer: 0)
        statisticsInstance.saveOpinion(opinion: opinion)
    }
    @IBAction func onClickAnswer1(_ sender: Any) {
        let opinion : Opinion = Opinion(answer: 1)
        statisticsInstance.saveOpinion(opinion: opinion)
    }
    @IBAction func onClickAnswer2(_ sender: Any) {
        let opinion : Opinion = Opinion(answer: 2)
        statisticsInstance.saveOpinion(opinion: opinion)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
        
