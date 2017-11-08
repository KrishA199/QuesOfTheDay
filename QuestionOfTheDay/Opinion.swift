//
//  Opinion.swift
//  QuestionOfTheDay
//
//  Created by Mucherla,Veera Kishon Kumar on 11/6/17.
//

import Foundation

@objcMembers
class Opinion : NSObject {
    var answer : Int
    var objectId:String?
  
    override init() {
        
        self.answer = 0
       
    }
     init(answer : Int ){
        
        self.answer = answer
        
    }
   
    override var description: String {
        return "Submitted response is : \(self.answer)"
   }
//    dataStoreQuestionOfTheDay.find({ (questionAndOptions)->Void in
//    return questionAndOptions as! QuestionOfTheDay
//    }, error:{(fault:Fault?) ->Void in
//    print(fault!)})
//    return ""

}
