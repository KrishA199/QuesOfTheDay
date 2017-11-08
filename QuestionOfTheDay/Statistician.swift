//
//  Statistician.swift
//  QuestionOfTheDay
//
//  Created by Mucherla,Veera Kishon Kumar on 11/6/17.
//

import Foundation

class Statistician {
    let APPLICATION_ID = "C5D3D386-9E9A-8222-FF09-23717D506200"
    let API_KEY = "7DB43A50-171F-A4CF-FF38-C74142375F00"
    let SERVER_URL = "https://api.backendless.com"
    let backendless = Backendless.sharedInstance()!
    let dataStoreQuestionOfTheDay : IDataStore?
    let dataStoreOpinion : IDataStore?
    init(){
        backendless.hostURL = SERVER_URL
        backendless.initApp(APPLICATION_ID, apiKey:API_KEY)
        dataStoreQuestionOfTheDay = backendless.data.of(QuestionOfTheDay.ofClass())
        dataStoreOpinion = backendless.data.of(Opinion.ofClass())
    }
    func findPercentage() -> [Double] {
        var opinions : [Opinion]
        var option0 : Double = 0.0
        var option1 : Double = 0.0
        var option2 : Double = 0.0
        var option0Percent = 0.0
        var option1Percent = 0.0
        var option2Percent = 0.0
        var totalOpinions : Double = 0.0
        opinions = retriveAllOpinions()
        for opinion in opinions {
            switch opinion.answer {
            case 0 : option0 = option0 + 1
            case 1 :option1 = option1 + 1
            case 2 :option2 = option2 + 1
            default : print("Error")
                
            }
            
        }
        totalOpinions = Double(option2 + option1 + option0)
        option0Percent = (option0 / totalOpinions) * 100
        option1Percent = (option1 / totalOpinions) * 100
        option2Percent = (option2 / totalOpinions) * 100
        return [option0Percent , option1Percent , option2Percent]
    }
    func  fetchQuestionOfTheDay() -> QuestionOfTheDay{
            var questionObj : QuestionOfTheDay = QuestionOfTheDay()
        questionObj = dataStoreQuestionOfTheDay?.find(byId: "7C95C868-DBE6-FD17-FFF4-BEE598578200") as! QuestionOfTheDay
            return questionObj
    }
    func saveOpinion(opinion : Opinion) {
       
        self.dataStoreOpinion!.save(opinion)
        
    }
    func retriveAllOpinions() -> [Opinion]{
        let numOfOpinionsToBeFetched = dataStoreOpinion?.getObjectCount() as! Int
        let pageSize = 3
        let queryBuilder = DataQueryBuilder()
        var numOpionionsFetched = 0
        var allOpinions:[Opinion] = []
        queryBuilder!.setPageSize(Int32(pageSize)).setOffset(0)
        while(numOpionionsFetched < numOfOpinionsToBeFetched) {
            let Opinion = self.dataStoreOpinion?.find(queryBuilder) as! [Opinion]
            allOpinions += Opinion
            numOpionionsFetched += Opinion.count
            queryBuilder!.prepareNextPage()
            
        }
        return allOpinions
    }
   
}
