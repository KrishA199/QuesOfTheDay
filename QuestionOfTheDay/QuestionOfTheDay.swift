//
//  QuestionOfTheDay.swift
//  QuestionOfTheDay
//
//  Created by Mucherla,Veera Kishon Kumar on 11/6/17.
//

import Foundation

@objcMembers
class QuestionOfTheDay : NSObject{
    var question : String?
    var answer0 : String?
    var answer1 : String?
    var answer2 : String?
    var created:NSDate?
    var updated:NSDate?
    var objectId:String?
    init(question : String , answer0 : String , answer1 : String , answer2 : String) {
        self.question = question
        self.answer0 = answer0
        self.answer1 = answer1
        self.answer2 = answer2
    }
    override var description: String {
        return "Question is : " + self.question!
    }
     override init() {
        super.init()
        self.question = "Who am I ?"
        self.answer0 = "Pokemon"
        self.answer1 = "NodeMen"
        self.answer2 = "Nodemon"
    }
}
