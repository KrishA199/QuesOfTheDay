//
//  Opinion.swift
//  QuestionOfTheDay
//
//  Created by Mucherla,Veera Kishon Kumar on 11/6/17.
//

import Foundation

@objcMembers
class Opinion : NSObject {
    var answer : Int?
    var created:NSDate?
    var updated:NSDate?
    var objectId:String?
    var question : QuestionOfTheDay?
    override init() {
        super.init()
        self.answer = 0
        self.question = QuestionOfTheDay()
    }
    init(answer : Int , question : QuestionOfTheDay){
        self.answer = answer
        self.question = question
    }
    override var description: String {
        return "Submitted response is : \(self.answer!)"
   }
//    dataStoreQuestionOfTheDay.find({ (questionAndOptions)->Void in
//    return questionAndOptions as! QuestionOfTheDay
//    }, error:{(fault:Fault?) ->Void in
//    print(fault!)})
//    return ""

}
